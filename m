Delivery-date: Fri, 19 Dec 2025 11:39:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXtB-00DAlA-0m
	for lore@lore.pengutronix.de;
	Fri, 19 Dec 2025 11:39:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXsw-00076N-Er
	for lore@pengutronix.de; Fri, 19 Dec 2025 11:39:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=f8XO6CvWr86pqVKjMdnArAWh0xCXVvkmqqocP9HmMwk=; b=4OSyvRu5CxLpOxHiq4IpkrGWwU
	osUsLB/SBYKfyZnP1esUrRGtnzRM6ftjbfpNfE1UkAk5uoAwey7r9BrC+1r+CENvj3UOmy5asbmgA
	qNMDy9L16JFGpuY0MGgj+RwLb46hLbly48bm5V/0HoukHf+duivyhRTVHuRmfARca7GL+wSjBiuct
	SjHFXyqLoc8Na8qlF1D2ZqqY1EDj36bJZkBMqwWvHXqFJN94DwDRWrCs88kQGm7XSeQlunk26vF4a
	A5lOIKLQzn86og6x103U6076W0sWwgVTZR7hbjquYCQC8At0jgqNnqqikMeRM4ycX2W2NWrrNsI8Y
	2Rx1v9Jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXrh-0000000A77L-1klp;
	Fri, 19 Dec 2025 10:37:41 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXr4-0000000A6Ck-2Fhn
	for barebox@bombadil.infradead.org;
	Fri, 19 Dec 2025 10:37:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=f8XO6CvWr86pqVKjMdnArAWh0xCXVvkmqqocP9HmMwk=; b=urgk8hbI1DIoT+birvU5g8Ogyz
	DY/O2FZ1CCC98f17nxJ0wwmIdyG/nQnn5f1JHA6MILY9dJlcJanePR6n9VwGRetYckkmusBakoBv3
	zVOzSfPw06UPy3qSlsd2qvOb6q1UlY5LYTH6u5xCZJQgS7YENZqAFiHIA82c07hK+iAI1SDEaLNuK
	cD2SqeHHlSwyoRvuWU712obLnuWfdJ9ffNR+p1JOK7senHNMYLeZ+9DC7HESW8Ygh6LpVFjUSC/ge
	W3WUX4M3rxkDrQQkBpQwYReMJjIEsEz9Uw3VxDZXEaC0sHX+v7LX8HvEvQiY7PPD+1sYBhBRfLDe/
	M6JyznOw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXr1-00000007RWC-1oeT
	for barebox@lists.infradead.org;
	Fri, 19 Dec 2025 10:37:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqt-0004iG-0h; Fri, 19 Dec 2025 11:36:51 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqs-006RWL-2V;
	Fri, 19 Dec 2025 11:36:50 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXVh-0000000320L-3Iu2;
	Fri, 19 Dec 2025 11:14:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Maud Spierings <maudspierings@gocontroll.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 Dec 2025 10:21:04 +0100
Message-ID: <20251219101453.2806980-29-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
References: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_103659_548805_2D96AF18 
X-CRM114-Status: GOOD (  12.71  )
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
Subject: [PATCH v2025.09.y 28/49] net: designware-imx: don't set txclk when mode is (r)mii
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Maud Spierings <maudspierings@gocontroll.com>

Add an early exit to eqos_set_txclk() when the mode is (r)mii.

The "tx" clock is actually something called the "slice 81 clock" which
must always be 50M for the rmii mode. This will later get divided into
the actual tx clock /2 or /20 which does match those clock rates. Still
the provided clock != tx clock when the mode is rmii.

Linux also excludes the mii mode from this clock lookup, even though
the clock rates actually seem to match there. I am not aware why it is
also excluded, it may be best to wait with merging this until [1] has
found an answer. But for now I thought it would be best to match Linux
behaviour.

Link: https://lore.kernel.org/all/aRclKDeHzfJSzpQ3@shell.armlinux.org.uk/ [1]

Signed-off-by: Maud Spierings <maudspierings@gocontroll.com>
Link: https://lore.barebox.org/20251114-eqos_rmii-v1-1-4a20cf7cb4c0@gocontroll.com
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
(cherry picked from commit 7302e971fcd4153e7407db0abe6a1ddeb5f96f29)
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/designware_imx.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/net/designware_imx.c b/drivers/net/designware_imx.c
index ec3558fad026..bc3136f8ff7e 100644
--- a/drivers/net/designware_imx.c
+++ b/drivers/net/designware_imx.c
@@ -59,10 +59,15 @@ static unsigned long eqos_get_csr_clk_rate_imx(struct eqos *eqos)
 
 static int eqos_set_txclk(struct eqos *eqos, int speed)
 {
+	phy_interface_t interface = eqos->interface;
 	struct eqos_imx_priv *priv = eqos->priv;
 	unsigned long rate;
 	int ret;
 
+	if (interface == PHY_INTERFACE_MODE_RMII ||
+	    interface == PHY_INTERFACE_MODE_MII)
+		return 0;
+
 	switch (speed) {
 	case SPEED_10:
 		rate = 2500000;
-- 
2.47.3



