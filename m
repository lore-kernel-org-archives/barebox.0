Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from calrissian.rohieb.name ([81.20.132.56] helo=rohieb.name)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyHQ6-0006Rh-01
 for barebox@lists.infradead.org; Sun, 02 Feb 2020 15:44:28 +0000
From: Roland Hieber <rohieb@rohieb.name>
Date: Sun,  2 Feb 2020 16:43:00 +0100
Message-Id: <20200202154301.18383-6-rohieb@rohieb.name>
In-Reply-To: <20200202154301.18383-1-rohieb@rohieb.name>
References: <20190207223906.24394-1-rohieb@rohieb.name>
 <20200202154301.18383-1-rohieb@rohieb.name>
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
Subject: [PATCH v2 5/6] include: spi: add SPDX GPL-2.0-or-later license tags
 where applicable
To: barebox@lists.infradead.org
Cc: Roland Hieber <rohieb@rohieb.name>

Signed-off-by: Roland Hieber <rohieb@rohieb.name>
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
2.24.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
