Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gr8fr-00030H-8u
 for barebox@lists.infradead.org; Tue, 05 Feb 2019 21:54:38 +0000
Received: by mail-pl1-x643.google.com with SMTP id a14so2111905plm.12
 for <barebox@lists.infradead.org>; Tue, 05 Feb 2019 13:54:34 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue,  5 Feb 2019 13:54:01 -0800
Message-Id: <20190205215411.589-6-andrew.smirnov@gmail.com>
In-Reply-To: <20190205215411.589-1-andrew.smirnov@gmail.com>
References: <20190205215411.589-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 05/15] soc: imx: gpcv2: Switch to SPDX identifier
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit 8d8e3b7d8f06f69005d829d4a195b00ef976004b

  Adopt the SPDX license identifier headers to ease license compliance
  management.

  Signed-off-by: Fabio Estevam <fabio.estevam@nxp.com>
  Signed-off-by: Shawn Guo <shawnguo@kernel.org>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/soc/imx/gpcv2.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
index 0b428bfc1..7bf45d42b 100644
--- a/drivers/soc/imx/gpcv2.c
+++ b/drivers/soc/imx/gpcv2.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0+
 /*
  * Copyright 2017 Impinj, Inc
  * Author: Andrey Smirnov <andrew.smirnov@gmail.com>
@@ -5,13 +6,6 @@
  * Based on the code of analogus driver:
  *
  * Copyright 2015-2017 Pengutronix, Lucas Stach <kernel@pengutronix.de>
- *
- * The code contained herein is licensed under the GNU General Public
- * License. You may obtain a copy of the GNU General Public License
- * Version 2 or later at the following locations:
- *
- * http://www.opensource.org/licenses/gpl-license.html
- * http://www.gnu.org/copyleft/gpl.html
  */
 
 #include <of_device.h>
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
