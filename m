Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YGeqD-0001AL-E2
 for barebox@lists.infradead.org; Thu, 29 Jan 2015 02:28:22 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile11) with ESMTP id
 t0T2S0nv015088
 for <barebox@lists.infradead.org>; Thu, 29 Jan 2015 11:28:00 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili14) with ESMTP id t0T2S0L16147
 for <barebox@lists.infradead.org>; Thu, 29 Jan 2015 11:28:00 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Thu, 29 Jan 2015 11:27:53 +0900
Message-Id: <1422498476-28986-3-git-send-email-yamada.m@jp.panasonic.com>
In-Reply-To: <1422498476-28986-1-git-send-email-yamada.m@jp.panasonic.com>
References: <1422498476-28986-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH 2/5] gitignore: move "barebox_default_env*" to subdirectory
To: barebox@lists.infradead.org

"barebox_default_env*" is not "Top-level generic files" because they
are generated in the defaultenv/ directory since commit 7fa10256c3f4
(defaultenv: Allow multiple defaultenvironment overlays).

The comment block of the top-level .gitignore says as follows:

  # NOTE! Don't add files that are generated in specific
  # subdirectories here. Add them in the ".gitignore" file
  # in that subdirectory instead.

Let's follow this rule.

Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
---

 .gitignore            | 1 -
 defaultenv/.gitignore | 1 +
 2 files changed, 1 insertion(+), 1 deletion(-)
 create mode 100644 defaultenv/.gitignore

diff --git a/.gitignore b/.gitignore
index a71d814..4f8769a 100644
--- a/.gitignore
+++ b/.gitignore
@@ -34,7 +34,6 @@ TAGS
 /barebox*
 System.map
 Module.symvers
-barebox_default_env*
 
 #
 # git files that we don't want to ignore even it they are dot-files
diff --git a/defaultenv/.gitignore b/defaultenv/.gitignore
new file mode 100644
index 0000000..40e90d7
--- /dev/null
+++ b/defaultenv/.gitignore
@@ -0,0 +1 @@
+barebox_default_env*
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
