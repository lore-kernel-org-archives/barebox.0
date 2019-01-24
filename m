Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx0.a-ix.net ([2a03:4000:21:445::fe61:e52a])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gmhs0-0002cI-CZ
 for barebox@lists.infradead.org; Thu, 24 Jan 2019 16:28:50 +0000
Received: from web.lxd ([172.22.0.93] helo=mail.a-ix.net)
 by mx0.a-ix.net with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <ml+barebox@moritz.augsburger.name>)
 id 1gmhrw-0001lV-I3
 for barebox@lists.infradead.org; Thu, 24 Jan 2019 16:28:45 +0000
MIME-Version: 1.0
Date: Thu, 24 Jan 2019 17:28:44 +0100
From: Moritz Augsburger <ml+barebox@moritz.augsburger.name>
Message-ID: <c1d66b9b8990989493a16d8c3a1d663e@moritz.augsburger.name>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] rpi: completed new revision scheme
To: Barebox List <barebox@lists.infradead.org>

I took the new raspi hw rev definitions from
https://www.raspberrypi.org/documentation/hardware/raspberrypi/revision-codes/README.md
and completed rpi_models_old_scheme and rpi_models_new_scheme.

Lookint at the "New-style revision codes in use:" list you can see that 
there is a22042	2B (with BCM2837),
so BCM2836_BOARD_REV_2_B is not 100% correct, but as it is used nowhere 
else this is should be neglectable.

Best regards
Moritz

yocto@yocto-build:~/src/barebox$ cat 
0001-rpi-complete-new-revision-scheme.patch
 From ad1ba48d991347f8f47710969fcceee304308f60 Mon Sep 17 00:00:00 2001
 From: Moritz Augsburger <moritz@augsburger.name>
Date: Thu, 24 Jan 2019 15:12:25 +0000
Subject: [PATCH] rpi: complete new revision scheme

---
  arch/arm/boards/raspberry-pi/rpi-common.c | 30 +++++++++++++++++------
  arch/arm/mach-bcm283x/include/mach/mbox.h | 40 
++++++++++++++++++++-----------
  2 files changed, 49 insertions(+), 21 deletions(-)

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c 
b/arch/arm/boards/raspberry-pi/rpi-common.c
index b7ce0ad42..eefa8bcfb 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -166,16 +166,30 @@ const struct rpi_model rpi_models_old_scheme[] = {
         RPI_MODEL(BCM2835_BOARD_REV_B_REV2_d, "Model B rev2", 
rpi_b_init),
         RPI_MODEL(BCM2835_BOARD_REV_B_REV2_e, "Model B rev2", 
rpi_b_init),
         RPI_MODEL(BCM2835_BOARD_REV_B_REV2_f, "Model B rev2", 
rpi_b_init),
-       RPI_MODEL(BCM2835_BOARD_REV_B_PLUS, "Model B+", 
rpi_b_plus_init),
-       RPI_MODEL(BCM2835_BOARD_REV_CM, "Compute Module", NULL),
-       RPI_MODEL(BCM2835_BOARD_REV_A_PLUS, "Model A+", NULL),
+       RPI_MODEL(BCM2835_BOARD_REV_B_PLUS_10, "Model B+", 
rpi_b_plus_init),
+       RPI_MODEL(BCM2835_BOARD_REV_CM_11, "Compute Module", NULL),
+       RPI_MODEL(BCM2835_BOARD_REV_A_PLUS_12, "Model A+", NULL),
+       RPI_MODEL(BCM2835_BOARD_REV_B_PLUS_13, "Model B+", 
rpi_b_plus_init),
+       RPI_MODEL(BCM2835_BOARD_REV_CM_14, "Compute Module", NULL),
+       RPI_MODEL(BCM2835_BOARD_REV_A_PLUS_15, "Model A+", NULL),
  };

  const struct rpi_model rpi_models_new_scheme[] = {
-       RPI_MODEL(0, "Unknown model", NULL),
-       RPI_MODEL(BCM2836_BOARD_REV_2_B, "2 Model B", rpi_b_plus_init),
-       RPI_MODEL(BCM2837_BOARD_REV_3_B, "3 Model B", rpi_b_plus_init),
-       RPI_MODEL(BCM2835_BOARD_REV_ZERO, "Zero", rpi_b_plus_init),
+       RPI_MODEL(BCM2835_BOARD_REV_A,          "Model A",      NULL ),  
                // 0
+       RPI_MODEL(BCM2835_BOARD_REV_B,          "Model B",      
rpi_b_init ),           // 1
+       RPI_MODEL(BCM2835_BOARD_REV_A_PLUS,     "Model A+",     NULL ),  
                // 2
+       RPI_MODEL(BCM2835_BOARD_REV_B_PLUS,     "Model B+",     
rpi_b_plus_init ),      // 3
+       RPI_MODEL(BCM2836_BOARD_REV_2_B,        "Model 2B",     
rpi_b_plus_init),       // 4
+       RPI_MODEL(BCM283x_BOARD_REV_Alpha,      "Alpha",        NULL),   
                // 5
+       RPI_MODEL(BCM2835_BOARD_REV_CM1,        "Compute Module", NULL 
),               // 6
+       RPI_MODEL(0, "Unknown model", NULL),                             
                // 7
+       RPI_MODEL(BCM2837_BOARD_REV_3_B,        "Model 3B",     
rpi_b_init ),           // 8
+       RPI_MODEL(BCM2835_BOARD_REV_ZERO,       "Zero",         
rpi_b_plus_init),       // 9
+       RPI_MODEL(BCM2837_BOARD_REV_CM3,        "Compute Module 3", NULL 
),             // a
+       RPI_MODEL(0, "Unknown model", NULL),                             
                // b
+       RPI_MODEL(BCM2835_BOARD_REV_ZERO_W,     "Zero W",       
rpi_b_plus_init),       // c
+       RPI_MODEL(BCM2837B0_BOARD_REV_3B_PLUS, "Model 3 B+",    
rpi_b_plus_init ),      // d
+       RPI_MODEL(BCM2837B0_BOARD_REV_3A_PLUS, "Nodel 3 A+",    
rpi_b_plus_init),       // e
  };

  static int rpi_board_rev = 0;
@@ -211,10 +225,12 @@ static void rpi_get_board_rev(void)
          * http://www.raspberrypi.org/forums/viewtopic.php?f=31&t=20594
          */
         rpi_board_rev = msg->get_board_rev.body.resp.rev;
+       printf("RPI: Board rev %x\n", rpi_board_rev);
         if (rpi_board_rev & 0x800000) {
                 rpi_board_rev = (rpi_board_rev >> 4) & 0xff;
                 rpi_models = rpi_models_new_scheme;
                 rpi_models_size = ARRAY_SIZE(rpi_models_new_scheme);
+               printf("RPI: Board rev %u new\n", rpi_board_rev);

         } else {
                 rpi_board_rev &= 0xff;
diff --git a/arch/arm/mach-bcm283x/include/mach/mbox.h 
b/arch/arm/mach-bcm283x/include/mach/mbox.h
index 0d1ac074e..e4f6cb675 100644
--- a/arch/arm/mach-bcm283x/include/mach/mbox.h
+++ b/arch/arm/mach-bcm283x/include/mach/mbox.h
@@ -127,18 +127,12 @@ struct bcm2835_mbox_tag_hdr {

  #define BCM2835_MBOX_TAG_GET_BOARD_REV 0x00010002

-/* RPi 2 */
-#define BCM2836_BOARD_REV_2_B          0x4
-/* RPi 3 */
-#define BCM2837_BOARD_REV_3_B          0x8
-/* Zero */
-#define BCM2835_BOARD_REV_ZERO         0x9
-
  /*
- * 0x2..0xf from:
- * 
http://raspberryalphaomega.org.uk/2013/02/06/automatic-raspberry-pi-board-revision-detection-model-a-b1-and-b2/
- * http://www.raspberrypi.org/forums/viewtopic.php?f=63&t=32733
- * 0x10, 0x11 from swarren's testing
+ * ids
+ *     
https://www.raspberrypi.org/documentation/hardware/raspberrypi/revision-codes/README.md
+ * cpu info
+ *     https://en.wikipedia.org/wiki/Raspberry_Pi#Processor
+ *
   */
  #define BCM2835_BOARD_REV_B_I2C0_2     0x2
  #define BCM2835_BOARD_REV_B_I2C0_3     0x3
@@ -151,9 +145,27 @@ struct bcm2835_mbox_tag_hdr {
  #define BCM2835_BOARD_REV_B_REV2_d     0xd
  #define BCM2835_BOARD_REV_B_REV2_e     0xe
  #define BCM2835_BOARD_REV_B_REV2_f     0xf
-#define BCM2835_BOARD_REV_B_PLUS       0x10
-#define BCM2835_BOARD_REV_CM           0x11
-#define BCM2835_BOARD_REV_A_PLUS       0x12
+#define BCM2835_BOARD_REV_B_PLUS_10    0x10
+#define BCM2835_BOARD_REV_CM_11                0x11
+#define BCM2835_BOARD_REV_A_PLUS_12    0x12
+#define BCM2835_BOARD_REV_B_PLUS_13    0x13
+#define BCM2835_BOARD_REV_CM_14                0x14
+#define BCM2835_BOARD_REV_A_PLUS_15    0x15
+
+
+#define BCM2835_BOARD_REV_A            0x00
+#define BCM2835_BOARD_REV_B            0x01
+#define BCM2835_BOARD_REV_A_PLUS       0x02
+#define BCM2835_BOARD_REV_B_PLUS       0x03
+#define BCM2836_BOARD_REV_2_B          0x04
+#define BCM283x_BOARD_REV_Alpha        0x05
+#define BCM2835_BOARD_REV_CM1          0x06
+#define BCM2837_BOARD_REV_3_B          0x08
+#define BCM2835_BOARD_REV_ZERO         0x09
+#define BCM2837_BOARD_REV_CM3          0x0a
+#define BCM2835_BOARD_REV_ZERO_W       0x0c
+#define BCM2837B0_BOARD_REV_3B_PLUS    0x0d
+#define BCM2837B0_BOARD_REV_3A_PLUS    0x0e

  struct bcm2835_mbox_tag_get_board_rev {
         struct bcm2835_mbox_tag_hdr tag_hdr;
--
2.11.0

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
