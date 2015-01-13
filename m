Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo2.mail-out.ovh.net ([188.165.48.182])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YAuwB-0002Py-Me
 for barebox@lists.infradead.org; Tue, 13 Jan 2015 06:26:48 +0000
Received: from mail94.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id A64481004262
 for <barebox@lists.infradead.org>; Tue, 13 Jan 2015 07:26:25 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 13 Jan 2015 07:26:11 +0100
Message-Id: <1421130376-32428-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20150113062416.GB30554@ns203013.ovh.net>
References: <20150113062416.GB30554@ns203013.ovh.net>
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
Subject: [PATCH 1/6] raspberry-pi: add board model detection
To: barebox@lists.infradead.org

as the name is very long, return ps1 to the next line

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/raspberry-pi/env/init/ps1 |  7 +++
 arch/arm/boards/raspberry-pi/rpi.c        | 83 ++++++++++++++++++++++++++++++-
 arch/arm/mach-bcm2835/include/mach/mbox.h | 34 +++++++++++++
 3 files changed, 123 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/raspberry-pi/env/init/ps1

diff --git a/arch/arm/boards/raspberry-pi/env/init/ps1 b/arch/arm/boards/raspberry-pi/env/init/ps1
new file mode 100644
index 0000000..f894846
--- /dev/null
+++ b/arch/arm/boards/raspberry-pi/env/init/ps1
@@ -0,0 +1,7 @@
+#!/bin/sh
+
+if [ ${global.allow_color} = "true" ]; then
+        export PS1="\e[1;32mbarebox@\e[1;36m\h:\w\e[0m\n# "
+else
+        export PS1="barebox@\h:\w\n# "
+fi
diff --git a/arch/arm/boards/raspberry-pi/rpi.c b/arch/arm/boards/raspberry-pi/rpi.c
index 03a16d7..ae1e92a 100644
--- a/arch/arm/boards/raspberry-pi/rpi.c
+++ b/arch/arm/boards/raspberry-pi/rpi.c
@@ -20,6 +20,7 @@
 #include <linux/clk.h>
 #include <linux/clkdev.h>
 #include <envfs.h>
+#include <malloc.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
 
@@ -38,6 +39,12 @@ struct msg_get_clock_rate {
 	u32 end_tag;
 };
 
+struct msg_get_board_rev {
+	struct bcm2835_mbox_hdr hdr;
+	struct bcm2835_mbox_tag_get_board_rev get_board_rev;
+	u32 end_tag;
+};
+
 static int rpi_get_arm_mem(u32 *size)
 {
 	BCM2835_MBOX_STACK_ALIGN(struct msg_get_arm_mem, msg);
@@ -79,6 +86,80 @@ static int rpi_register_clkdev(u32 clock_id, const char *name)
 	return 0;
 }
 
+
+#define RPI_MODEL(_id, _name, _init)	\
+	[_id] = {				\
+		.name			= _name,\
+		.init			= _init,\
+	}
+/* See comments in mbox.h for data source */
+static const struct {
+	const char *name;
+	bool has_onboard_eth;
+	void (*init)(void);
+} models[] = {
+	RPI_MODEL(0, "Unknown model", NULL),
+	RPI_MODEL(BCM2835_BOARD_REV_B_I2C0_2, "Model B (no P5)", NULL),
+	RPI_MODEL(BCM2835_BOARD_REV_B_I2C0_3, "Model B (no P5)", NULL),
+	RPI_MODEL(BCM2835_BOARD_REV_B_I2C1_4, "Model B", NULL),
+	RPI_MODEL(BCM2835_BOARD_REV_B_I2C1_5, "Model B", NULL),
+	RPI_MODEL(BCM2835_BOARD_REV_B_I2C1_6, "Model B", NULL),
+	RPI_MODEL(BCM2835_BOARD_REV_A_7, "Model A", NULL),
+	RPI_MODEL(BCM2835_BOARD_REV_A_8, "Model A", NULL),
+	RPI_MODEL(BCM2835_BOARD_REV_A_9, "Model A", NULL),
+	RPI_MODEL(BCM2835_BOARD_REV_B_REV2_d, "Model B rev2", NULL),
+	RPI_MODEL(BCM2835_BOARD_REV_B_REV2_e, "Model B rev2", NULL),
+	RPI_MODEL(BCM2835_BOARD_REV_B_REV2_f, "Model B rev2", NULL),
+	RPI_MODEL(BCM2835_BOARD_REV_B_PLUS, "Model B+", NULL),
+	RPI_MODEL(BCM2835_BOARD_REV_CM, "Compute Module", NULL),
+	RPI_MODEL(BCM2835_BOARD_REV_A_PLUS, "Model A+", NULL),
+};
+
+static int rpi_board_rev = 0;
+
+static void rpi_get_board_rev(void)
+{
+	int ret;
+	char *name;
+
+	BCM2835_MBOX_STACK_ALIGN(struct msg_get_board_rev, msg);
+	BCM2835_MBOX_INIT_HDR(msg);
+	BCM2835_MBOX_INIT_TAG(&msg->get_board_rev, GET_BOARD_REV);
+
+	ret = bcm2835_mbox_call_prop(BCM2835_MBOX_PROP_CHAN, &msg->hdr);
+	if (ret) {
+		printf("bcm2835: Could not query board revision\n");
+		/* Ignore error; not critical */
+		return;
+	}
+
+	rpi_board_rev = msg->get_board_rev.body.resp.rev;
+	if (rpi_board_rev >= ARRAY_SIZE(models)) {
+		printf("RPI: Board rev %u outside known range\n",
+		       rpi_board_rev);
+		goto unknown_rev;
+	}
+
+	if (!models[rpi_board_rev].name) {
+		printf("RPI: Board rev %u unknown\n", rpi_board_rev);
+		goto unknown_rev;
+	}
+
+	if (!rpi_board_rev)
+		goto unknown_rev;
+
+	name = asprintf("RaspberryPi %s (BCM2835/ARM1176JZF-S)",
+			models[rpi_board_rev].name);
+	barebox_set_model(name);
+	free(name);
+
+	return;
+
+unknown_rev:
+	rpi_board_rev = 0;
+	barebox_set_model("RaspberryPi (BCM2835/ARM1176JZF-S)");
+}
+
 static int rpi_mem_init(void)
 {
 	u32 size = 0;
@@ -96,7 +177,7 @@ mem_initcall(rpi_mem_init);
 
 static int rpi_console_init(void)
 {
-	barebox_set_model("RaspberryPi (BCM2835/ARM1176JZF-S)");
+	rpi_get_board_rev();
 	barebox_set_hostname("rpi");
 
 	bcm2835_register_uart();
diff --git a/arch/arm/mach-bcm2835/include/mach/mbox.h b/arch/arm/mach-bcm2835/include/mach/mbox.h
index fb8a9bf..e5f6bfa 100644
--- a/arch/arm/mach-bcm2835/include/mach/mbox.h
+++ b/arch/arm/mach-bcm2835/include/mach/mbox.h
@@ -124,6 +124,40 @@ struct bcm2835_mbox_tag_hdr {
  * };
  */
 
+#define BCM2835_MBOX_TAG_GET_BOARD_REV	0x00010002
+
+/*
+ * 0x2..0xf from:
+ * http://raspberryalphaomega.org.uk/2013/02/06/automatic-raspberry-pi-board-revision-detection-model-a-b1-and-b2/
+ * http://www.raspberrypi.org/forums/viewtopic.php?f=63&t=32733
+ * 0x10, 0x11 from swarren's testing
+ */
+#define BCM2835_BOARD_REV_B_I2C0_2	0x2
+#define BCM2835_BOARD_REV_B_I2C0_3	0x3
+#define BCM2835_BOARD_REV_B_I2C1_4	0x4
+#define BCM2835_BOARD_REV_B_I2C1_5	0x5
+#define BCM2835_BOARD_REV_B_I2C1_6	0x6
+#define BCM2835_BOARD_REV_A_7		0x7
+#define BCM2835_BOARD_REV_A_8		0x8
+#define BCM2835_BOARD_REV_A_9		0x9
+#define BCM2835_BOARD_REV_B_REV2_d	0xd
+#define BCM2835_BOARD_REV_B_REV2_e	0xe
+#define BCM2835_BOARD_REV_B_REV2_f	0xf
+#define BCM2835_BOARD_REV_B_PLUS	0x10
+#define BCM2835_BOARD_REV_CM		0x11
+#define BCM2835_BOARD_REV_A_PLUS	0x12
+
+struct bcm2835_mbox_tag_get_board_rev {
+	struct bcm2835_mbox_tag_hdr tag_hdr;
+	union {
+		struct {
+		} req;
+		struct {
+			u32 rev;
+		} resp;
+	} body;
+};
+
 #define BCM2835_MBOX_TAG_GET_ARM_MEMORY		0x00010005
 
 struct bcm2835_mbox_tag_get_arm_mem {
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
