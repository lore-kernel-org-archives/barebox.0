Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UrkEV-0005PX-H2
 for barebox@lists.infradead.org; Wed, 26 Jun 2013 07:33:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 26 Jun 2013 09:33:14 +0200
Message-Id: <1372231996-1042-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1372231996-1042-1-git-send-email-s.hauer@pengutronix.de>
References: <1372231996-1042-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] ARM: i.MX51 efikasb: detect environment device
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/efika-mx-smartbook/board.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boards/efika-mx-smartbook/board.c b/arch/arm/boards/efika-mx-smartbook/board.c
index 11f222e..0e6694b 100644
--- a/arch/arm/boards/efika-mx-smartbook/board.c
+++ b/arch/arm/boards/efika-mx-smartbook/board.c
@@ -252,6 +252,8 @@ static int efikamx_late_init(void)
 
 	switch (bootsource) {
 	case BOOTSOURCE_MMC:
+		device_detect_by_name("mmc1");
+
 		devfs_add_partition("mmc1", 0x00000, 0x80000,
 				DEVFS_PARTITION_FIXED, "self0");
 		devfs_add_partition("mmc1", 0x80000, 0x80000,
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
