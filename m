Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.cvg.de ([62.153.82.30])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UcF5s-00067d-9k
 for barebox@lists.infradead.org; Tue, 14 May 2013 13:16:41 +0000
Received: from mail.cvg.de (mail.cvg.de [62.153.82.30])
 by mailout-1.intern.sigma-chemnitz.de (8.14.4/8.14.4) with ESMTP id
 r4EDFUx1009815
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=OK)
 for <barebox@lists.infradead.org>; Tue, 14 May 2013 15:15:30 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Tue, 14 May 2013 15:14:55 +0200
Message-Id: <1368537296-19610-2-git-send-email-enrico.scholz@sigma-chemnitz.de>
In-Reply-To: <1368537296-19610-1-git-send-email-enrico.scholz@sigma-chemnitz.de>
References: <1368537296-19610-1-git-send-email-enrico.scholz@sigma-chemnitz.de>
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
Subject: [PATCH 2/3] ARM v7: v7_mmu_cache_flush(): do not restore r0-r3 (minor
 optimization)
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>

Registers 'r0' till 'r3' are scratch registers and do not need to be
restored.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 arch/arm/cpu/cache-armv7.S | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/cache-armv7.S b/arch/arm/cpu/cache-armv7.S
index 5bdf7e4..5595cf6 100644
--- a/arch/arm/cpu/cache-armv7.S
+++ b/arch/arm/cpu/cache-armv7.S
@@ -65,7 +65,7 @@ ENTRY(v7_mmu_cache_flush)
 		mcr	p15, 0, r12, c7, c14, 0	@ clean+invalidate D
 		b	iflush
 hierarchical:
-		stmfd	sp!, {r0-r7, r9-r11}
+		stmfd	sp!, {r4-r7, r9-r11}
 		mcr	p15, 0, r12, c7, c10, 5	@ DMB
 		mrc	p15, 1, r0, c0, c0, 1	@ read clidr
 		ands	r3, r0, #0x7000000	@ extract loc from clidr
@@ -107,7 +107,7 @@ skip:
 		cmp	r3, r12
 		bgt	loop1
 finished:
-		ldmfd	sp!, {r0-r7, r9-r11}
+		ldmfd	sp!, {r4-r7, r9-r11}
 		mov	r12, #0			@ switch back to cache level 0
 		mcr	p15, 2, r12, c0, c0, 0	@ select current cache level in cssr
 iflush:
-- 
1.8.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
