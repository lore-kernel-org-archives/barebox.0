Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from calrissian.rohieb.name ([81.20.132.56] helo=rohieb.name)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1grsKu-0005jn-8i
 for barebox@lists.infradead.org; Thu, 07 Feb 2019 22:40:02 +0000
From: Roland Hieber <rohieb@rohieb.name>
Date: Thu,  7 Feb 2019 23:39:05 +0100
Message-Id: <20190207223906.24394-5-rohieb@rohieb.name>
In-Reply-To: <20190207223906.24394-1-rohieb@rohieb.name>
References: <20190207223906.24394-1-rohieb@rohieb.name>
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
Subject: [PATCH 5/6] include: spi: add SPDX GPL-2.0-or-later license tags
 where applicable
To: barebox@lists.infradead.org
Cc: rhi@pengutronix.de, Roland Hieber <rohieb@rohieb.name>

Signed-off-by: Roland Hieber <rohieb@rohieb.name>
---
 include/spi/spi_gpio.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/spi/spi_gpio.h b/include/spi/spi_gpio.h
index 841c934f6e..ea24fb2fb3 100644
--- a/include/spi/spi_gpio.h
+++ b/include/spi/spi_gpio.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
 /*
  * SPI master driver using generic bitbanged GPIO
  *
  * Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
  *
  * Based on Linux driver
  *   Copyright (C) 2006,2008 David Brownell
  *
  * This program is free software; you can redistribute it and/or modify
  * it under the terms of the GNU General Public License as published by
  * the Free Software Foundation; either version 2 of the License, or
  * (at your option) any later version.
  *
  * This program is distributed in the hope that it will be useful,
  * but WITHOUT ANY WARRANTY; without even the implied warranty of
-- 
2.19.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
