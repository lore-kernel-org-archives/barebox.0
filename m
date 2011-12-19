Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RcZrt-0008Ir-Sq
 for barebox@lists.infradead.org; Mon, 19 Dec 2011 09:50:50 +0000
Date: Mon, 19 Dec 2011 10:50:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111219095035.GD27267@pengutronix.de>
References: <1324072234-31634-1-git-send-email-robert.jarzmik@free.fr>
 <1324072234-31634-8-git-send-email-robert.jarzmik@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1324072234-31634-8-git-send-email-robert.jarzmik@free.fr>
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
Subject: Re: [PATCH V2 7/8] mtd/drivers: split mtd mtdoob devices
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On Fri, Dec 16, 2011 at 10:50:33PM +0100, Robert Jarzmik wrote:
> Split /dev/mtd and /dev/mtdoob devices.
> Remove from mtd structure the mtdoob character device.
> 
> diff --git a/drivers/mtd/mtdoob.c b/drivers/mtd/mtdoob.c
> new file mode 100644
> index 0000000..ba30c5b
> --- /dev/null
> +++ b/drivers/mtd/mtdoob.c
> @@ -0,0 +1,100 @@
> +/*
> + * MTD oob device
> + *
> + * Copyright (C) 2011 Sasha Hauer

s/Sasha/Sascha/


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
