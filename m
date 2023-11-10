Delivery-date: Fri, 10 Nov 2023 23:05:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1Zd6-006VGr-1U
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 23:05:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1Zd6-0008IC-Gg
	for lore@pengutronix.de; Fri, 10 Nov 2023 23:05:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2ltSKoW/T5wy40ebTbv5cGp3XPu1/hgKa/TwvEFxenw=; b=sCm5u3U/VuFtsqKDcxbTsxe7Gq
	oBuOuGOfRe6/gxTtw2Pvy9cb84x1jP1k8eTQVOByOHlsHvtQlhg8h+BpCJ7a2BTFwko6X8QyYopVP
	vY3q8PsLMdm6gIrRQ3VqbQDgRa5znnhC6MbStlO1gZ/mkB5uVqSXX6oSHqAMMUkIieUBuf//ZGu4I
	W5idPTQYig0JvuOJVu42jiR0CIePX8NV3DRGg4j+H8PwD3bPvScncKaKfkIUy2vjos14nR03XkcqL
	ONZ3QLrCyARKsyq/zMz3JR0WXZtBaUGaIiSK4VyuJCubvucK0KwBW2t2faT9y/isNJgHISSTWjZay
	GEOn1ujQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1Zc3-009WRR-0O;
	Fri, 10 Nov 2023 22:04:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1Zc0-009WPD-1J
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 22:04:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r1Zbz-0007mr-7c; Fri, 10 Nov 2023 23:04:23 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r1Zby-00872g-R4; Fri, 10 Nov 2023 23:04:22 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r1ZIe-00BRGz-1f;
	Fri, 10 Nov 2023 22:44:24 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 10 Nov 2023 22:44:13 +0100
Message-Id: <20231110214421.2726093-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231110214421.2726093-1-a.fatoum@pengutronix.de>
References: <20231110214421.2726093-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_140424_523113_55A51C50 
X-CRM114-Status: GOOD (  11.00  )
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
Subject: [PATCH 10/18] of: add CONFIG_OF for Linux compatibility
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox has CONFIG_OFTREE and CONFIG_OFDEVICE as separate definitions
for good reason, because configurations parsing device trees, while not
using them are possible. In Linux, there is no such distinction and
CONFIG_OF is used as single option for this. Provide the same option in
barebox as hidden symbol and select it from CONFIG_OFDEVICE to make
porting a tiny bit easier.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/Kconfig | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/of/Kconfig b/drivers/of/Kconfig
index 4dc40b27f442..816aff0063b0 100644
--- a/drivers/of/Kconfig
+++ b/drivers/of/Kconfig
@@ -11,8 +11,12 @@ config OFTREE_MEM_GENERIC
 config DTC
 	bool
 
+config OF
+	bool
+
 config OFDEVICE
 	select OFTREE
+	select OF
 	select DTC
 	bool "Enable probing of devices from the devicetree"
 
-- 
2.39.2



