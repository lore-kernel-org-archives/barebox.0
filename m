Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RYE7K-0002SH-L6
 for barebox@lists.infradead.org; Wed, 07 Dec 2011 09:48:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  7 Dec 2011 10:48:38 +0100
Message-Id: <1323251318-9824-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] make dos partition support default yes if we have disk
 partition support
To: barebox@lists.infradead.org

DOS partitions are the only partitions we handle at the moment
and without it most MMC/SD enabled configs are useless, so make
it default yes. Also, use 'depends on' instead of 'if'

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Juergen Beisert <jbe@pengutronix.de>
---
 common/Kconfig |   10 +++-------
 1 files changed, 3 insertions(+), 7 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 1318e7d..27464d1 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -406,24 +406,20 @@ config PARTITION
 	bool
 	prompt "Enable Partitions"
 
-if PARTITION
-
 config PARTITION_DISK
+	depends on PARTITION
 	bool "DISK partition support"
 	help
 	  Add support for handling common partition tables on all kind of disk
 	  like devices (harddisks, CF cards, SD cards and so on)
 
-if PARTITION_DISK
-
 config PARTITION_DISK_DOS
+	depends on PARTITION_DISK
+	default y
 	bool "DOS partition support"
 	help
 	  Add support to handle partitions in DOS style.
 
-endif
-endif
-
 config DEFAULT_ENVIRONMENT
 	bool
 	default y
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
