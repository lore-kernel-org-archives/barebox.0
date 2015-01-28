Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YGP44-0003cN-Nq
 for barebox@lists.infradead.org; Wed, 28 Jan 2015 09:37:37 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile14) with ESMTP id
 t0S9bA6Y013592
 for <barebox@lists.infradead.org>; Wed, 28 Jan 2015 18:37:10 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili13) with ESMTP id t0S9bBJ03689
 for <barebox@lists.infradead.org>; Wed, 28 Jan 2015 18:37:11 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Wed, 28 Jan 2015 18:37:08 +0900
Message-Id: <1422437828-2106-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH] ARM: fix a wrong comment about relocate_to_adr
To: barebox@lists.infradead.org

The relocated_to_adr does not clear the .bss section.
It is done by the setup_c routine.

Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
---

 arch/arm/cpu/setupc.S | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/cpu/setupc.S b/arch/arm/cpu/setupc.S
index 2df2683..c232b08 100644
--- a/arch/arm/cpu/setupc.S
+++ b/arch/arm/cpu/setupc.S
@@ -40,7 +40,7 @@ ENDPROC(setup_c)
 /*
  * void relocate_to_adr(unsigned long targetadr)
  *
- * Copy binary to targetadr, relocate code, clear bss and continue
+ * Copy binary to targetadr, relocate code and continue
  * executing at new address.
  */
 .section .text.relocate_to_adr
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
