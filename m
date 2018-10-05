Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g8PFq-0000Om-Kg
 for barebox@lists.infradead.org; Fri, 05 Oct 2018 12:31:00 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1g8PFb-00060A-GP
 for barebox@lists.infradead.org; Fri, 05 Oct 2018 14:30:35 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri,  5 Oct 2018 14:30:35 +0200
Message-Id: <20181005123035.11105-1-l.stach@pengutronix.de>
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
Subject: [PATCH] arm: crypto: fix SHA256 shipped assembler code
To: barebox@lists.infradead.org

Binutils 2.29 changed behavior of the adr instruction to always
add the thumb mode switch offset, which breaks usages where the
user is interested in the address of an internal symbol, instead
of a jump address. Binutils 3.31 fixed this by only adding the
offset when interworking is required.

As there are toolchains out there with broken binutils, it's better
to fix the code to work around the issue by not using the named
label.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
Tested-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 arch/arm/crypto/sha256-core.S_shipped | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/crypto/sha256-core.S_shipped b/arch/arm/crypto/sha256-core.S_shipped
index 15e0f4ad1e68..4f9cf833b94b 100644
--- a/arch/arm/crypto/sha256-core.S_shipped
+++ b/arch/arm/crypto/sha256-core.S_shipped
@@ -92,7 +92,7 @@ sha256_block_data_order:
 #if __ARM_ARCH__<7
 	sub	r3,pc,#8		@ sha256_block_data_order
 #else
-	adr	r3,sha256_block_data_order
+	adr	r3,.
 #endif
 #if __ARM_MAX_ARCH__>=7 && !defined(__KERNEL__)
 	ldr	r12,.LOPENSSL_armcap
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
