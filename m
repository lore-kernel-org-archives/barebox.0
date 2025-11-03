Delivery-date: Mon, 03 Nov 2025 05:39:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFmLn-00EjKw-0C
	for lore@lore.pengutronix.de;
	Mon, 03 Nov 2025 05:39:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFmLm-0004hL-D6
	for lore@pengutronix.de; Mon, 03 Nov 2025 05:39:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+bo3pb4vCHauR6Zh+Yen7oDBigzdzHwYKyp3FAUlDQg=; b=WB0xFJrqSvTCeG1rPe9BfTmKLh
	vPxmyQo6m2nRkkhpMYWemH9SDAruSUocuQJHd9JoxtiI+VnfD8lMoqgP81fSF7IJx2qs3VfS5QKyI
	cFcS8WLoDMkEdknjADWp7gAJqghU2VremAvIG2lt/ji6oH9/43cIMGznyzbkH3zCkbD70feXuoj0c
	U5BDBQ+f3XLWBdZA8R3HxQX0HcW8VUAeoMgV7bLCGPbwA9kPH6pXGeo1Fy2zm5/A6mPnfayr4rv0/
	dmhgmeXSFmXZhMm9+Cm5nn6eM2tQa1+iMv6gOZgLmBgzhSLKMKTrT/ycTkvneWCl1dRnsCRg4HFEB
	5O7pDXNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFmL4-00000009C4D-2wXq;
	Mon, 03 Nov 2025 04:38:42 +0000
Received: from mail-qk1-x735.google.com ([2607:f8b0:4864:20::735])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFmL2-00000009C34-26FR
	for barebox@lists.infradead.org;
	Mon, 03 Nov 2025 04:38:41 +0000
Received: by mail-qk1-x735.google.com with SMTP id af79cd13be357-8a3eac7ca30so302544285a.2
        for <barebox@lists.infradead.org>; Sun, 02 Nov 2025 20:38:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762144719; x=1762749519; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+bo3pb4vCHauR6Zh+Yen7oDBigzdzHwYKyp3FAUlDQg=;
        b=crV2GW8sbfFV1IkJGDfmZ4VZrY6NjGUhKRwZwsAtMFJq0JUw5qtW6krY49Z77pm4Mf
         RDIa+/QjNXAElkLUwdSbYVWatNHxQP0P8HnjQr8uR1aRy5YoRpS5xMXhN3ghx7+ilKPp
         el6KykV65NN12rluQw7VOZEiy/jelifN8h7dhoss7KAD8Piu3NJ7BOP7dkxMGr1Pn3T+
         52QjB/+e/9X2XaLIJy6dQTGd5hFlVUJTv9/ODw7BehhpXQuX/WtNhl73h7kZK94YzatK
         z9Q9m6EbFnBnzkIJLhQUBIS7pNUq4nhRUQKFkB/ZEib8n7dkqs++hpYwRzE3O58xboOR
         J2rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762144719; x=1762749519;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+bo3pb4vCHauR6Zh+Yen7oDBigzdzHwYKyp3FAUlDQg=;
        b=TvJ8w3T28jOPwFDOPfS05t1nXdX5gZ7hLzayKptv/eGXCg71mDHPVyEXsFM0n6IRsq
         mN2iivJ6xVaX/7bLaQ2+PnXvD3jxyAvPsMVRpESC4Jf0CLtP2bn2tgqr524Q3PxGiXpg
         XREt5bdQuuLfwE+UScQv/7BU7/Y4L4Ea9dTKZylAKzrhdgRyOyha3uj/TXawyzXEmk6P
         YhjVMnBzILA7ZMKp8U2v5p9+ZK2a/LP43WVkOJNsi3d2oZbHKLnaBQlzuGhTbKyzkk8Q
         lBXM8TYoP0nO8MphSuj1welI7wa2WAcAusFfgdFbRPJcJCSc9W0QlldHaE80QtdoOb4F
         LZBA==
X-Gm-Message-State: AOJu0YykvFjsI6LdwuBy2TilqU/4X+Ms+KZAnQiKtTQjbb0sY1AFpk96
	zNFaP64O82JEuwJsRDr6UMQHXWNKdEPIJuIc4ZPH+iCYRjLsaapzcBcONmIpLX/e
X-Gm-Gg: ASbGncs4VBT7gfp9Vek714h9BKpzLwDZUTx2ou2GTgTYgIFPAEnq+tB4+n3vBs+YSvp
	v6aXf+/D9PQbz5/hu+VUImaHCY2oQY0guTHt5Mriz4tOSI15tCBvX4WA//YMWtoNMA0FOB6yU1H
	YYqyo1fi05UMR5lkIq7Qj8JnV7HRKWEY7KtnjpTuGS520hkrH+8hox2D30qkLmA6tldNxaWJkws
	LoAKcxTEjlMaPaIO9XgwlIc58xMfyFO/1fMMjR97ZM2w+kXCVCZb7gkywu2FGdxQotwmE1DVWv8
	2jgNwJahaHxVtAufhFuffJmqN5RDBwhCFN0WmkQh8wwIiAMdo3roJ6F2Sk6AggGE4TpQulcTaD5
	tggvS6Xh31953H7K9l995Fy+JPHkMHTYm5EybjdT2HMFNf8Qa/K49Sw1F6KUlnMBReTApwnmOOz
	3rsRxlJopmbrqMD82sn26yBEUU4dQ=
X-Google-Smtp-Source: AGHT+IHEsE6C9cGUBBYwY0Yjw2e4bkNO45qEzo6WVmI2oegW+rEN0PHzGUq8A20adZsLcbl9IwY7kQ==
X-Received: by 2002:a05:620a:190c:b0:89f:7884:4c66 with SMTP id af79cd13be357-8ab999792c3mr1465591485a.25.1762144718953;
        Sun, 02 Nov 2025 20:38:38 -0800 (PST)
Received: from Latitude-7490.ht.home ([2607:fa49:8c41:2600:4474:25a:7017:ff44])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8ac02f854a0sm594864185a.27.2025.11.02.20.38.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Nov 2025 20:38:37 -0800 (PST)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Sun,  2 Nov 2025 23:38:32 -0500
Message-Id: <20251103043833.149013-1-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251102_203840_550897_5770DE27 
X-CRM114-Status: GOOD (  15.67  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] drivers: misc: external_state: add a barebox external state.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

Add a driver to use an external state dtb, gives the ability to define
an external state at compile time. useful for yocto or buildroot defining
a state.dtb that will be passed to barebox at compile time vi a defconfig
fragment.

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 drivers/misc/Kconfig          | 13 ++++++++
 drivers/misc/Makefile         |  1 +
 drivers/misc/external_state.c | 58 +++++++++++++++++++++++++++++++++++
 3 files changed, 72 insertions(+)
 create mode 100644 drivers/misc/external_state.c

diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
index e235646ee551..91075788b5b8 100644
--- a/drivers/misc/Kconfig
+++ b/drivers/misc/Kconfig
@@ -21,6 +21,19 @@ config STATE_DRV
 	depends on OFDEVICE
 	depends on STATE
 
+config EXTERNAL_STATE
+	tristate "Use external barebox state dtb"
+	depends on OFDEVICE
+	depends on STATE
+	help
+	  This permits the use of an extranl dtb state blob
+	  which permits to dynamicly at compile time specify
+	  an external blob vi EXTERNAL_STATE_DTB_PATH
+
+config EXTERNAL_STATE_DTB_PATH
+	string "the external barebox state dtb path"
+	depends on EXTERNAL_STATE
+
 config DEV_MEM
         bool "Generic memory I/O device (/dev/mem)"
 
diff --git a/drivers/misc/Makefile b/drivers/misc/Makefile
index c4b61de7b8b5..eba19f8c22c3 100644
--- a/drivers/misc/Makefile
+++ b/drivers/misc/Makefile
@@ -6,6 +6,7 @@
 obj-$(CONFIG_JTAG)		+= jtag.o
 obj-$(CONFIG_SRAM)		+= sram.o
 obj-$(CONFIG_STATE_DRV)		+= state.o
+obj-$(CONFIG_EXTERNAL_STATE) += external_state.o
 obj-$(CONFIG_DEV_MEM)		+= mem.o
 obj-$(CONFIG_DEV_PORT)		+= port.o
 obj-$(CONFIG_UBOOTVAR)		+= ubootvar.o
diff --git a/drivers/misc/external_state.c b/drivers/misc/external_state.c
new file mode 100644
index 000000000000..d392133d3370
--- /dev/null
+++ b/drivers/misc/external_state.c
@@ -0,0 +1,58 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (c) 2014 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ * Copyright (C) 2025 Anis Chali <anis.chali#ro-main.com>, Ro-Main
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+#include <state.h>
+#include <libfile.h>
+
+#include <linux/err.h>
+
+static int state_external_init(void)
+{
+	const char *dt_path = CONFIG_EXTERNAL_STATE_DTB_PATH;
+	struct device_node *state_root = NULL;
+	size_t size;
+	void *fdt;
+	int ret;
+
+	if (strlen(dt_path) <= 0)
+		return -EINVAL;
+
+	fdt = read_file(dt_path, &size);
+	if (!fdt) {
+		pr_info("unable to read %s: %m\n", dt_path);
+		return 0;
+	}
+
+	state_root = of_unflatten_dtb(fdt, size);
+	if (!IS_ERR(state_root)) {
+		struct device_node *np = NULL;
+		struct state *state;
+
+		ret = barebox_register_of(state_root);
+		if (ret)
+			pr_warn("Failed to register device-tree: %pe\n", ERR_PTR(ret));
+
+		np = of_find_node_by_alias(state_root, "state");
+
+		state = state_new_from_node(np, false);
+		if (IS_ERR(state))
+			return PTR_ERR(state);
+
+		ret = state_load(state);
+		if (ret != -ENOMEDIUM)
+			pr_warn("Failed to load persistent state, continuing with defaults, %d\n",
+				ret);
+
+		return 0;
+	}
+
+	return -EINVAL;
+}
+
+late_initcall(state_external_init);
-- 
2.34.1



