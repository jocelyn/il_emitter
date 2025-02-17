note
	description: "Eiffel class representation of IMetaDataAssemblyEmit"
	date: "$Date: 2023-03-21 07:56:39 -0300 (Tue, 21 Mar 2023) $"
	revision: "$Revision: 106694 $"

class
	MD_ASSEMBLY_EMIT

inherit

	REFACTORING_HELPER
		export {NONE} all end

feature -- Access

	define_assembly_ref (assembly_name: STRING_32; assembly_info: MD_ASSEMBLY_INFO;
			public_key_token: MD_PUBLIC_KEY_TOKEN): INTEGER
		require
			assembly_name_not_void: assembly_name /= Void
			assembly_info_not_void: assembly_info /= Void
		local
			null: POINTER
		do
			to_implement ("TODO implement")
		ensure
			valid_result: Result > 0
		end

feature -- Definition

	define_assembly (assembly_name: STRING_32; assembly_flags: INTEGER;
			assembly_info: MD_ASSEMBLY_INFO; public_key: detachable MD_PUBLIC_KEY): INTEGER

			-- Define a new assembly `assembly_name' with characteristics
			-- `assembly_flags' and `assembly_info', and if not void with
			-- a public key `public_key'.
			-- Possible values of `assembly_flags' are defined in MD_ASSEMBLY_FLAGS.
		require
			assembly_name_not_void: assembly_name /= Void
			assembly_info_not_void: assembly_info /= Void
			valid_flags: public_key /= Void implies assembly_flags &
				{MD_ASSEMBLY_FLAGS}.public_key = {MD_ASSEMBLY_FLAGS}.public_key
		do
			to_implement ("TODO implement")
		ensure
			valid_result: Result > 0
		end

	define_exported_type (type_name: STRING_32; implementation_token: INTEGER;
			type_def_token: INTEGER; type_flags: INTEGER): INTEGER

				-- Ensure that `type_name' type defined in `implementation_token' with
				-- `type_def_token' and `type_flags' is exported from Current assembly.
		require
			type_name_not_void: type_name /= Void
		do
			to_implement("TODO implement")
		ensure
			valid_result: Result > 0
		end

	define_file (file_name: STRING_32; hash_value: MANAGED_POINTER;
			file_flags: INTEGER): INTEGER

			-- Define a new entry in file table.
		require
			file_name_not_void: file_name /= Void
			file_name_not_empty: not file_name.is_empty
			hash_value_not_void: hash_value /= Void
			hash_value_not_empty: hash_value.count > 0
		do
			to_implement ("TODO implement")
		ensure
			valid_result: Result > 0
		end

	define_manifest_resource (resource_name: STRING_32; implementation_token: INTEGER
			offset, resource_flags: INTEGER): INTEGER

			-- Define a new entry in manifest resource table.
		do
			to_implement("TODO implement")
		ensure
			valid_result: Result > 0
		end


note
	copyright:	"Copyright (c) 1984-2016, Eiffel Software"
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
			distributed in the hope that it will be useful, but
			WITHOUT ANY WARRANTY; without even the implied warranty
			of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
			See the GNU General Public License for more details.
			
			You should have received a copy of the GNU General Public
			License along with Eiffel Software's Eiffel Development
			Environment; if not, write to the Free Software Foundation,
			Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA
		]"
	source: "[
			Eiffel Software
			5949 Hollister Ave., Goleta, CA 93117 USA
			Telephone 805-685-1006, Fax 805-685-6869
			Website http://www.eiffel.com
			Customer support http://support.eiffel.com
		]"

end -- class MD_ASSEMBLY_EMIT
