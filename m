Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dBK7e-0007JI-Fr
 for barebox@lists.infradead.org; Thu, 18 May 2017 12:01:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 18 May 2017 14:01:13 +0200
Message-Id: <20170518120115.8040-2-s.hauer@pengutronix.de>
In-Reply-To: <20170518120115.8040-1-s.hauer@pengutronix.de>
References: <20170518120115.8040-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] mmc: add eMMC v5 and V5.1 detection support
To: Barebox List <barebox@lists.infradead.org>
Cc: Peter Seiderer <ps.report@gmx.net>

From: Peter Seiderer <ps.report@gmx.net>

Just add the defines.

Signed-off-by: Peter Seiderer <ps.report@gmx.net>
---
 drivers/mci/mci-core.c | 6 ++++++
 include/mci.h          | 2 ++
 2 files changed, 8 insertions(+)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index b6ef506540..07911d43d7 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -770,6 +770,12 @@ static void mci_correct_version_from_ext_csd(struct mci *mci)
 		case 6:
 			mci->version = MMC_VERSION_4_5;
 			break;
+		case 7:
+			mci->version = MMC_VERSION_5_0;
+			break;
+		case 8:
+			mci->version = MMC_VERSION_5_1;
+			break;
 		}
 	}
 }
diff --git a/include/mci.h b/include/mci.h
index eb942e62b8..bc7d9c95b2 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -54,6 +54,8 @@
 #define MMC_VERSION_4_3		(MMC_VERSION_MMC | 0x430)
 #define MMC_VERSION_4_41	(MMC_VERSION_MMC | 0x441)
 #define MMC_VERSION_4_5		(MMC_VERSION_MMC | 0x450)
+#define MMC_VERSION_5_0		(MMC_VERSION_MMC | 0x500)
+#define MMC_VERSION_5_1		(MMC_VERSION_MMC | 0x510)
 
 #define MMC_CAP_SPI			(1 << 0)
 #define MMC_CAP_4_BIT_DATA		(1 << 1)
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
