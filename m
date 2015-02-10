Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YLBSw-0001ZO-Fx
 for barebox@lists.infradead.org; Tue, 10 Feb 2015 14:07:03 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile11) with ESMTP id
 t1AE6ct2004493
 for <barebox@lists.infradead.org>; Tue, 10 Feb 2015 23:06:38 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili17) with ESMTP id t1AE6cA09193
 for <barebox@lists.infradead.org>; Tue, 10 Feb 2015 23:06:38 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Tue, 10 Feb 2015 23:06:32 +0900
Message-Id: <1423577192-16568-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH] defaultenv: ignore barebox_zero_env
To: barebox@lists.infradead.org

Since commit c4c2317fe8a2 (defaultenv: generate force-built-in
(zero) environment file), we have this generated file.

Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
---

 defaultenv/.gitignore | 1 +
 1 file changed, 1 insertion(+)

diff --git a/defaultenv/.gitignore b/defaultenv/.gitignore
index 40e90d7..7c33850 100644
--- a/defaultenv/.gitignore
+++ b/defaultenv/.gitignore
@@ -1 +1,2 @@
 barebox_default_env*
+barebox_zero_env
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
