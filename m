Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x235.google.com ([2a00:1450:4013:c01::235])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VZRSE-0004BG-B6
 for barebox@lists.infradead.org; Thu, 24 Oct 2013 20:24:29 +0000
Received: by mail-ea0-f181.google.com with SMTP id d10so21862eaj.26
 for <barebox@lists.infradead.org>; Thu, 24 Oct 2013 13:24:07 -0700 (PDT)
Received: from mamamia.internal (a89-182-11-81.net-htp.de. [89.182.11.81])
 by mx.google.com with ESMTPSA id bn13sm8547646eeb.11.2013.10.24.13.24.06
 for <barebox@lists.infradead.org>
 (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
 Thu, 24 Oct 2013 13:24:07 -0700 (PDT)
From: Andre Heider <a.heider@gmail.com>
Date: Thu, 24 Oct 2013 22:23:46 +0200
Message-Id: <1382646226-24871-7-git-send-email-a.heider@gmail.com>
In-Reply-To: <1382646226-24871-1-git-send-email-a.heider@gmail.com>
References: <1382646226-24871-1-git-send-email-a.heider@gmail.com>
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
Subject: [PATCH 6/6] ARM: rpi: add support for simplefb
To: barebox@lists.infradead.org

Setup a framebuffer using the mailbox driver and register it as
simplefb.

Signed-off-by: Andre Heider <a.heider@gmail.com>
---
 arch/arm/boards/raspberry-pi/rpi.c | 84 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 84 insertions(+)

diff --git a/arch/arm/boards/raspberry-pi/rpi.c b/arch/arm/boards/raspberry-pi/rpi.c
index 06c43f3..3e9d62b 100644
--- a/arch/arm/boards/raspberry-pi/rpi.c
+++ b/arch/arm/boards/raspberry-pi/rpi.c
@@ -22,6 +22,7 @@
 #include <envfs.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
+#include <video/simplefb.h>
 
 #include <mach/core.h>
 #include <mach/mbox.h>
@@ -38,6 +39,25 @@ struct msg_get_clock_rate {
 	u32 end_tag;
 };
 
+struct msg_fb_query {
+	struct bcm2835_mbox_hdr hdr;
+	struct bcm2835_mbox_tag_physical_w_h physical_w_h;
+	u32 end_tag;
+};
+
+struct msg_fb_setup {
+	struct bcm2835_mbox_hdr hdr;
+	struct bcm2835_mbox_tag_physical_w_h physical_w_h;
+	struct bcm2835_mbox_tag_virtual_w_h virtual_w_h;
+	struct bcm2835_mbox_tag_depth depth;
+	struct bcm2835_mbox_tag_pixel_order pixel_order;
+	struct bcm2835_mbox_tag_alpha_mode alpha_mode;
+	struct bcm2835_mbox_tag_virtual_offset virtual_offset;
+	struct bcm2835_mbox_tag_allocate_buffer allocate_buffer;
+	struct bcm2835_mbox_tag_pitch pitch;
+	u32 end_tag;
+};
+
 static int rpi_get_arm_mem(u32 *size)
 {
 	BCM2835_MBOX_STACK_ALIGN(struct msg_get_arm_mem, msg);
@@ -79,6 +99,69 @@ static int rpi_register_clkdev(u32 clock_id, const char *name)
 	return 0;
 }
 
+#ifdef CONFIG_DRIVER_VIDEO_SIMPLEFB
+static int rpi_fb_init(void)
+{
+	BCM2835_MBOX_STACK_ALIGN(struct msg_fb_query, msg_query);
+	BCM2835_MBOX_STACK_ALIGN(struct msg_fb_setup, msg_setup);
+	u32 w, h, stride, fb_address, fb_size;
+	int ret;
+
+	BCM2835_MBOX_INIT_HDR(msg_query);
+	BCM2835_MBOX_INIT_TAG_NO_REQ(&msg_query->physical_w_h,
+					GET_PHYSICAL_W_H);
+	ret = bcm2835_mbox_call_prop(BCM2835_MBOX_PROP_CHAN, &msg_query->hdr);
+	if (ret) {
+		printf("could not query display resolution\n");
+		return ret;
+	}
+
+	w = msg_query->physical_w_h.body.resp.width;
+	h = msg_query->physical_w_h.body.resp.height;
+
+	BCM2835_MBOX_INIT_HDR(msg_setup);
+	BCM2835_MBOX_INIT_TAG(&msg_setup->physical_w_h, SET_PHYSICAL_W_H);
+	msg_setup->physical_w_h.body.req.width = w;
+	msg_setup->physical_w_h.body.req.height = h;
+	BCM2835_MBOX_INIT_TAG(&msg_setup->virtual_w_h, SET_VIRTUAL_W_H);
+	msg_setup->virtual_w_h.body.req.width = w;
+	msg_setup->virtual_w_h.body.req.height = h;
+	BCM2835_MBOX_INIT_TAG(&msg_setup->depth, SET_DEPTH);
+	msg_setup->depth.body.req.bpp = 16;
+	BCM2835_MBOX_INIT_TAG(&msg_setup->pixel_order, SET_PIXEL_ORDER);
+	msg_setup->pixel_order.body.req.order = BCM2835_MBOX_PIXEL_ORDER_BGR;
+	BCM2835_MBOX_INIT_TAG(&msg_setup->alpha_mode, SET_ALPHA_MODE);
+	msg_setup->alpha_mode.body.req.alpha = BCM2835_MBOX_ALPHA_MODE_IGNORED;
+	BCM2835_MBOX_INIT_TAG(&msg_setup->virtual_offset, SET_VIRTUAL_OFFSET);
+	msg_setup->virtual_offset.body.req.x = 0;
+	msg_setup->virtual_offset.body.req.y = 0;
+	BCM2835_MBOX_INIT_TAG(&msg_setup->allocate_buffer, ALLOCATE_BUFFER);
+	msg_setup->allocate_buffer.body.req.alignment = 0x100;
+	BCM2835_MBOX_INIT_TAG_NO_REQ(&msg_setup->pitch, GET_PITCH);
+
+	ret = bcm2835_mbox_call_prop(BCM2835_MBOX_PROP_CHAN, &msg_setup->hdr);
+	if (ret) {
+		printf("could not configure display\n");
+		return ret;
+	}
+
+	w = msg_setup->physical_w_h.body.resp.width;
+	h = msg_setup->physical_w_h.body.resp.height;
+	stride = msg_setup->pitch.body.resp.pitch;
+	fb_address = msg_setup->allocate_buffer.body.resp.fb_address;
+	fb_size = msg_setup->allocate_buffer.body.resp.fb_size;
+
+	add_simplefb_device(w, h, stride, SIMPLEFB_R5G6B5, fb_address, fb_size);
+
+	return 0;
+}
+#else
+static inline int rpi_fb_init(void)
+{
+	return -ENODEV;
+}
+#endif
+
 static int rpi_mem_init(void)
 {
 	u32 size = 0;
@@ -141,6 +224,7 @@ static int rpi_devices_init(void)
 {
 	armlinux_set_architecture(MACH_TYPE_BCM2708);
 	armlinux_set_bootparams((void *)(0x00000100));
+	rpi_fb_init();
 	rpi_env_init();
 	return 0;
 }
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
