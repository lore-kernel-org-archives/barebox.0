Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RTYew-0004K3-Kn
 for barebox@lists.infradead.org; Thu, 24 Nov 2011 12:44:11 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1RTYej-0006pS-8m
 for barebox@lists.infradead.org; Thu, 24 Nov 2011 13:43:57 +0100
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <jbe@pengutronix.de>) id 1RTYei-0002LY-7u
 for barebox@lists.infradead.org; Thu, 24 Nov 2011 13:43:56 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Thu, 24 Nov 2011 13:43:42 +0100
Message-Id: <1322138631-8963-5-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1322138631-8963-1-git-send-email-jbe@pengutronix.de>
References: <1322138631-8963-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 04/13] ATA/DISK: Enabling write support does not belong to
 'drive types'
To: barebox@lists.infradead.org

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 drivers/ata/Kconfig |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/ata/Kconfig b/drivers/ata/Kconfig
index 6a57e5c..5be1805 100644
--- a/drivers/ata/Kconfig
+++ b/drivers/ata/Kconfig
@@ -6,12 +6,12 @@ menuconfig ATA
 
 if ATA
 
-comment "drive types"
-
 config ATA_WRITE
 	select BLOCK_WRITE
 	bool "support writing to ATA drives"
 
+comment "drive types"
+
 config ATA_DISK
 	bool "disk drives"
 	help
-- 
1.7.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
