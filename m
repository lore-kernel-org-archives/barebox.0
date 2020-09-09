Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kFxrN-0002wl-O6
 for barebox@lists.infradead.org; Wed, 09 Sep 2020 11:01:54 +0000
From: Juergen Borleis <jbe@pengutronix.de>
Date: Wed,  9 Sep 2020 13:01:17 +0200
Message-Id: <20200909110118.19923-4-jbe@pengutronix.de>
In-Reply-To: <20200909110118.19923-1-jbe@pengutronix.de>
References: <20200909110118.19923-1-jbe@pengutronix.de>
MIME-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/5] mci: kconfig: explain what boot partitions are
To: barebox@lists.infradead.org
Cc: Juergen Borleis <jbe@pengutronix.de>

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 drivers/mci/Kconfig | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index f7dc5c5089..996d8ff122 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -34,6 +34,13 @@ config MCI_WRITE
 
 config MCI_MMC_BOOT_PARTITIONS
 	bool "support MMC boot partitions"
+	help
+	  Provide access to the 'boot partitions' of devices of type 'MMC'.
+	  These so called 'hardware partitions' act like an independent memory
+	  device and thus, need special handling.
+
+	  Note: only 'MMC' have 'boot partitions'. So, if you don't use an
+	  'MMC' device, you don't need this support.
 
 comment "--- MCI host drivers ---"
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
