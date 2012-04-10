Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo3.mail-out.ovh.net ([178.33.46.10]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SHdNi-0005sj-0h
 for barebox@lists.infradead.org; Tue, 10 Apr 2012 15:53:22 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 7E208FF9745
 for <barebox@lists.infradead.org>; Tue, 10 Apr 2012 17:54:17 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 10 Apr 2012 17:36:07 +0200
Message-Id: <1334072167-19539-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] defaultenv/update: fix dhcp-barebox support
To: barebox@lists.infradead.org

call dhcp when ip mode is dhcp-barebox

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 defaultenv/bin/_update |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/defaultenv/bin/_update b/defaultenv/bin/_update
index e7cf149..8e27ee1 100644
--- a/defaultenv/bin/_update
+++ b/defaultenv/bin/_update
@@ -11,7 +11,7 @@ if [ ! -e "$part" ]; then
 fi
 
 if [ x$mode = xtftp -o x$mode = xnfs ]; then
-	if [ x$ip = xdhcp ]; then
+	if [ x$ip = xdhcp -o x$ip = "xdhcp-barebox" ]; then
 		dhcp
 	fi
 
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
