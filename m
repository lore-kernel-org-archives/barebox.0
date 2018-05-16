Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x241.google.com ([2607:f8b0:400e:c01::241])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fJ2by-0004Pw-N8
 for barebox@lists.infradead.org; Wed, 16 May 2018 20:01:23 +0000
Received: by mail-pl0-x241.google.com with SMTP id c19-v6so1048517pls.6
 for <barebox@lists.infradead.org>; Wed, 16 May 2018 13:01:09 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 16 May 2018 13:00:09 -0700
Message-Id: <20180516200036.29829-2-andrew.smirnov@gmail.com>
In-Reply-To: <20180516200036.29829-1-andrew.smirnov@gmail.com>
References: <20180516200036.29829-1-andrew.smirnov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 01/28] ARM: mmu: Remove unused ARM_VECTORS_SIZE
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/mmu.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 6ccd5893b..9472013ca 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -270,12 +270,6 @@ static int arm_mmu_remap_sdram(struct memory_bank *bank)
 
 	return 0;
 }
-/*
- * We have 8 exception vectors and the table consists of absolute
- * jumps, so we need 8 * 4 bytes for the instructions and another
- * 8 * 4 bytes for the addresses.
- */
-#define ARM_VECTORS_SIZE	(sizeof(u32) * 8 * 2)
 
 #define ARM_HIGH_VECTORS	0xffff0000
 #define ARM_LOW_VECTORS		0x0
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
