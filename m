Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cRZ4l-0005uq-Jw
 for barebox@lists.infradead.org; Thu, 12 Jan 2017 06:41:34 +0000
Date: Thu, 12 Jan 2017 07:41:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170112064108.cgbsqjze453lf5ej@pengutronix.de>
References: <20170110150913.31416-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170110150913.31416-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v3 00/20] Vybrid related patches
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Jan 10, 2017 at 07:08:53AM -0800, Andrey Smirnov wrote:
> Hi everyone,
> 
> Here goes third version of the "Vybrid related patches" patchset,
> here's what's new since v2 (for v2 see[3]):
> 
>        - Dropped incorrect "i.MX: ocotp: Simplify MAC address storing
>          logic" patch
> 
>        - IOMUXv3 header helper functions converted to use macros
>          instead of packed struct
> 
>        - Minor spelling corections
> 
> As a reminder here's the list of changes since v1(for v1
> see [1]):
> 
>     - Converted multi-MAC patch to name the device variables as per
>       discussion with Sascha and Stefan [2]. (Stefan, I hope you don't
>       mind my taking the liberty to implement this and it is not too
>       much inconvenice to rebase your patch on top of this change. Let
>       me know if there's a better way for us to sync up on this)
> 
>     - Dropped configurability from VF610 clock ramping code
> 
>     - Converted said code to use imx_ocotp_read_field
> 
>     - Added fusemap for VF610 to accomodate previous change
> 
>     - Added imx_ocotp_sense_enable() API to accomodate reading speed
>       grading information on VF610 (it doesn't seem to be read into
>       shadow memory on chip's bootup)
> 
>     - Add a number of small code cleanups for OCOTP driver
> 
> 
> [1] http://lists.infradead.org/pipermail/barebox/2016-December/028652.html
> [2] http://lists.infradead.org/pipermail/barebox/2016-December/028669.html
> [3] http://lists.infradead.org/pipermail/barebox/2016-December/028727.html
> 
> 
> Andrey Smirnov (20):
>   i.MX: esdhc: Enable host->clk during initialization
>   i.MX: ocotp: Move memory reversing into a subroutine
>   i.MX: ocotp: Add provisions for storing multiple MAC addresses
>   i.MX: ocotp: Initialize OCOTP as early as possible
>   i.MX: clk: Add IMX_PLLV3_SYS_VF610 subtype
>   i.MX: ocotp: Add imx_ocotp_sense_enable()
>   i.MX: imx6-fusemap: Fix SJC_RESP_LOCK width
>   i.MX: Add fusemap for VF610
>   i.MX: vf610: Ramp CPU clock to maximum frequency
>   i.MX: iomuxv3: Add low-level pad code to headers
>   i.MX: iomuxv3: Add helper macros to deconstruct iomux_v3_cfg_t values
>   i.MX: iomuxv3: Add low-level pad configuration routine
>   i.MX6: sabresd: Remove magic numbers in setup_uart
>   i.MX: iomuxv3: Use helper functions in iomux-v3.h
>   i.MX: vf610: Add low-level pin configuration helper
>   i.MX: iomux-vf610: Add missing pad definitions
>   i.MX: imx-usb-phy: Add VF610 OF compatiblity string
>   i.MX: Default CONFIG_USB_IMX_PHY to 'y' on Vybrid
>   i.MX: imx-usb-misc: Add Vybrid support
>   i.MX: vf610-twr: Remove MSCM setup code

Applied, thanks

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
