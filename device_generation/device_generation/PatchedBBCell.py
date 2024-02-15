import gdspy

class PatchedBBCell(gdspy.Cell):
	def __init__(self, name, exclude_from_current=False):
		gdspy.Cell.__init__(self, name, exclude_from_current)
		self.override_bounding_box = False;
		self.patched_bounding_box = None;

	def get_bounding_box(self):
		if (self.override_bounding_box):
			return self.patched_bounding_box;
		else:
			return gdspy.Cell.get_bounding_box(self)
	
	def patch_bounding_box(self, bb):
		self.override_bounding_box = True
		self.patched_bounding_box = bb
	
	def reset_bounding_box(self):
		self.override_bounding_box = False
		self.patched_bounding_box = None
