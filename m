Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1UAQzO-0000cO-23
 for barebox@lists.infradead.org; Tue, 26 Feb 2013 20:19:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Feb 2013 21:18:43 +0100
Message-Id: <1361909936-2665-17-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1361909936-2665-1-git-send-email-s.hauer@pengutronix.de>
References: <1361909936-2665-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 16/29] of: move OFTREE Kconfig option to drivers/of/
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/Kconfig |    4 ++++
 lib/Kconfig        |    4 ----
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/of/Kconfig b/drivers/of/Kconfig
index 95f10d0..5e53d25 100644
--- a/drivers/of/Kconfig
+++ b/drivers/of/Kconfig
@@ -1,2 +1,6 @@
+config OFTREE
+	select FDT
+	bool
+
 config OFDEVICE
 	bool
diff --git a/lib/Kconfig b/lib/Kconfig
index 4578353..d58109b 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -25,10 +25,6 @@ source lib/lzo/Kconfig
 config FDT
 	bool
 
-config OFTREE
-	select FDT
-	bool
-
 config BCH
 	bool
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
