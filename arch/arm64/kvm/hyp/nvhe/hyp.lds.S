/* SPDX-License-Identifier: GPL-2.0 */
/*
 * Copyright (C) 2020 Google LLC.
 * Written by David Brazdil <dbrazdil@google.com>
 *
 * Linker script used for partial linking of nVHE EL2 object files.
 */

#include <asm/hyp_image.h>
#include <asm-generic/vmlinux.lds.h>
#include <asm/cache.h>
#include <asm/memory.h>

SECTIONS {
	HYP_SECTION(.text)
	HYP_SECTION_NAME(.data..percpu) : {
		PERCPU_INPUT(L1_CACHE_BYTES)
	}
}
