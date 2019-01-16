Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gjpGO-00063E-Ve
 for barebox@lists.infradead.org; Wed, 16 Jan 2019 17:46:08 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1gjpGL-0006gU-7W
 for barebox@lists.infradead.org; Wed, 16 Jan 2019 18:46:01 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92-RC4)
 (envelope-from <afa@pengutronix.de>) id 1gjpGK-0007q5-P4
 for barebox@lists.infradead.org; Wed, 16 Jan 2019 18:46:00 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 16 Jan 2019 18:45:50 +0100
Message-Id: <20190116174559.17416-3-a.fatoum@pengutronix.de>
In-Reply-To: <20190116174559.17416-1-a.fatoum@pengutronix.de>
References: <20190116174559.17416-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 02/11] ARM: at91: sama5d3: remove never referenced empty
 header file
To: barebox@lists.infradead.org

The file was added along with the sama5d3 support, but never used,
so remove it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-at91/include/mach/sama5d3_matrix.h | 15 ---------------
 1 file changed, 15 deletions(-)
 delete mode 100644 arch/arm/mach-at91/include/mach/sama5d3_matrix.h

diff --git a/arch/arm/mach-at91/include/mach/sama5d3_matrix.h b/arch/arm/mach-at91/include/mach/sama5d3_matrix.h
deleted file mode 100644
index 8176b38bd328..000000000000
--- a/arch/arm/mach-at91/include/mach/sama5d3_matrix.h
+++ /dev/null
@@ -1,15 +0,0 @@
-/*
- * Matrix-centric header file for the SAMA5D3 family
- *
- *  Copyright (C) 2009-2012 Atmel Corporation.
- *
- * Only EBI related registers.
- * Write Protect register definitions may be useful.
- *
- * Licensed under GPLv2 or later.
- */
-
-#ifndef SAMA5D3_MATRIX_H
-#define SAMA5D3_MATRIX_H
-
-#endif
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
