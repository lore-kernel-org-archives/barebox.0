Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from nasmtp01.atmel.com ([192.199.1.246]
 helo=DVREDG02.corp.atmel.com)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XC2Jy-00051k-Jl
 for barebox@lists.infradead.org; Tue, 29 Jul 2014 07:59:42 +0000
From: Bo Shen <voice.shen@atmel.com>
Date: Tue, 29 Jul 2014 15:59:09 +0800
Message-ID: <1406620749-11756-1-git-send-email-voice.shen@atmel.com>
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
Subject: [PATCH] mci: core: the sd1.0 card can work in 4 bits mode
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org

The sd 1.0 card can work in 4 bits mode also.

Signed-off-by: Bo Shen <voice.shen@atmel.com>
---

 drivers/mci/mci-core.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index ce6e590..8221632 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -616,6 +616,9 @@ retry_scr:
 		break;
 	}
 
+	if (mci->scr[0] & SD_DATA_4BIT)
+		mci->card_caps |= MMC_CAP_4_BIT_DATA;
+
 	/* Version 1.0 doesn't support switching */
 	if (mci->version == SD_VERSION_1_0)
 		return 0;
@@ -634,9 +637,6 @@ retry_scr:
 			break;
 	}
 
-	if (mci->scr[0] & SD_DATA_4BIT)
-		mci->card_caps |= MMC_CAP_4_BIT_DATA;
-
 	/* If high-speed isn't supported, we return */
 	if (!(__be32_to_cpu(switch_status[3]) & SD_HIGHSPEED_SUPPORTED))
 		return 0;
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
