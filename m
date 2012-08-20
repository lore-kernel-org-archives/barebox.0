Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T3Sqb-0006QU-HQ
 for barebox@lists.infradead.org; Mon, 20 Aug 2012 14:20:55 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Mon, 20 Aug 2012 16:20:24 +0200
Message-Id: <1345472428-17417-10-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1345472428-17417-1-git-send-email-jlu@pengutronix.de>
References: <1345472428-17417-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 09/13] m25p80: add JEDEC ID for Micron/Numonyx SPI NOR flash
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 drivers/nor/m25p80.c |    3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/nor/m25p80.c b/drivers/nor/m25p80.c
index 1440227..8ec70fc 100644
--- a/drivers/nor/m25p80.c
+++ b/drivers/nor/m25p80.c
@@ -632,6 +632,9 @@ static const struct spi_device_id m25p_ids[] = {
 	{ "cat25c09", CAT25_INFO( 128, 8, 32, 2) },
 	{ "cat25c17", CAT25_INFO( 256, 8, 32, 2) },
 	{ "cat25128", CAT25_INFO(2048, 8, 64, 2) },
+
+	/* Micron */
+	{ "n25q128", INFO(0x20ba18, 0, 64 * 1024, 256, 0) },
 	{ },
 };
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
