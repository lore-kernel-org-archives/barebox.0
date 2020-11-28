Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kj7wY-0002QY-LB
 for barebox@lists.infradead.org; Sat, 28 Nov 2020 21:39:49 +0000
Received: from geraet.fritz.box (muedsl-82-207-195-223.citykom.de
 [82.207.195.223]) (Authenticated sender: ahmad@a3f.at)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 963691BF20D
 for <barebox@lists.infradead.org>; Sat, 28 Nov 2020 21:39:44 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Sat, 28 Nov 2020 22:39:32 +0100
Message-Id: <20201128213934.681065-9-ahmad@a3f.at>
In-Reply-To: <20201128213934.681065-1-ahmad@a3f.at>
References: <20201128213934.681065-1-ahmad@a3f.at>
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
Subject: [PATCH 09/11] ARM: rpi: fix model description string
To: barebox@lists.infradead.org

s/Model/Nodel/ as well as drop the space the other ones (e.g. Model 2B)
lack.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/boards/raspberry-pi/rpi-common.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index f1d8a4e0f609..30bfa995b3fa 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -230,8 +230,8 @@ static const struct rpi_model rpi_models_new_scheme[] = {
 	RPI_MODEL(BCM2837_BOARD_REV_CM3, 	"Compute Module 3", NULL ),
 	RPI_MODEL(0xb, "Unknown model", NULL),
 	RPI_MODEL(BCM2835_BOARD_REV_ZERO_W, 	"Zero W", 	rpi_0_w_init),
-	RPI_MODEL(BCM2837B0_BOARD_REV_3B_PLUS, 	"Model 3 B+", 	rpi_b_plus_init ),
-	RPI_MODEL(BCM2837B0_BOARD_REV_3A_PLUS, 	"Nodel 3 A+", 	rpi_b_plus_init),
+	RPI_MODEL(BCM2837B0_BOARD_REV_3B_PLUS, 	"Model 3B+", 	rpi_b_plus_init ),
+	RPI_MODEL(BCM2837B0_BOARD_REV_3A_PLUS, 	"Model 3A+", 	rpi_b_plus_init),
 	RPI_MODEL(0xf, "Unknown model", NULL),
 	RPI_MODEL(BCM2837B0_BOARD_REV_CM3_PLUS, "Compute Module 3+", NULL),
 };
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
