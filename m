Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from chandra.tablix.org ([2a00:ee2:100:3a01::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h8QgX-000596-LB
 for barebox@lists.infradead.org; Mon, 25 Mar 2019 14:34:51 +0000
Received: from 213.172.225.144.ipv4.telemach.net ([213.172.225.144]
 helo=muffin.lju.klevio.com)
 by chandra.tablix.org with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <tomaz.solc@tablix.org>)
 id 1h8Qfz-0005yh-Gp
 for barebox@lists.infradead.org; Mon, 25 Mar 2019 15:34:11 +0100
From: Tomaz Solc <tomaz.solc@tablix.org>
Date: Mon, 25 Mar 2019 15:34:10 +0100
Message-Id: <20190325143410.18249-1-tomaz.solc@tablix.org>
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
Subject: [PATCH] ARM: rpi: add board revision for Compute Module 3+
To: barebox@lists.infradead.org

---
 arch/arm/boards/raspberry-pi/rpi-common.c | 2 ++
 arch/arm/mach-bcm283x/include/mach/mbox.h | 1 +
 2 files changed, 3 insertions(+)

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index 60cea7f8e..bc877f853 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -197,6 +197,8 @@ const struct rpi_model rpi_models_new_scheme[] = {
 	RPI_MODEL(BCM2835_BOARD_REV_ZERO_W, 	"Zero W", 	rpi_b_plus_init),
 	RPI_MODEL(BCM2837B0_BOARD_REV_3B_PLUS, 	"Model 3 B+", 	rpi_b_plus_init ),
 	RPI_MODEL(BCM2837B0_BOARD_REV_3A_PLUS, 	"Nodel 3 A+", 	rpi_b_plus_init),
+	RPI_MODEL(0xf, "Unknown model", NULL),
+	RPI_MODEL(BCM2837B0_BOARD_REV_CM3_PLUS, "Compute Module 3+", NULL),
 };
 
 static int rpi_board_rev = 0;
diff --git a/arch/arm/mach-bcm283x/include/mach/mbox.h b/arch/arm/mach-bcm283x/include/mach/mbox.h
index e4f6cb675..6db961b80 100644
--- a/arch/arm/mach-bcm283x/include/mach/mbox.h
+++ b/arch/arm/mach-bcm283x/include/mach/mbox.h
@@ -166,6 +166,7 @@ struct bcm2835_mbox_tag_hdr {
 #define BCM2835_BOARD_REV_ZERO_W   	0x0c
 #define BCM2837B0_BOARD_REV_3B_PLUS   	0x0d
 #define BCM2837B0_BOARD_REV_3A_PLUS   	0x0e
+#define BCM2837B0_BOARD_REV_CM3_PLUS	0x10
 
 struct bcm2835_mbox_tag_get_board_rev {
 	struct bcm2835_mbox_tag_hdr tag_hdr;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
