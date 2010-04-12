Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-gy0-f177.google.com ([209.85.160.177])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1O1BB4-0004hJ-6p
	for barebox@lists.infradead.org; Mon, 12 Apr 2010 04:23:16 +0000
Received: by gyb11 with SMTP id 11so2766373gyb.36
	for <barebox@lists.infradead.org>; Sun, 11 Apr 2010 21:23:11 -0700 (PDT)
From: Marc Reilly <marc@cpdesign.com.au>
Date: Mon, 12 Apr 2010 14:22:45 +1000
MIME-Version: 1.0
Content-Type: Multipart/Mixed;
  boundary="Boundary-00=_VAqwLhimw0CGjZk"
Message-Id: <201004121422.45667.marc@cpdesign.com.au>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: mx35 3stack LCD power enable
To: barebox@lists.infradead.org

--Boundary-00=_VAqwLhimw0CGjZk
Content-Type: Text/Plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

These patches enable power to the mx35 3stack LCD.

(First time -so please pardon any transgressions of patching etiquette.)

It'd be nice for someone to double check what I've done in 
f3s_pmic_init_all(). I'm not sure what the original author was intending to 
turn on/off and whether these patches break that. I've preserved the bit 
banging of the physical lines themselves under the assumption that whatever it 
was doing before was the correct/intended behavior.

Cheers
Marc

--Boundary-00=_VAqwLhimw0CGjZk
Content-Type: text/x-patch;
  charset="UTF-8";
  name="0001-Fixed-incorrect-register-offsets.-These-values-dervi.patch"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
	filename="0001-Fixed-incorrect-register-offsets.-These-values-dervi.patch"

=46rom befd31552242a57f6c47468e76c3790a7c8c8afd Mon Sep 17 00:00:00 2001
=46rom: marc <marc@susedev1.rulztime>
Date: Thu, 8 Apr 2010 17:21:25 +1000
Subject: [PATCH 1/3] Fixed incorrect register offsets. (These values dervie=
d from Freescale source
 code for the mc9s08dz60)

=2D--
 include/i2c/mc9sdz60.h |   82 ++++++++++++++++++++++++++++----------------=
=2D---
 1 files changed, 48 insertions(+), 34 deletions(-)

diff --git a/include/i2c/mc9sdz60.h b/include/i2c/mc9sdz60.h
index 4cc233e..721144d 100644
=2D-- a/include/i2c/mc9sdz60.h
+++ b/include/i2c/mc9sdz60.h
@@ -12,42 +12,56 @@
 #ifndef __ASM_ARCH_MC9SDZ60_H
 #define __ASM_ARCH_MC9SDZ60_H
=20
+/**
+ * Register addresses for the MC9SDZ60
+ *=20
+ * @note: these match those in the kernel drivers/mxc/mcu_pmic/mc9s08dz60.h
+ * but not include/linux/mfd/mc9s08dz60/pmic.h
+ *
+ */
 enum mc9sdz60_reg {
 	MC9SDZ60_REG_VERSION		=3D 0x00,
=2D	MC9SDZ60_REG_SECS		=3D 0x01,
=2D	MC9SDZ60_REG_MINS		=3D 0x02,
=2D	MC9SDZ60_REG_HRS		=3D 0x03,
=2D	MC9SDZ60_REG_DAY		=3D 0x04,
=2D	MC9SDZ60_REG_DATE		=3D 0x05,
=2D	MC9SDZ60_REG_MONTH		=3D 0x06,
=2D	MC9SDZ60_REG_YEAR		=3D 0x07,
=2D	MC9SDZ60_REG_ALARM_SECS		=3D 0x08,
=2D	MC9SDZ60_REG_ALARM_MINS		=3D 0x09,
=2D	MC9SDZ60_REG_ALARM_HRS		=3D 0x0a,
=2D	MC9SDZ60_REG_TS_CONTROL		=3D 0x0b,
=2D	MC9SDZ60_REG_X_LOW		=3D 0x0c,
=2D	MC9SDZ60_REG_Y_LOW		=3D 0x0d,
=2D	MC9SDZ60_REG_XY_HIGH		=3D 0x0e,
=2D	MC9SDZ60_REG_X_LEFT_LOW		=3D 0x0f,
=2D	MC9SDZ60_REG_X_LEFT_HIGH	=3D 0x10,
=2D	MC9SDZ60_REG_X_RIGHT		=3D 0x11,
=2D	MC9SDZ60_REG_Y_TOP_LOW		=3D 0x12,
=2D	MC9SDZ60_REG_Y_TOP_HIGH		=3D 0x13,
=2D	MC9SDZ60_REG_Y_BOTTOM		=3D 0x14,
=2D	MC9SDZ60_REG_RESET_1		=3D 0x15,
=2D	MC9SDZ60_REG_RESET_2		=3D 0x16,
=2D	MC9SDZ60_REG_POWER_CTL		=3D 0x17,
=2D	MC9SDZ60_REG_DELAY_CONFIG	=3D 0x18,
=2D	MC9SDZ60_REG_GPIO_1		=3D 0x19,
=2D	MC9SDZ60_REG_GPIO_2		=3D 0x1a,
=2D	MC9SDZ60_REG_KPD_1		=3D 0x1b,
=2D	MC9SDZ60_REG_KPD_2		=3D 0x1c,
=2D	MC9SDZ60_REG_KPD_CONTROL	=3D 0x1d,
=2D	MC9SDZ60_REG_INT_ENABLE_1	=3D 0x1e,
=2D	MC9SDZ60_REG_INT_ENABLE_2	=3D 0x1f,
=2D	MC9SDZ60_REG_INT_FLAG_1		=3D 0x20,
=2D	MC9SDZ60_REG_INT_FLAG_2		=3D 0x21,
=2D	MC9SDZ60_REG_DES_FLAG		=3D 0x22,
+	/* reserved                       0x01 */
+	MC9SDZ60_REG_SECS		=3D 0x02,
+	MC9SDZ60_REG_MINS		=3D 0x03,
+	MC9SDZ60_REG_HRS		=3D 0x04,
+	MC9SDZ60_REG_DAY		=3D 0x05,
+	MC9SDZ60_REG_DATE		=3D 0x06,
+	MC9SDZ60_REG_MONTH		=3D 0x07,
+	MC9SDZ60_REG_YEAR		=3D 0x08,
+	MC9SDZ60_REG_ALARM_SECS		=3D 0x09,
+	MC9SDZ60_REG_ALARM_MINS		=3D 0x0a,
+	MC9SDZ60_REG_ALARM_HRS		=3D 0x0b,
+        /* reserved                       0x0c */
+        /* reserved                       0x0d */
+	MC9SDZ60_REG_TS_CONTROL		=3D 0x0e,
+	MC9SDZ60_REG_X_LOW		=3D 0x0f,
+	MC9SDZ60_REG_Y_LOW		=3D 0x10,
+	MC9SDZ60_REG_XY_HIGH		=3D 0x11,
+	MC9SDZ60_REG_X_LEFT_LOW		=3D 0x12,
+	MC9SDZ60_REG_X_LEFT_HIGH	=3D 0x13,
+	MC9SDZ60_REG_X_RIGHT		=3D 0x14,
+	MC9SDZ60_REG_Y_TOP_LOW		=3D 0x15,
+	MC9SDZ60_REG_Y_TOP_HIGH		=3D 0x16,
+	MC9SDZ60_REG_Y_BOTTOM		=3D 0x17,
+        /* reserved                       0x18 */
+        /* reserved                       0x19 */
+	MC9SDZ60_REG_RESET_1		=3D 0x1a,
+	MC9SDZ60_REG_RESET_2		=3D 0x1b,
+	MC9SDZ60_REG_POWER_CTL		=3D 0x1c,
+	MC9SDZ60_REG_DELAY_CONFIG	=3D 0x1d,
+        /* reserved                       0x1e */
+        /* reserved                       0x1f */
+	MC9SDZ60_REG_GPIO_1		=3D 0x20,
+	MC9SDZ60_REG_GPIO_2		=3D 0x21,
+	MC9SDZ60_REG_KPD_1		=3D 0x22,
+	MC9SDZ60_REG_KPD_2		=3D 0x23,
+	MC9SDZ60_REG_KPD_CONTROL	=3D 0x24,
+	MC9SDZ60_REG_INT_ENABLE_1	=3D 0x25,
+	MC9SDZ60_REG_INT_ENABLE_2	=3D 0x26,
+	MC9SDZ60_REG_INT_FLAG_1		=3D 0x27,
+	MC9SDZ60_REG_INT_FLAG_2		=3D 0x28,
+	MC9SDZ60_REG_DES_FLAG		=3D 0x29,
 };
=20
 struct mc9sdz60 {
=2D-=20
1.6.4.2


--Boundary-00=_VAqwLhimw0CGjZk
Content-Type: text/x-patch;
  charset="UTF-8";
  name="0002-Enable-power-to-LCD.patch"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
	filename="0002-Enable-power-to-LCD.patch"

=46rom 0273e73a5fc5703d9b48ca85d54a482f97c8d9b8 Mon Sep 17 00:00:00 2001
=46rom: marc <marc@cpdesign.com.au>
Date: Thu, 8 Apr 2010 17:53:43 +1000
Subject: [PATCH 2/3] Enable power to LCD.
 Changed register names in f3s_pmic_init_all so that they have the same
 effect with the corrected address values.

=2D--
 board/freescale-mx35-3-stack/3stack.c |   10 +++++++---
 1 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/board/freescale-mx35-3-stack/3stack.c b/board/freescale-mx35-3=
=2Dstack/3stack.c
index 3b6a93b..0b1abcd 100644
=2D-- a/board/freescale-mx35-3-stack/3stack.c
+++ b/board/freescale-mx35-3-stack/3stack.c
@@ -202,6 +202,10 @@ device_initcall(f3s_devices_init);
 static int f3s_enable_display(void)
 {
 	gpio_direction_output(1, 1);
+
+	/* Enable power to the LCD. (bit 6 hi.) */=20
+	mc9sdz60_set_bits( mc9sdz60_get(), MC9SDZ60_REG_GPIO_1, 0x40, 0x40);
+
 	return 0;
 }
=20
@@ -390,11 +394,11 @@ static int f3s_pmic_init_all(struct mc9sdz60 *mc9sdz6=
0)
 {
 	int err =3D 0;
=20
=2D	err |=3D mc9sdz60_set_bits(mc9sdz60, MC9SDZ60_REG_INT_FLAG_1, 0x04, 0x0=
4);
+	err |=3D mc9sdz60_set_bits(mc9sdz60, MC9SDZ60_REG_GPIO_1, 0x04, 0x04);
=20
=2D	err |=3D mc9sdz60_set_bits(mc9sdz60, MC9SDZ60_REG_GPIO_2, 0x80, 0x00);
+	err |=3D mc9sdz60_set_bits(mc9sdz60, MC9SDZ60_REG_RESET_2, 0x80, 0x00);
 	mdelay(200);
=2D	err |=3D mc9sdz60_set_bits(mc9sdz60, MC9SDZ60_REG_GPIO_2, 0x80, 0x80);
+	err |=3D mc9sdz60_set_bits(mc9sdz60, MC9SDZ60_REG_RESET_2, 0x80, 0x80);
=20
 	if (err)
 		dev_err(&mc9sdz60->client->dev,
=2D-=20
1.6.4.2


--Boundary-00=_VAqwLhimw0CGjZk
Content-Type: text/x-patch;
  charset="UTF-8";
  name="0003-Remove-comment-about-LCD-power-enable.patch"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
	filename="0003-Remove-comment-about-LCD-power-enable.patch"

=46rom 4d7be35035f58c1205729b22c4a55191201c8334 Mon Sep 17 00:00:00 2001
=46rom: marc <marc@cpdesign.com.au>
Date: Thu, 8 Apr 2010 17:58:40 +1000
Subject: [PATCH 3/3] Remove comment about LCD power enable.

=2D--
 board/freescale-mx35-3-stack/3stack.c |    4 ----
 1 files changed, 0 insertions(+), 4 deletions(-)

diff --git a/board/freescale-mx35-3-stack/3stack.c b/board/freescale-mx35-3=
=2Dstack/3stack.c
index 61b5ace..0b1abcd 100644
=2D-- a/board/freescale-mx35-3-stack/3stack.c
+++ b/board/freescale-mx35-3-stack/3stack.c
@@ -113,10 +113,6 @@ static struct device_d i2c_dev =3D {
=20
 /*
  * Generic display, shipped with the PDK
=2D * FIXME: The power for the display is driven by the mc9s08. This is
=2D * currently not done in software, for the display to work you have to
=2D * short circuit pins 2 and 3 of q6 on the personality board, or better,
=2D * send a patch.
  */
 static struct fb_videomode CTP_CLAA070LC0ACW =3D {
 	/* 800x480 @ 60 Hz */
=2D-=20
1.6.4.2


--Boundary-00=_VAqwLhimw0CGjZk
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--Boundary-00=_VAqwLhimw0CGjZk--
