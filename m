Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x236.google.com ([2a00:1450:4013:c01::236])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VXVXd-0002sH-4I
 for barebox@lists.infradead.org; Sat, 19 Oct 2013 12:22:01 +0000
Received: by mail-ea0-f182.google.com with SMTP id o10so2584533eaj.13
 for <barebox@lists.infradead.org>; Sat, 19 Oct 2013 05:21:39 -0700 (PDT)
Received: from mamamia.internal (a89-182-1-5.net-htp.de. [89.182.1.5])
 by mx.google.com with ESMTPSA id w6sm6595325eeo.12.2013.10.19.05.21.38
 for <barebox@lists.infradead.org>
 (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
 Sat, 19 Oct 2013 05:21:39 -0700 (PDT)
From: Andre Heider <a.heider@gmail.com>
Date: Sat, 19 Oct 2013 14:21:26 +0200
Message-Id: <1382185286-29235-1-git-send-email-a.heider@gmail.com>
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
Subject: [PATCH 10/10] ARM: rpi: use the proper ARM memory size
To: barebox@lists.infradead.org

Use the mailbox driver to query the size. This properly takes the
firmware's VideoCore/ARM memory split into account.

Linux can now be booted with more than 128 MiB.

Signed-off-by: Andre Heider <a.heider@gmail.com>
---
 arch/arm/boards/raspberry-pi/rpi.c | 35 +++++++++++++++++++++++++++++++++--
 1 file changed, 33 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/raspberry-pi/rpi.c b/arch/arm/boards/raspberry-pi/rpi.c
index d3c6b11..06c43f3 100644
--- a/arch/arm/boards/raspberry-pi/rpi.c
+++ b/arch/arm/boards/raspberry-pi/rpi.c
@@ -26,12 +26,35 @@
 #include <mach/core.h>
 #include <mach/mbox.h>
 
+struct msg_get_arm_mem {
+	struct bcm2835_mbox_hdr hdr;
+	struct bcm2835_mbox_tag_get_arm_mem get_arm_mem;
+	u32 end_tag;
+};
+
 struct msg_get_clock_rate {
 	struct bcm2835_mbox_hdr hdr;
 	struct bcm2835_mbox_tag_get_clock_rate get_clock_rate;
 	u32 end_tag;
 };
 
+static int rpi_get_arm_mem(u32 *size)
+{
+	BCM2835_MBOX_STACK_ALIGN(struct msg_get_arm_mem, msg);
+	int ret;
+
+	BCM2835_MBOX_INIT_HDR(msg);
+	BCM2835_MBOX_INIT_TAG(&msg->get_arm_mem, GET_ARM_MEMORY);
+
+	ret = bcm2835_mbox_call_prop(BCM2835_MBOX_PROP_CHAN, &msg->hdr);
+	if (ret)
+		return ret;
+
+	*size = msg->get_arm_mem.body.resp.mem_size;
+
+	return 0;
+}
+
 static int rpi_register_clkdev(u32 clock_id, const char *name)
 {
 	BCM2835_MBOX_STACK_ALIGN(struct msg_get_clock_rate, msg);
@@ -58,8 +81,16 @@ static int rpi_register_clkdev(u32 clock_id, const char *name)
 
 static int rpi_mem_init(void)
 {
-	bcm2835_add_device_sdram(0);
-	return 0;
+	u32 size = 0;
+	int ret;
+
+	ret = rpi_get_arm_mem(&size);
+	if (ret)
+		printf("could not query ARM memory size\n");
+
+	bcm2835_add_device_sdram(size);
+
+	return ret;
 }
 mem_initcall(rpi_mem_init);
 
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
