Delivery-date: Mon, 01 Dec 2025 11:26:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ17G-006moX-27
	for lore@lore.pengutronix.de;
	Mon, 01 Dec 2025 11:26:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ17G-0006p0-4l
	for lore@pengutronix.de; Mon, 01 Dec 2025 11:26:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PbtgDiJk6NL4RORim2JqM9y6G+bn7R//bOxFZRf7BjM=; b=qXJbv381jGsi03g4xkgQdAgrFz
	Mg3oMS4raCmO2p9LYYNIP03m+vMcDtI3g0sbOZ31tohVyuaiYZIFSnQILY3tnGcxQr04/cqlLwRf+
	ciwvvXKglmzq26Lu6A1CnsxBZGgGh1JeACQZZZe8Y+A5E2yaetHTNYtIA+wMyLDE5BEeONTPLYp3s
	r2O4/2mhBSXBKIdmbIbCqxMnR0O6bTcx3mqtKSdx4+VzZn08yzT1NIPGVAnoeOWkw7KSrMDWJ+yQf
	MK7N8lmeZ7Q0S1dY12xBo75+zRVpXAoI9OHAJqYlpJ58UCGaeLB4/bDCn2yXONQozRy05/6MRsCC9
	fTLCnHKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ16t-00000003KJV-1M27;
	Mon, 01 Dec 2025 10:26:23 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ16p-00000003KGr-38IK
	for barebox@lists.infradead.org;
	Mon, 01 Dec 2025 10:26:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id D7B37439CB;
	Mon,  1 Dec 2025 10:26:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7D65C116D0;
	Mon,  1 Dec 2025 10:26:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764584778;
	bh=rxLSYvxsssji3EfiPsufLU6AKIoPNpmZEp0EUkr4C28=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=roLm98nmSbAMF7H80xS+v2XKwSbEwVwRG+iHgJ26p0waw28DMpjC/HRkk9YgH321D
	 gUtB7Dy8oH434xN31PrOYPbhc4TDxH9PPW011EpekKvZ6C44iwuS6w+yabyaHMnU0j
	 2DNkOfX6dGlH1Db5cdx2psrfkTe/+7j0Z1TI+QqFyFu9OU0IIfS8wrcyNv+tAD/O7o
	 uBUlsBtlMZkmZDE5vpBT24O6Y+ken6VZitEJdOipBZplEZcjX3h978x/OsnD/M3yJJ
	 PJwRk7Y75PFqv65d3wae+acH8XYrOwXeUd9UEn0u6xvPMluVnCuG3m06A5wotnL3Ar
	 YGv+RCjh8XCJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1661D116F5;
	Mon,  1 Dec 2025 10:26:18 +0000 (UTC)
From: Maud Spierings via B4 Relay <devnull+maudspierings.gocontroll.com@kernel.org>
Date: Mon, 01 Dec 2025 11:26:18 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251201-imx_usb-v2-3-95ec2a0e8694@gocontroll.com>
References: <20251201-imx_usb-v2-0-95ec2a0e8694@gocontroll.com>
In-Reply-To: <20251201-imx_usb-v2-0-95ec2a0e8694@gocontroll.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Maud Spierings <maudspierings@gocontroll.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764584777; l=415;
 i=maudspierings@gocontroll.com; s=20250214; h=from:subject:message-id;
 bh=rBeLpcpDYXlRocbeFNy26wAbndybequTHRKMHaxq3x4=;
 b=PoFPCBUi9nj83fp34s7px9JWAMVDp0wJcydFAHPIKm+3X7O7aQiSqS8WqTYsEEQ+tIcH0cgHJ
 LStdbeDjW3RCv/Lo1ayX9Tf/LVUiXoCxCVNQRExKsHytAHoDgWzHI1R
X-Developer-Key: i=maudspierings@gocontroll.com; a=ed25519;
 pk=7chUb8XpaTQDvWhzTdHC0YPMkTDloELEC7q94tOUyPg=
X-Endpoint-Received: by B4 Relay for maudspierings@gocontroll.com/20250214
 with auth_id=341
X-Original-From: Maud Spierings <maudspierings@gocontroll.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_022619_824708_C6C57DCD 
X-CRM114-Status: UNSURE (   6.90  )
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
Reply-To: maudspierings@gocontroll.com
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-103.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,USER_IN_WELCOMELIST,
	USER_IN_WHITELIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 3/3] gitignore: ignore *.exe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Maud Spierings <maudspierings@gocontroll.com>

windows scripts produce .exe files, which should not be added. Add it to
the gitignore.

Signed-off-by: Maud Spierings <maudspierings@gocontroll.com>
---
 .gitignore | 1 +
 1 file changed, 1 insertion(+)

diff --git a/.gitignore b/.gitignore
index a235f9f7de..74cb7b0928 100644
--- a/.gitignore
+++ b/.gitignore
@@ -19,6 +19,7 @@
 *.dcd
 *.dcd.S
 *.elf
+*.exe
 *.i
 *.ko
 *.lex.c

-- 
2.52.0




