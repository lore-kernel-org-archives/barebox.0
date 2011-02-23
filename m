Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PsAcu-0007Zv-DF
	for barebox@lists.infradead.org; Wed, 23 Feb 2011 09:03:17 +0000
Date: Wed, 23 Feb 2011 10:03:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110223090310.GG7381@pengutronix.de>
References: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00AF4@SRV-VS06.TELEVIC.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00AF4@SRV-VS06.TELEVIC.COM>
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
Subject: Re: booting kernel(s)
To: Vanalme Filip <F.Vanalme@TELEVIC.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, Feb 22, 2011 at 02:15:46PM +0100, Vanalme Filip wrote:
> On our i.MX27 based board, we would like to have two Kernels : a
> default kernel and a "rescue" kernel. The first one is the one that
> will be started normally. The latter would be used only in (the rare)
> case the default kernel fails to start. E.g., when we remotely update
> the kernel, it could be that the uploaded image gets corrupt and
> cannot be started anymore. In that case, we would like to fall back to
> a "rescue" kernel, a minimal kernel and a small application with a
> minimum of capabilities, i.e. with some network capabilities just to
> be able to upload a new image.  We already have this feature for
> another device that runs U-boot. I guess this should also be possible
> in barebox ?

Sure. You have to adjust your partitioning to store a second kernel
and maybe a second rootfs.

> Because it was implemented in U-boot some time ago by
> another company, I'm not completely sure how it is done. I think it's
> done with this single line in the board's configuration file : #define
> CONFIG_BOOTCOMMAND   "bootm 0x20200000;bootm 0x200A0000"

This works for the case the checksum in the first kernel image is wrong.
Then the second bootm command will be executed.

In barebox this would look like this:

nand_parts=256k(barebox),256k(barebox_env),2M(kernel1),2M(kernel2),-(root)

...

bootm /dev/nand0.kernel1.bb; bootm /dev/nand0.kernel2.bb

> I guess, when
> the first bootm command fails (due to corrupt image), it will execute
> the second one. If the first command is successful, the Linux kernel
> takes over and the second command gets never executed. Am I right ?  I
> think I can do the same thing in my Barebox's boot script, can I ? Or
> are there other/better solutions to handle this ?

This fails when the first kernel has a valid checksum but fails to start
maybe because of a corrupt rootfs. But there are currently no general
solutions for this.

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
