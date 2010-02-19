// «PROJECTNAME» «FILENAME»
//
// Copyright © «YEAR», «FULLUSERNAME», «ORGANIZATIONNAME»
// All rights reserved
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
//	The above copyright notice and this permission notice shall be included in
//	all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS," WITHOUT WARRANTY OF ANY KIND, EITHER
// EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
// MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO
// EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES
// OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
// ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
// DEALINGS IN THE SOFTWARE.
//
//------------------------------------------------------------------------------

«OPTIONALHEADERIMPORTLINE»
@implementation «FILEBASENAMEASIDENTIFIER»

- (id)initWithStyle:(UITableViewStyle)style
{
	if ((self = [super initWithStyle:style]))
	{
		
	}
	return self;
}

//------------------------------------------------------------------------------
#pragma mark                                                  UI View Controller
//------------------------------------------------------------------------------

- (void)viewDidLoad
{
	// Called after the view has been loaded. For view controllers created in
	// code, this is after -loadView. For view controllers unarchived from a
	// nib, this is after the view is set.
	[super viewDidLoad];
	
	self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload
{
	// Called after the view controller's view is released and set to nil. For
	// example, a memory warning which causes the view to be purged. Not invoked
	// as a result of -dealloc.
}

- (void)viewWillAppear:(BOOL)animated
{
	// Called when the view is about to made visible. Default does nothing.
}
- (void)viewDidAppear:(BOOL)animated
{
	// Called when the view has been fully transitioned onto the screen. Default
	// does nothing.
}
- (void)viewWillDisappear:(BOOL)animated
{
	// Called when the view is dismissed, covered or otherwise hidden. Default
	// does nothing.
}
- (void)viewDidDisappear:(BOOL)animated
{
	// Called after the view was dismissed, covered or otherwise hidden. Default
	// does nothing.
}

- (void)didReceiveMemoryWarning
{
	// Called when the parent application receives a memory warning. Default
	// implementation releases the view if it doesn't have a superview.
	[super didReceiveMemoryWarning];
}

//------------------------------------------------------------------------------
#pragma mark                                         UI View Controller Rotation
//------------------------------------------------------------------------------

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
	// Override to allow rotation. Default returns YES only for
	// UIDeviceOrientationPortrait.
	return toInterfaceOrientation == UIInterfaceOrientationPortrait;
}

//------------------------------------------------------------------------------
#pragma mark                                           UI Table View Data Source
//------------------------------------------------------------------------------

- (NSInteger)tableView:(UITableView *)table numberOfRowsInSection:(NSInteger)section
{
	return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	// Row display. Implementers should *always* try to reuse cells by setting
	// each cell's reuseIdentifier and querying for available reusable cells
	// with -dequeueReusableCellWithIdentifier:. Cell gets various attributes
	// set automatically based on table (separators) and data source (accessory
	// views, editing controls).
	static NSString *kCellIdentifier = @"CellIdentifier";
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kCellIdentifier];
	if (cell == nil)
	{
		cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:kCellIdentifier] autorelease];
	}
	return cell;
}

//--------------------------------------------------------------------- optional

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
	// Default is 1 if not implemented.
	return 1;
}

//---------------------------------------------------------------------- editing

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
	// Individual rows can opt out of having the -editing property set for
	// them. If not implemented, all rows are assumed to be editable.
	return YES;
}

//----------------------------------------------------------------------- moving

- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
	// Allows the reorder accessory view to optionally be shown for a particular
	// row. By default, the reorder control will be shown only if the datasource
	// implements -tableView:moveRowAtIndexPath:toIndexPath:.
	return YES;
}

//------------------------------------------------------------ data manipulation

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
	// After a row has the minus or plus button invoked (based on the
	// UITableViewCellEditingStyle for the cell), the dataSource must commit the
	// change.
	switch (editingStyle)
	{
		case UITableViewCellEditingStyleDelete:
			[tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:YES];
			break;
		case UITableViewCellEditingStyleInsert:
			break;
		default:
			break;
	}
}

- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath
{
	
}

//------------------------------------------------------------------------------
#pragma mark                                              UI Table View Delegate
//------------------------------------------------------------------------------

//-------------------------------------------------------------------- selection

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	// Called after the user changes the selection.
	//
	// e.g.
	//
	//	AnotherViewController *anotherViewController = [[AnotherViewController alloc] initWithNibName:@"AnotherView" bundle:nil];
	//	[self.navigationController pushViewController:anotherViewController animated:YES];
	//	[anotherViewController release];
	//
}

@end
