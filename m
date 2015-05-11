Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YrnfQ-0005ST-A8
 for barebox@lists.infradead.org; Mon, 11 May 2015 13:22:44 +0000
Date: Mon, 11 May 2015 15:22:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150511132221.GL6325@pengutronix.de>
References: <1431074954-28737-1-git-send-email-mpa@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1431074954-28737-1-git-send-email-mpa@pengutronix.de>
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
Subject: Re: [PATCH] imx6: lowlevel_init: Fix workaround for new i.MX6s chips
To: Markus Pargmann <mpa@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, May 08, 2015 at 10:49:14AM +0200, Markus Pargmann wrote:
> This errata workaround was introduced for i.MX6Q, i.MX6D and i.MX6SL.
> Old revisions of i.MX6s chips had no problems with the PFD resets.
> 
> In a newer i.MX6s revision I had issues with this code when booting in
> internal boot mode from NAND or in serial downloader mode. FUSE mode
> worked fine although it jumped directly to serial downloader mode.
> 
> This patch executes the PFD workaround only for i.MX6Q and i.MX6D which
> fixes the issues I saw.
> 
> Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
> ---
>  arch/arm/mach-imx/imx6.c | 48 +++++++++++++++++++++++++-----------------------
>  1 file changed, 25 insertions(+), 23 deletions(-)

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
