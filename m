Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XONjT-0002cm-A1
 for barebox@lists.infradead.org; Mon, 01 Sep 2014 09:17:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  1 Sep 2014 11:16:32 +0200
Message-Id: <1409562992-32609-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: i.MX: tqma53: remove cpu_to_be32( from imx script
To: barebox@lists.infradead.org

Remove leftovers from previous conversion from C code to imxcfg
script.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/tqma53/flash-header.imxcfg | 108 ++++++++++++++---------------
 1 file changed, 54 insertions(+), 54 deletions(-)

diff --git a/arch/arm/boards/tqma53/flash-header.imxcfg b/arch/arm/boards/tqma53/flash-header.imxcfg
index e161a35..3d52ff1 100644
--- a/arch/arm/boards/tqma53/flash-header.imxcfg
+++ b/arch/arm/boards/tqma53/flash-header.imxcfg
@@ -3,64 +3,64 @@ loadaddr 0x70000000
 dcdofs 0x400
 
 /* IOMUX */
-wm 32 0x53fa8554 cpu_to_be32(0x00300000
-wm 32 0x53fa8558 cpu_to_be32(0x00300040
-wm 32 0x53fa8560 cpu_to_be32(0x00300000
-wm 32 0x53fa8564 cpu_to_be32(0x00300040
-wm 32 0x53fa8568 cpu_to_be32(0x00300040
-wm 32 0x53fa8570 cpu_to_be32(0x00300000
-wm 32 0x53fa8574 cpu_to_be32(0x00300000
-wm 32 0x53fa8578 cpu_to_be32(0x00300000
-wm 32 0x53fa857c cpu_to_be32(0x00300040
-wm 32 0x53fa8580 cpu_to_be32(0x00300040
-wm 32 0x53fa8584 cpu_to_be32(0x00300000
-wm 32 0x53fa8588 cpu_to_be32(0x00300000
-wm 32 0x53fa8590 cpu_to_be32(0x00300040
-wm 32 0x53fa8594 cpu_to_be32(0x00300000
-wm 32 0x53fa86f0 cpu_to_be32(0x00300000
-wm 32 0x53fa86f4 cpu_to_be32(0x00000000
-wm 32 0x53fa86fc cpu_to_be32(0x00000000
-wm 32 0x53fa8714 cpu_to_be32(0x00000000
-wm 32 0x53fa8718 cpu_to_be32(0x00300000
-wm 32 0x53fa871c cpu_to_be32(0x00300000
-wm 32 0x53fa8720 cpu_to_be32(0x00300000
-wm 32 0x53fa8724 cpu_to_be32(0x04000000
-wm 32 0x53fa8728 cpu_to_be32(0x00300000
-wm 32 0x53fa872c cpu_to_be32(0x00300000
+wm 32 0x53fa8554 0x00300000
+wm 32 0x53fa8558 0x00300040
+wm 32 0x53fa8560 0x00300000
+wm 32 0x53fa8564 0x00300040
+wm 32 0x53fa8568 0x00300040
+wm 32 0x53fa8570 0x00300000
+wm 32 0x53fa8574 0x00300000
+wm 32 0x53fa8578 0x00300000
+wm 32 0x53fa857c 0x00300040
+wm 32 0x53fa8580 0x00300040
+wm 32 0x53fa8584 0x00300000
+wm 32 0x53fa8588 0x00300000
+wm 32 0x53fa8590 0x00300040
+wm 32 0x53fa8594 0x00300000
+wm 32 0x53fa86f0 0x00300000
+wm 32 0x53fa86f4 0x00000000
+wm 32 0x53fa86fc 0x00000000
+wm 32 0x53fa8714 0x00000000
+wm 32 0x53fa8718 0x00300000
+wm 32 0x53fa871c 0x00300000
+wm 32 0x53fa8720 0x00300000
+wm 32 0x53fa8724 0x04000000
+wm 32 0x53fa8728 0x00300000
+wm 32 0x53fa872c 0x00300000
 /* ESDCTL */
-wm 32 0x63fd9088 cpu_to_be32(0x35343535
-wm 32 0x63fd9090 cpu_to_be32(0x4d444c44
-wm 32 0x63fd907c cpu_to_be32(0x01370138
-wm 32 0x63fd9080 cpu_to_be32(0x013b013c
-wm 32 0x63fd90f8 cpu_to_be32(0x00000800
+wm 32 0x63fd9088 0x35343535
+wm 32 0x63fd9090 0x4d444c44
+wm 32 0x63fd907c 0x01370138
+wm 32 0x63fd9080 0x013b013c
+wm 32 0x63fd90f8 0x00000800
 #ifdef CONFIG_MACH_TQMA53_1GB_RAM
 /* sync with u-boot: add WALAT for 4 chip variant */
-wm 32 0x63fd9018 cpu_to_be32(0x00011740
-wm 32 0x63fd9000 cpu_to_be32(0xc3190000
+wm 32 0x63fd9018 0x00011740
+wm 32 0x63fd9000 0xc3190000
 #else
-wm 32 0x63fd9018 cpu_to_be32(0x00101740
-wm 32 0x63fd9000 cpu_to_be32(0x83190000
+wm 32 0x63fd9018 0x00101740
+wm 32 0x63fd9000 0x83190000
 #endif
-wm 32 0x63fd900c cpu_to_be32(0x9f5152e3
-wm 32 0x63fd9010 cpu_to_be32(0xb68e8a63
-wm 32 0x63fd9014 cpu_to_be32(0x01ff00db
-wm 32 0x63fd902c cpu_to_be32(0x000026d2
+wm 32 0x63fd900c 0x9f5152e3
+wm 32 0x63fd9010 0xb68e8a63
+wm 32 0x63fd9014 0x01ff00db
+wm 32 0x63fd902c 0x000026d2
 /* Engcm12377 / errata sheet 03/2013 */
-wm 32 0x63fd9030 cpu_to_be32(0x009f0e23
-wm 32 0x63fd9008 cpu_to_be32(0x12273030
-wm 32 0x63fd9004 cpu_to_be32(0x0002002d
-wm 32 0x63fd901c cpu_to_be32(0x00008032
-wm 32 0x63fd901c cpu_to_be32(0x00008033
-wm 32 0x63fd901c cpu_to_be32(0x00028031
-wm 32 0x63fd901c cpu_to_be32(0x052080b0
-wm 32 0x63fd901c cpu_to_be32(0x04008040
-wm 32 0x63fd901c cpu_to_be32(0x0000803a
-wm 32 0x63fd901c cpu_to_be32(0x0000803b
-wm 32 0x63fd901c cpu_to_be32(0x00028039
-wm 32 0x63fd901c cpu_to_be32(0x05208138
-wm 32 0x63fd901c cpu_to_be32(0x04008048
-wm 32 0x63fd9020 cpu_to_be32(0x00005800
+wm 32 0x63fd9030 0x009f0e23
+wm 32 0x63fd9008 0x12273030
+wm 32 0x63fd9004 0x0002002d
+wm 32 0x63fd901c 0x00008032
+wm 32 0x63fd901c 0x00008033
+wm 32 0x63fd901c 0x00028031
+wm 32 0x63fd901c 0x052080b0
+wm 32 0x63fd901c 0x04008040
+wm 32 0x63fd901c 0x0000803a
+wm 32 0x63fd901c 0x0000803b
+wm 32 0x63fd901c 0x00028039
+wm 32 0x63fd901c 0x05208138
+wm 32 0x63fd901c 0x04008048
+wm 32 0x63fd9020 0x00005800
 /* prevent reserved value, use default TZQ_CS */
-wm 32 0x63fd9040 cpu_to_be32(0x05380003
-wm 32 0x63fd9058 cpu_to_be32(0x00022227
-wm 32 0x63fd901C cpu_to_be32(0x00000000
+wm 32 0x63fd9040 0x05380003
+wm 32 0x63fd9058 0x00022227
+wm 32 0x63fd901C 0x00000000
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
