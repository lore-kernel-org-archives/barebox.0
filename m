Delivery-date: Tue, 17 Oct 2023 16:55:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qslTU-00Bsfp-29
	for lore@lore.pengutronix.de; Tue, 17 Oct 2023 16:55:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qslTR-0003ey-Pr
	for lore@pengutronix.de; Tue, 17 Oct 2023 16:55:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ovZ3zxnlFaXW8DarvsGnnv3jgXiYgB/B2pjbQDtSCTA=; b=bI9FWQYUOXymHYitRMdJqvJ9Mu
	7vs1WT8mjoBjiITt/PBn66n3FTtKA7hmROO9h5CfItf63zssM7RbyC+EKWE6aIacseyNV+eXIhbGV
	BzLiVjJ2ZtMQjfrP59RQV1Rc8mD0AXfSzVy6O4MbmMofT2//gIRguTlTA+eKENCA4ys3BOlL34png
	+QOX6Sj5zghmJVQevTHSir9ES6rSMwD3ANPtUor0MWR/PHzi0sqhxpJQ6VKDrtdLf3uwcUl9Wy4QD
	SvOOAbNKWUL8CNGowjZwW5B0QgWpcUZDVA1KqR3nFAxKeZ8/gyhWCSKcAofSykcuKtYiwvFsivV6R
	CwIXy7Ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qslSA-00Cej6-28;
	Tue, 17 Oct 2023 14:53:50 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qslQ9-00CcYq-2u
	for barebox@bombadil.infradead.org;
	Tue, 17 Oct 2023 14:51:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=ovZ3zxnlFaXW8DarvsGnnv3jgXiYgB/B2pjbQDtSCTA=; b=NldE3x8uDiWvOiw9G1mrEjtQYI
	inn38nTaiUzEQoeCLO0JSqufyreI0bdzfAO4t7i7eV7x7jEtqVHaf7OsVhssDaYy6QVlyoDH1Ckwu
	yusu3EIG2CoeAWyYcTNsT6sEeYCRPCP6xvZdhvvRdMSy9ydqa7nadgEBnzqlja7czojPWbSYPE3Ma
	1dm61Zs7HMkCiK93Ny1s+sbccU9KKJGOd5mbghzLWqVNKWhn/i9A/EKMUpEbHrO2/YYDl8kK4k4A5
	r3Hmkem8iItmTSMwcH7drsR19gtgx5geeO9IS1y+rHt8SXH8AVEUYDDv5XlbuK8AFOIHqQscYgniP
	S4BiO4KQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qslQ5-007AEk-1m
	for barebox@lists.infradead.org;
	Tue, 17 Oct 2023 14:51:44 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qslPz-0001wJ-CW
	for barebox@lists.infradead.org; Tue, 17 Oct 2023 16:51:35 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 17 Oct 2023 16:51:30 +0200
Message-Id: <20231017145131.3069283-29-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231017145131.3069283-1-m.felsch@pengutronix.de>
References: <20231017145131.3069283-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231017_155141_829589_29C90BBB 
X-CRM114-Status: GOOD (  10.38  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 28/29] Documentation: boards: imx: replace i.MX8MQ with i.MX8M
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Some parts of the documentation refer to the i.MX8MQ which are valid for
all i.MX8M SoCs. Also rename the i.MX8 to i.MX8M to make it clear which
family we meant.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Changelog:
v2:
- unchaned
- v1-link: https://lore.barebox.org/barebox/20231010143314.2031253-1-m.felsch@pengutronix.de/T/#t

 Documentation/boards/imx.rst | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/boards/imx.rst b/Documentation/boards/imx.rst
index c64446aff640..a8f014dd1b91 100644
--- a/Documentation/boards/imx.rst
+++ b/Documentation/boards/imx.rst
@@ -21,7 +21,7 @@ The Internal Boot Mode is supported on:
 * i.MX53
 * i.MX6
 * i.MX7
-* i.MX8MQ
+* i.MX8M
 
 With the Internal Boot Mode, the images contain a header which describes
 where the binary shall be loaded and started. These headers also contain
@@ -64,8 +64,8 @@ of the image to the card, use:
 
   dd if=images/barebox-freescale-imx51-babbage.img of=/dev/sdd bs=1024 skip=1 seek=1
 
-Note that MaskROM on i.MX8 expects the image to start at the +33KiB mark, so the
-following command has to be used instead:
+Note that MaskROM on i.MX8M expects the image to start at the +33KiB mark, so
+the following command has to be used instead:
 
 .. code-block:: sh
 
-- 
2.39.2



