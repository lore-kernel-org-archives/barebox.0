Delivery-date: Mon, 09 Jan 2023 12:11:04 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pEq3U-006bGP-VB
	for lore@lore.pengutronix.de; Mon, 09 Jan 2023 12:11:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pEq3T-0000vs-2Q
	for lore@pengutronix.de; Mon, 09 Jan 2023 12:11:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=fhXcyCw7+uOQ/3/YZKKsRMlGgLSPEm2xHlZXlJTpQpw=; b=h8PUszj/VzNEIiK5jxTcBOLHuh
	A0cSXziYQQ+ddMg87Byu22yAoxK347E6yftEYsNHaOv6VXL1GNxZh9wFs7Tfvv9/r8Bo957z4kOcM
	i5yChPjTKui0wtO92iqhSnPPwqNUDw4tcMBvmapIr5d3fh8kGHMXeWA+C1qnz5s4/INrvBq+f7YiV
	5+vC5QnynVVFW5JiYzCpxySQFkzA39OMsL4RAlEdv+ayRm2GgXWxoaQBeRXkxq9Swp3c65YsvJVzb
	GqT/dd7fQ620xI4GZjc8/r1w3xjHWLFEfpSTHLVPi5hvHLii/OP7r/Tw+wvLuWH75UCF5lpWFXRO2
	yGyqVPeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEq2A-000zBR-Ku; Mon, 09 Jan 2023 11:09:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEq1z-000z6M-3f
	for barebox@lists.infradead.org; Mon, 09 Jan 2023 11:09:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pEq1s-0000Lc-Ql; Mon, 09 Jan 2023 12:09:24 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pEq1s-004pqe-6i; Mon, 09 Jan 2023 12:09:24 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pEq1q-006fj6-Tj; Mon, 09 Jan 2023 12:09:22 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Jan 2023 12:09:19 +0100
Message-Id: <20230109110921.1590312-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230109_030931_327736_A80D4FDF 
X-CRM114-Status: GOOD (  12.97  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] fixup! Rename device_d::device_node to device_d::of_node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

  - Out-of-tree patches often add a board driver, which may use the
    old device_d/driver_d naming. Especially with bisecting, this can
    be a hassle

  - We may split up some parts of struct device into a new
    struct platform_device like Linux does and we don't want
    to break out of tree patches twice.

Thus add the old names as aliases for now.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/driver.h | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/include/driver.h b/include/driver.h
index 693d5cb3e580..c789f3151e70 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -74,7 +74,10 @@ struct device {
 	struct list_head cdevs;
 
 	const struct platform_device_id *id_entry;
-	struct device_node *of_node;
+	union {
+		struct device_node *device_node;
+		struct device_node *of_node;
+	};
 
 	const struct of_device_id *of_id_entry;
 
-- 
2.30.2



