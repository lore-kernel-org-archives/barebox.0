Delivery-date: Fri, 10 Nov 2023 14:02:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R95-005rfv-36
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 14:02:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R95-00058Y-T4
	for lore@pengutronix.de; Fri, 10 Nov 2023 14:02:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0hUUKJXjdKh+pNSzz9UBn1USUBDxwlJ8Q82XDc1i1mE=; b=RXqoS5LvqrFhnB3oEolraRcd0u
	3SP8d0uCvQxBMQxqvIdaKKrnPeXEcQSRbOhkbV45QHo02xmKFnBPWO8UKFITuDETZkZkbPTXaRLCW
	eLW8A8EmQz75ZJkSwIru8c1YBgpt0FqwRl/t/ArpCJsZ33Swstn2rY8HQEvwURvvlzYkiD3PFu+3K
	GhxnLfX9QQuZ0Q3BW+ovu20+0iAWLx/qSSZST0VcLGs6XrN1S/pP6es158LLWgngIhIf2mkkm2IpE
	edmfx7QnScVjPLyTt0cwY3tgQII66io/ci6hYVQ7u9eNLEjT5MRDplfrkaAcJqujrOMeCpy6N/OGw
	m/ZjqjiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R7x-008m0E-37;
	Fri, 10 Nov 2023 13:00:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R7r-008lwE-1T
	for barebox@bombadil.infradead.org;
	Fri, 10 Nov 2023 13:00:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=0hUUKJXjdKh+pNSzz9UBn1USUBDxwlJ8Q82XDc1i1mE=; b=O/hmV2Cs0OOsOGWQ5A+qaC7a2e
	USrk9HmnbudYDwxw2TsnTKxH219ItwH9IVROr5+zQkeYOOQVcmzhTitw43g6v6kN9hjicQfc22uSQ
	10oiM/XKWcKDK0lloXV/oSAikvioMc7agWXNAOHsKFg0GOAF3qlJX29jTM+imMmvFtwHN19wTYrgQ
	F0b9VTd1WBE/LHilW7RZ510C4JJTSZXDiLuWJwcshqj+tYGgs8z+r/4GVHYk2AhcOaU+ZPYq6MbPE
	OzkKLmrOqvcAjNaLyuuWsyxQoLF3D7Lc7nr2Djv6sLi0DKSkLItkLSwUKUyQX9Zp4fhDmqtURLStJ
	53uUIqrQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R7f-00Fc3x-1p
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 13:00:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R7e-00043P-N7; Fri, 10 Nov 2023 14:00:30 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R7d-0081ZK-Cr; Fri, 10 Nov 2023 14:00:29 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R7d-0096Nn-14;
	Fri, 10 Nov 2023 14:00:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 10 Nov 2023 14:00:26 +0100
Message-Id: <20231110130028.2123895-12-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231110130028.2123895-1-s.hauer@pengutronix.de>
References: <20231110130028.2123895-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_130032_822067_EF07375E 
X-CRM114-Status: UNSURE (   9.73  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 11/13] ddr: imx8m: Drop '8m' suffix from pr_fmt
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

As the driver will gain i.MX9 support, drop the '8m' suffix from the
messages.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/ddr/imx/ddrphy_csr.c   | 2 +-
 drivers/ddr/imx/ddrphy_train.c | 2 +-
 drivers/ddr/imx/ddrphy_utils.c | 2 +-
 drivers/ddr/imx/helper.c       | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/ddr/imx/ddrphy_csr.c b/drivers/ddr/imx/ddrphy_csr.c
index d1cbf8f880..744e140879 100644
--- a/drivers/ddr/imx/ddrphy_csr.c
+++ b/drivers/ddr/imx/ddrphy_csr.c
@@ -3,7 +3,7 @@
  * Copyright 2018 NXP
  */
 
-#define pr_fmt(fmt) "imx8m-ddr: " fmt
+#define pr_fmt(fmt) "imx-ddr: " fmt
 
 #include <linux/kernel.h>
 #include <soc/imx8m/ddr.h>
diff --git a/drivers/ddr/imx/ddrphy_train.c b/drivers/ddr/imx/ddrphy_train.c
index c0555ffe01..d599445e6f 100644
--- a/drivers/ddr/imx/ddrphy_train.c
+++ b/drivers/ddr/imx/ddrphy_train.c
@@ -3,7 +3,7 @@
  * Copyright 2018 NXP
  */
 
-#define pr_fmt(fmt) "imx8m-ddr: " fmt
+#define pr_fmt(fmt) "imx-ddr: " fmt
 
 #include <common.h>
 #include <linux/kernel.h>
diff --git a/drivers/ddr/imx/ddrphy_utils.c b/drivers/ddr/imx/ddrphy_utils.c
index 37274b0b5a..4925fc39d4 100644
--- a/drivers/ddr/imx/ddrphy_utils.c
+++ b/drivers/ddr/imx/ddrphy_utils.c
@@ -3,7 +3,7 @@
 * Copyright 2018 NXP
 */
 
-#define pr_fmt(fmt) "imx8m-ddr: " fmt
+#define pr_fmt(fmt) "imx-ddr: " fmt
 
 #include <common.h>
 #include <errno.h>
diff --git a/drivers/ddr/imx/helper.c b/drivers/ddr/imx/helper.c
index f21b14447c..f38b9a0060 100644
--- a/drivers/ddr/imx/helper.c
+++ b/drivers/ddr/imx/helper.c
@@ -3,7 +3,7 @@
  * Copyright 2018 NXP
  */
 
-#define pr_fmt(fmt) "imx8m-ddr: " fmt
+#define pr_fmt(fmt) "imx-ddr: " fmt
 
 #include <common.h>
 #include <io.h>
-- 
2.39.2



