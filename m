Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YAvof-0000ep-2T
 for barebox@lists.infradead.org; Tue, 13 Jan 2015 07:23:06 +0000
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Tue, 13 Jan 2015 16:22:39 +0900
Message-Id: <1421133763-17506-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH 1/5] .gitignore: match ncscope.out
To: barebox@lists.infradead.org
Cc: Jike Song <albcamus@gmail.com>

From: Jike Song <albcamus@gmail.com>

Sometimes I got this:

    $ git-status
    {snip}
    # On branch master
    # Untracked files:
    #   (use "git add <file>..." to include in what will be committed)
    #
    #       ncscope.out
    nothing added to commit but untracked files present (use "git add"
to track)

Fix it.

Signed-off-by: Jike Song <albcamus@gmail.com>
Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
[ imported from Linux Kernel, commit 9723c046bd59 ]
Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
---

 .gitignore | 1 +
 1 file changed, 1 insertion(+)

diff --git a/.gitignore b/.gitignore
index 03c5e20..b6d1b67 100644
--- a/.gitignore
+++ b/.gitignore
@@ -79,6 +79,7 @@ series
 
 # cscope files
 cscope.*
+ncscope.*
 
 # patches
 *.patch
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
