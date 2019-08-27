Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2d67-00088V-5C
 for barebox@lists.infradead.org; Tue, 27 Aug 2019 15:09:30 +0000
Received: from geraet.pengutronix.de (hazel.nat.pengutronix.de [85.220.165.66])
 (Authenticated sender: ahmad@a3f.at)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 6AD9B200009
 for <barebox@lists.infradead.org>; Tue, 27 Aug 2019 15:09:25 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Tue, 27 Aug 2019 17:09:11 +0200
Message-Id: <20190827150918.16247-4-ahmad@a3f.at>
In-Reply-To: <20190827150918.16247-1-ahmad@a3f.at>
References: <20190827150918.16247-1-ahmad@a3f.at>
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
Subject: [PATCH v2 03/10] blackfin: delete unused <asm/barebox.h> definitions
To: barebox@lists.infradead.org

The file currently defines struct bd_info, bd_t, bi_env_data and bi_env_crc,
no of which is used anywhere. Delete them in preparation for getting rid
of <asm/barebox.h> altogether.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/blackfin/include/asm/barebox.h | 18 ------------------
 1 file changed, 18 deletions(-)

diff --git a/arch/blackfin/include/asm/barebox.h b/arch/blackfin/include/asm/barebox.h
index 2684f60a5ffe..4b1898270a6c 100644
--- a/arch/blackfin/include/asm/barebox.h
+++ b/arch/blackfin/include/asm/barebox.h
@@ -1,6 +1,4 @@
 /*
- * barebox - barebox.h Structure declarations for board specific data
- *
  * Copyright (c) 2005 blackfin.uclinux.org
  *
  * (C) Copyright 2000-2004
@@ -24,20 +22,4 @@
 #ifndef _BAREBOX_H_
 #define _BAREBOX_H_	1
 
-typedef struct bd_info {
-	int bi_baudrate;		/* serial console baudrate */
-	unsigned long bi_ip_addr;	/* IP Address */
-	unsigned char bi_enetaddr[6];	/* Ethernet adress */
-	unsigned long bi_arch_number;	/* unique id for this board */
-	unsigned long bi_boot_params;	/* where this board expects params */
-	unsigned long bi_memstart;	/* start of DRAM memory */
-	unsigned long bi_memsize;	/* size  of DRAM memory in bytes */
-	unsigned long bi_flashstart;	/* start of FLASH memory */
-	unsigned long bi_flashsize;	/* size  of FLASH memory */
-	unsigned long bi_flashoffset;	/* reserved area for startup monitor */
-} bd_t;
-
-#define bi_env_data bi_env->data
-#define bi_env_crc  bi_env->crc
-
 #endif	/* _BAREBOX_H_ */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
