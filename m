Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k53DH-0003Rd-07
 for barebox@lists.infradead.org; Mon, 10 Aug 2020 08:31:23 +0000
Received: by mail-lj1-x241.google.com with SMTP id t23so8626162ljc.3
 for <barebox@lists.infradead.org>; Mon, 10 Aug 2020 01:31:21 -0700 (PDT)
Date: Mon, 10 Aug 2020 10:31:15 +0200
From: Anees Rehman <anees.r3hman@gmail.com>
Message-ID: <20200810083115.GA614969@man-ws>
References: <20200804214158.25721-1-anees.r3hman@gmail.com>
 <20200804214158.25721-3-anees.r3hman@gmail.com>
 <20200806124127.iw4k32vpzrdb6f42@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200806124127.iw4k32vpzrdb6f42@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 2/2] ARM: i.MX: Add atlascopco sxb board
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: Anees Rehman <anees.rehman@atlascopco.com>, barebox@lists.infradead.org

On Thu, Aug 06, 2020 at 02:41:27PM +0200, Marco Felsch wrote:
> On 20-08-04 23:41, Anees Rehman wrote:
> 
> ...
> 
> > +static noinline void imx7d_sxb_sram_setup(void)
> > +{
> > +	int ret;
> > +
> > +	relocate_to_current_adr();
> > +	setup_c();
> > +
> > +	pr_debug("configuring ddr...\n");
> > +	write_regs(imx7d_ixb_dcd, ARRAY_SIZE(imx7d_ixb_dcd));
> > +
> > +	ret = imx7_esdhc_start_image(2);
> > +
> > +	BUG_ON(ret);
> > +}
> > +
> > +ENTRY_FUNCTION(start_ac_sxb, r0, r1, r2)
> > +{
> > +	imx7_cpu_lowlevel_init();
> > +
> > +	if (IS_ENABLED(CONFIG_DEBUG_LL))
> > +		setup_uart();
> > +
> > +	if (get_pc() < 0x80000000)
> > +		imx7d_sxb_sram_setup();
> 
> Nit:
> After this call we are running in the correct place...
> 
> > +	imx7d_barebox_entry(__dtb_z_ac_sxb_start + get_runtime_offset());
> 
> So get_runtime_offset() shouldn't be necessary if I got it right.
> 
> > +}

If I remove get_runtime_offset(), I end up with the
following crash:
initcall-> imx_init+0x1/0x238
detected i.MX7d revision 1.2
i.MX reset reason POR (SRSR: 0x00000001)
initcall imx_init+0x1/0x238 failed: Invalid argument
initcall-> imx_serial_driver_register+0x1/0xc
initcall-> input_init+0x1/0x70
initcall-> dos_partition_init+0x1/0xc
initcall-> efi_partition_init+0x1/0xc
initcall-> imx_esdctl_init+0x1/0xc
initcall-> mmu_init+0x1/0x34
MMU: No memory bank found! Cannot continue

[<9fe6373d>] (unwind_backtrace+0x1/0x78) from [<9fe01379>] (panic+0x1d/0x34)
[<9fe01379>] (panic+0x1d/0x34) from [<9fe614b9>] (mmu_init+0x19/0x34)
[<9fe614b9>] (mmu_init+0x19/0x34) from [<9fe01061>] (start_barebox+0x51/0x90)
[<9fe01061>] (start_barebox+0x51/0x90) from [<9fe61749>] (barebox_non_pbl_start+0x121/0x164)
[<9fe61749>] (barebox_non_pbl_start+0x121/0x164) from [<9fe00005>] (__bare_init_start+0x1/0xc)
### ERROR ### Please RESET the board ###

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
