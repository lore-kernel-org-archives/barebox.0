Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ze5bG-0002aB-I2
 for barebox@lists.infradead.org; Mon, 21 Sep 2015 18:14:03 +0000
Date: Mon, 21 Sep 2015 20:13:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150921181338.GI7858@pengutronix.de>
References: <87h9moclrw.fsf@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87h9moclrw.fsf@gmail.com>
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
Subject: Re: BUG, i.MX: broken LVDS display
To: Holger Schurig <holgerschurig@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Sep 21, 2015 at 08:46:27AM +0200, Holger Schurig wrote:
> Hi,
> 
> on my i.MX6Q device barebox 2015-08.0 worked and I had an output on the splash screen, both in Barebox and later in Linux (there with CONFIG_STAGING, CONFIG_DRM_IMX, 
> DRM_IMX_FB_HELPER, DRM_IMX_LDB, DRM_IMX_IPUV3).
> 
> This stopped with 2015-09.0. I even get a null-pointer exception:
> 
> 
> Barebox: version 2015.09.0, DLoG 2015-09.1-9-g498cf3a
> unable to handle NULL pointer dereference at address 0x00000008
> pc : [<4fe1072a>]    lr : [<4fe10719>]
> sp : 4ffffa18  ip : 4ffffa68  fp : 4ffffd80
> r10: 3032678c  r9 : 00000000  r8 : 00000000
> r7 : 30343904  r6 : 303438b8  r5 : 00000000  r4 : 303438b8
> r3 : 00000000  r2 : 4fe31c78  r1 : 00000000  r0 : 00000006
> Flags: nzcv  IRQs off  FIQs off  Mode SVC_32
> [<4fe1072a>] (ipu_crtc_mode_set+0x2a/0x1cc) from [<4fe108f5>] (ipufb_enable_controller+0x29/0x44)
> [<4fe108f5>] (ipufb_enable_controller+0x29/0x44) from [<4fe0e8e5>] (fb_enable_set+0x15/0x18)
> [<4fe0e8e5>] (fb_enable_set+0x15/0x18) from [<4fe1bd6d>] (param_int_set+0x33/0x44)
> [<4fe1bd6d>] (param_int_set+0x33/0x44) from [<4fe1bfab>] (dev_set_param+0x43/0x50)
> [<4fe1bfab>] (dev_set_param+0x43/0x50) from [<4fe03257>] (setenv+0x37/0xac)
> [<4fe03257>] (setenv+0x37/0xac) from [<4fe056cb>] (set_local_var.isra.3+0x37/0x4c)
> [<4fe056cb>] (set_local_var.isra.3+0x37/0x4c) from [<4fe0622d>] (run_list_real+0x2ed/0x628)
> [<4fe0622d>] (run_list_real+0x2ed/0x628) from [<4fe061c5>] (run_list_real+0x285/0x628)
> 
> [<4fe2d7cd>] (unwind_backtrace+0x1/0x74) from [<4fe00d65>] (panic+0x1d/0x2c)
> [<4fe00d65>] (panic+0x1d/0x2c) from [<4fe2dca1>] (do_exception+0xd/0x10)
> [<4fe2dca1>] (do_exception+0xd/0x10) from [<4fe2dd09>] (do_data_abort+0x21/0x2c)
> [<4fe2dd09>] (do_data_abort+0x21/0x2c) from [<4fe2d9d4>] (do_abort_6+0x48/0x54)
> 
> 
> 
> 
> 
> I think (!) this is because of commit "video: ipuv3: Replace ipu_output with VPL".

Without trying it I think that aswell ;)

> 
> 
> My current device tree looks like this:
> 
> &ldb {
> 	status = "okay";
> 
> 	lvds-channel@0 {
> 		status = "okay";
> 		crtc = "ipu1-di0";
> 		fsl,data-mapping = "spwg";
> 		fsl,data-width = <18>;
> 		primary;
> 
> 		display-timings {
> 			native-mode = <&timing0>;
> 			timing0: AM-800600K1TMQW-01H-B {
> 				// dot clock: 40 - 50 MHz
>                                 clock-frequency = <39701664>; // 72 Hz
> 				hactive = <800>;
> 				vactive = <600>;
> 				hsync-len = <3>;      // 1 - 40
> 				hback-porch = <46>;   // 46
> 				hfront-porch = <18>;  // 16 - 354
> 				vsync-len = <10>;     // 1 - 29
> 				vback-porch = <23>;   // 23
> 				vfront-porch = <3>;   // 1 - 77
> 				hsync-active = <1>;
> 			};
> 		};
> 	};
> }
> 
> 
> I experimented with barebox 2015.09.0 with several things, but so far haven't been successfull.
> 
> 
> 
> Any hint on how the device tree is now supposed to look like?

Should be like:

panel: panel {
	compatible = "ampire,am800480r3tmqwa1h", "simple-panel";
	enable-gpios = <&gpio2 5 GPIO_ACTIVE_HIGH>;
	backlight = <&backlight>;

	port {
		panel_in: endpoint {
			remote-endpoint = <&lvds0_out>;
		};
	};
};

&ldb {
	pinctrl-names = "default";
	pinctrl-0 = <&pinctrl_lvds0>;
	status = "okay";

	lvds-channel@0 {
		status = "okay";
		fsl,data-mapping = "jeida";
		fsl,data-width = <24>;

		port@1 {
			reg = <1>;

			lvds0_out: endpoint {
				remote-endpoint = <&panel_in>;
			};
		};
	};
};

Copied from arch/arm/dts/imx53-guf-vincell.dts.

Anyway, I don't think it's necessary to break the old binding and for
sure we should not segfault. I'll have a look into this.

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
