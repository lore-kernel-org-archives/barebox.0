Delivery-date: Fri, 13 Mar 2026 14:35:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12fY-000DYN-1w
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:35:12 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12fG-0001BD-I5
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:35:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=A7HIzGeCfvf0wbFcVtOgEXrW9q/+as/cNvgzckHOZsw=; b=nFMlJ0J68bYA/MMOuFiUFWK914
	HGQAGNJjSPxEKe8j6qwJgV1zXJ2GHMF4OvA8zdvLT8Go/VbsWEWr+iQEyNJvtOSkWbADgaLEw8VAR
	0aYvApm1zi/y4JBFDFahytKBXHk2AyIJjDBRWKp1PySPQkJE/w0o36BQ7WRAyWJJ9TClx3QPmhGAm
	LXIrEgTPjoRcXJkyxkeJlEMnNOZ7/bSPvo+/fy26XKTk9WTCri/mLmwuqPDEDnc6GnDc3Y1HCpYFe
	mAKtvtpH26ub4EOuiQYrdmYAgMtoUMaRTDXdbfvRHhc97Yn8Ebteaw7I3k5fYLbK9R76QVExm1h2j
	/Vk3qGRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12dm-00000000Get-43nN;
	Fri, 13 Mar 2026 13:33:23 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12dI-00000000Foj-3oG8
	for barebox@bombadil.infradead.org;
	Fri, 13 Mar 2026 13:32:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=A7HIzGeCfvf0wbFcVtOgEXrW9q/+as/cNvgzckHOZsw=; b=ZDHB6kzU/J+6fSvwyqZb1Cygub
	atAE0m8GViSIZXKys4bQQSsg9FgjOMS9dEd/9zt9RkGvIBpkOkDUIZZb1JNtucFSvZUWutLJJeYkr
	2VCq5h/djhUgBf4Xjkw8kTKE4U2dDmuRx7+8Z+8HbjW2P167eCB/M9wKLAqqKmu5e0IM45C+OKn0r
	FZurXlrlUIf5MEb+kAtyLmfXk4iwXxHRJLBiqUdhK4q7dXNIIElVt7YX3v4VQvPt4SsZxtvTn52lf
	LOBDbnDTYf1ZyaT6i+ikub5s/lMusrnjInFtc3jLIkhoHDHYHA8pQtmTTr92XKsgk1Yn3KbL6UDo/
	fj19i1Kg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d6-00000003OSZ-0pTh
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:32:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12d0-0006uz-N2; Fri, 13 Mar 2026 14:32:34 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12d0-0005Ui-1h;
	Fri, 13 Mar 2026 14:32:34 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XL-00000009ULB-0nO5;
	Fri, 13 Mar 2026 14:26:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 13 Mar 2026 14:25:05 +0100
Message-ID: <20260313132631.2257573-22-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
References: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_133240_564636_33E59484 
X-CRM114-Status: GOOD (  13.78  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,RCVD_IN_VALIDITY_RPBL_BLOCKED,
	RCVD_IN_VALIDITY_SAFE_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=no
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 21/58] mtd: nand: mxc_nand: use clk_get_optional for clock handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Alexander Shiyan <eagle.alexander923@gmail.com>

On some platforms like i.MX51, the clock driver does not support GATE clocks,
and the clocks are always on. The current driver uses clk_get which fails
when the clock is not found, preventing the driver from probing.

This patch changes clk_get to clk_get_optional, allowing the driver to
continue probing even if the clock is not provided, assuming it is always
enabled.

(cherry picked from commit 092a3f95537b80c60bb9138cb4b3a7df1f751ed2)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
Link: https://lore.barebox.org/20260114100923.1164051-1-eagle.alexander923@gmail.com
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/raw/mxc_nand.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/raw/mxc_nand.c b/drivers/mtd/nand/raw/mxc_nand.c
index de2ad2a028cb..e328eb0815c7 100644
--- a/drivers/mtd/nand/raw/mxc_nand.c
+++ b/drivers/mtd/nand/raw/mxc_nand.c
@@ -1809,7 +1809,8 @@ static int mxcnd_probe(struct device *dev)
 	nand_set_controller_data(this, host);
 	nand_set_flash_node(this, dev->of_node);
 
-	host->clk = clk_get(dev, NULL);
+	/* Clock support might not be implemented, so use the optional variant */
+	host->clk = clk_get_optional(dev, NULL);
 	if (IS_ERR(host->clk))
 		return PTR_ERR(host->clk);
 
-- 
2.47.3



