Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2DMp-0007hO-0I
 for barebox@lists.infradead.org; Thu, 13 Feb 2020 12:13:20 +0000
From: Roland Hieber <rhi@pengutronix.de>
Date: Thu, 13 Feb 2020 13:12:53 +0100
Message-Id: <20200213121254.17491-7-rhi@pengutronix.de>
In-Reply-To: <20200213121254.17491-1-rhi@pengutronix.de>
References: <20190207223906.24394-1-rohieb@rohieb.name>
 <20200213121254.17491-1-rhi@pengutronix.de>
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
Subject: [PATCH v3 6/7] include: spi: add SPDX GPL-2.0-or-later license tags
 where applicable
To: Barebox Mailing List <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Roland Hieber <rohieb@rohieb.name>

From: Roland Hieber <rohieb@rohieb.name>

Signed-off-by: Roland Hieber <rohieb@rohieb.name>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/spi/spi_gpio.h | 11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

diff --git a/include/spi/spi_gpio.h b/include/spi/spi_gpio.h
index 841c934f6ead..a18b7dbe078a 100644
--- a/include/spi/spi_gpio.h
+++ b/include/spi/spi_gpio.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
 /*
  * SPI master driver using generic bitbanged GPIO
  *
@@ -5,16 +6,6 @@
  *
  * Based on Linux driver
  *   Copyright (C) 2006,2008 David Brownell
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #ifndef __SPI_GPIO_H
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
