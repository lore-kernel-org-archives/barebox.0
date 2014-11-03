Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XlGiF-0001Qz-Sm
 for barebox@lists.infradead.org; Mon, 03 Nov 2014 12:26:24 +0000
Date: Mon, 3 Nov 2014 13:26:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141103122601.GF14482@pengutronix.de>
References: <1414665151-7229-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1414665151-7229-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] serial: ns16550: Remove unused fields from NS16550_plat
 structure
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

Hi Alexander,

On Thu, Oct 30, 2014 at 01:32:31PM +0300, Alexander Shiyan wrote:
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  include/ns16550.h | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/include/ns16550.h b/include/ns16550.h
> index 876bb04..ccf950b 100644
> --- a/include/ns16550.h
> +++ b/include/ns16550.h
> @@ -34,9 +34,6 @@ struct NS16550_plat {
>  	/** Clock speed */
>  	unsigned int clock;
>  	int shift;
> -	unsigned int flags;
> -	int mmio;
> -#define NS16650_FLAG_DISABLE_FIFO	1
>  };

This patch removes flags but not its usage in the driver itself.

Squashed this into the commit:


From 668db8bea2c201c3cbdb096cac58287d7b38f396 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 3 Nov 2014 13:24:15 +0100
Subject: [PATCH] fixup! serial: ns16550: Remove unused fields from
 NS16550_plat structure

---
 drivers/serial/serial_ns16550.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 4ca7444..53d48a0 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -441,10 +441,7 @@ static int ns16550_probe(struct device_d *dev)
 	cdev->setbrg = ns16550_setbaudrate;
 	cdev->linux_console_name = devtype->linux_console_name;
 
-	if (plat && (plat->flags & NS16650_FLAG_DISABLE_FIFO))
-		priv->fcrval = FCRVAL & ~FCR_FIFO_EN;
-	else
-		priv->fcrval = FCRVAL;
+	priv->fcrval = FCRVAL;
 
 	devtype->init_port(cdev);
 
-- 
2.1.1

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
