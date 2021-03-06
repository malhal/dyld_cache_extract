/*******************************************************************************
 * The MIT License (MIT)
 * 
 * Copyright (c) 2016 Jean-David Gadina - www-xs-labs.com
 * 
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 * 
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 ******************************************************************************/

/*!
 * @header      Header.hpp
 * @copyright   (c) 2016, Jean-David Gadina - www.xs-labs.com
 */

#ifndef DCE_MACH_O_HEADER_H
#define DCE_MACH_O_HEADER_H

#include <cstdint>
#include <string>
#include <XS/PIMPL/Object.hpp>

namespace DCE
{
    class BinaryStream;
    
    namespace MachO
    {
        class Header: public XS::PIMPL::Object< Header >
        {
            public:
                
                using XS::PIMPL::Object< Header >::impl;
                
                bool Read( BinaryStream & stream );
                
                bool Is32Bits( void ) const;
                bool Is64Bits( void ) const;
                
                uint32_t GetMagic( void )         const;
                uint32_t GetCPUType( void )       const;
                uint32_t GetCPUSubType( void )    const;
                uint32_t GetFileType( void )      const;
                uint32_t GetCommandsCount( void ) const;
                uint32_t GetCommandsSize( void )  const;
                uint32_t GetFlags( void )         const;
        };
    }
}

#endif /* DCE_MACH_O_HEADER_H */
