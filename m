Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SLDXg-0004Z6-Gs
 for barebox@lists.infradead.org; Fri, 20 Apr 2012 13:06:29 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 20 Apr 2012 15:06:17 +0200
Message-Id: <1334927177-13912-7-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1334927177-13912-1-git-send-email-jbe@pengutronix.de>
References: <1334927177-13912-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 6/6] netX: ignoring temporary netx build tool
To: barebox@lists.infradead.org
Cc: Michael Trensch <MTrensch@gmail.com>

From: Michael Trensch <MTrensch@gmail.com>

Signed-off-by: Michael Trensch <MTrensch@gmail.com>
Acked-by: Juergen Beisert <jbe@pengutronix.de>
---
 .gitignore |    1 +
 1 file changed, 1 insertion(+)

diff --git a/.gitignore b/.gitignore
index cc1f2e2..8a5c583 100644
--- a/.gitignore
+++ b/.gitignore
@@ -62,3 +62,4 @@ cscope.*
 
 # patches
 *.patch
+scripts/gen_netx_image
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
