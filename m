Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VMCmh-0002Qd-Pb
 for barebox@lists.infradead.org; Wed, 18 Sep 2013 08:06:52 +0000
Date: Wed, 18 Sep 2013 10:06:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130918080628.GP30088@pengutronix.de>
References: <1379321300-8085-1-git-send-email-s.hauer@pengutronix.de>
 <1379321300-8085-8-git-send-email-s.hauer@pengutronix.de>
 <20130917144649.GA28390@ns203013.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130917144649.GA28390@ns203013.ovh.net>
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
Subject: Re: [PATCH 07/11] ARM: Add Altera SoCFPGA support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Sep 17, 2013 at 04:46:49PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > +
> > +	if (IS_ENABLED(CONFIG_OMAP_BUILD_IFT))
> OMAP?

Damn. Removed.

> > +		default_environment_path = "/dev/defaultenv";
> > +	else
> > +		default_environment_path = "/boot/barebox.env";
> > +
> > +out_free:
> > +	free(partname);
> > +	return 0;
> > +}
> > +late_initcall(socfpga_env_init);
> > +#endif
> > diff --git a/arch/arm/mach-socfpga/include/mach/clkdev.h b/arch/arm/mach-socfpga/include/mach/clkdev.h
> > new file mode 100644
> > index 0000000..04b37a8
> > --- /dev/null
> > +++ b/arch/arm/mach-socfpga/include/mach/clkdev.h
> > @@ -0,0 +1,7 @@
> > +#ifndef __ASM_MACH_CLKDEV_H
> > +#define __ASM_MACH_CLKDEV_H
> > +
> > +#define __clk_get(clk) ({ 1; })
> > +#define __clk_put(clk) do { } while (0)
> > +
> do we still need this?

Nope, removed.

> > +#endif
> > diff --git a/arch/arm/mach-socfpga/include/mach/clock-manager.h b/arch/arm/mach-socfpga/include/mach/clock-manager.h
> > new file mode 100644
> > index 0000000..a2b6975
> > --- /dev/null
> 
> > +#if ARRIAV || CYCLONEV
> > +		/* av/cv don't have out2 */
> > +		scc_mgr_set_dqs_out1_delay(write_group, IO_DQS_OUT_RESERVE);
> > +#else
> > +		scc_mgr_set_dqs_out1_delay(write_group, 0);
> > +		scc_mgr_set_dqs_out2_delay(write_group, IO_DQS_OUT_RESERVE);
> > +#endif
> really?

What do you mean? I have no idea if the above code is correct, it's
copied from Altera code.

> > +	clks[timer] = clk_fixed("timer", 200000000);
> > +	clkdev_add_physbase(clks[timer], CYCLONE5_SMP_TWD_ADDRESS, NULL);
> > +	add_generic_device("smp_twd", 0, NULL, CYCLONE5_SMP_TWD_ADDRESS, 0x100,
> > +			IORESOURCE_MEM, NULL);
> > +}
> > +
> > +static void *socfpga_xload_mmc(void)
> > +{
> > +	int ret;
> > +	void *buf;
> > +	int len;
> > +	const char *diskdev = "disk0.1";
> > +
> > +	pr_info("loading bootloader from SD/MMC\n");
> > +
> > +	ret = mount(diskdev, "fat", "/");
> > +	if (ret) {
> > +		printf("Unable to mount %s (%d)\n", diskdev, ret);
> > +		return NULL;
> > +	}
> > +
> > +	buf = read_file("/barebox.bin", &len);
> > +	if (!buf) {
> > +		printf("could not read barebox.bin from sd card\n");
> > +		return NULL;
> > +	}
> > +
> > +	return buf;
> > +}
> please use the generic bootstrap code

Ok

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
