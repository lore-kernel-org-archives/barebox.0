Delivery-date: Mon, 29 Mar 2021 20:28:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lQwcK-0006D8-6O
	for lore@lore.pengutronix.de; Mon, 29 Mar 2021 20:28:00 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lQwcI-0007mK-E2
	for lore@pengutronix.de; Mon, 29 Mar 2021 20:28:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6U8N/gy8SthUZA/7PqFsoKVFctYvm+Yy4Czs/lCawR4=; b=gZTL84pRmn1htAtmIU1TAzcGX
	7nwptAe9kd+DVb9Z0OgcNd+a3X2Kxm3V5grRq0UkEM1jT9c89EmuKc/DwDqgJpzCgCEi60vcoqkbT
	OcP8uvvTrbCYbPP91oeQ1z7D0OGwfvXp7k+MuV6LZ7u0jD7WGInSbTrtDzpBUrnb5RPfPpluunwOg
	XXSXsZAndE5ZabSo7E2TcDR70aboSdwhjwlmQnPdVt4ZazthnS9AJt2T9+8HkQclTUZEO8J+cl5px
	WlbEd9N42izKabXtvK2/x9BLHjsYcDZGo6z+xNMbt9yISeqsW4hLlWsUIcPBWTkx5uEr7ASXlAENn
	TwX9M30fw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lQwZ4-0012aC-Mf; Mon, 29 Mar 2021 18:24:38 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lQpDd-000aTz-DN
 for barebox@desiato.infradead.org; Mon, 29 Mar 2021 10:34:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=QpcebvYUp4Xz0vbSob2yc1wDBRYFt+wD8y/6+Rwe1MU=; b=BEbj65tzPNNWcbYQ9UCgfdw+f5
 /GendR24U23wU5uYte8ITGITkJDE5qRvYt50alopJr4/CK1ImyK7XRf8BSQ+066+z2u1hSW1fHH2P
 VywTRYx1/VayZGP36sLleSy7/TwA5zUmZuBFiFYEDcKgoPQhHYloTsj5ObfryLcFpI2fF/5x+0d1y
 vUAsF9twNV87rEGj/IGCsjVnd7x5wRptPDnBxTtvOp3Z3I2dGJSlfWE2bqGA9tdDUzLy60kzIQ3Bl
 HEIk9KrLuefDksGAY4bJd97wknbNSwQP05AOZ6ZO8vCXum34ls7bE/a+5W5EFgplQ8QgHwFGzRuT1
 MkmubSZw==;
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lQlEp-0015iX-Fo
 for barebox@lists.infradead.org; Mon, 29 Mar 2021 06:19:20 +0000
X-Originating-IP: 83.135.83.82
Received: from geraet.fritz.box (unknown [83.135.83.82])
 (Authenticated sender: ahmad@a3f.at)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 7DC4F4000D;
 Mon, 29 Mar 2021 06:18:24 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 29 Mar 2021 08:18:09 +0200
Message-Id: <20210329061810.1996248-2-ahmad@a3f.at>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210329061810.1996248-1-ahmad@a3f.at>
References: <20210329061810.1996248-1-ahmad@a3f.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210329_071903_152797_6BCE77B5 
X-CRM114-Status: GOOD (  28.24  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] input: add virtio input driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We already support Linux event codes, because they are used in the
device tree bindings for e.g. gpio-keys.

Virtio input devices report events using the same codes, so a driver
just has to shovel the codes from virtqueue into the input layer. Do so.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/input/Kconfig             |   7 ++
 drivers/input/Makefile            |   1 +
 drivers/input/virtio_input.c      | 191 ++++++++++++++++++++++++++++++
 include/linux/virtio.h            |   7 ++
 include/linux/virtio_config.h     |  62 ++++++++++
 include/linux/virtio_ring.h       |  34 ++++++
 include/uapi/linux/virtio_input.h |  76 ++++++++++++
 7 files changed, 378 insertions(+)
 create mode 100644 drivers/input/virtio_input.c
 create mode 100644 include/uapi/linux/virtio_input.h

diff --git a/drivers/input/Kconfig b/drivers/input/Kconfig
index 95aa51ebfc9e..ff3e9d33f6d7 100644
--- a/drivers/input/Kconfig
+++ b/drivers/input/Kconfig
@@ -71,4 +71,11 @@ config INPUT_SPECIALKEYS
 	help
 	  Say Y here to handle key events like KEY_RESTART and KEY_POWER.
 
+config VIRTIO_INPUT
+	bool "Virtio input driver"
+	depends on VIRTIO && BTHREAD
+	select INPUT
+	help
+	 This driver supports virtio keyboard input devices.
+
 endmenu
diff --git a/drivers/input/Makefile b/drivers/input/Makefile
index 36a4204d5308..6c8acc618427 100644
--- a/drivers/input/Makefile
+++ b/drivers/input/Makefile
@@ -6,3 +6,4 @@ obj-$(CONFIG_KEYBOARD_TWL6030) += twl6030_pwrbtn.o
 obj-$(CONFIG_KEYBOARD_IMX_KEYPAD) += imx_keypad.o
 obj-$(CONFIG_KEYBOARD_QT1070) += qt1070.o
 obj-$(CONFIG_INPUT_SPECIALKEYS)	+= specialkeys.o
+obj-$(CONFIG_VIRTIO_INPUT) += virtio_input.o
diff --git a/drivers/input/virtio_input.c b/drivers/input/virtio_input.c
new file mode 100644
index 000000000000..406dc613dc37
--- /dev/null
+++ b/drivers/input/virtio_input.c
@@ -0,0 +1,191 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <common.h>
+#include <bthread.h>
+#include <linux/virtio.h>
+#include <linux/virtio_config.h>
+#include <linux/virtio_ring.h>
+#include <input/input.h>
+#include <dt-bindings/input/linux-event-codes.h>
+
+#include <uapi/linux/virtio_ids.h>
+#include <uapi/linux/virtio_input.h>
+
+struct virtio_input {
+	struct input_device        idev;
+	struct virtio_device       *vdev;
+	struct virtqueue           *evt;
+	struct virtio_input_event  evts[64];
+	struct bthread             *bthread;
+};
+
+static void virtinput_queue_evtbuf(struct virtio_input *vi,
+				   struct virtio_input_event *evtbuf)
+{
+	struct virtio_sg sg[1];
+	virtio_sg_init_one(sg, evtbuf, sizeof(*evtbuf));
+	virtqueue_add_inbuf(vi->evt, sg, 1);
+}
+
+static int virtinput_recv_events(struct virtio_input *vi)
+{
+	struct device_d *dev = &vi->vdev->dev;
+	struct virtio_input_event *event;
+	unsigned int len;
+	int i = 0;
+
+	while ((event = virtqueue_get_buf(vi->evt, &len)) != NULL) {
+		if (le16_to_cpu(event->type) == EV_KEY)
+			input_report_key_event(&vi->idev, le16_to_cpu(event->code),
+					       le32_to_cpu(event->value));
+
+		pr_debug("\n%s: input event #%td received (type=%u, code=%u, value=%u)\n",
+			 dev_name(dev),
+			 event - &vi->evts[0],
+			 le16_to_cpu(event->type), le16_to_cpu(event->code),
+			 le32_to_cpu(event->value));
+
+		virtinput_queue_evtbuf(vi, event);
+		i++;
+	}
+
+	return i;
+}
+
+static int virtinput_poll_vqs(void *_vi)
+{
+	struct virtio_input *vi = _vi;
+
+	while (!bthread_should_stop()) {
+		int bufs = 0;
+
+		bufs += virtinput_recv_events(vi);
+
+		if (bufs)
+			virtqueue_kick(vi->evt);
+	}
+
+	return 0;
+}
+
+static u8 virtinput_cfg_select(struct virtio_input *vi,
+			       u8 select, u8 subsel)
+{
+	u8 size;
+
+	virtio_cwrite_le(vi->vdev, struct virtio_input_config, select, &select);
+	virtio_cwrite_le(vi->vdev, struct virtio_input_config, subsel, &subsel);
+	virtio_cread_le(vi->vdev, struct virtio_input_config, size, &size);
+	return size;
+}
+
+static void virtinput_fill_evt(struct virtio_input *vi)
+{
+	int i, size;
+
+	size = virtqueue_get_vring_size(vi->evt);
+	if (size > ARRAY_SIZE(vi->evts))
+		size = ARRAY_SIZE(vi->evts);
+	for (i = 0; i < size; i++)
+		virtinput_queue_evtbuf(vi, &vi->evts[i]);
+	virtqueue_kick(vi->evt);
+}
+
+static int virtinput_init_vqs(struct virtio_input *vi)
+{
+	struct virtqueue *vqs[1];
+	int err;
+
+
+	err = virtio_find_vqs(vi->vdev, 1, vqs);
+	if (err)
+		return err;
+
+	vi->evt = vqs[0];
+
+	return 0;
+}
+
+static int virtinput_probe(struct virtio_device *vdev)
+{
+	struct virtio_input *vi;
+	char name[64];
+	size_t size;
+	int err;
+
+	if (!virtio_has_feature(vdev, VIRTIO_F_VERSION_1))
+		return -ENODEV;
+
+	vi = kzalloc(sizeof(*vi), GFP_KERNEL);
+	if (!vi)
+		return -ENOMEM;
+
+	vdev->priv = vi;
+	vi->vdev = vdev;
+
+	err = virtinput_init_vqs(vi);
+	if (err)
+		goto err_init_vq;
+
+	size = virtinput_cfg_select(vi, VIRTIO_INPUT_CFG_ID_NAME, 0);
+	virtio_cread_bytes(vi->vdev, offsetof(struct virtio_input_config, u.string),
+			   name, min(size, sizeof(name)));
+	name[size] = '\0';
+
+	virtio_device_ready(vdev);
+
+	err = input_device_register(&vi->idev);
+	if (err)
+		goto err_input_register;
+
+	virtinput_fill_evt(vi);
+
+	vi->bthread = bthread_run(virtinput_poll_vqs, vi,
+				  "%s/input0", dev_name(&vdev->dev));
+	if (!vi->bthread) {
+		err = -ENOMEM;
+		goto err_bthread_run;
+	}
+
+	dev_info(&vdev->dev, "'%s' probed\n", name);
+
+	return 0;
+
+err_bthread_run:
+	bthread_free(vi->bthread);
+err_input_register:
+	vdev->config->del_vqs(vdev);
+err_init_vq:
+	kfree(vi);
+	return err;
+}
+
+static void virtinput_remove(struct virtio_device *vdev)
+{
+	struct virtio_input *vi = vdev->priv;
+
+	bthread_stop(vi->bthread);
+	bthread_free(vi->bthread);
+
+	vdev->config->reset(vdev);
+	vdev->config->del_vqs(vdev);
+	kfree(vi);
+}
+
+static const struct virtio_device_id id_table[] = {
+	{ VIRTIO_ID_INPUT, VIRTIO_DEV_ANY_ID },
+	{ 0 },
+};
+
+static struct virtio_driver virtio_input_driver = {
+	.driver.name         = "virtio_input",
+	.id_table            = id_table,
+	.probe               = virtinput_probe,
+	.remove              = virtinput_remove,
+};
+device_virtio_driver(virtio_input_driver);
+
+MODULE_LICENSE("GPL");
+MODULE_DESCRIPTION("Virtio input device driver");
+MODULE_AUTHOR("Gerd Hoffmann <kraxel@redhat.com>");
+MODULE_AUTHOR("Ahmad Fatoum <a.fatoum@pengutronix.de>");
diff --git a/include/linux/virtio.h b/include/linux/virtio.h
index 8a1a80ddc820..719f45c97560 100644
--- a/include/linux/virtio.h
+++ b/include/linux/virtio.h
@@ -24,6 +24,13 @@ struct virtio_sg {
 	size_t length;
 };
 
+static inline void virtio_sg_init_one(struct virtio_sg *sg,
+				      void *addr, size_t length)
+{
+	sg[0].addr = addr;
+	sg[0].length = length;
+}
+
 struct virtio_config_ops;
 
 /**
diff --git a/include/linux/virtio_config.h b/include/linux/virtio_config.h
index f33cfdacaa2c..8160f0952f13 100644
--- a/include/linux/virtio_config.h
+++ b/include/linux/virtio_config.h
@@ -458,6 +458,68 @@ static inline void virtio_cwrite64(struct virtio_device *vdev,
 		_r;							\
 	})
 
+/*
+ * Nothing virtio-specific about these, but let's worry about generalizing
+ * these later.
+ */
+#define virtio_le_to_cpu(x) \
+	_Generic((x), \
+		__u8: (u8)(x), \
+		 __le16: (u16)le16_to_cpu(x), \
+		 __le32: (u32)le32_to_cpu(x), \
+		 __le64: (u64)le64_to_cpu(x) \
+		)
+
+#define virtio_cpu_to_le(x, m) \
+	_Generic((m), \
+		 __u8: (x), \
+		 __le16: cpu_to_le16(x), \
+		 __le32: cpu_to_le32(x), \
+		 __le64: cpu_to_le64(x) \
+		)
+
+/* LE (e.g. modern) Config space accessors. */
+#define virtio_cread_le(vdev, structname, member, ptr)			\
+	do {								\
+		typeof(((structname*)0)->member) virtio_cread_v;	\
+									\
+		/* Sanity check: must match the member's type */	\
+		typecheck(typeof(virtio_le_to_cpu(virtio_cread_v)), *(ptr)); \
+									\
+		switch (sizeof(virtio_cread_v)) {			\
+		case 1:							\
+		case 2:							\
+		case 4:							\
+			vdev->config->get_config((vdev),		\
+					  offsetof(structname, member), \
+					  &virtio_cread_v,		\
+					  sizeof(virtio_cread_v));	\
+			break;						\
+		default:						\
+			__virtio_cread_many((vdev), 			\
+					  offsetof(structname, member), \
+					  &virtio_cread_v,		\
+					  1,				\
+					  sizeof(virtio_cread_v));	\
+			break;						\
+		}							\
+		*(ptr) = virtio_le_to_cpu(virtio_cread_v);		\
+	} while(0)
+
+#define virtio_cwrite_le(vdev, structname, member, ptr)			\
+	do {								\
+		typeof(((structname*)0)->member) virtio_cwrite_v =	\
+			virtio_cpu_to_le(*(ptr), ((structname*)0)->member); \
+									\
+		/* Sanity check: must match the member's type */	\
+		typecheck(typeof(virtio_le_to_cpu(virtio_cwrite_v)), *(ptr)); \
+									\
+		vdev->config->set_config((vdev), offsetof(structname, member),	\
+				  &virtio_cwrite_v,			\
+				  sizeof(virtio_cwrite_v));		\
+	} while(0)
+
+
 #ifdef CONFIG_ARCH_HAS_RESTRICTED_VIRTIO_MEMORY_ACCESS
 int arch_has_restricted_virtio_memory_access(void);
 #else
diff --git a/include/linux/virtio_ring.h b/include/linux/virtio_ring.h
index c349af90ce50..bdef47b0fa6c 100644
--- a/include/linux/virtio_ring.h
+++ b/include/linux/virtio_ring.h
@@ -180,6 +180,40 @@ struct virtio_sg;
 int virtqueue_add(struct virtqueue *vq, struct virtio_sg *sgs[],
 		  unsigned int out_sgs, unsigned int in_sgs);
 
+/**
+ * virtqueue_add_outbuf - expose output buffers to other end
+ * @vq: the struct virtqueue we're talking about.
+ * @sg: scatterlist (must be well-formed and terminated!)
+ * @num: the number of entries in @sg readable by other side
+ *
+ * Caller must ensure we don't call this with other virtqueue operations
+ * at the same time (except where noted).
+ *
+ * Returns zero or a negative error (ie. ENOSPC, ENOMEM, EIO).
+ */
+static inline int virtqueue_add_outbuf(struct virtqueue *vq,
+                                      struct virtio_sg *sg, unsigned int num)
+{
+	return virtqueue_add(vq, &sg, num, 0);
+}
+
+/**
+ * virtqueue_add_inbuf - expose input buffers to other end
+ * @vq: the struct virtqueue we're talking about.
+ * @sg: scatterlist (must be well-formed and terminated!)
+ * @num: the number of entries in @sg writable by other side
+ *
+ * Caller must ensure we don't call this with other virtqueue operations
+ * at the same time (except where noted).
+ *
+ * Returns zero or a negative error (ie. ENOSPC, ENOMEM, EIO).
+ */
+static inline int virtqueue_add_inbuf(struct virtqueue *vq,
+                                     struct virtio_sg *sg, unsigned int num)
+{
+	return virtqueue_add(vq, &sg, 0, num);
+}
+
 /**
  * virtqueue_kick - update after add_buf
  *
diff --git a/include/uapi/linux/virtio_input.h b/include/uapi/linux/virtio_input.h
new file mode 100644
index 000000000000..52084b1fb965
--- /dev/null
+++ b/include/uapi/linux/virtio_input.h
@@ -0,0 +1,76 @@
+#ifndef _LINUX_VIRTIO_INPUT_H
+#define _LINUX_VIRTIO_INPUT_H
+/* This header is BSD licensed so anyone can use the definitions to implement
+ * compatible drivers/servers.
+ *
+ * Redistribution and use in source and binary forms, with or without
+ * modification, are permitted provided that the following conditions
+ * are met:
+ * 1. Redistributions of source code must retain the above copyright
+ *    notice, this list of conditions and the following disclaimer.
+ * 2. Redistributions in binary form must reproduce the above copyright
+ *    notice, this list of conditions and the following disclaimer in the
+ *    documentation and/or other materials provided with the distribution.
+ * 3. Neither the name of IBM nor the names of its contributors
+ *    may be used to endorse or promote products derived from this software
+ *    without specific prior written permission.
+ * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
+ * ``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
+ * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
+ * FOR A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL IBM OR
+ * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
+ * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
+ * LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF
+ * USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
+ * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
+ * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
+ * OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
+ * SUCH DAMAGE. */
+
+#include <linux/types.h>
+
+enum virtio_input_config_select {
+	VIRTIO_INPUT_CFG_UNSET      = 0x00,
+	VIRTIO_INPUT_CFG_ID_NAME    = 0x01,
+	VIRTIO_INPUT_CFG_ID_SERIAL  = 0x02,
+	VIRTIO_INPUT_CFG_ID_DEVIDS  = 0x03,
+	VIRTIO_INPUT_CFG_PROP_BITS  = 0x10,
+	VIRTIO_INPUT_CFG_EV_BITS    = 0x11,
+	VIRTIO_INPUT_CFG_ABS_INFO   = 0x12,
+};
+
+struct virtio_input_absinfo {
+	__le32 min;
+	__le32 max;
+	__le32 fuzz;
+	__le32 flat;
+	__le32 res;
+};
+
+struct virtio_input_devids {
+	__le16 bustype;
+	__le16 vendor;
+	__le16 product;
+	__le16 version;
+};
+
+struct virtio_input_config {
+	__u8    select;
+	__u8    subsel;
+	__u8    size;
+	__u8    reserved[5];
+	union {
+		char string[128];
+		__u8 bitmap[128];
+		struct virtio_input_absinfo abs;
+		struct virtio_input_devids ids;
+	} u;
+};
+
+struct virtio_input_event {
+	__le16 type;
+	__le16 code;
+	__le32 value;
+};
+
+#endif /* _LINUX_VIRTIO_INPUT_H */
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

