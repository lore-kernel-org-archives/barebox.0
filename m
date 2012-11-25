Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from m50-110.126.com ([123.125.50.110])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TcXLg-0003bq-NL
 for barebox@lists.infradead.org; Sun, 25 Nov 2012 08:14:00 +0000
Date: Sun, 25 Nov 2012 16:11:49 +0800
From: =?utf-8?B?5byg5b+g5bGx?= <zzs213@126.com>
Message-ID: <20121125081149.GB19824@greatfirst.com>
References: <20121123155224.GV8327@game.jcrosoft.org>
 <1353686104-31295-1-git-send-email-plagnioj@jcrosoft.com>
 <1353686104-31295-4-git-send-email-plagnioj@jcrosoft.com>
 <20121124034241.GA19824@greatfirst.com>
 <20121124084544.GY8327@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121124084544.GY8327@game.jcrosoft.org>
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
Subject: Re: [PATCH 4/4] Revert "mtd: atmel_nand: optimize read/write buffer
 functions"
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox <barebox@lists.infradead.org>

> >
> > This patch resolves my problem
> I'm expecting to see your patches
>

My first patch very simple:

------------------
diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
index 0477178..a111463 100644
--- a/drivers/mtd/nand/atmel_nand.c
+++ b/drivers/mtd/nand/atmel_nand.c
@@ -155,23 +155,6 @@ static int atmel_nand_device_ready(struct mtd_info *mtd)
 }

 /*
- * Minimal-overhead PIO for data access.
- */
-static void atmel_read_buf(struct mtd_info *mtd, u8 *buf, int len)
-{
-       struct nand_chip *chip = mtd->priv;
-
-       memcpy_fromio(buf, chip->IO_ADDR_R, len);
-}
-
-static void atmel_write_buf(struct mtd_info *mtd, const u8 *buf, int len)
-{
-       struct nand_chip *chip = mtd->priv;
-
-       memcpy_toio(chip->IO_ADDR_W, buf, len);
-}
-
-/*
  * Return number of ecc bytes per sector according to sector size and
  * correction capability
  *
@@ -1115,8 +1098,9 @@ static int __init atmel_nand_probe(struct device_d *dev)
        if (host->board->bus_width_16)          /* 16-bit bus width */
                nand_chip->options |= NAND_BUSWIDTH_16;

-       nand_chip->read_buf = atmel_read_buf;
-       nand_chip->write_buf = atmel_write_buf;
+       /* use default */
+       nand_chip->read_buf = NULL;
+       nand_chip->write_buf = NULL;

        atmel_nand_enable(host);
------------------

After seeing your patch, I suppose the flowing patch may be works.
The idea is use optimized read/write function when 2**ale >= pagesize
and 2**cle >= pagesize.

I can't test it because the ale = a7, cle = a6 on my board, but
pagesize is 2048

------------------
diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
index 0477178..66cf5db 100644
--- a/drivers/mtd/nand/atmel_nand.c
+++ b/drivers/mtd/nand/atmel_nand.c
@@ -1115,8 +1115,8 @@ static int __init atmel_nand_probe(struct device_d *dev)
        if (host->board->bus_width_16)          /* 16-bit bus width */
                nand_chip->options |= NAND_BUSWIDTH_16;

-       nand_chip->read_buf = atmel_read_buf;
-       nand_chip->write_buf = atmel_write_buf;
+       nand_chip->read_buf = NULL;
+       nand_chip->write_buf = NULL;

        atmel_nand_enable(host);

@@ -1151,6 +1151,11 @@ static int __init atmel_nand_probe(struct device_d *dev)
                        goto err_hw_ecc;
        }

+       if((1 << pdata->ale) >= mtd->writesize && (1 << pdata->cle) >= mtd->writesize) {
+               nand_chip->read_buf = atmel_read_buf;
+               nand_chip->write_buf = atmel_write_buf;
+       }
+
        /* second phase scan */
        if (nand_scan_tail(mtd)) {
                res = -ENXIO;
------------------

-- 
Best Regards,
zzs



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
