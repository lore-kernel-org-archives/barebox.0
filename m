Delivery-date: Tue, 07 Mar 2023 10:36:21 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pZTk4-00CALp-4L
	for lore@lore.pengutronix.de; Tue, 07 Mar 2023 10:36:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pZTk3-0008Lf-Fu
	for lore@pengutronix.de; Tue, 07 Mar 2023 10:36:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Vqxkcb+boCVolZC7HvDq4NQUnqy30uLrO1H/B3aaWYs=; b=WLKK1Lk+CahGm/oiPCwZMe7bnt
	woSkaql/WHOyHH0IJ7XCL5V29oenVsjVwDXbdGXOEiICRZTEIOzlVPd08oTRrHXSD8/7O0WeSqEvA
	PDtU+TpbEBkvorgOYdbioL65kI+VgG+O5bx7GN3NOMye/ghl9WzCC6vU+96l2S7L1ot9TTaUM0oNL
	t6pfEAWtOkgGDnHfjRoqV4wHtqxJLmR6i2K4kz7u6Albm99OesNea5J342LsuXtGLjnuooyUqFTlH
	8ughAPWc5Nd82iolQ3wVsVuIu8RGlHiPg9rDzdik0wdfIJq7m23oyXsQsVsJdEFBWQorKlR1Bewad
	zq17G+YA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZTif-00GwZM-L7; Tue, 07 Mar 2023 09:34:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZTiM-00GwSQ-LO
	for barebox@lists.infradead.org; Tue, 07 Mar 2023 09:34:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pZTiH-0007tF-7d; Tue, 07 Mar 2023 10:34:29 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pZTiG-002S00-J5; Tue, 07 Mar 2023 10:34:28 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pZTiG-006VY7-0a; Tue, 07 Mar 2023 10:34:28 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  7 Mar 2023 10:34:24 +0100
Message-Id: <20230307093426.1551193-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230307093426.1551193-1-a.fatoum@pengutronix.de>
References: <20230307093426.1551193-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_013434_762027_9C3C539B 
X-CRM114-Status: GOOD (  14.41  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] drivers: implement of_optee_fixup helper function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This function can be called by board-code after checking whether OP-TEE
was installed or not.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/include/asm/optee.h | 18 ++++++++++++++++
 drivers/Makefile             |  1 +
 drivers/tee/optee/of.c       | 42 ++++++++++++++++++++++++++++++++++++
 3 files changed, 61 insertions(+)
 create mode 100644 arch/arm/include/asm/optee.h
 create mode 100644 drivers/tee/optee/of.c

diff --git a/arch/arm/include/asm/optee.h b/arch/arm/include/asm/optee.h
new file mode 100644
index 000000000000..f8eb7b4a8b0f
--- /dev/null
+++ b/arch/arm/include/asm/optee.h
@@ -0,0 +1,18 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __ARM_OPTEE_H__
+#define __ARM_OPTEE_H__
+
+#include <linux/types.h>
+
+struct device_node;
+
+struct of_optee_fixup_data {
+	const char *method;
+	size_t shm_size;
+};
+
+int of_optee_fixup(struct device_node *root, void *fixup_data);
+
+#endif /* __ARM_OPTEE_H__ */
+
diff --git a/drivers/Makefile b/drivers/Makefile
index 10ec145be5e5..be2f736eb188 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -47,3 +47,4 @@ obj-y	+= ddr/
 obj-y	+= power/
 obj-$(CONFIG_SOUND) += sound/
 obj-y	+= virtio/
+obj-$(CONFIG_HAVE_OPTEE)	+= tee/optee/of.o
diff --git a/drivers/tee/optee/of.c b/drivers/tee/optee/of.c
new file mode 100644
index 000000000000..8295a1751c52
--- /dev/null
+++ b/drivers/tee/optee/of.c
@@ -0,0 +1,42 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#include <of.h>
+#include <linux/ioport.h>
+#include <asm/barebox-arm.h>
+#include <asm/optee.h>
+
+int of_optee_fixup(struct device_node *root, void *_data)
+{
+	struct of_optee_fixup_data *fixup_data = _data;
+	struct resource res = {};
+	struct device_node *node;
+	int ret;
+
+	node = of_create_node(root, "/firmware/optee");
+	if (!node)
+		return -ENOMEM;
+
+	ret = of_property_write_string(node, "compatible", "linaro,optee-tz");
+	if (ret)
+		return ret;
+
+	ret = of_property_write_string(node, "method", fixup_data->method);
+	if (ret)
+		return ret;
+
+	res.start = arm_mem_endmem_get() - OPTEE_SIZE;
+	res.end = arm_mem_endmem_get() - fixup_data->shm_size -1;
+	res.flags = IORESOURCE_BUSY;
+	res.name = "optee_core";
+
+	ret = of_fixup_reserved_memory(root, &res);
+	if (ret)
+		return ret;
+
+	res.start = arm_mem_endmem_get() - fixup_data->shm_size;
+	res.end = arm_mem_endmem_get() - 1;
+	res.flags &= ~IORESOURCE_BUSY;
+	res.name = "optee_shm";
+
+	return of_fixup_reserved_memory(root, &res);
+}
-- 
2.30.2



