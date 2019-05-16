Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRCXK-0006bg-Br
 for barebox@lists.infradead.org; Thu, 16 May 2019 09:18:52 +0000
Received: from unicorn.hi.pengutronix.de
 ([2001:67c:670:100:a61f:72ff:fe69:16d] helo=unicorn)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1hRCXF-0000hl-KO
 for barebox@lists.infradead.org; Thu, 16 May 2019 11:18:45 +0200
Received: from str by unicorn with local (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1hRCXF-0002EL-Bb
 for barebox@lists.infradead.org; Thu, 16 May 2019 11:18:45 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu, 16 May 2019 11:18:39 +0200
Message-Id: <20190516091839.8504-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
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
Subject: [PATCH] commands: spi: fix NULL pointer dereference
To: Barebox List <barebox@lists.infradead.org>

The renaming of "master" to "controller" done in
    812a9ddcdf211302a050cf8f61f7af577bc29a23
    spi: Generalize SPI "master" to "controller"

breaks the spi command, because the spi.master pointer is not assigned.
The pointer is kept for backwards compatability.

Assign it, so that spi drivers that are still using "spi->master" can be
used.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 commands/spi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/commands/spi.c b/commands/spi.c
index 55a0e255af17..d35aa1cd81c9 100644
--- a/commands/spi.c
+++ b/commands/spi.c
@@ -67,6 +67,7 @@ static int do_spi(int argc, char *argv[])
 		printf("spi bus %d not found\n", bus);
 		return -ENODEV;
 	}
+	spi.master = spi.controller;
 
 	if (spi.chip_select >= spi.controller->num_chipselect) {
 		printf("spi chip select (%d) >= controller num chipselect (%d)\n",
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
