Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo3.mail-out.ovh.net ([87.98.172.162]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SGofU-0007Pl-20
 for barebox@lists.infradead.org; Sun, 08 Apr 2012 09:44:21 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id E13DAFF8625
 for <barebox@lists.infradead.org>; Sun,  8 Apr 2012 11:45:12 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun,  8 Apr 2012 11:27:22 +0200
Message-Id: <1333877242-582-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1333877242-582-1-git-send-email-plagnioj@jcrosoft.com>
References: <1333877242-582-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/3] defaultenv: add support of oftree file pass via dhcp
 (option 224)
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 defaultenv/bin/boot |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/defaultenv/bin/boot b/defaultenv/bin/boot
index 5186aee..b54ea6b 100644
--- a/defaultenv/bin/boot
+++ b/defaultenv/bin/boot
@@ -50,6 +50,9 @@ if [ x$ip = xdhcp -o x$ip = "xdhcp-barebox" ]; then
 		if [ x$bootfile != x ]; then
 			kernelimage=$bootfile
 		fi
+		if [ x$dhcp_oftree_file != x ]; then
+			oftreeimage=$dhcp_oftree_file
+		fi
 	fi
 fi
 
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
