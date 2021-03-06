/*******************************************************************************
 * The MIT License (MIT)
 * 
 * Copyright (c) 2015 Jean-David Gadina - www-xs-labs.com
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
 * @file        AboutWindowController.m
 * @copyright   (c) 2016, Jean-David Gadina - www.xs-labs.com
 */

#import "AboutWindowController.h"

@interface AboutWindowController()

@property( atomic, readwrite, strong ) NSString * name;
@property( atomic, readwrite, strong ) NSString * version;
@property( atomic, readwrite, strong ) NSString * copyright;

@end

@implementation AboutWindowController

- ( instancetype )init
{
    return [ self initWithWindowNibName: NSStringFromClass( self.class ) ];
}

- ( void )windowDidLoad
{
    self.window.titlebarAppearsTransparent = YES;
    self.window.titleVisibility            = NSWindowTitleHidden;
    
    self.name      = [ [ NSBundle mainBundle ] objectForInfoDictionaryKey: @"CFBundleName" ];
    self.version   = [ [ NSBundle mainBundle ] objectForInfoDictionaryKey: @"CFBundleShortVersionString" ];
    self.copyright = [ [ NSBundle mainBundle ] objectForInfoDictionaryKey: @"NSHumanReadableCopyright" ];
}

@end
