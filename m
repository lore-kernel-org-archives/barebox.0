Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UGC7E-0003gn-FU
 for barebox@lists.infradead.org; Thu, 14 Mar 2013 17:39:04 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Thu, 14 Mar 2013 18:38:48 +0100
Message-Id: <1363282729-18545-10-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1363282729-18545-1-git-send-email-mkl@pengutronix.de>
References: <1363282729-18545-1-git-send-email-mkl@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 09/10] bootsource: add definition for usb and eeprom
To: barebox@lists.infradead.org

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 common/bootsource.c  | 2 ++
 include/bootsource.h | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/common/bootsource.c b/common/bootsource.c
index fae554d..599bcd2 100644
--- a/common/bootsource.c
+++ b/common/bootsource.c
@@ -31,6 +31,8 @@ static const char *bootsource_str[] = {
 	[BOOTSOURCE_SERIAL] = "serial",
 	[BOOTSOURCE_ONENAND] = "onenand",
 	[BOOTSOURCE_HD] = "harddisk",
+	[BOOTSOURCE_USB] = "usb",
+	[BOOTSOURCE_EEPROM] = "eeprom",
 };
 
 static enum bootsource bootsource = BOOTSOURCE_UNKNOWN;
diff --git a/include/bootsource.h b/include/bootsource.h
index dfcad49..84a6696 100644
--- a/include/bootsource.h
+++ b/include/bootsource.h
@@ -11,6 +11,8 @@ enum bootsource {
 	BOOTSOURCE_SERIAL,
 	BOOTSOURCE_ONENAND,
 	BOOTSOURCE_HD,
+	BOOTSOURCE_USB,
+	BOOTSOURCE_EEPROM,
 };
 
 enum bootsource bootsource_get(void);
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
