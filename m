Delivery-date: Mon, 10 Oct 2022 08:10:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohlzO-0033X1-JL
	for lore@lore.pengutronix.de; Mon, 10 Oct 2022 08:10:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohlzM-0008Q0-9c
	for lore@pengutronix.de; Mon, 10 Oct 2022 08:10:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9a/cMhWANWQ5tMZMYwUFa/eKTYd+rwj+eJurqOY+1q0=; b=Uoxf0zcqugkswwKcIgsRBdQ7Wn
	5h+NST8Qeu36z5riCeD0cfEFUv7Pe4qL0iYvuKVeEbgrnRSiFcrQYRir2+F+P3xnb2mfeFU/aw6aL
	xdxTedzsAZKOXpO23kfLicVAvB7w6EGknLnrQgOemYj2A9/rQ5NDMRmnimuSBC4leL1pnnT9CZQyn
	cfCVER7ISi3DsQwPlNIGoFYESNCrwXLsNPVzxPad4q1bh2KP6p8rfU7OY1MIVO1S4pFKDvxT5qRim
	GtjjBmZp+vLvL7tsfHafKm2yHNuUan7jocsRPWg5/x0HDW5VbrclHfAxsB8jRykk5g4pDt7/bEuvU
	CSwJwzAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohly9-00H9cw-1X; Mon, 10 Oct 2022 06:08:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohly3-00H9aI-52
	for barebox@lists.infradead.org; Mon, 10 Oct 2022 06:08:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ohly1-0008Cg-VS; Mon, 10 Oct 2022 08:08:46 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ohly1-000d97-7A; Mon, 10 Oct 2022 08:08:45 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ohly0-008k2d-8r; Mon, 10 Oct 2022 08:08:44 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 10 Oct 2022 08:08:40 +0200
Message-Id: <20221010060842.2083550-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221010060842.2083550-1-a.fatoum@pengutronix.de>
References: <20221010060842.2083550-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221009_230847_210186_91C2D43D 
X-CRM114-Status: GOOD (  19.07  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/5] hw_random: add EFI RNG driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The EFI_RNG_PROTOCOL_GUID is quite simple and as such was a good first
protocol to implement for the barebox EFI loader support. We don't yet
have a payload-side driver making use of it though, so add that here.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/efi/guid.c           |  1 +
 drivers/hw_random/Kconfig   |  7 +++++
 drivers/hw_random/Makefile  |  1 +
 drivers/hw_random/efi-rng.c | 53 +++++++++++++++++++++++++++++++++++++
 include/efi.h               | 18 +++++++++++++
 5 files changed, 80 insertions(+)
 create mode 100644 drivers/hw_random/efi-rng.c

diff --git a/common/efi/guid.c b/common/efi/guid.c
index f16c597a20fc..93418d57b469 100644
--- a/common/efi/guid.c
+++ b/common/efi/guid.c
@@ -11,6 +11,7 @@ efi_guid_t efi_unknown_device_guid = EFI_UNKNOWN_DEVICE_GUID;
 efi_guid_t efi_null_guid = EFI_NULL_GUID;
 efi_guid_t efi_global_variable_guid = EFI_GLOBAL_VARIABLE_GUID;
 efi_guid_t efi_block_io_protocol_guid = EFI_BLOCK_IO_PROTOCOL_GUID;
+efi_guid_t efi_rng_protocol_guid = EFI_RNG_PROTOCOL_GUID;
 efi_guid_t efi_barebox_vendor_guid = EFI_BAREBOX_VENDOR_GUID;
 efi_guid_t efi_systemd_vendor_guid = EFI_SYSTEMD_VENDOR_GUID;
 
diff --git a/drivers/hw_random/Kconfig b/drivers/hw_random/Kconfig
index 32b84b028b0e..bf86240623c4 100644
--- a/drivers/hw_random/Kconfig
+++ b/drivers/hw_random/Kconfig
@@ -44,4 +44,11 @@ config HW_RANDOM_STARFIVE
 	  This driver provides barebox support for the Random Number
 	  Generator hardware found on the StarFive family of SoCs.
 
+config HW_RANDOM_EFI
+	tristate "EFI Random Number Generator"
+	depends on EFI
+	help
+	  This driver provides barebox support for the Random Number
+	  Generator Protocol offered by EFI firmware
+
 endif
diff --git a/drivers/hw_random/Makefile b/drivers/hw_random/Makefile
index 6fe21bb84c28..9ea064340916 100644
--- a/drivers/hw_random/Makefile
+++ b/drivers/hw_random/Makefile
@@ -5,3 +5,4 @@ obj-$(CONFIG_HWRNG_STM32) += stm32-rng.o
 obj-$(CONFIG_HWRNG_DEV_RANDOM) += dev-random.o
 obj-$(CONFIG_HW_RANDOM_VIRTIO) += virtio-rng.o
 obj-$(CONFIG_HW_RANDOM_STARFIVE) += starfive-vic-rng.o
+obj-$(CONFIG_HW_RANDOM_EFI) += efi-rng.o
diff --git a/drivers/hw_random/efi-rng.c b/drivers/hw_random/efi-rng.c
new file mode 100644
index 000000000000..b74075e3a4ac
--- /dev/null
+++ b/drivers/hw_random/efi-rng.c
@@ -0,0 +1,53 @@
+// SPDX-License-Identifier: GPL-2.0
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+#include <linux/hw_random.h>
+#include <efi/efi-util.h>
+#include <efi/efi-device.h>
+
+struct efi_rng_priv {
+	struct efi_rng_protocol *protocol;
+	struct hwrng hwrng;
+};
+
+static inline struct efi_rng_priv *to_efi_rng(struct hwrng *hwrng)
+{
+	return container_of(hwrng, struct efi_rng_priv, hwrng);
+}
+
+static int efi_rng_read(struct hwrng *hwrng, void *data, size_t len, bool wait)
+{
+	struct efi_rng_protocol *protocol = to_efi_rng(hwrng)->protocol;
+	efi_status_t efiret;
+
+	efiret = protocol->get_rng(protocol, NULL, len, data);
+
+	return -efi_errno(efiret) ?: len;
+}
+
+static int efi_rng_probe(struct efi_device *efidev)
+{
+	struct efi_rng_priv *priv;
+
+	priv = xzalloc(sizeof(*priv));
+
+	BS->handle_protocol(efidev->handle, &efi_rng_protocol_guid,
+			(void **)&priv->protocol);
+	if (!priv->protocol)
+		return -ENODEV;
+
+	priv->hwrng.name = dev_name(&efidev->dev);
+	priv->hwrng.read = efi_rng_read;
+
+	return hwrng_register(&efidev->dev, &priv->hwrng);
+}
+
+static struct efi_driver efi_rng_driver = {
+        .driver = {
+		.name  = "efi-rng",
+	},
+        .probe = efi_rng_probe,
+	.guid = EFI_RNG_PROTOCOL_GUID,
+};
+device_efi_driver(efi_rng_driver);
diff --git a/include/efi.h b/include/efi.h
index 864158259c53..149c4e74c6cb 100644
--- a/include/efi.h
+++ b/include/efi.h
@@ -538,6 +538,7 @@ extern efi_guid_t efi_unknown_device_guid;
 extern efi_guid_t efi_null_guid;
 extern efi_guid_t efi_global_variable_guid;
 extern efi_guid_t efi_block_io_protocol_guid;
+extern efi_guid_t efi_rng_protocol_guid;
 extern efi_guid_t efi_barebox_vendor_guid;
 extern efi_guid_t efi_systemd_vendor_guid;
 
@@ -691,4 +692,21 @@ char *device_path_to_partuuid(struct efi_device_path *dev_path);
 
 const char *efi_guid_string(efi_guid_t *g);
 
+#define EFI_RNG_PROTOCOL_GUID \
+	EFI_GUID(0x3152bca5, 0xeade, 0x433d, 0x86, 0x2e, \
+		 0xc0, 0x1c, 0xdc, 0x29, 0x1f, 0x44)
+
+#define EFI_RNG_ALGORITHM_RAW \
+	EFI_GUID(0xe43176d7, 0xb6e8, 0x4827, 0xb7, 0x84, \
+		 0x7f, 0xfd, 0xc4, 0xb6, 0x85, 0x61)
+
+struct efi_rng_protocol {
+	efi_status_t (EFIAPI *get_info)(struct efi_rng_protocol *protocol,
+					size_t *rng_algorithm_list_size,
+					efi_guid_t *rng_algorithm_list);
+	efi_status_t (EFIAPI *get_rng)(struct efi_rng_protocol *protocol,
+				       efi_guid_t *rng_algorithm,
+				       size_t rng_value_length, uint8_t *rng_value);
+};
+
 #endif /* _LINUX_EFI_H */
-- 
2.30.2



