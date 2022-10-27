note
	description: "Define a type of possible index type that occur in the tables we are interested in."
	date: "$Date$"
	revision: "$Revision$"

class
	PE_IMPLEMENTATION

inherit

	PE_INDEX_BASE
		rename
			make as make_base
		redefine
			get_index_shift,
			has_index_overflow
		end

create
	make_with_tag_and_index,
	make

feature {NONE} -- Initialization

	make
		do
		end

feature -- Enum: tags

	TagBits: INTEGER = 2
	File: INTEGER = 0
	AssemblyRef: INTEGER = 1

feature -- Operations

	get_index_shift: INTEGER
		do
			Result := tagbits
		end

	has_index_overflow (a_sizes: ARRAY [NATURAL]): BOOLEAN
		do
			to_implement ("Add implementation")
		end

end
