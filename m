Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1ORjlp-0000UV-FX
	for barebox@lists.infradead.org; Thu, 24 Jun 2010 10:34:58 +0000
Date: Thu, 24 Jun 2010 12:34:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100624103455.GT12115@pengutronix.de>
References: <1277372997-6472-1-git-send-email-eric@eukrea.com>
	<1277372997-6472-2-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1277372997-6472-2-git-send-email-eric@eukrea.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/3] unbreak imx-ipu-fb
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Thu, Jun 24, 2010 at 11:49:56AM +0200, Eric B=E9nard wrote:
> commit c3789cd49b43ec1c414ba1b0e9f48e8ccc19f8e1 set fb0.enable to 0
> as a default. Re-enabling the display doesn't work after this.
> Removing sdc_enable_channel from imxfb_probe fix this problem.
> =

> This patch also remove verbose log from ipu_fb_disable.

I already stumbled upon this. I prefer the following patch which fixes
the enabling/disabling of the framebuffer.

Sascha

    imx ipu fb: remove checking of IPU_CHA_BUF0_RDY
    =

    This check prevents the driver from successfully enabling/disabling
    the controller more than once, because the second time we get
    here the check fails and the drivers bails out. We do not need this
    check at all, so remove it.
    =

    Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

diff --git a/drivers/video/imx-ipu-fb.c b/drivers/video/imx-ipu-fb.c
index 0bd86b2..d9b94e4 100644
--- a/drivers/video/imx-ipu-fb.c
+++ b/drivers/video/imx-ipu-fb.c
@@ -664,12 +664,6 @@ static int ipu_enable_channel(struct ipu_fb_info *fbi,=
 enum ipu_channel channel)
 static int ipu_update_channel_buffer(struct ipu_fb_info *fbi,
 		enum ipu_channel channel, void *buf)
 {
-	u32 reg;
-
-	reg =3D reg_read(fbi, IPU_CHA_BUF0_RDY);
-	if (reg & (1UL << channel))
-		return -EACCES;
-
 	/* 44.3.3.1.9 - Row Number 1 (WORD1, offset 0) */
 	reg_write(fbi, dma_param_addr(channel) + 0x0008UL, IPU_IMA_ADDR);
 	reg_write(fbi, (u32)buf, IPU_IMA_DATA);

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
