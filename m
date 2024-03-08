Delivery-date: Fri, 08 Mar 2024 12:18:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1riYFN-00Dd8T-2G
	for lore@lore.pengutronix.de;
	Fri, 08 Mar 2024 12:18:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1riYFL-0000TB-7l
	for lore@pengutronix.de; Fri, 08 Mar 2024 12:18:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=o3vu1zyhjiyVzhaxtZLLjfmdU1OxbCog5fU/aVWSuxY=; b=1UcGzetsFAM3kXXzz9sWa76Rjk
	OWfHaTSEzSdMfjFEYk7GdXqdWK4miYyQOphfkxXjmNTpydb3QRXnicVsvc0dpk8GVKIMmflXQ7DXF
	i1VljTCSuCciJ1SlNjEzb/2ciJ00TfNHJdqUhIb2xsuaSjvlS0wRFFlKBPwuJFOGd1oss7L/uIr6x
	KI9+/RKmWV7sunX8N+O44ybjdbHSdC1mn5a6Uw6lWoRl4hacIl8RdjmlPcNMtsOIkZikB8ctjJwb8
	Ou8l6D9cnXIumajQHAFj9YMYdR9o/3UOp18kIGla1xABlPXVuVplpYveQabvPXwppbgCC0yZV7yjb
	5cDJElfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riYEo-00000008vXz-0FKd;
	Fri, 08 Mar 2024 11:18:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riYEd-00000008vQN-3Ozd
	for barebox@lists.infradead.org;
	Fri, 08 Mar 2024 11:17:59 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1riYEZ-0007Id-AE
	for barebox@lists.infradead.org; Fri, 08 Mar 2024 12:17:51 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri, 08 Mar 2024 12:17:05 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240308-v2024-02-0-topic-arasan-hs200-support-v1-7-6d50c90485f3@pengutronix.de>
References: <20240308-v2024-02-0-topic-arasan-hs200-support-v1-0-6d50c90485f3@pengutronix.de>
In-Reply-To: <20240308-v2024-02-0-topic-arasan-hs200-support-v1-0-6d50c90485f3@pengutronix.de>
To: barebox@lists.infradead.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1935;
 i=s.trumtrar@pengutronix.de; h=from:subject:message-id;
 bh=I5AVM8W1cN+RNF9G34GUFRyUbi3A8BkGbAKhh+++RZs=;
 b=owGbwMvMwCUmvd38QH3grB+Mp9WSGFJffT4tHci98tL/zyfiNi4LfbnD/cW3Bte4/fZKUkaeG
 y2zJqp7dZSyMIhxMciKKbJErj2ksVn4s86X4+cZYOawMoEMYeDiFICbfI2R4cBD177X4jwfU+Ma
 s59WCSfzrN0iO9VNLfjw3vP7f6hYH2VkaBf58OHCQqur5xoePPP5uZtPrvXixtTWO8Zu8Ra6PoF
 rmQA=
X-Developer-Key: i=s.trumtrar@pengutronix.de; a=openpgp;
 fpr=59ADC228B313F32CF4C7CF001BB737C07F519AF8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240308_031756_027414_6E080562 
X-CRM114-Status: UNSURE (   7.43  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 07/12] include: mci: add more EXT_CSD_CARD_TYPE_*
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Import missing EXT_CSD_CARD_TYPE_ defines from linux v6.7.

EXT_CSD_CARD_TYPE_SDR_1_8V/1_2V is unused in barebox. Replace with the
defines from linux.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 include/mci.h | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/include/mci.h b/include/mci.h
index 91460b7ef6..9a52e3f360 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -293,13 +293,24 @@
 #define EXT_CSD_CARD_TYPE_MASK		0x3f
 #define EXT_CSD_CARD_TYPE_26		(1<<0)	/* Card can run at 26MHz */
 #define EXT_CSD_CARD_TYPE_52		(1<<1)	/* Card can run at 52MHz */
+#define EXT_CSD_CARD_TYPE_HS		(EXT_CSD_CARD_TYPE_HS_26 |	\
+					 EXT_CSD_CARD_TYPE_HS_52)
 #define EXT_CSD_CARD_TYPE_DDR_1_8V	(1<<2)	/* Card can run at 52MHz */
 						/* DDR mode @1.8V or 3V I/O */
 #define EXT_CSD_CARD_TYPE_DDR_1_2V	(1<<3)	/* Card can run at 52MHz */
 						/* DDR mode @1.2V I/O */
-#define EXT_CSD_CARD_TYPE_SDR_1_8V	(1<<4)	/* Card can run at 200MHz */
-#define EXT_CSD_CARD_TYPE_SDR_1_2V	(1<<5)	/* Card can run at 200MHz */
+#define EXT_CSD_CARD_TYPE_DDR_52	(EXT_CSD_CARD_TYPE_DDR_1_8V  \
+					 | EXT_CSD_CARD_TYPE_DDR_1_2V)
+#define EXT_CSD_CARD_TYPE_HS200_1_8V	(1<<4)	/* Card can run at 200MHz */
+#define EXT_CSD_CARD_TYPE_HS200_1_2V	(1<<5)	/* Card can run at 200MHz */
 						/* SDR mode @1.2V I/O */
+#define EXT_CSD_CARD_TYPE_HS200		(EXT_CSD_CARD_TYPE_HS200_1_8V | \
+					 EXT_CSD_CARD_TYPE_HS200_1_2V)
+#define EXT_CSD_CARD_TYPE_HS400_1_8V	(1<<6)	/* Card can run at 200MHz DDR, 1.8V */
+#define EXT_CSD_CARD_TYPE_HS400_1_2V	(1<<7)	/* Card can run at 200MHz DDR, 1.2V */
+#define EXT_CSD_CARD_TYPE_HS400		(EXT_CSD_CARD_TYPE_HS400_1_8V | \
+					 EXT_CSD_CARD_TYPE_HS400_1_2V)
+#define EXT_CSD_CARD_TYPE_HS400ES	(1<<8)	/* Card can run at HS400ES */
 
 /* register PARTITIONS_ATTRIBUTE [156] */
 #define EXT_CSD_ENH_USR_MASK		(1 << 0)

-- 
2.40.1



