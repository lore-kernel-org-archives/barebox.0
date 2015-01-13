Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YAvof-0000ee-2X
 for barebox@lists.infradead.org; Tue, 13 Jan 2015 07:23:06 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile12) with ESMTP id
 t0D7Mit7011142
 for <barebox@lists.infradead.org>; Tue, 13 Jan 2015 16:22:44 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili11) with ESMTP id t0D7MiR04098
 for <barebox@lists.infradead.org>; Tue, 13 Jan 2015 16:22:44 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Tue, 13 Jan 2015 16:22:42 +0900
Message-Id: <1421133763-17506-4-git-send-email-yamada.m@jp.panasonic.com>
In-Reply-To: <1421133763-17506-1-git-send-email-yamada.m@jp.panasonic.com>
References: <1421133763-17506-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH 4/5] gitignore: do not ignore .mailmap
To: barebox@lists.infradead.org

Commit eb4b20d20631 (add .mailmap for proper git-shortlog output)
introduced .mailmap file.  It should not be ignored.

Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
---

 .gitignore | 1 +
 1 file changed, 1 insertion(+)

diff --git a/.gitignore b/.gitignore
index 029520c..34e74a1 100644
--- a/.gitignore
+++ b/.gitignore
@@ -57,6 +57,7 @@ barebox_default_env*
 # git files that we don't want to ignore even it they are dot-files
 #
 !.gitignore
+!.mailmap
 
 #
 # Generated include files
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
