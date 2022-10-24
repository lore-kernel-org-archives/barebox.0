Delivery-date: Mon, 24 Oct 2022 08:43:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1omrB7-000MCu-63
	for lore@lore.pengutronix.de; Mon, 24 Oct 2022 08:43:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1omrB5-0006A7-PT
	for lore@pengutronix.de; Mon, 24 Oct 2022 08:43:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1+MDfsCGpselkh1mba0M2/oYvtsLPeamC0cCBwisf4o=; b=tY6P9jYqYd39Elg9ZPj05JhoWK
	64r3MwwXHtokXedvm8a5eAkVteRBzoZMwHIxI5wStNGL7AIbt6C/waX1i30eK4m73KHuh0MQHvLwp
	jqby/3/NtglkLrB+rcohHpScy+XhiOms2vA0O2Up6yFQPn16hkvPcBEdVen3Ty92tO/mX1ANtl71u
	AXoWzZF7/ySFuYczUqCQJKtAYG3PeHkDuRYlPI8IhOsnYWAEgfzpoGfMqo8OfudKPnDsoz9+hdvRq
	eXbyg9mF3GJn7KxQMejCsG5Db0mp3YN82lSkjYqcfvO9kzUsI8/DtsY1vVa32YpwVHjk+S8L+Kpsw
	0eBtZpGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omr9m-00HKTH-Ho; Mon, 24 Oct 2022 06:41:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omr9i-00HKS9-0G
	for barebox@lists.infradead.org; Mon, 24 Oct 2022 06:41:52 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1omr9g-00063v-44; Mon, 24 Oct 2022 08:41:48 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1omr9f-0006UZ-UU; Mon, 24 Oct 2022 08:41:47 +0200
Date: Mon, 24 Oct 2022 08:41:47 +0200
To: Roland Hieber <rhi@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221024064147.GE6702@pengutronix.de>
References: <20221021090510.399348-1-rhi@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221021090510.399348-1-rhi@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221023_234150_225066_EFEA204D 
X-CRM114-Status: GOOD (  62.63  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] doc: slightly improve the porting guide
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Oct 21, 2022 at 11:05:10AM +0200, Roland Hieber wrote:
> Turn the first board code excerpt into a full example by adding the
> necessary includes files. Then in the line-by-line explanation, ensure a
> line break after each explained line by turning the list into a
> definition list, and be a bit more verbose when explaining some lines.
> 
> Signed-off-by: Roland Hieber <rhi@pengutronix.de>
> ---
>  Documentation/devel/porting.rst | 58 +++++++++++++++++++++------------
>  1 file changed, 37 insertions(+), 21 deletions(-)

Applied. thanks

Sascha

> 
> diff --git a/Documentation/devel/porting.rst b/Documentation/devel/porting.rst
> index 01ee26e0d65f..dea5ebd1c511 100644
> --- a/Documentation/devel/porting.rst
> +++ b/Documentation/devel/porting.rst
> @@ -113,6 +113,9 @@ there depends on the previously running code. If a previous stage has already
>  initialized the DRAM, the only thing you need to do is to set up a stack and
>  call the common PBL code with a memory region and your device tree blob::
>  
> +  #include <asm/barebox-arm.h>
> +  #include <console.h>
> +
>    ENTRY_FUNCTION_WITHSTACK(start_my_board, MY_STACK_TOP, r0, r1, r2)
>    {
>    	extern char __dtb_my_board_start[];
> @@ -128,22 +131,24 @@ call the common PBL code with a memory region and your device tree blob::
>  
>  Lets look at this line by line:
>  
> - - ``ENTRY_FUNCTION_WITHSTACK(start_my_board, STACK_TOP, r0, r1, r2)``
> +``ENTRY_FUNCTION_WITHSTACK(start_my_board, MY_STACK_TOP, r0, r1, r2)``
>     The entry point is special: It needs to be located at the beginning of the
>     image, it does not return and may run before a stack is set up.
>     To make it possible to write this entry point in C, the macro places
> -   a machine code prologue that uses ``STACK_TOP`` as the initial stack
> +   a machine code prologue that uses ``MY_STACK_TOP`` as the initial stack
>     pointer. If the stack is already set up, you may pass 0 here.
>  
>     Additionally, the macro passes along a number of registers, in case the
>     Boot ROM has placed something interesting there.
>  
> - - ``extern char __dtb_my_board_start[];``
> +``extern char __dtb_my_board_start[];``
>     When a device tree is built as part of the PBL, ``__dtb_*_start`` and
> -   ``__dtb_*_end`` will be defined for it. Declare the start variable, so
> -   you can pass along the address of the device tree.
> +   ``__dtb_*_end`` will be defined for it by the build system;
> +   its name is determined by the name of the device tree source file.
> +   Declare the start variable, so you can pass along the address of the device
> +   tree.
>  
> - - ``relocate_to_current_adr();``
> +``relocate_to_current_adr();``
>     Machine code contains a mixture of relative and absolute addressing.
>     Because the PBL doesn't know in advance which address it's loaded to,
>     the link address of global variables may not be correct. To correct
> @@ -152,28 +157,34 @@ Lets look at this line by line:
>     by this function. Note that this is self-modifying code, so it's not
>     safe to call this when executing in-place from flash or ROM.
>  
> - - ``setup_c();``
> +``setup_c();``
>     As a size optimization, zero-initialized variables of static storage
>     duration are not written to the executable. Instead only the region
>     where they should be located is described and at runtime that region
>     is zeroed. This is what ``setup_c()`` does.
>  
> - - ``pbl_set_putc(my_serial_putc, (void *)BASE_ADDR);``
> +``pbl_set_putc(my_serial_putc, (void *)BASE_ADDR);``
>     Now that we have a C environment set up, lets set our first global
> -   variable. ``pbl_set_putc`` saves a function pointer that can be used
> -   to output a single character. This can be used for the early PBL
> -   console to output messages even before any drivers are initialized.
> +   variable. ``pbl_set_putc`` saves a pointer to a function
> +   (``my_serial_putc``) that is called by the ``pr_*`` functions to output a
> +   single character. This can be used for the early PBL console to output
> +   messages even before any drivers are initialized.
> +   The second parameter (UART register base address in this instance) is passed
> +   as a user parameter when the provided function is called.
>  
> - - ``barebox_arm_entry`` will compute a new stack top from the supplied memory
> -   region and uncompress barebox proper and pass along its arguments.
> +``barebox_arm_entry(...)``
> +   This will compute a new stack top from the supplied memory
> +   region, uncompress barebox proper and pass along its arguments.
>  
>  Looking at other boards you might see some different patterns:
>  
> - - ``*_cpu_lowlevel_init();``: Often some common initialization and quirk handling
> +``*_cpu_lowlevel_init();``
> +   Often some common initialization and quirk handling
>     needs to be done at start. If a board similar to yours does this, you probably
>     want to do likewise.
>  
> - - ``__naked``: All functions called before stack is correctly initialized must be
> +``__naked``
> +   All functions called before stack is correctly initialized must be
>     marked with this attribute. Otherwise, function prologue and epilogue may access
>     the uninitialized stack. Note that even with ``__naked``, the compiler may still
>     spill excess local C variables used in a naked function to the stack before it
> @@ -187,34 +198,39 @@ Looking at other boards you might see some different patterns:
>     no reason to use ``__naked``, just use ``ENTRY_FNCTION_WITHSTACK`` with a zero
>     stack top.
>  
> - - ``noinline``: Compiler code inlining is oblivious to stack manipulation in
> +``noinline``
> +   Compiler code inlining is oblivious to stack manipulation in
>     inline assembly. If you want to ensure a new function has its own stack frame
>     (e.g. after setting up the stack in a ``__naked`` function), you must jump to
>     a ``__noreturn noinline`` function.
>  
> - - ``arm_setup_stack``: For 32-bit ARM, ``arm_setup_stack`` initializes the stack
> +``arm_setup_stack``
> +   For 32-bit ARM, ``arm_setup_stack`` initializes the stack
>     top when called from a naked C function, which allowed to write the entry point
>     directly in C. Modern code should use ``ENTRY_FUNCTION_WITHSTACK`` instead.
>     Note that in both cases the stack pointer will be decremented before pushing values.
>     Avoid interleaving with C-code. See ``__naked`` above for more details.
>  
> - - ``__dtb_z_my_board_start[];``: Because the PBL normally doesn't parse anything out
> +``__dtb_z_my_board_start[];``
> +   Because the PBL normally doesn't parse anything out
>     of the device tree blob, boards can benefit from keeping the device tree blob
>     compressed and only unpack it in barebox proper. Such LZO-compressed device trees
>     are prefixed with ``__dtb_z_``. It's usually a good idea to use this.
>  
> - - ``imx6q_barebox_entry(...);`` Sometimes it's possible to query the memory
> +``imx6q_barebox_entry(...);``
> +   Sometimes it's possible to query the memory
>     controller for the size of RAM. If there are SoC-specific helpers to achieve
>     this, you should use them.
>  
> - - ``get_runtime_offset()/global_variable_offset()`` returns the difference
> +``get_runtime_offset()/global_variable_offset()``
> +   This functions return the difference
>     between the link and load address. This is zero after relocation, but the
>     function can be useful to pass along the correct address of a variable when
>     relocation has not yet occurred. If you need to use this for anything more
>     then passing along the FDT address, you should reconsider and probably rather
>     call ``relocate_to_current_adr();``.
>  
> - - ``*_start_image(...)/*_load_image(...)/*_xload_*(...)``:
> +``*_start_image(...)/*_load_image(...)/*_xload_*(...)``
>     If the SRAM couldn't fit both PBL and the compressed barebox proper, PBL
>     will need to chainload full barebox binary from disk.
>  
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


