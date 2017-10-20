Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e5SIV-0001ZP-9k
 for barebox@lists.infradead.org; Fri, 20 Oct 2017 08:04:53 +0000
References: <3f726d4d-d6b8-e89b-805b-6a0ebfa5227a@mev.co.uk>
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
In-reply-to: <3f726d4d-d6b8-e89b-805b-6a0ebfa5227a@mev.co.uk>
Date: Fri, 20 Oct 2017 10:04:21 +0200
Message-ID: <73sheetfcq.fsf@pengutronix.de>
MIME-Version: 1.0
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
Subject: Re: Terasic DE0 Nano SoC / SoCkit confusion
To: Ian Abbott <abbotti@mev.co.uk>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>


Hi!

Ian Abbott <abbotti@mev.co.uk> writes:

> Hi,
>
> I have a Terasic DE0-Nano-SoC Kit / Atlas-SoC Kit board:
>
> http://www.terasic.com.tw/cgi-bin/page/archive.pl?Language=English&CategoryNo=205&No=941
> https://rocketboards.org/foswiki/Documentation/AtlasSoCDevelopmentPlatform
>
> In the barebox menuconfig, if I select "Terasic DE0-NANO-SoC aka Atlas" 
> (MACH_SOCFPGA_TERASIC_DE0_NANO_SOC) for the preloader configuration, the 
> preloader image boot fails at the SDRAM calibration stage.  I need to 
> select "Terasic SoCKit" (MACH_SOCFPGA_TERASIC_SOCKIT) instead, which 
> seems to work fine.  Indeed, when using the 
> "scripts/socfpga_import_preloader" script to import settings from 
> Terasic's FPGA handoff files for DE0-Nano-SoC, the results are a much 
> better match to barebox's "arch/arm/boards/terasic-sockit/" than they 
> are to "arch/arm/boards/terasic-de0-nano-soc/". I got the handoff files 
> from Terasic's CD-ROM zip files at
> http://www.terasic.com/downloads/cd-rom/de0-nano-soc/ .
> There are two CD-ROM zip files for different board revisions, but the 
> handoff files are all the same across both CD-ROM zip files.
>

The problem with the handoff files is, that it is next to impossible to
say anything about if they are right or wrong with just looking at them.
According to f3b493750a304791b057eda246b473810aa8bf40 the handoff files
somehow come from

   https://rocketboards.org/foswiki/Documentation/AtlasSoCDevelopmentPlatform

> I'm currently using "Terasic SoCKit" for the preloader and "Terasic 
> DE0-NANO-SoC aka Atlas" for the main barebox.
>

If you have the board an can test which handoff files are correct and
work on the hardware, I'd say: Send patches :)
I can't verify if the current support works or not as I don't have
access to the hardware.

> My other problem is that there are differences in the "compatible"
> strings that Linux devicetrees use compared to barebox, which causes the 
> blspec loader to fail to load entries containing devicetree files with 
> different "compatible" strings for what should be the same board.
>
> For MACH_SOCFPGA_TERASIC_DE0_NANO_SOC:
>
>     barebox:
>
> 	compatible = "terasic,de0-nano-soc","altr,socfpga-cyclone5", 
> "altr,socfpga";
>
>     (closest match in) Linux:
>
> 	compatible = "terasic,de0-atlas", "altr,socfpga-cyclone5", "altr,socfpga";
>
> For MACH_SOCFPGA_TERASIC_SOCKIT:
>
>      barebox:
>
> 	compatible = "terasic,sockit", "altr,socfpga";
>
>      Linux:
>
>          compatible = "terasic,socfpga-cyclone5-sockit", 
> "altr,socfpga-cyclone5", "altr,socfpga";
>
> For MACH_SOCFPGA_ALTERA_SOCDK:
>
>      barebox:
>
> 	compatible = "altr,socdk", "altr,socfpga-cyclone5", "altr,socfpga";
>
>      Linux:
>
> 	compatible = "altr,socfpga-cyclone5-socdk", "altr,socfpga-cyclone5", 
> "altr,socfpga";
>
>
> Would the best fix for those be to replace the existing compatible 
> strings, or use a union between the current barebox and Linux strings?

Use the one from linux and fixup the board.c files in barebox. The
barebox compatibles are there, because the upstream bindings didn't
have board specific compatibles.


Best regards,
Steffen Trumtrar

-- 
Pengutronix e.K.                           | Steffen Trumtrar            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
