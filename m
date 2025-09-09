Delivery-date: Tue, 09 Sep 2025 09:38:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uvsvq-000zMR-2C
	for lore@lore.pengutronix.de;
	Tue, 09 Sep 2025 09:38:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uvsvq-0007bh-4d
	for lore@pengutronix.de; Tue, 09 Sep 2025 09:38:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XouAZHDsq76HteCbLy1kj9ldTx46IILzfuaXLX9jTkw=; b=BiH6KrUK1f3NPw
	c0HbSexSwdUu05Z2Uppr/7R/zMuxl3lnAiZbUw0QQ4QPuOM2O3YocD/iXM4A+6K5waHnwXDsUSoaK
	aCj6ebKpeDww1wA6cgF62WPCq+Xr9ugOQ0EHsDQiK5veRSthjK+gvGcOrxm4Z7uckTW5LCpJr9ixL
	xSrPvfLlAFanTQlVIO1F4V9kDz0liL4PND2AaiE/LMXnEW6jJBetuSxC33kwznL1lvYc8r+dODHvW
	Y7BZTqDjGpuTdUQdEN9poW/3cEyTUbvJpYzJwhwhQZzPfiEsG65yQhtrbgvqdnyioteh4DgiPy/ox
	PJqnUGEWqCnS6TnSQm0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvsv9-00000005ECI-0K55;
	Tue, 09 Sep 2025 07:37:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvs9X-00000004nnL-0iyD
	for barebox@lists.infradead.org;
	Tue, 09 Sep 2025 06:48:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uvs9V-0007DV-AM; Tue, 09 Sep 2025 08:48:29 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uvs9V-000NRx-0Q;
	Tue, 09 Sep 2025 08:48:29 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uvs9V-00000003m6W-05TW;
	Tue, 09 Sep 2025 08:48:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  9 Sep 2025 08:48:28 +0200
Message-ID: <20250909064828.899889-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250908_234831_215074_15981B3F 
X-CRM114-Status: GOOD (  10.89  )
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
Cc: Enrico Joerns <ejo@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] Documentation: k3 am62l: fix typo
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add missing 'a'.

Reported-by: Enrico Joerns <ejo@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/boards/ti-k3-am62lx.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/boards/ti-k3-am62lx.rst b/Documentation/boards/ti-k3-am62lx.rst
index 79f2e17cf3..1ca5f3403b 100644
--- a/Documentation/boards/ti-k3-am62lx.rst
+++ b/Documentation/boards/ti-k3-am62lx.rst
@@ -3,7 +3,7 @@
 TI K3 AM62lx based boards
 =========================
 
-The TI AM62lx is SoC in the line of TI K3 64-bit ARM SoCs.
+The TI AM62lx is a SoC in the line of TI K3 64-bit ARM SoCs.
 
 The boot process of the TI AM62x SoCs is a two step process. The first stage boot loader
 is loaded by the ROM code and executed on the Cortex-A53 processor. This stage contains
-- 
2.47.3



