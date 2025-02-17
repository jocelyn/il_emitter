note
	description: "Summary description for {MD_STRONG_NAME}."
	date: "$Date: 2023-03-24 08:26:50 -0300 (Fri, 24 Mar 2023) $"
	revision: "$Revision: 106705 $"

class
	MD_STRONG_NAME

inherit
	MD_STRONG_NAME_I

	REFACTORING_HELPER

create
	make_with_version

feature {NONE} -- Initialization

	make_with_version (a_runtime_version: like runtime_version)
		do
			runtime_version := a_runtime_version
			snk_file := ""
		end

	snk_file: STRING_32

feature -- Status report

	runtime_version: STRING_32
			-- Version for which we are signing.	

feature -- Access

	public_key (a_key_blob: MANAGED_POINTER): detachable MANAGED_POINTER
			-- Retrieve public portion of key pair `a_key_blob`.
		do
			debug ("refactor_fixme")
				to_implement (generator + ".public_key")
			end
		end

	public_key_token (a_public_key_blob: MANAGED_POINTER): MANAGED_POINTER
			-- Retrieve public key token associated with `a_public_key_blob'.
		do
			debug ("refactor_fixme")
				to_implement (generator + ".public_key_token")
			end
			create Result.make (0)
		end

	hash_of_file (a_file_path: NATIVE_STRING): MANAGED_POINTER
			-- Compute hash of `a_file_path' using default algorithm.
		do
			debug ("refactor_fixme")
				to_implement (generator + ".hash_of_file")
			end
			create Result.make (0)
		end

feature -- Status report

	exists: BOOLEAN
		do
			debug ("refactor_fixme")
				to_implement (generator + ".exists")
			end
		end

end
