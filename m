Delivery-date: Mon, 17 May 2021 20:55:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liiPG-0005Rn-UB
	for lore@lore.pengutronix.de; Mon, 17 May 2021 20:55:58 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liiPG-0003xp-8J
	for lore@pengutronix.de; Mon, 17 May 2021 20:55:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NaO5/1LaTPM9+/M7PuPybrJhCwUVpsQ1m9gY6S4Udno=; b=DHJSQe15v4pBcpCJ+ssE2k8xS
	Ry3VLgWyENzJXFGHRFafA4ZMny7Y+DRYYcugv8ImKpW4HXNhP+tvgiYa8AQ8Mt3GJzMTdRtJpv2MR
	xLGsI3uFRcQKgzTuNI456W5IcWxGkm3jDJfMW+7OmUgAFwC2uAf6XMHu9HzcUS1qg10fiiCMjQrx+
	gAzKKXOP6MUTWVaJMqyWy1bcCgUOArjhJvM3CtM21q26HIpPQx08WY7DUQt4M6dgcNg7uZfrUheda
	a4mfr7XVgGexie/++VX1+ye9R6Bp/EEHdKS24skMTcluwUz78gSvJUot2ltzk/KCWnbboOK0Bb2od
	DnUbe/t+A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liiOH-00FtYv-N3; Mon, 17 May 2021 18:54:57 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liiNt-00FtUg-F2
 for barebox@desiato.infradead.org; Mon, 17 May 2021 18:54:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=+7eCjgJMOqNdwyfYjJnHE5FUYaNLbmKUJWvs4S0hVGk=; b=J+d5h01AZTqvzvGC3rjUFCe6or
 PNcbUkW2CzDb/79peBMNlKF72yGMeCv8f7T8E+vuw3nlA5jhtu0znycH+PqzzBF9c0NEBiLSkG2mq
 VfoQHLU8DjUXUmRwPjdcE/Wg9SrPMq9paeUklEuVz92xF29D6Foo56oaC5+4XeskLlqDef1SFTi9v
 hquRoj0Oet6SPHw+bJTfXULOdZ7Wku/KhCIR5keLhJj1z6eENiKNmD13K1fuenllD8UKNZPhhgKR4
 WmWpzGyU5/m70nfb+xhwyHbgXPPM/xPAlh3DDMm0WDUf0MPeyZiIhHSUH6tGqhYISumNAzSijbmxh
 a3tbwaWA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liiNq-00E4Sa-3w
 for barebox@lists.infradead.org; Mon, 17 May 2021 18:54:32 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liiNn-0003PD-JR; Mon, 17 May 2021 20:54:27 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liiNm-0002xn-Cm; Mon, 17 May 2021 20:54:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 17 May 2021 20:54:16 +0200
Message-Id: <20210517185424.32145-8-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210517185424.32145-1-s.hauer@pengutronix.de>
References: <20210517185424.32145-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210517_115430_326713_1518222E 
X-CRM114-Status: GOOD (  10.48  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 07/15] pci: mvebu: Fix wrong error check
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pci/pci-mvebu.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/pci-mvebu.c b/drivers/pci/pci-mvebu.c
index ae2e83dacd..0c5e34116c 100644
--- a/drivers/pci/pci-mvebu.c
+++ b/drivers/pci/pci-mvebu.c
@@ -270,8 +270,8 @@ static struct mvebu_pcie *mvebu_pcie_port_probe(struct device_d *dev,
 	enum of_gpio_flags flags;
 	struct property *prop;
 	const __be32 *p;
-	int reset_gpio;
-	u32 u, port, lane, lane_mask, devfn;
+	int reset_gpio, devfn;
+	u32 u, port, lane, lane_mask;
 	int mem_target, mem_attr;
 	int io_target, io_attr;
 	int ret;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

