Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo2.mail-out.ovh.net ([188.165.53.149]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T4lvE-0006xw-0z
 for barebox@lists.infradead.org; Fri, 24 Aug 2012 04:55:06 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 91B62DC0FC6
 for <barebox@lists.infradead.org>; Fri, 24 Aug 2012 07:00:01 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 24 Aug 2012 06:55:12 +0200
Message-Id: <1345784113-29643-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1345784113-29643-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120824045246.GJ6271@game.jcrosoft.org>
 <1345784113-29643-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/5] defaultenv-2: boot reset linux.bootargs.dyn. and bootm.
 globarvar
To: barebox@lists.infradead.org

This is need for boot sequence to do not have the previous boot param.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 defaultenv-2/base/bin/boot |    4 ++++
 1 file changed, 4 insertions(+)

diff --git a/defaultenv-2/base/bin/boot b/defaultenv-2/base/bin/boot
index 4ebda3f..103eb87 100644
--- a/defaultenv-2/base/bin/boot
+++ b/defaultenv-2/base/bin/boot
@@ -33,6 +33,10 @@ while getopt "vdhl" opt; do
 	fi
 done
 
+# clear linux.bootargs.dyn.* and bootm.*
+global -r linux.bootargs.dyn.
+global -r bootm.
+
 if [ $# = 0 ]; then
 	scr="$global.boot.default"
 else
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
