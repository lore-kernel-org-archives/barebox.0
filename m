Delivery-date: Fri, 03 Mar 2023 10:30:58 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1kf-007O3D-DS
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 10:30:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1ke-0004WW-MW
	for lore@pengutronix.de; Fri, 03 Mar 2023 10:30:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=n7hT1HVi/Z28dXPs1qVt274zTSRVwP+v2LI3m5BAgWI=; b=gsKelmQ4338CWhDHAkcAwjCgh9
	QIZSVhfWm4qdZH1C713TsJl0ivWib3/lXgeMozNIhotVJVXhtc87AC9M8QahMx8vs+irSUA5TAx43
	eyWRgERPXDO3T10IwpX4/xDKshhgwamycPsTo5u5QTR4xUb7x2VVPyRqbXsZDKoqj27VONTCorRwq
	yxZRtUImRbx2tN0KPyTcPBxSPQRb/lf6Hwug/DhNTIwRsbafSjVJO7jbzlNKPAJViMwZh33ggwz8o
	C+txGfe0oVd8YkVIWmasr+L6OIkGB2N3oGDgQsef90a7ZtaGpD1Alq8y73N68Q0SThGHHa/69REqW
	SLCSP3cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1jR-005k8s-O6; Fri, 03 Mar 2023 09:29:42 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1c6-005edz-7s
	for barebox@bombadil.infradead.org; Fri, 03 Mar 2023 09:22:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=n7hT1HVi/Z28dXPs1qVt274zTSRVwP+v2LI3m5BAgWI=; b=DFSL0vNK/0InbzCFTDO3lD8TeV
	/+95mMsnmlIZxKEyu6mUpi+wH6PF+68TxCLQsl5qETNTQ+gEE/UwckwS8FqBHtadiR4rL2ngXT+h+
	DRtDAJNxOew/YR9OgGHsD1W022Q5gORwB82x9Zyy7YdD5rVJqN6+fwLY0uKJKvLrG0IBX6kVG+oBQ
	/6jpMoDBGAmUngzmgje9J0xuIRwFJEG5tQ7HPedrgRlf15OpKv4ztQJHNYqcLcQ2xHKOsl8crKHx2
	ObRu7YNoAOcHNOnbYZuk72QJMCJBkxJNH22TD8AgoR8FLP1FbQOb2yQJTrpWmyEstdPeA/+TYw+Nc
	1e04MSug==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pY1br-00FdLD-2z
	for barebox@lists.infradead.org;
	Fri, 03 Mar 2023 09:22:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bj-0000Gb-8Z; Fri, 03 Mar 2023 10:21:43 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bi-001WjR-Ht; Fri, 03 Mar 2023 10:21:42 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bb-00F2km-3e; Fri, 03 Mar 2023 10:21:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  3 Mar 2023 10:21:23 +0100
Message-Id: <20230303092131.3063587-43-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230303092131.3063587-1-s.hauer@pengutronix.de>
References: <20230303092131.3063587-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_092153_261071_1A6885D3 
X-CRM114-Status: GOOD (  15.82  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 42/50] ARM: stm32mp: Make safe for multi-arch
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Make sure stm32mp initcalls are only executed when running on
a stm32mp SoC.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-stm32mp/init.c       | 20 +++++++++++++++++++-
 arch/arm/mach-stm32mp/stm32image.c |  4 ++++
 include/mach/stm32mp/stm32.h       |  2 ++
 3 files changed, 25 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-stm32mp/init.c b/arch/arm/mach-stm32mp/init.c
index d46762e0b7..b63c1be5be 100644
--- a/arch/arm/mach-stm32mp/init.c
+++ b/arch/arm/mach-stm32mp/init.c
@@ -297,11 +297,29 @@ static int setup_cpu_type(void)
 	return 0;
 }
 
+static int __st32mp_soc;
+
+int stm32mp_soc(void)
+{
+	return __st32mp_soc;
+}
+
 static int stm32mp_init(void)
 {
+	if (of_machine_is_compatible("st,stm32mp135"))
+		__st32mp_soc = 32135;
+	else if (of_machine_is_compatible("st,stm32mp151"))
+		__st32mp_soc = 32151;
+	else if (of_machine_is_compatible("st,stm32mp153"))
+		__st32mp_soc = 32153;
+	else if (of_machine_is_compatible("st,stm32mp157"))
+		__st32mp_soc = 32157;
+	else
+		return 0;
+
 	setup_cpu_type();
 	setup_boot_mode();
 
 	return 0;
 }
-core_initcall(stm32mp_init);
+postcore_initcall(stm32mp_init);
diff --git a/arch/arm/mach-stm32mp/stm32image.c b/arch/arm/mach-stm32mp/stm32image.c
index 7867418e6c..37d7c73120 100644
--- a/arch/arm/mach-stm32mp/stm32image.c
+++ b/arch/arm/mach-stm32mp/stm32image.c
@@ -7,6 +7,7 @@
 #include <init.h>
 #include <memory.h>
 #include <linux/sizes.h>
+#include <mach/stm32mp/stm32.h>
 
 #define BAREBOX_STAGE2_OFFSET	256
 
@@ -45,6 +46,9 @@ static struct image_handler image_handler_stm32_image_v1_handler = {
 
 static int stm32mp_register_stm32image_image_handler(void)
 {
+	if (!stm32mp_soc())
+		return 0;
+
 	return register_image_handler(&image_handler_stm32_image_v1_handler);
 }
 late_initcall(stm32mp_register_stm32image_image_handler);
diff --git a/include/mach/stm32mp/stm32.h b/include/mach/stm32mp/stm32.h
index adb898fa26..5ce93e5eb3 100644
--- a/include/mach/stm32mp/stm32.h
+++ b/include/mach/stm32mp/stm32.h
@@ -34,4 +34,6 @@
 #define STM32_DDR_BASE			0xC0000000
 #define STM32_DDR_SIZE			SZ_1G
 
+int stm32mp_soc(void);
+
 #endif /* _MACH_STM32_H_ */
-- 
2.30.2



