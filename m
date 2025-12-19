Delivery-date: Fri, 19 Dec 2025 11:37:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXrn-00DAWE-1A
	for lore@lore.pengutronix.de;
	Fri, 19 Dec 2025 11:37:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXrg-0005ch-Dr
	for lore@pengutronix.de; Fri, 19 Dec 2025 11:37:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gkeHUQUEJUBAiq/v3Xz4pYPlxAFAssMrOoXDy9oprDk=; b=Npqc5Nva3X5drvIE8ZoeQjFgnA
	qzXydHKFRQuVfpTGFop9J0NqmvcawJmSCoNcpi3lP8trQfQqkFuh5nW1DxvHk2hWaunqXy6Xbw2Q3
	sKlElwyyBE9Wih/obTofYkxMuWJor04jLYQ0js78yUZGJuhlHcAe1XQ21I/Ke0g4ZNiT1mrKl24sn
	UUNFqfJ+Njwh/k+B+OYe8KbdR0u7E8aPu8LxmyOzwIus0LHd44eWcaoSC0jfld781h7seMxM9SDiS
	9/S3vDMoQfJCNfwFiQBfmX/yZmj4bqBBoVaIUU0NkEjiPbO4ngFqM4tw3yA4Oe0ZFYOKdTJJ9vRwz
	sdQkbukQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXqx-0000000A633-1ZnQ;
	Fri, 19 Dec 2025 10:36:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXqr-0000000A5ug-2DEa
	for barebox@lists.infradead.org;
	Fri, 19 Dec 2025 10:36:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqq-0004Zk-16; Fri, 19 Dec 2025 11:36:48 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqp-006RUE-2a;
	Fri, 19 Dec 2025 11:36:47 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXVh-0000000320L-2tuu;
	Fri, 19 Dec 2025 11:14:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Chali Anis <chalianis1@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 Dec 2025 10:21:02 +0100
Message-ID: <20251219101453.2806980-27-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
References: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_023649_563944_2906A609 
X-CRM114-Status: GOOD (  10.97  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 26/49] pci: pci-tegra: fix null pointer assignation.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

By the time we set pcie->pci.parent pcie->dev is null. Initialize it
before usage.

Fixes: fd3be9d95f34 ("pci: add pci_controller_init()")
Signed-off-by: Chali Anis <chalianis1@gmail.com>
Link: https://lore.barebox.org/20251127034024.3381739-1-chalianis1@gmail.com
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
(cherry picked from commit 7d544d38174d30b5edf5f072f28582329f7fd410)
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/pci/pci-tegra.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pci/pci-tegra.c b/drivers/pci/pci-tegra.c
index b7f8297d153e..dabe63500a4a 100644
--- a/drivers/pci/pci-tegra.c
+++ b/drivers/pci/pci-tegra.c
@@ -1240,13 +1240,13 @@ static int tegra_pcie_probe(struct device *dev)
 	if (!pcie)
 		return -ENOMEM;
 
+	pcie->dev = dev;
 	pcie->pci.parent = pcie->dev;
 	pci_controller_init(&pcie->pci);
 
 	INIT_LIST_HEAD(&pcie->buses);
 	INIT_LIST_HEAD(&pcie->ports);
 	pcie->soc_data = device_get_match_data(dev);
-	pcie->dev = dev;
 
 	err = tegra_pcie_parse_dt(pcie);
 	if (err < 0) {
-- 
2.47.3



