Delivery-date: Wed, 05 Feb 2025 10:49:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tfc1o-008kZ2-1l
	for lore@lore.pengutronix.de;
	Wed, 05 Feb 2025 10:49:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tfc1o-0004k2-Hh
	for lore@pengutronix.de; Wed, 05 Feb 2025 10:49:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+PTAwcRnEuskxD1V139vFUnZi87or1MicuYT7l1OkMs=; b=bz0xvUIJO7GEl4kmlhnxd+jcG3
	qTLBheVe4LJwvU6Fsfu3v8zboXl12yEalccoQxSDxPHnvznaap+vLDn7Li65C0aH2qLm8nrXUDvvE
	WG/qLbKzFLx/3gkKdgTSQqB2kvMzsTK7qgrjkU2FzpmoYRZGY3g4N1ImtIkp0cA74ryMa+jL9sjt8
	AesjWS7uxWftDGWwOUJCHFmrbOcY56asMmLKXrD2GgRIJCW+67PyHU+GvuFhvargAh1IXM2F+Edu0
	JqgRc4nt4PPpF267cVYnoffBaa4dX9vlDYkqp1ot3yfOOPHnqSsql+W2v2ONr+tUWHwyjxjWUVgiF
	7NqjIHzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tfc1J-00000002kSS-3Ak8;
	Wed, 05 Feb 2025 09:48:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tfc1H-00000002kPX-0HWn
	for barebox@lists.infradead.org;
	Wed, 05 Feb 2025 09:48:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tfc0z-00048M-RI; Wed, 05 Feb 2025 10:48:13 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tfc0z-003c2h-1H;
	Wed, 05 Feb 2025 10:48:13 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tfc0z-00F0Mw-0x;
	Wed, 05 Feb 2025 10:48:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 05 Feb 2025 10:48:14 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250205-k3-emmc-v1-6-06679246be41@pengutronix.de>
References: <20250205-k3-emmc-v1-0-06679246be41@pengutronix.de>
In-Reply-To: <20250205-k3-emmc-v1-0-06679246be41@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1738748893; l=745;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=ayXc6BFzxKBgjVesyzydgnYEY96EZa5dgIaiD6oyRlg=;
 b=ZJUmFjQrx2WMp1QZCyL5Mn03axedTcVrJwdZK4xT4fFthNOP3vvqP/0As/bgYJ8iIDY2SXXjX
 egH4JKg7m6kAwYTPwKHkKwp8YmUhsLlSF7XMCPsKluN2KDNB7qvJmuA
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250205_014831_111084_55E97B2E 
X-CRM114-Status: UNSURE (   8.84  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 6/9] mci: am654: parse generic mmc node properties
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Call mci_of_parse_node() to parse generic node properties like
max-frequency to lower the maximum allowed frequency.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/am654-sdhci.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mci/am654-sdhci.c b/drivers/mci/am654-sdhci.c
index 9787642011..2c1fa5d804 100644
--- a/drivers/mci/am654-sdhci.c
+++ b/drivers/mci/am654-sdhci.c
@@ -594,6 +594,7 @@ static int am654_sdhci_probe(struct device *dev)
 	mci = &plat->mci;
 	mci->f_max = clk_get_rate(plat->clk);
 	mci->f_min = 50000000 / 256;
+	mci_of_parse_node(mci, np);
 
 	if (plat->soc_data->flags & DLL_PRESENT) {
 		ret = of_property_read_u32(np, "ti,trm-icp", &plat->trm_icp);

-- 
2.39.5



