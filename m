Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo5.mail-out.ovh.net ([178.32.124.100]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TGF72-00041i-Nj
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 20:18:41 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id A53EBFFB02C
 for <barebox@lists.infradead.org>; Mon, 24 Sep 2012 22:24:31 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 24 Sep 2012 22:16:02 +0200
Message-Id: <1348517762-30088-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [For next PATCH 1/1] defaultenv: fix typo in dhco bootp oftree
To: barebox@lists.infradead.org

it's global.dhcp.oftree

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 defaultenv/bin/boot |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/defaultenv/bin/boot b/defaultenv/bin/boot
index 4e2056e..c17ccdb 100644
--- a/defaultenv/bin/boot
+++ b/defaultenv/bin/boot
@@ -51,7 +51,7 @@ if [ x$ip = xdhcp -o x$ip = "xdhcp-barebox" ]; then
 			kernelimage=${global.dhcp.bootfile}
 		fi
 		if [ x$global.dhcp.oftree_file} != x ]; then
-			oftreeimage=${global.dhcp_oftree_file}
+			oftreeimage=${global.dhcp.oftree_file}
 		fi
 	fi
 fi
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
