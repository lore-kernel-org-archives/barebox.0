Delivery-date: Mon, 17 Feb 2025 19:23:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tk5m0-003aNZ-1U
	for lore@lore.pengutronix.de;
	Mon, 17 Feb 2025 19:23:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tk5ly-0003Sr-VB
	for lore@pengutronix.de; Mon, 17 Feb 2025 19:23:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jtY3yzYnWZe9xqvgYO0Bq0JmDAUryyrZ7q+BauJz4ME=; b=zYuZCV1S66bdCj9TYlZWPt33dd
	oOmUrR2giwmAYWjobLkh1Sot1iOsMwrWj6RUSpmFYswrw2jeeDp+K2JDiq80x6hRZ9SQenv2KEKS2
	NwrXZCeCHdR5czhauSeVb27fW5fQ8MOvYdDUo/iyW+n89SFA2nEIBKPYuEKEvqUK3yaFMHTlsxg4c
	j3nN0/8Hr3cnGZylhaD7Wc2YJtttg3VSU7GCi4BJuuZ8r3+HVTay/v5c8oAi2dtG/gd3psQXwagGu
	bSiJf21+xG9seJLM4TyxsOBj9tQ8R0/kVy3GCr4b9yw04aU2ENyj3vh/78Qk6BuLH5KwU4RAUmxVh
	CWi5RaoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tk5lJ-00000005aa4-2DMf;
	Mon, 17 Feb 2025 18:22:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tk5Xq-00000005YxL-07qm
	for barebox@lists.infradead.org;
	Mon, 17 Feb 2025 18:08:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tk5Xm-00011D-8t; Mon, 17 Feb 2025 19:08:34 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tk5Xm-001S7b-0E;
	Mon, 17 Feb 2025 19:08:34 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tk5Xl-00Gc9q-3B;
	Mon, 17 Feb 2025 19:08:34 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Feb 2025 19:08:29 +0100
Message-Id: <20250217180833.3955657-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250217180833.3955657-1-a.fatoum@pengutronix.de>
References: <20250217180833.3955657-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_100838_072684_E5F0C83C 
X-CRM114-Status: GOOD (  12.81  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/6] of: of_path: support barebox,fixed-partitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox has for many years supported a superset of the upstream OF
partitions binding by parsing partitions out of SD/eMMC and EEPROM
in addition to MTD.

Unfortunately, we didn't upstream our binding and a different binding
went upstream into Linux v6.13-rc1 along with Linux commit
2e3a191e89f9 ("block: add support for partition table defined in OF").

Since then, if CONFIG_OF_PARTITION, which is disabled by default, is
enabled, Linux will ignore any GPT/MBR if an SD/eMMC node has a
fixed-partitions compatible subnode.

This is different from the barebox behavior, which allows both OF
partitions and GPT/MBR to co-exist as long as they don't conflict.

As many barebox boards:

  - Place the environment in non-partitioned space prior to the first
    partition

  - Fixup all fixed-partitions into the kernel device tree by default

this results in breakage if a newer kernel is booted with
CONFIG_OF_PARTITION enabled.

As first step towards resolving this, teach barebox to parse
barebox,fixed-partitions the same way it parses fixed-partitions.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/of_path.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/of/of_path.c b/drivers/of/of_path.c
index b3feaa07e39d..57bd82a741ba 100644
--- a/drivers/of/of_path.c
+++ b/drivers/of/of_path.c
@@ -14,7 +14,9 @@
 
 bool of_node_is_fixed_partitions(const struct device_node *np)
 {
-	return of_device_is_compatible(np, "fixed-partitions");
+	return of_device_is_compatible(np, "fixed-partitions") ||
+		of_device_is_compatible(np, "barebox,fixed-partitions");
+
 }
 
 struct device *of_find_device_by_node_path(const char *path)
-- 
2.39.5



