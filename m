Delivery-date: Thu, 18 Aug 2022 07:22:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOXyo-002dSH-4U
	for lore@lore.pengutronix.de; Thu, 18 Aug 2022 07:22:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOXyl-0000pf-ON
	for lore@pengutronix.de; Thu, 18 Aug 2022 07:22:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=N8Be4Xg2LqQCJU333U9KIy4MWJbXjO9lXNwawLo5Y1g=; b=P9bm5gFJCQAPpyO6Ws2pjjZkmN
	BaQWDOSPc7yKZmno4xvcZN2E7Bc5rgZ4BCbQsl3upLnJ/peEe0B/QcW5CR42OjixSur0Pf/koK1Er
	7YJkm01efLC8R0Cvo4q0Ygoxvkwq5XUWnnkt1QyvCBweUZDjHRorsgRdC8o4CtFDcL5z2ZCqVn6lc
	Hg3MexnInbc8vrYCmiyrZkNSzkX6RGbYVgnrUVq1tfkCy246m+irEPO70sNE5uqin98+bR7SUmPPI
	d8cY0mSPZLvX6D/2p5dx7L2ZKwxD+LuolYgtYzDmMHMd7Cb/DR2XzCnUmsqLDHBRSzLhbDRGv6h8y
	7dT53XCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOXxS-00FoTK-Oq; Thu, 18 Aug 2022 05:20:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOXwn-00Fn3w-5H
	for barebox@lists.infradead.org; Thu, 18 Aug 2022 05:20:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oOXwl-0008I6-LY; Thu, 18 Aug 2022 07:19:59 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oOXwk-000S3p-RZ; Thu, 18 Aug 2022 07:19:58 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oOXwi-008lHb-M4; Thu, 18 Aug 2022 07:19:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de,
	ukl@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Aug 2022 07:19:49 +0200
Message-Id: <20220818051955.2088238-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220818051955.2088238-1-a.fatoum@pengutronix.de>
References: <20220818051955.2088238-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220817_222001_334487_309B81CD 
X-CRM114-Status: GOOD (  11.59  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 04/10] dt-bindings: add i.MX8M feature controller bindings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

As a first step, we'll add feature controller support for i.MX8MM and
i.MX8MN. Both can exist in a dual and a solo CPU core variant and the
i.MX8MNL lacks a GPU, while the i.MX8MML lacks a GPU. Define a
dt-bindings header with the associated feature IDs.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/dt-bindings/features/imx8m.h | 14 ++++++++++++++
 1 file changed, 14 insertions(+)
 create mode 100644 include/dt-bindings/features/imx8m.h

diff --git a/include/dt-bindings/features/imx8m.h b/include/dt-bindings/features/imx8m.h
new file mode 100644
index 000000000000..4dd85aa5c8fb
--- /dev/null
+++ b/include/dt-bindings/features/imx8m.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: (GPL-2.0-or-later OR MIT) */
+#ifndef __DT_BINDINGS_FEATURES_IMX8M_
+#define __DT_BINDINGS_FEATURES_IMX8M_
+
+#define IMX8M_FEAT_DUMMY	0
+
+#define IMX8M_FEAT_CPU_DUAL	1
+#define IMX8M_FEAT_CPU_QUAD	2
+#define IMX8M_FEAT_VPU		4
+#define IMX8M_FEAT_GPU		4
+
+#define IMX8M_FEAT_END		5
+
+#endif
-- 
2.30.2



