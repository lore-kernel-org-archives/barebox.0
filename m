Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tisct-00051j-G9
 for barebox@lists.infradead.org; Wed, 12 Dec 2012 20:09:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Dec 2012 21:09:51 +0100
Message-Id: <1355342991-549-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1355342991-549-1-git-send-email-s.hauer@pengutronix.de>
References: <1355342991-549-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/10] ARM i.MX31 pcm037: add mmc support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/pcm037/pcm037.c |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boards/pcm037/pcm037.c b/arch/arm/boards/pcm037/pcm037.c
index cd911b7..7894ff3 100644
--- a/arch/arm/boards/pcm037/pcm037.c
+++ b/arch/arm/boards/pcm037/pcm037.c
@@ -163,6 +163,8 @@ static int imx31_devices_init(void)
 	 */
 	add_cfi_flash_device(DEVICE_ID_DYNAMIC, MX31_CS0_BASE_ADDR, 32 * 1024 * 1024, 0);
 
+	imx31_add_mmc0(NULL);
+
 	/*
 	 * Create partitions that should be
 	 * not touched by any regular user
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
