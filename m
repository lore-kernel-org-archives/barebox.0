Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.jtang.org ([173.10.136.73] helo=highcastle.jtang.org)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bFYb6-0008Vg-Te
 for barebox@lists.infradead.org; Wed, 22 Jun 2016 03:13:01 +0000
Received: from krondor.isles (krondor.isles [192.168.1.2])
 (Authenticated sender: tang)
 by highcastle.jtang.org (Postfix) with ESMTPSA id 50384BEEDF
 for <barebox@lists.infradead.org>; Tue, 21 Jun 2016 23:05:52 -0400 (EDT)
From: "J. Tang" <tang@jtang.org>
Message-Id: <CC3701D5-B235-416E-B5C7-18F82E3B9A8A@jtang.org>
Date: Tue, 21 Jun 2016 23:05:51 -0400
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
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
Subject: [PATCH] ppc: fix USPRG0 define
To: barebox@lists.infradead.org

The #define USPRG0 aliases SPRN_USPRG, but it should refer to
SPRN_USPRG0. There is no register SPRN_USPRG on PowerPC.

Signed-off-by: Jason Tang <tang@jtang.org>
---
 arch/ppc/include/asm/processor.h |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/ppc/include/asm/processor.h b/arch/ppc/include/asm/processor.h
index e8a9c14..39a89a9 100644
--- a/arch/ppc/include/asm/processor.h
+++ b/arch/ppc/include/asm/processor.h
@@ -572,7 +572,7 @@
 #define CSRR0	SPRN_CSRR0
 #define CSRR1	SPRN_CSRR1
 #define IVPR	SPRN_IVPR
-#define USPRG0	SPRN_USPRG
+#define USPRG0	SPRN_USPRG0
 #define SPRG4R	SPRN_SPRG4R
 #define SPRG5R	SPRN_SPRG5R
 #define SPRG6R	SPRN_SPRG6R
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
