Delivery-date: Thu, 18 Dec 2025 12:40:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCN4-00CoWn-2f
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 12:40:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCMR-0002CM-7n
	for lore@pengutronix.de; Thu, 18 Dec 2025 12:40:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HYDQwwgEKlR52C7vJpf9rhS6MU31FoON9NwZYhTc72Q=; b=c8OgFWvxkPTnBNQFb+gw2AyaUb
	9N0Cst6XoAzBqcVPJiZsU+twaBdMDicRimzFA5WC6XgxQdXKQMhT6wZ4o3iXBj2CHKU32cs5oLVf4
	3hQqk4gsULPqut2upGhnQKOQPmOTD8jegFypsv6BIcKmIwWq4GQxM3EpQcwUhewNKmMSv+JXs0cFJ
	6fJS+yiyVU3lZ+lwou0nsuyERSKAUsiSzDRyzx3UrX060gQLDIAr99X8xz0YI9aUSFzW8iuGkBDM4
	XUbbkVN08FG33ef7j3PfQxysKyjwpLcUr9AAV+m+058RYH6IZKz1fdHMszRhLhmy/n0r30sDmb8QV
	16/BX33g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCKH-00000008LOF-1SPb;
	Thu, 18 Dec 2025 11:37:45 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJa-00000008KQK-16NZ
	for barebox@bombadil.infradead.org;
	Thu, 18 Dec 2025 11:37:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=HYDQwwgEKlR52C7vJpf9rhS6MU31FoON9NwZYhTc72Q=; b=q0VLUWAJriSyTss9mJOHR2WibS
	xf+tyj6JLtcysUgKzCsA0NspO6b+UVvnUQYLy0siFAGY7uKLadc2DQQiKguhZRzRfvWl1Ol++GZKy
	afChR3txq3LVZEsqWKw4OBkTnut6Qio354lLR81X08sUuQujquGzlljfid1psQvjU+HPQsUB910lg
	RlscKY63gnro9U0rdOqxvaHKwXEXTafs4K9BUQX01gjGJKLCCXGQB0R22w61GdWEDVUISTAhFVmLQ
	SoQF0bvf1oa66T/M2e7U9+DQcQ9mIJU2bYNZc/Lm+SnsBWxkSyE9C9c0wPcEVX7U+9U3YC6JIy5p7
	7cqg/7+Q==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWBS1-00000008fRb-2D6L
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 10:41:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJO-0008E3-4k; Thu, 18 Dec 2025 12:36:50 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJN-006GwI-36;
	Thu, 18 Dec 2025 12:36:49 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw4-0000000AVre-2QrY;
	Thu, 18 Dec 2025 12:12:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 11:37:52 +0100
Message-ID: <20251218111242.1527495-33-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
References: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_104142_128499_28FA9B15 
X-CRM114-Status: GOOD (  19.80  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v1 32/54] efi: loader: protocol: add random number generator protocol
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Make available the default random number generator in barebox to EFI
applications during boot time.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/loader/protocols/Kconfig  |   8 ++
 efi/loader/protocols/Makefile |   1 +
 efi/loader/protocols/rng.c    | 165 ++++++++++++++++++++++++++++++++++
 3 files changed, 174 insertions(+)
 create mode 100644 efi/loader/protocols/rng.c

diff --git a/efi/loader/protocols/Kconfig b/efi/loader/protocols/Kconfig
index 8c8bfabd7c0f..7d5e203d121a 100644
--- a/efi/loader/protocols/Kconfig
+++ b/efi/loader/protocols/Kconfig
@@ -31,4 +31,12 @@ config EFI_LOADER_UNICODE_CAPITALIZATION
 	  set, only the the correct handling of the letters of the codepage
 	  used by the FAT file system is ensured.
 
+config EFI_LOADER_RNG
+	bool "EFI_RNG_PROTOCOL support"
+	depends on HWRNG
+	default y
+	help
+	  Provide a EFI_RNG_PROTOCOL implementation using the hardware random
+	  number generator of the platform.
+
 endmenu
diff --git a/efi/loader/protocols/Makefile b/efi/loader/protocols/Makefile
index b6e39b0666da..ecc0fc392856 100644
--- a/efi/loader/protocols/Makefile
+++ b/efi/loader/protocols/Makefile
@@ -6,3 +6,4 @@ obj-$(CONFIG_VIDEO) += gop.o
 obj-$(CONFIG_CONSOLE_FULL) += console.o
 obj-$(CONFIG_EFI_LOADER_HII) += hii.o hii_config.o
 obj-$(CONFIG_EFI_LOADER_UNICODE_COLLATION_PROTOCOL2) += unicode_collation.o
+obj-$(CONFIG_EFI_LOADER_RNG) += rng.o
diff --git a/efi/loader/protocols/rng.c b/efi/loader/protocols/rng.c
new file mode 100644
index 000000000000..9c3caa82f884
--- /dev/null
+++ b/efi/loader/protocols/rng.c
@@ -0,0 +1,165 @@
+// SPDX-License-Identifier: GPL-2.0+
+// SPDX-Comment: Origin-URL: https://github.com/u-boot/u-boot/blob/58da850c87240c397242ebd47341c69aa6278119/lib/efi_loader/efi_rng.c
+/*
+ * Copyright (c) 2019, Linaro Limited
+ */
+
+#include <linux/hw_random.h>
+#include <stdlib.h>
+#include <efi/loader.h>
+#include <efi/protocol/rng.h>
+#include <efi/devicepath.h>
+#include <efi/loader/devicepath.h>
+#include <efi/loader/object.h>
+#include <efi/loader/trace.h>
+#include <efi/guid.h>
+#include <efi/error.h>
+#include <xfuncs.h>
+
+struct efi_rng_obj {
+	struct efi_object header;
+	struct hwrng *hwrng;
+	struct efi_rng_protocol ops;
+};
+
+#define to_efi_rng_obj(this) container_of(this, struct efi_rng_obj, ops)
+
+/**
+ * rng_getinfo() - get information about random number generation
+ *
+ * This function implement the GetInfo() service of the EFI random number
+ * generator protocol. See the UEFI spec for details.
+ *
+ * @this:			random number generator protocol instance
+ * @rng_algorithm_list_size:	number of random number generation algorithms
+ * @rng_algorithm_list:		descriptions of random number generation
+ *				algorithms
+ * Return:			status code
+ */
+static efi_status_t EFIAPI rng_getinfo(struct efi_rng_protocol *this,
+				       efi_uintn_t *rng_algorithm_list_size,
+				       efi_guid_t *rng_algorithm_list)
+{
+	efi_status_t ret = EFI_SUCCESS;
+	efi_guid_t rng_algo_guid = EFI_RNG_ALGORITHM_RAW;
+
+	EFI_ENTRY("%p, %p, %p", this, rng_algorithm_list_size,
+		  rng_algorithm_list);
+
+	if (!this || !rng_algorithm_list_size) {
+		ret = EFI_INVALID_PARAMETER;
+		goto back;
+	}
+
+	if (!rng_algorithm_list ||
+	    *rng_algorithm_list_size < sizeof(*rng_algorithm_list)) {
+		*rng_algorithm_list_size = sizeof(*rng_algorithm_list);
+		ret = EFI_BUFFER_TOO_SMALL;
+		goto back;
+	}
+
+	/*
+	 * For now, use EFI_RNG_ALGORITHM_RAW as the default
+	 * algorithm. If a new algorithm gets added in the
+	 * future through a Kconfig, rng_algo_guid will be set
+	 * based on that Kconfig option
+	 */
+	*rng_algorithm_list_size = sizeof(*rng_algorithm_list);
+	*rng_algorithm_list = rng_algo_guid;
+
+back:
+	return EFI_EXIT(ret);
+}
+
+/**
+ * rng_getval() - get random value
+ *
+ * This function implement the GetRng() service of the EFI random number
+ * generator protocol. See the UEFI spec for details.
+ *
+ * @this:		random number generator protocol instance
+ * @rng_algorithm:	random number generation algorithm
+ * @rng_value_length:	number of random bytes to generate, buffer length
+ * @rng_value:		buffer to receive random bytes
+ * Return:		status code
+ */
+static efi_status_t EFIAPI rng_getval(struct efi_rng_protocol *this,
+				  efi_guid_t *rng_algorithm,
+				  efi_uintn_t rng_value_length,
+				  uint8_t *rng_value)
+{
+	int ret;
+	efi_status_t status = EFI_SUCCESS;
+	const efi_guid_t rng_raw_guid = EFI_RNG_ALGORITHM_RAW;
+	struct efi_rng_obj *rngobj = to_efi_rng_obj(this);
+
+	EFI_ENTRY("%p, %p, %zu, %p", this, rng_algorithm, rng_value_length,
+		  rng_value);
+
+	if (!this || !rng_value || !rng_value_length) {
+		status = EFI_INVALID_PARAMETER;
+		goto back;
+	}
+
+	if (rng_algorithm) {
+		EFI_PRINT("RNG algorithm %pUl\n", rng_algorithm);
+		if (efi_guidcmp(*rng_algorithm, rng_raw_guid)) {
+			status = EFI_UNSUPPORTED;
+			goto back;
+		}
+	}
+
+	ret = hwrng_get_crypto_bytes(rngobj->hwrng, rng_value, rng_value_length);
+	if (ret < 0) {
+		EFI_PRINT("Rng device read failed\n");
+		status = EFI_DEVICE_ERROR;
+		goto back;
+	}
+
+back:
+	return EFI_EXIT(status);
+}
+
+/**
+ * efi_rng_register() - register EFI_RNG_PROTOCOL
+ *
+ * If a HWRNG device is available, the Random Number Generator Protocol is
+ * registered.
+ *
+ * Return:	An EFI error status
+ */
+static efi_status_t efi_rng_register(void *data)
+{
+	struct efi_rng_obj *rngobj;
+	struct hwrng *rng;
+	struct efi_device_path *dp;
+	efi_handle_t handle;
+
+	rng = hwrng_get_first();
+	if (IS_ERR(rng))
+		return EFI_UNSUPPORTED;
+
+	rngobj = xzalloc(sizeof(*rngobj));
+
+	rngobj->hwrng = rng;
+	rngobj->ops.get_info = rng_getinfo;
+	rngobj->ops.get_rng = rng_getval;
+
+	dp = efi_dp_from_cdev(&rng->cdev, true);
+
+	efi_add_handle(&rngobj->header);
+
+	handle = &rngobj->header;
+
+	return efi_install_multiple_protocol_interfaces(&handle,
+							&efi_device_path_protocol_guid, dp,
+							&efi_rng_protocol_guid, &rngobj->ops,
+							NULL);
+}
+
+static int efi_rng_init(void)
+{
+	efi_register_deferred_init(efi_rng_register, NULL);
+	return 0;
+}
+device_initcall(efi_rng_init);
-- 
2.47.3



