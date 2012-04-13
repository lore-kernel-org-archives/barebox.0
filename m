Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo3.mail-out.ovh.net ([178.33.46.10]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SIbkC-0006sI-CB
 for barebox@lists.infradead.org; Fri, 13 Apr 2012 08:20:36 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 8223FFF90E8
 for <barebox@lists.infradead.org>; Fri, 13 Apr 2012 10:21:41 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 13 Apr 2012 10:02:49 +0200
Message-Id: <1334304170-26176-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120413075705.GE11079@game.jcrosoft.org>
References: <20120413075705.GE11079@game.jcrosoft.org>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 5/5] defaultenv: add binfmt support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 defaultenv/bin/boot |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/defaultenv/bin/boot b/defaultenv/bin/boot
index b54ea6b..61b893a 100644
--- a/defaultenv/bin/boot
+++ b/defaultenv/bin/boot
@@ -134,4 +134,8 @@ fi
 
 echo "booting kernel from $kdev"
 
+#try to execute the file
+# it does not work as example for /dev as the file is not executable
+$kdev $bootm_opt
+# fall back on bootm
 bootm $bootm_opt $kdev
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
