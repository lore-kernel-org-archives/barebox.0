Delivery-date: Tue, 29 Mar 2022 09:35:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nZ6O3-009wpu-By
	for lore@lore.pengutronix.de; Tue, 29 Mar 2022 09:35:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nZ6O5-0002bR-ON
	for lore@pengutronix.de; Tue, 29 Mar 2022 09:35:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JlN/FPtNBZQE/Sw4/Bfhsn1vOmbIGSb3a2MLczuY7rI=; b=gFLUsxnkBQRwKn
	jhaZbvdbi/872PLlYElpyCTnTJFaHIJP0yazk6G/MMiJtkh0S981E+rkMefvNLIv5zY5m3NsOej7w
	5GH5BAkALYLyVV86fdsJcYJcVYLXnSmR8cjecA18pMQ8G5be3x/BEvaifKiJmdUcaetlp95Yu1LEW
	ZGrcPqeuVaA6VJtMrWvbqvnH+D+CGu4c2BGuLVysFRgFe2ScCAY9nymcAj2R26Tai5IoIZmSfA24o
	Tr+VeH377EkYovV5+j9N/5w4htDd7nx+OOyK3bRQcf/EMd0fwRLKaraOqUqzWW29uLXtHdG1dafq1
	Nx0xwuR7uqZyclDa1GyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZ6MX-00BLpz-DX; Tue, 29 Mar 2022 07:33:57 +0000
Received: from cpanel.siel.si ([46.19.9.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZ6MR-00BLmA-Ki
 for barebox@lists.infradead.org; Tue, 29 Mar 2022 07:33:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com; 
 s=default;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RCkUiF7OMB2aF/q8CO2YvbIaQ5LAbO3sJCH1GkJn1m4=; b=NfRcrd3kH4HVOOkud0ap1NGCYW
 7dbQFrYJYfJ7HwWz23nCfIe5T2NKMCd2WdPo+IDKcrLis3umrB7HES1Ynbx76qFuLZUUSDXS2QMHs
 FWCAEceNjyIBWjJmutkbMoq9LvMtaw8EXoyb7ApHarpgvB+jt8AhzyMvU7j8LFAjWll/OnMLQL9pn
 vYpeLgtmXL9bse3b3Zl0T80u+Ec1qCsNIJXIi86WaattNY9Y+LrmP5GwLa2C+67EsH+0eW6csRW/3
 j/MkJKJ0PCadRF7iGD4x2bb6hHzmAyzyAv++V4IWehRu+PCGSIbj75zJI54BONAla6IkOVkoS4N25
 HUUgPc4A==;
Received: from 89-212-21-243.static.t-2.net ([89.212.21.243]:44172
 helo=localhost.localdomain)
 by cpanel.siel.si with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.95)
 (envelope-from <andrej.picej@norik.com>) id 1nZ6MI-00HHxZ-30;
 Tue, 29 Mar 2022 09:33:42 +0200
From: Andrej Picej <andrej.picej@norik.com>
To: barebox@lists.infradead.org
Cc: upstream@lists.phytec.de
Date: Tue, 29 Mar 2022 09:33:33 +0200
Message-Id: <20220329073333.435822-2-andrej.picej@norik.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220329073333.435822-1-andrej.picej@norik.com>
References: <20220329073333.435822-1-andrej.picej@norik.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel.siel.si
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cpanel.siel.si: authenticated_id:
 andrej.picej@norik.com
X-Authenticated-Sender: cpanel.siel.si: andrej.picej@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_003352_029117_F6A53345 
X-CRM114-Status: UNSURE (   6.35  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 2/2] ARM: boards: phytec-som-imx6: probe all gpio devices
 before PMIC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

GPIO lines in da9063 are assigned dynamically, while majority of SOC
GPIO drivers assign their GPIOs in static manner (GPIO line numbers can
be calculated).

This introduces regression if deep probe support is used. If da9063
GPIOs are registered before the SOCs GPIOs, there is a good chance that
the SOCs statically computed GPIO line numbers will already be used by
PMIC.

Ensure all SOCs GPIO drivers and GPIO lines get registered before the
da9063 registers its own gpiochip.

Signed-off-by: Andrej Picej <andrej.picej@norik.com>
---
Changes in v2:
- move function from da9062 probe to board file
---
 arch/arm/boards/phytec-som-imx6/board.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boards/phytec-som-imx6/board.c b/arch/arm/boards/phytec-som-imx6/board.c
index 1e515a093a..5dc7f676ed 100644
--- a/arch/arm/boards/phytec-som-imx6/board.c
+++ b/arch/arm/boards/phytec-som-imx6/board.c
@@ -111,6 +111,10 @@ static int phycore_da9062_setup_buck_mode(void)
 	if (!pmic_np)
 		return -ENODEV;
 
+	ret = of_device_ensure_probed_by_alias_stem(pmic_np, "gpio");
+	if (ret)
+		return ret;
+
 	ret = of_device_ensure_probed(pmic_np);
 	if (ret)
 		return ret;
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

