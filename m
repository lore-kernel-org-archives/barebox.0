Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YIa3a-0000OB-AH
 for barebox@lists.infradead.org; Tue, 03 Feb 2015 09:46:07 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile11) with ESMTP id
 t139jgcE004692
 for <barebox@lists.infradead.org>; Tue, 3 Feb 2015 18:45:42 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili16) with ESMTP id t139jgM01496
 for <barebox@lists.infradead.org>; Tue, 3 Feb 2015 18:45:42 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Tue,  3 Feb 2015 18:45:39 +0900
Message-Id: <1422956739-2957-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH] fixup! defaultenv: generate force-built-in (zero) environment
 file
To: barebox@lists.infradead.org

---

Without this, out-of-tree build (O=option) fails.

Sascha,
Please squash this before you merge the next branches into the mainline.



 defaultenv/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/defaultenv/Makefile b/defaultenv/Makefile
index 8a001ec..33e0ece 100644
--- a/defaultenv/Makefile
+++ b/defaultenv/Makefile
@@ -24,7 +24,7 @@ $(obj)/barebox_default_env.h: $(obj)/barebox_default_env$(DEFAULT_COMPRESSION_SU
 	$(call if_changed,env_h)
 
 quiet_cmd_env_zero = ENVZ    $@
-cmd_env_zero = ($(srctree)/scripts/bareboxenv -z $(CONFIG_DEFAULT_ENVIRONMENT_PATH) $@)
+cmd_env_zero = ($(objtree)/scripts/bareboxenv -z $(CONFIG_DEFAULT_ENVIRONMENT_PATH) $@)
 
 $(obj)/barebox_zero_env: FORCE
 	$(call cmd,env_zero)
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
