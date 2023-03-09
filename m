Delivery-date: Thu, 09 Mar 2023 11:42:38 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paDjJ-00EiEi-7b
	for lore@lore.pengutronix.de; Thu, 09 Mar 2023 11:42:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paDjH-0008On-VU
	for lore@pengutronix.de; Thu, 09 Mar 2023 11:42:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pYfxmmPbc74Cq0sh8sXRrOlTw0XX3dVpXM4vH3SvNpc=; b=F1f4FzfqUTj+xBAajCjSuK0Fzj
	xzvHYKFpO7p8m1ygvNHKrzdhwHiyYy1dot08UnD9vzgIpvCbx7C3jGSwtf/ZCXab/81vtsDuHe0zv
	cqa+VQI4YUFW23P8tOllqqFPipAYbh29JwdhpdcPhfUSKO2fUIPr5mbXiPMQuatqJdN0O5/sSjX8o
	gCIXDzJXPK/37PoMz3W+nvlf+j+rkhLd29NDPm2PKbi70kqLNbH1SSyioCcr9hSck159TtfLqTPRO
	YHWgJhuLcmQZ1+7yW8Sap4vTXuMwgtiWixQ+pbpMm8l7zo1XH1ay0kdShhfEtk1J2plJFe5R760ZC
	iZ8CUANw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paDhd-0098GO-J0; Thu, 09 Mar 2023 10:40:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paDhT-00988i-BP
	for barebox@lists.infradead.org; Thu, 09 Mar 2023 10:40:45 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1paDhQ-0007YT-6a
	for barebox@lists.infradead.org; Thu, 09 Mar 2023 11:40:40 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Thu, 09 Mar 2023 11:40:34 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230228-v2023-02-0-topic-flexspi-v1-2-7b3c3fa295f5@pengutronix.de>
References: <20230228-v2023-02-0-topic-flexspi-v1-0-7b3c3fa295f5@pengutronix.de>
In-Reply-To: <20230228-v2023-02-0-topic-flexspi-v1-0-7b3c3fa295f5@pengutronix.de>
To: barebox@lists.infradead.org
Cc: 
X-Mailer: b4 0.12.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230309_024043_453507_2B9B432F 
X-CRM114-Status: GOOD (  15.10  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 02/21] bbu: make it possible to check multiple
 of-compatibles
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

It is possible that one barebox can rule multiple platforms e.g.
multiple platform revision each has a dedicated device tree and of
compatible. While it is possible to add multiple of-compatibles via
IMD_USED_OF() (see: zii-imx8mq-dev) we didn't allowed it to flash it
without 'force'. Fix this by check all possible IMD_TYPE_OF_COMPATIBLE
image metadata types.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 common/bbu.c | 42 +++++++++++++++++++++++++++---------------
 1 file changed, 27 insertions(+), 15 deletions(-)

diff --git a/common/bbu.c b/common/bbu.c
index 3ec17216cb..a9b3fef7a0 100644
--- a/common/bbu.c
+++ b/common/bbu.c
@@ -154,36 +154,44 @@ struct bbu_handler *bbu_find_handler_by_device(const char *devicepath)
 	return NULL;
 }
 
-static int bbu_check_of_compat(struct bbu_data *data)
+static int bbu_check_of_compat(struct bbu_data *data, unsigned short of_compat_nr)
 {
+	const struct imd_header *imd = data->imd_data;
+	const struct imd_header *of_compat;
 	struct device_node *root_node;
 	const char *machine, *str;
 	int ret;
-	const struct imd_header *of_compat;
 
 	if (!IS_ENABLED(CONFIG_OFDEVICE) || !IS_ENABLED(CONFIG_IMD))
 		return 0;
 
-	of_compat = imd_find_type(data->imd_data, IMD_TYPE_OF_COMPATIBLE);
-	if (!of_compat)
-		return 0;
-
 	root_node = of_get_root_node();
 	if (!root_node)
 		return 0;
 
-	str = imd_string_data(of_compat, 0);
-
-	if (of_machine_is_compatible(str)) {
-		pr_info("Devicetree compatible \"%s\" matches current machine\n", str);
-		return 0;
-	}
-
 	ret = of_property_read_string(root_node, "compatible", &machine);
 	if (ret)
 		return 0;
 
-	if (!bbu_force(data, "machine is incompatible with \"%s\", have \"%s\"\n", str, machine))
+	for (; of_compat_nr; of_compat_nr--) {
+		of_compat = imd_find_type(imd, IMD_TYPE_OF_COMPATIBLE);
+		if (!of_compat)
+			return 0;
+
+		str = imd_string_data(of_compat, 0);
+
+		if (of_machine_is_compatible(str)) {
+			pr_info("Devicetree compatible \"%s\" matches current machine\n", str);
+			return 0;
+		}
+
+		pr_debug("machine is incompatible with \"%s\", have \"%s\"\n",
+			 str, machine);
+
+		imd = of_compat;
+	}
+
+	if (!bbu_force(data, "incompatible machine \"%s\"\n", machine))
 		return -EINVAL;
 
 	return 0;
@@ -191,6 +199,7 @@ static int bbu_check_of_compat(struct bbu_data *data)
 
 static int bbu_check_metadata(struct bbu_data *data)
 {
+	unsigned short imd_of_compat_nr = 0;
 	const struct imd_header *imd;
 	int ret;
 	char *str;
@@ -211,6 +220,9 @@ static int bbu_check_metadata(struct bbu_data *data)
 	imd_for_each(data->imd_data, imd) {
 		uint32_t type = imd_read_type(imd);
 
+		if (imd_read_type(imd) == IMD_TYPE_OF_COMPATIBLE)
+			imd_of_compat_nr++;
+
 		if (!imd_is_string(type))
 			continue;
 
@@ -220,7 +232,7 @@ static int bbu_check_metadata(struct bbu_data *data)
 		free(str);
 	}
 
-	ret = bbu_check_of_compat(data);
+	ret = bbu_check_of_compat(data, imd_of_compat_nr);
 	if (ret)
 		return ret;
 

-- 
2.30.2



