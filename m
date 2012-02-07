Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RutVX-00059u-2S
 for barebox@lists.infradead.org; Tue, 07 Feb 2012 22:27:27 +0000
Date: Tue, 7 Feb 2012 23:27:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120207222720.GI3852@pengutronix.de>
References: <E28AAFD00EFAA646AE3DF9B89CD24A8931834527@DBDE01.ent.ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E28AAFD00EFAA646AE3DF9B89CD24A8931834527@DBDE01.ent.ti.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: An observation with omap_xload
To: "Premi, Sanjeev" <premi@ti.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, Feb 07, 2012 at 05:23:13PM +0000, Premi, Sanjeev wrote:
> Yesterday, i spent quite sometime dealing with 'MLO', unable to find
> 'barebox.bin'. The failure was always:
> 
> barebox 2012.01.0ABC-00248-g9119228-dirty (Feb  7 2012 - 16:39:43)
> 
> Board: Texas Instrument's OMAP3EVM
> Malloc space: 0x87bfff10 -> 0x87ffff0f (size  4 MB)
> Stack space : 0x4020f000 -> 0x4020fc00 (size  3 kB)
> booting from MMC1
> mounting sd card failed with -22
> booting failed
> 
> Since, I was working mostly off the windows machine, i didn't
> realize that SD card had only one partition and mount would
> fail as we explicitly mount "disk0.0" in omap_xload_boot_mmc().

You mean that it only has one partition without a partition table?

> 
> Unfortunately, trying to mount "disk0" didn't help and I got
> same error. Haven't debugged this further though.
> 
> Also, would it make sense to try mounting "disk0.0" and "disk0"
> before returning failure?

Yes, seems to make sense. The only contra I can imagine is that
for booting a kernel and rootfs the user probably needs a partitioned SD
card anyway.
 
> 
> I am anyways planning to submit a patch changing the message:
>   mounting sd card failed with -22
> to
>   Unable to mount disk0.0 (-22)

Sounds good.

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
