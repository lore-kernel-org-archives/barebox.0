Delivery-date: Tue, 17 Oct 2023 16:55:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qslU4-00Bskw-Nu
	for lore@lore.pengutronix.de; Tue, 17 Oct 2023 16:55:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qslU2-0004QA-HN
	for lore@pengutronix.de; Tue, 17 Oct 2023 16:55:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O41fgwDRzHByW1z+1LF5puvMEGe/NTx6WeCZu7Nva1c=; b=UIQ3Yt7FaHZ+Sx0HXjZyU3Jb/A
	yLAVxYewp1DzxLu1F3OvQXUY+gz1i5jN8BHZTxwtM5fUAQCuFvF+ccf/NplIqotLi3hNnUcUdM9vB
	zLOys/4YWdnx8zH3RcrXc5FP2teelyN2A7EBI5piqVXq+wSAu+r0B265rx8uI5lGiEdT8ixVHN+dT
	Dkj/fDJnWgy4tQ+KIIKBV8ZuJK6WJh3JGds6lcrLXCGEUWxRswk/B3ftYPhCCncLc/tBhe3F8OK/F
	ZQaj0GTev7QJCxsnWwP2z+3kgtm98C0zcH+yvTYTL5REiIRTyUyeXwcaa34tDU+ZIdQj6C+cPZ/dS
	uPeewHMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qslSo-00CfDp-3C;
	Tue, 17 Oct 2023 14:54:31 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qslQD-00Ccej-27
	for barebox@bombadil.infradead.org;
	Tue, 17 Oct 2023 14:51:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=O41fgwDRzHByW1z+1LF5puvMEGe/NTx6WeCZu7Nva1c=; b=dO3sc67LgsZbCEbIvWJJxRXARE
	jxMY9MHGM6ELdOhGjM/qnfaXaxrSLBUFf4ARXSF+G5k3qut00IfDZyuK4ffK93TJlxGtJ069WIo73
	4Dg5PLN3e2gPz1MLRsOEeIZ2FhOvHrqFX1AYuM1u7jp2B7kvd2Z0plQOrdcH/2e9zXmIrnR95lMVn
	HiEXIT4Okt/pLVDk7ILg7bc3VKYegFaPA3tEPtJsBchgkLRyVZlNvLsZpxEgNR4mS/PhUP86zy/6C
	xUNRcC3Q96osbVEAEzAE1dKBt+7RFc8vfxuzqzUjMxcpPK7YD+sCVqc8JPk3p9oTHcsBNz5AlzKVs
	68LUPplQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qslQ6-007AEm-0H
	for barebox@lists.infradead.org;
	Tue, 17 Oct 2023 14:51:48 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qslPz-0001wJ-8G
	for barebox@lists.infradead.org; Tue, 17 Oct 2023 16:51:35 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 17 Oct 2023 16:51:27 +0200
Message-Id: <20231017145131.3069283-26-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231017145131.3069283-1-m.felsch@pengutronix.de>
References: <20231017145131.3069283-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231017_155142_291887_31E38336 
X-CRM114-Status: UNSURE (   7.86  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 25/29] scripts: imx-image: add missing close()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Close the csfbin file after we read it into buf.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Changelog:
v2:
- unchaned
- v1-link: https://lore.barebox.org/barebox/20231010143314.2031253-1-m.felsch@pengutronix.de/T/#t

 scripts/imx/imx-image.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index 8c4cc771ee28..4a0a44b3a9b3 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -796,6 +796,8 @@ static int hab_sign(struct config_data *data, const char *csfcmds,
 
 	xread(fd, buf, s.st_size);
 
+	close(fd);
+
 	/*
 	 * For i.MX8M, write into the reserved CSF section
 	 */
-- 
2.39.2



