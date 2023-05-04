Delivery-date: Thu, 04 May 2023 10:19:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puUBM-004LLz-AF
	for lore@lore.pengutronix.de; Thu, 04 May 2023 10:19:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puUBK-0001y0-Cu
	for lore@pengutronix.de; Thu, 04 May 2023 10:19:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8tNjZOKukRI0xL1jHwFjLoQ5SU/50L55p2UxuE3uujM=; b=FUs1mntdIs2qPbUCM5RCpqstgc
	o5JrH/H9Aj9aLS2EzV9Cv/KttkShif3kkLboVAZ8NmAaeChlDuf3t/MdWUwHQJ5iH64Ut203zibyC
	AUKt3gQECzith/vLEZULeEFGx2758jFYDw6rzRsGNznldCXMNgxSMbDS9EpGD4SELTydqBbRy8Veb
	9oI2hrXnr1JX7KR/tksBQSBHRwA3+0SHo3xQEgEKPqmAmDtgujsjWoJwFnhb9fqZyqgZpiQcxB9DI
	Lxx7r8V1qXkOYoAVnT+TEJbA7J8BPlsxHmhQwui/U69wuwF67cNsUI5KviJSMSHf1RNsYJyKMzFjk
	RusfJnDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puUAJ-0074lF-2A;
	Thu, 04 May 2023 08:18:15 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puUAH-0074iX-0C
	for barebox@bombadil.infradead.org;
	Thu, 04 May 2023 08:18:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=8tNjZOKukRI0xL1jHwFjLoQ5SU/50L55p2UxuE3uujM=; b=dym4RZc24VWUyTOUEJuVYeGbX3
	iRvp1h96KciIb6s/cUG0gsfauSCsbtyECqNnXPyd3t49KTU9ADZjuMkr0OXt5NheljPo6r9DxXJIG
	wd8vU3vu84Ry9lgWRHnCTCVegAozsX5SK3C3nLTuX829E+Wj4N8Ch+N6nvbb9zM61cOoh+BGgELpw
	iLcOjnFHkRBRBuTCHwcx+qlwajbgKaAT/Y+W+3PVW2Z59eRzkfxiKfaSG0oGzMOTmUiztYPBRE62a
	OZPr5xTadIQhtDUI2Wn2PErjO7nzdICsritS84X1xCjLVPFE2KTXaiLvCKwKHyi1OYvmgcEV4TPn2
	x3G60HGA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puUAB-001gZE-1V
	for barebox@lists.infradead.org;
	Thu, 04 May 2023 08:18:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1puU9t-0001Gt-RT; Thu, 04 May 2023 10:17:49 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1puU9t-0011Es-3V; Thu, 04 May 2023 10:17:49 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1puU9q-001Haw-KU; Thu, 04 May 2023 10:17:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  4 May 2023 10:17:28 +0200
Message-Id: <20230504081745.305841-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230504081745.305841-1-s.hauer@pengutronix.de>
References: <20230504081745.305841-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230504_091808_777706_C4D56CEF 
X-CRM114-Status: GOOD (  10.82  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 01/18] firmware: make drivers/firmware/ obj-y
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

drivers/firmware/ contains ARM SCMI support which doesn't depend on
CONFIG_FIRMWARE. Unconditionally compile drivers/firmware/ to make
sure SCMI support can be compiled in with CONFIG_FIRMWARE disabled.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/Makefile b/drivers/Makefile
index 41a2054db0..fa899a2ab8 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -34,7 +34,7 @@ obj-$(CONFIG_REMOTEPROC) += remoteproc/
 obj-$(CONFIG_RESET_CONTROLLER) += reset/
 obj-$(CONFIG_PCI) += pci/
 obj-y += rtc/
-obj-$(CONFIG_FIRMWARE) += firmware/
+obj-y += firmware/
 obj-$(CONFIG_FPGA) += fpga/
 obj-$(CONFIG_GENERIC_PHY) += phy/
 obj-$(CONFIG_HAB) += hab/
-- 
2.39.2



