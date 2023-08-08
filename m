Delivery-date: Tue, 08 Aug 2023 11:27:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qTJ0K-00CDqd-Qe
	for lore@lore.pengutronix.de; Tue, 08 Aug 2023 11:27:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qTJ0I-0002hX-W6
	for lore@pengutronix.de; Tue, 08 Aug 2023 11:27:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+TrnCwNn5TsW+nTjxtDaZov3236oGEZvSGiDBqjUCJg=; b=zD24LR3/vxhkrgKLTJOs+JADKm
	EPXPtooCv9cCV+jHhZWvIwMZfHxXIDmNRNWG5NwRjoxD+PtHUkIyprOuCRgG7/fmMYq9uH/LiGxDb
	kNOpT6HRRKHlN7TGBnu7hHYW+1wVNap/bCmpOfO2+OE5VwAHWsEesLNAj0kOraUmXr9oGjVD1tIJX
	QTQyOGLaMUTPVQ4CxK3C+CH/6odlTzKllTv7AjAcfU6aC/6s256XVjZa0qRVyeqtH/0KE/xD0RcAE
	mbX9FbW7DZ0YczalCuksnX2lCEH2zG5YhN2KdWM80bygqM+i3qt2UKLo+zjgWc+7kSDHF6wcyuH5U
	aCGTnNsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qTIz0-0028NC-1L;
	Tue, 08 Aug 2023 09:26:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qTIyw-0028LT-2v
	for barebox@lists.infradead.org;
	Tue, 08 Aug 2023 09:26:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <rhi@pengutronix.de>)
	id 1qTIyq-0002V6-2s; Tue, 08 Aug 2023 11:26:20 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <rhi@pengutronix.de>)
	id 1qTIyp-001wyt-Fs; Tue, 08 Aug 2023 11:26:19 +0200
Received: from rhi by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <rhi@pengutronix.de>)
	id 1qTIyo-008YLc-2G;
	Tue, 08 Aug 2023 11:26:18 +0200
From: Roland Hieber <rhi@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Roland Hieber <rhi@pengutronix.de>
Date: Tue,  8 Aug 2023 11:26:15 +0200
Message-Id: <20230808092617.2037996-2-rhi@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230808092617.2037996-1-rhi@pengutronix.de>
References: <20230808092617.2037996-1-rhi@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230808_022626_946537_A3CD8A87 
X-CRM114-Status: UNSURE (   9.79  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] doc: dt-bindings: improve docs for barebox 'partuuid' property
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Explain what the partuuid is, and make the lists valid reStructuredText
syntax.

Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
 .../devicetree/bindings/mtd/partition.rst       | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/mtd/partition.rst b/Documentation/devicetree/bindings/mtd/partition.rst
index 627b59eda04b..0f64dee3c3b3 100644
--- a/Documentation/devicetree/bindings/mtd/partition.rst
+++ b/Documentation/devicetree/bindings/mtd/partition.rst
@@ -4,13 +4,22 @@ Representing flash partitions in devicetree
 In addition to the upstream binding, another property is added:
 
 Optional properties:
-- ``partuuid`` : The global partition UUID for this partition.
+
+* ``partuuid``: The global partition UUID for this partition.
+  For GPT partitions, the partuuid is the 16-byte GPT Partition UUID (e.g.
+  ``de6f4f5c-c055-4374-09f7-8c6821dfb60e``).
+  For MBR partitions, the partuuid is the 4-byte disk identifier
+  followed by a dash and the partition number (starting with 1, e.g.
+  ``c9178f9d-01``).
+
+  The partuuid is case-insensitive.
 
 Additionally, barebox also supports partitioning the eMMC boot partitions if
 the partition table node is named appropriately:
-- ``partitions`` : user partition
-- ``boot0-partitions`` : boot0 partition
-- ``boot1-partitions`` : boot1 partition
+
+* ``partitions`` : user partition
+* ``boot0-partitions`` : boot0 partition
+* ``boot1-partitions`` : boot1 partition
 
 Examples:
 
-- 
2.39.2



