Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cGMmh-0004zk-PP
 for barebox@lists.infradead.org; Mon, 12 Dec 2016 09:20:37 +0000
Message-ID: <1481534412.2574.9.camel@pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Mon, 12 Dec 2016 10:20:12 +0100
In-Reply-To: <20161212054728.7huafvpweafhbnzg@pengutronix.de>
References: <20161208101551.32119-1-p.zabel@pengutronix.de>
 <20161212054728.7huafvpweafhbnzg@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH] of: base: add chosen node if it does not exist when
 adding initrd
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mo, 2016-12-12 at 06:47 +0100, Sascha Hauer wrote:
> On Thu, Dec 08, 2016 at 11:15:51AM +0100, Philipp Zabel wrote:
> > If the chosen node does not exist, of_add_initrd fails to pass the
> > initrd to the kernel. Instead it should create the chosen node, just
> > like of_fixup_bootargs does.
> > 
> > Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> > ---
> >  drivers/of/base.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> Applied, thanks

This is actually a fix for booting linux-next with initramfs on barebox
and is the cause of some boot failures in our kernel-ci lab:
https://storage.kernelci.org/next/next-20161206/arm-imx_v6_v7_defconfig/lab-pengutronix/boot-imx6dl-riotboard.html

Maybe this should be merged to master instead of next?

Regards,
Jan
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
