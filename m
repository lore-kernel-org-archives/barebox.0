Delivery-date: Tue, 28 May 2024 13:45:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBvH6-000uac-0w
	for lore@lore.pengutronix.de;
	Tue, 28 May 2024 13:45:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBvH5-0003Jg-Oz
	for lore@pengutronix.de; Tue, 28 May 2024 13:45:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Uxf7O1Gdpvvhe4iQMrNarLkbqjBT5RnMohQDO2M3xxw=; b=4xUCKQ4miNTnThLdjw8+IwGB2M
	mmf4ZOWzIdBic0wIb7IpQvRCKfl79MEEZ8bVJSmtmpFUAZ1fOJS4sWGCjkZ5PwmsODnnJIcbYHZeQ
	Fgk7CwaBkJICMu89ulvtzptqwnpzGBVIVbwwNIXiqZn8gz48+JOJI34yrzsSFNsRDiHqgk21B33o7
	FaBwc2uB4ePe3Ywb8r7Rifw9Y8s7vdtzKwYHm+zuO2p6Q77qB5d4ne+1vYtZaFH5zz1AM3+ahxgzQ
	13zZxsKUNOJwJ7H26e7BYpU9FcSNvbQmbfYdgQtwGpNXEY3I6jD3/8+kYQmSk7OqMGsPQClo16OED
	JWD1cg8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBvGU-00000000Q6h-0Q0X;
	Tue, 28 May 2024 11:45:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBvGP-00000000Q5a-3HPy
	for barebox@lists.infradead.org;
	Tue, 28 May 2024 11:45:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sBvGN-0003D3-Og; Tue, 28 May 2024 13:45:07 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sBvGM-003Jwt-H1; Tue, 28 May 2024 13:45:06 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sBvGM-0086b6-1P;
	Tue, 28 May 2024 13:45:06 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 28 May 2024 13:45:05 +0200
Message-Id: <20240528114505.1931962-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_044509_841439_B7067840 
X-CRM114-Status: GOOD (  10.31  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master] bus: omap-gpmc: allow build with raw NAND support disabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

GCC complains about an undefined reference to `of_get_nand_bus_width'
when building the driver with CONFIG_MTD_RAW_NAND disabled.

Fix this by omitting probe of the NAND children when barebox doesn't
have NAND drivers enabled anyway.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/bus/omap-gpmc.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/bus/omap-gpmc.c b/drivers/bus/omap-gpmc.c
index f720933a0a3f..16ffaf779dd0 100644
--- a/drivers/bus/omap-gpmc.c
+++ b/drivers/bus/omap-gpmc.c
@@ -619,7 +619,8 @@ static int gpmc_probe(struct device *dev)
 		if (!child->name)
 			continue;
 
-		if (!strncmp(child->name, "nand", 4))
+		if (IS_ENABLED(CONFIG_MTD_RAW_NAND) &&
+		    !strncmp(child->name, "nand", 4))
 			ret = gpmc_probe_nand_child(dev, child);
 		else if (strncmp(child->name, "ethernet", 8) == 0 ||
 				strncmp(child->name, "nor", 3) == 0 ||
-- 
2.39.2



