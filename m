Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo3.mail-out.ovh.net ([87.98.150.177]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SDTjk-00044C-34
 for barebox@lists.infradead.org; Fri, 30 Mar 2012 04:46:59 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 79484FF8B22
 for <barebox@lists.infradead.org>; Fri, 30 Mar 2012 06:47:23 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 30 Mar 2012 06:31:53 +0200
Message-Id: <1333081913-19168-8-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120330042713.GX444@game.jcrosoft.org>
References: <20120330042713.GX444@game.jcrosoft.org>
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
Subject: [PATCH 8/8] defaultenv: add support of etherboot_file
To: barebox@lists.infradead.org

We will use the etherboot_file as script

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 defaultenv/bin/boot |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/defaultenv/bin/boot b/defaultenv/bin/boot
index ba04373..2c09a23 100644
--- a/defaultenv/bin/boot
+++ b/defaultenv/bin/boot
@@ -48,6 +48,10 @@ if [ x$ip = xdhcp -o x$ip = "xdhcp-barebox" ]; then
 		if [ x$bootfile != x ]; then
 			kernelimage=$bootfile
 		fi
+		if [ x$etherboot_file != x ]; then
+			$kernel_loc $etherboot_file /etherboot_file.sh || exit 1
+			. /etherboot_file.sh || exit 1
+		fi
 	fi
 fi
 
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
