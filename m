Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x233.google.com ([2a00:1450:4013:c00::233])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VXVXA-0002nt-7j
 for barebox@lists.infradead.org; Sat, 19 Oct 2013 12:21:33 +0000
Received: by mail-ee0-f51.google.com with SMTP id c1so2614225eek.38
 for <barebox@lists.infradead.org>; Sat, 19 Oct 2013 05:21:10 -0700 (PDT)
Received: from mamamia.internal (a89-182-1-5.net-htp.de. [89.182.1.5])
 by mx.google.com with ESMTPSA id b42sm17147502eem.9.2013.10.19.05.21.08
 for <barebox@lists.infradead.org>
 (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
 Sat, 19 Oct 2013 05:21:09 -0700 (PDT)
From: Andre Heider <a.heider@gmail.com>
Date: Sat, 19 Oct 2013 14:20:53 +0200
Message-Id: <1382185254-29183-7-git-send-email-a.heider@gmail.com>
In-Reply-To: <1382185130-28995-1-git-send-email-a.heider@gmail.com>
References: <1382185130-28995-1-git-send-email-a.heider@gmail.com>
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
Subject: [PATCH 08/10] ARM: rpi: register a clkdev for the eMMC clock
To: barebox@lists.infradead.org

Use the mailbox driver to query the clock frequency and create
a clkdev for the bcm2835_mci driver.

Signed-off-by: Andre Heider <a.heider@gmail.com>
---
 arch/arm/boards/raspberry-pi/rpi.c | 40 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/arch/arm/boards/raspberry-pi/rpi.c b/arch/arm/boards/raspberry-pi/rpi.c
index 971a603..d3c6b11 100644
--- a/arch/arm/boards/raspberry-pi/rpi.c
+++ b/arch/arm/boards/raspberry-pi/rpi.c
@@ -17,11 +17,44 @@
 #include <init.h>
 #include <fs.h>
 #include <linux/stat.h>
+#include <linux/clk.h>
+#include <linux/clkdev.h>
 #include <envfs.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
 
 #include <mach/core.h>
+#include <mach/mbox.h>
+
+struct msg_get_clock_rate {
+	struct bcm2835_mbox_hdr hdr;
+	struct bcm2835_mbox_tag_get_clock_rate get_clock_rate;
+	u32 end_tag;
+};
+
+static int rpi_register_clkdev(u32 clock_id, const char *name)
+{
+	BCM2835_MBOX_STACK_ALIGN(struct msg_get_clock_rate, msg);
+	struct clk *clk;
+	int ret;
+
+	BCM2835_MBOX_INIT_HDR(msg);
+	BCM2835_MBOX_INIT_TAG(&msg->get_clock_rate, GET_CLOCK_RATE);
+	msg->get_clock_rate.body.req.clock_id = clock_id;
+
+	ret = bcm2835_mbox_call_prop(BCM2835_MBOX_PROP_CHAN, &msg->hdr);
+	if (ret)
+		return ret;
+
+	clk = clk_fixed(name, msg->get_clock_rate.body.resp.rate_hz);
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+
+	if (!clk_register_clkdev(clk, NULL, name))
+		return -ENODEV;
+
+	return 0;
+}
 
 static int rpi_mem_init(void)
 {
@@ -40,6 +73,13 @@ static int rpi_console_init(void)
 }
 console_initcall(rpi_console_init);
 
+static int rpi_clock_init(void)
+{
+	rpi_register_clkdev(BCM2835_MBOX_CLOCK_ID_EMMC, "bcm2835_mci0");
+	return 0;
+}
+postconsole_initcall(rpi_clock_init);
+
 static int rpi_env_init(void)
 {
 	struct stat s;
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
