Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.de ([217.6.246.34] helo=root.phytec.de)
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1O1xbr-00058m-Qa
	for barebox@lists.infradead.org; Wed, 14 Apr 2010 08:06:08 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
	by root.phytec.de (Postfix) with ESMTP id C22FABF0CF
	for <barebox@lists.infradead.org>;
	Wed, 14 Apr 2010 10:05:39 +0200 (CEST)
From: Jan Weitzel <J.Weitzel@phytec.de>
Date: Wed, 14 Apr 2010 10:06:06 +0200
Message-ID: <1271232366.10496.16.camel@lws-weitzel>
Mime-Version: 1.0
Reply-To: J.Weitzel@phytec.de
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] tftp return value
To: barebox@lists.infradead.org

tftp returns transfered bytes on success and 1 in error case. Bad for
scripting. Change to 0 on success

Signed-off-by: Jan Weitzel <J.Weitzel@phytec.de>
---
Index: barebox-2010.04.0/net/tftp.c
===================================================================
--- barebox-2010.04.0.orig/net/tftp.c	2010-04-14 09:41:37.489858785
+0200
+++ barebox-2010.04.0/net/tftp.c	2010-04-14 09:43:33.899445811 +0200
@@ -281,8 +281,7 @@
 
 	TftpStart(remotefile);
 
-	rcode = NetLoop();
-	if (rcode < 0) {
+	if (NetLoop() < 0) {
 		rcode = 1;
 		goto out;
 	}


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
