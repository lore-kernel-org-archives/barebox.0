Delivery-date: Fri, 10 Nov 2023 23:05:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1Zd9-006VIK-1E
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 23:05:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1Zd9-0008KU-Ac
	for lore@pengutronix.de; Fri, 10 Nov 2023 23:05:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WnZg/wqcDiROAdnEZxsa3iFzj2+6xAcGgjrLhvF4dHc=; b=a3pN9GRg1FHmzMRDzEflTrhQiu
	bKDGjr6956abD+nSDMZMG/VttBOUhsULn79JzhFkDoBgXHrx6orjblVhW8eme9f5vZ/W79iN8QcFo
	U+YUrCQNcVlZyzSKVn57cHFlHkZL2VpOdnJ+ptyIDjuEi0XKIPnzOj3BKl/uiQkN+BKvYHL/E+FH1
	pXLHe5uMfZ6/DK2iOFCxpfvyOcWYKBqlbQ9s/lRNFVsOWWacRN3Xx+0yvJdHRtkYAUJpHb0GQfnT+
	TcJII89Zqlzawl1i0UUEj4LFoDg4doWSsbY53CxG94c1XM3qsNjhoQruy0xaaT5EeAnm1sihDOXZ/
	+1SmrsBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1Zc9-009WUm-1v;
	Fri, 10 Nov 2023 22:04:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1Zc0-009WPH-20
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 22:04:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r1Zbz-0007ni-Fk; Fri, 10 Nov 2023 23:04:23 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r1Zbz-008732-2s; Fri, 10 Nov 2023 23:04:23 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r1ZIe-00BRGz-2p;
	Fri, 10 Nov 2023 22:44:24 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 10 Nov 2023 22:44:21 +0100
Message-Id: <20231110214421.2726093-19-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231110214421.2726093-1-a.fatoum@pengutronix.de>
References: <20231110214421.2726093-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_140424_661140_9DF8E81A 
X-CRM114-Status: GOOD (  14.16  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 18/18] include: add linux/device.h wrapper around driver.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We don't have device-scoped resource control and in practice memory
allocated in device functions is only freed when barebox terminates, so
let's accept the fact that most code is leaky and implement devm_
as literal leaky abstractions.

While at it provide some macros to translate Linux API into equivalent
barebox API.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/device.h | 66 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 66 insertions(+)
 create mode 100644 include/linux/device.h

diff --git a/include/linux/device.h b/include/linux/device.h
new file mode 100644
index 000000000000..0bd61154ac30
--- /dev/null
+++ b/include/linux/device.h
@@ -0,0 +1,66 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef LINUX_DRIVER_H_
+#define LINUX_DRIVER_H_
+
+#include <driver.h>
+#include <linux/slab.h>
+#include <linux/bug.h>
+#include <mmu.h>
+
+#define device_driver driver
+
+#define __devm_wrapper(fn, dev, ...) ({ BUG_ON(!dev); fn(__VA_ARGS__); })
+
+#define devm_kmalloc(...)		__devm_wrapper(kmalloc, __VA_ARGS__)
+#define devm_krealloc(...)		__devm_wrapper(krealloc, __VA_ARGS__)
+#define devm_kvasprintf(...)		__devm_wrapper(kvasprintf, __VA_ARGS__)
+#define devm_kasprintf(...)		__devm_wrapper(kasprintf, __VA_ARGS__)
+#define devm_kzalloc(...)		__devm_wrapper(kzalloc, __VA_ARGS__)
+#define devm_kmalloc_array(...)		__devm_wrapper(kmalloc_array, __VA_ARGS__)
+#define devm_kcalloc(...)		__devm_wrapper(kcalloc, __VA_ARGS__)
+#define devm_krealloc_array(...)	__devm_wrapper(krealloc_array, __VA_ARGS__)
+#define devm_kfree(...)			__devm_wrapper(kfree, __VA_ARGS__)
+#define devm_kstrdup(...)		__devm_wrapper(kstrdup, __VA_ARGS__)
+#define devm_kstrdup_const(...)		__devm_wrapper(kstrdup_const, __VA_ARGS__)
+#define devm_kmemdup(...)		__devm_wrapper(kmemdup, __VA_ARGS__)
+#define devm_bitmap_zalloc(dev, nbits, gfp)	\
+	__devm_wrapper(bitmap_zalloc, dev, nbits)
+
+#define device_register register_device
+#define device_unregister unregister_device
+
+#define driver_register register_driver
+#define driver_unregister unregister_driver
+
+static inline void __iomem *devm_ioremap(struct device *dev,
+					 resource_size_t start,
+					 resource_size_t size)
+{
+	if (start)
+		remap_range((void *)start, size, MAP_UNCACHED);
+
+	return IOMEM(start);
+}
+
+static inline int bus_for_each_dev(const struct bus_type *bus, struct device *start, void *data,
+				   int (*fn)(struct device *dev, void *data))
+{
+	struct device *dev;
+	int ret;
+
+	bus_for_each_device(bus, dev) {
+		if (start) {
+			if (dev == start)
+				start = NULL;
+			continue;
+		}
+
+		ret = fn(dev, data);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+#endif
-- 
2.39.2



