Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ju7pj-0006DA-4D
 for barebox@lists.infradead.org; Sat, 11 Jul 2020 05:13:57 +0000
Date: Sat, 11 Jul 2020 07:13:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200711051353.GB20074@pengutronix.de>
References: <20200701091122.3437-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200701091122.3437-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH RESEND 00/28] ARM: at91: add sama5d2 first stage support
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jul 01, 2020 at 11:10:54AM +0200, Ahmad Fatoum wrote:
> [Sent out old branch by mistake, this one actually works.]
> 
> This adapts the sama5d3 first stage patch set I sent around a few times
> for use on the sama5d2. Unlike the original patch set, we now do the
> chainloading in the PBL, so integrators can still use multi-image and
> don't have to build barebox more than once.
> 
> With the FAT PBL implementation in place, first stages of the OMAP and
> SoCFPGA could also be migrated to multi-image.
> 
> Much code has been adapted from at91bootstrap v3.8.12. Key changes:
> 
>  - We detect bootsource automatically, so we don't need to hardcode
>    which MCI instance to use
>  - We pass along the bootsource, so it's available to second stage
>    bootloaders
>  - We don't reset the SD card, so we can avoid having a complete
>    SD/MMC core implementation in PBL
>  - We don't disable the watchdog in first stage. We leave the decision
>    on how to deal with it to second stage.
> 
> There's no defconfig for this yet, it will follow along with a generic
> at91_multi_defconfig, when support for the sama5d3 is posted.

Applied with the fixups you posted

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
