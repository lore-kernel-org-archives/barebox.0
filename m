Delivery-date: Fri, 14 Mar 2025 12:04:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt2q4-00DyPY-15
	for lore@lore.pengutronix.de;
	Fri, 14 Mar 2025 12:04:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt2q3-00033o-17
	for lore@pengutronix.de; Fri, 14 Mar 2025 12:04:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jwwBl0sbqHZ9iXRThkx8DrJjovHYxjMroEacHPWWEyY=; b=MDqkeER9nUzZWCQn9ud1AFr+l2
	hKtHmtln2vdS0UAAYlS/a2ayibQMk9lReMObth8Z3do4YBrHFlFhtM03OoR2yHZg2u/rd3HxAMW3/
	KJtyCYh8J/2DykzagHIM1yjnn+o5TNX5Ng7XEavdJAX+L7YCl9GWpfPl8iHuu6UKGk5h8nniw4lHc
	dlzDVn/Syl6P771nYGZGKORruCj3Q0iaObUCZ0cPgSo5EaGyM5vhUpr5T+9Ce6uhFN9PWfj7Jm8Dq
	5HiQ4CLAbnIy13R9gtIEQedbX1J0a/pfJiB/GuZkxC+36Rkw8Lol5nVQSyop08BuqjCHI27PYRepg
	iWXNRIxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tt2pe-0000000DwBM-12Bc;
	Fri, 14 Mar 2025 11:04:02 +0000
Received: from zdiv.net ([2001:4b98:dc0:43:f816:3eff:fee4:1d8c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tt2TL-0000000DsoR-31Sz
	for barebox@lists.infradead.org;
	Fri, 14 Mar 2025 10:41:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=24;
	t=1741948850;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=jwwBl0sbqHZ9iXRThkx8DrJjovHYxjMroEacHPWWEyY=;
	b=MlzrrXKdh3u9Km2IepuHe02Vn/iG1tKVfgs0oeW5Er9ILgRwQlI2YWuqyo++LlIjuUaI/7
	5Xhmt1ODDMl7XDbi1T+uHXxkavW6g3SXkefBCWWI95X2AFm+l5ljQDChZ84mKy+oreXizX
	oJloOnNkPO97HDk0RG0VzNaIdi5Y/qS+/mLSjLZcz8e3AIrPMHkS1bVZfTJYpSHFgTOtTN
	vrouF4LvkVqIdnmiym+lvudztFhnA7CpdTSdUIc5tvWSKeQp+JFPnNK3c03/bcTuMo/IAB
	mPRyc8JFI8kv1PpoSVSaIRb4fAYn776gmUcMQX+4Ga1Iu5xWEYP9kmuvQTtwjg==
Received: from mini.my.domain (<unknown> [2a01:e0a:12:d860:4866:44ad:6a94:b4e])
	by zdiv.net (OpenSMTPD) with ESMTPSA id 28eeb7a3 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Fri, 14 Mar 2025 11:40:50 +0100 (CET)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Fri, 14 Mar 2025 11:40:34 +0100
Message-ID: <20250314104034.13637-7-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250314104034.13637-1-jmaselbas@zdiv.net>
References: <20250314104034.13637-1-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250314_034100_061353_C701739F 
X-CRM114-Status: UNSURE (   5.99  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 6/6] regulator: tps65219: add missing include
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
 drivers/regulator/tps65219-regulator.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/regulator/tps65219-regulator.c b/drivers/regulator/tps65219-regulator.c
index da329660d6..9961638595 100644
--- a/drivers/regulator/tps65219-regulator.c
+++ b/drivers/regulator/tps65219-regulator.c
@@ -16,6 +16,7 @@
 #include <linux/regulator/of_regulator.h>
 #include <regulator.h>
 #include <linux/device.h>
+#include <linux/array_size.h>
 
 struct tps65219_regulator_irq_type {
 	const char *irq_name;
-- 
2.48.1



