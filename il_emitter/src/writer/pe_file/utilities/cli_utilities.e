note
	description: "Utilities for CLI PE file handling"
	legal: "See notice at end of class."
	status: "See notice at end of class."
	date: "$Date: 2008-12-29 21:00:50 -0200 (Mon, 29 Dec 2008) $"
	revision: "$Revision: 76429 $"

class
	CLI_UTILITIES

feature -- Access

	padding (i, chunk_size: INTEGER): INTEGER
			-- Compute needed padding from position `i' to reach a multiple of `chunk_size'.
		require
			valid_i: i >= 0
			valid_chunk_size: chunk_size >= 0
		do
			if i /= 0 then
				Result := (((i - 1) // chunk_size) + 1) * chunk_size - i
			end
		ensure
			valid_result: Result >= 0
		end

	pad_up (i, chunk_size: INTEGER): INTEGER
			-- Padded position of `i' to reach a multiple of `chunk_size'.
		require
			valid_i: i >= 0
			valid_chunk_size: chunk_size >= 0
		do
			if i /= 0 then
				Result := (((i - 1) // chunk_size) + 1) * chunk_size
			end
		ensure
			valid_result: Result >= 0
		end

	file_alignment: INTEGER
			-- Current chosen file alignment.
		once
			Result := small_file_alignment
		ensure
			valid_result: Result > 0
		end

feature -- Constants

	section_alignment: INTEGER = 0x2000
			-- Default section alignment.

	small_file_alignment: INTEGER = 0x0200
			-- Small file alignment.

	large_file_alignment: INTEGER = 0x1000;
			-- Large file alignment.

note
	copyright:	"Copyright (c) 1984-2006, Eiffel Software"
	license:	"GPL version 2 (see http://www.eiffel.com/licensing/gpl.txt)"
	licensing_options:	"http://www.eiffel.com/licensing"
	copying: "[
			This file is part of Eiffel Software's Eiffel Development Environment.
			
			Eiffel Software's Eiffel Development Environment is free
			software; you can redistribute it and/or modify it under
			the terms of the GNU General Public License as published
			by the Free Software Foundation, version 2 of the License
			(available at the URL listed under "license" above).
			
			Eiffel Software's Eiffel Development Environment is
			distributed in the hope that it will be useful,	but
			WITHOUT ANY WARRANTY; without even the implied warranty
			of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
			See the	GNU General Public License for more details.
			
			You should have received a copy of the GNU General Public
			License along with Eiffel Software's Eiffel Development
			Environment; if not, write to the Free Software Foundation,
			Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301  USA
		]"
	source: "[
			 Eiffel Software
			 356 Storke Road, Goleta, CA 93117 USA
			 Telephone 805-685-1006, Fax 805-685-6869
			 Website http://www.eiffel.com
			 Customer support http://support.eiffel.com
		]"

end -- class CLI_UTILITIES
