Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YAvof-0000ef-2Y
 for barebox@lists.infradead.org; Tue, 13 Jan 2015 07:23:07 +0000
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Tue, 13 Jan 2015 16:22:41 +0900
Message-Id: <1421133763-17506-3-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH 3/5] gitignore: add all.config
To: barebox@lists.infradead.org
Cc: Michal Marek <mmarek@suse.cz>, Borislav Petkov <bp@suse.de>

From: Borislav Petkov <bp@suse.de>

This is used by kbuild to load preset Kconfig options.  We need to
ignore it, otherwise git clean kills it.

Signed-off-by: Borislav Petkov <bp@suse.de>
Cc: Michal Marek <mmarek@suse.cz>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
[ imported from Linux Kernel, commit 25fba9bebeb7 ]
Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>

---

 .gitignore | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/.gitignore b/.gitignore
index fe29da5..029520c 100644
--- a/.gitignore
+++ b/.gitignore
@@ -89,3 +89,6 @@ GTAGS
 
 # patches
 *.patch
+
+# Kconfig presets
+all.config
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
