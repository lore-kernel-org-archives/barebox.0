Delivery-date: Fri, 25 Oct 2024 09:31:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t4Emq-000XMz-0Z
	for lore@lore.pengutronix.de;
	Fri, 25 Oct 2024 09:31:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t4Emq-0006jx-P5
	for lore@pengutronix.de; Fri, 25 Oct 2024 09:31:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zgTsOzShimmwaWKclGq2LhFiRdw/3mi2NgQUNxe3riM=; b=Wn7njAP687m7LGYgOHT0qfvLAU
	OT9AX/4XKf4N6mYr7JFKgDSIiRLQE9hGww0Y/DgiOYQe1Mzn4dEvBsrss2AMeBKlW7feE++vBcGhB
	jbN9tZcQNJxFO+QPE+c7mEFUWPj2/kA8P7i9JAvYXESLTI2ay/Nb9IDnZatV9bzWq8NmgQKP6/gUo
	lRRshqVbMXh7qzjuAcAgS0488SsJ2MRf+Gp7KHFjoctRNKiUqxsuRGTkOAK/afqf5dqyu8ksZPQhm
	VtEw640BbPdi8e0vn6a4IIo/lX4RcaPq67mQjh8mbCXPZsOErpR59y3m/7I3w/AlH0vSMr0/AptDE
	DEl9wHDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4EmO-00000002oNw-3JVt;
	Fri, 25 Oct 2024 07:30:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t4EmL-00000002oN7-2Cxh
	for barebox@lists.infradead.org;
	Fri, 25 Oct 2024 07:30:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t4EmC-0006ZS-Br; Fri, 25 Oct 2024 09:30:28 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t4EmC-000KI8-0V;
	Fri, 25 Oct 2024 09:30:28 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t4EmC-008HjI-0J;
	Fri, 25 Oct 2024 09:30:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 25 Oct 2024 09:30:25 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241025-i2c-busnum-v1-2-332d9257eafe@pengutronix.de>
References: <20241025-i2c-busnum-v1-0-332d9257eafe@pengutronix.de>
In-Reply-To: <20241025-i2c-busnum-v1-0-332d9257eafe@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1729841428; l=765;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=THfJDubIX4InZTx/u4Clzk+tjL+HRLkSnFHglgLfLUM=;
 b=1JCmEMDjWiDgKuOnk0bDX50qRNt8b5CJ6aKbL0FGyeNnANTjos7MNiwcpzhroRZLVrtaawYJh
 POylUQX5cQuCI3gIlYAln90MOb5Tqdg4Xn+OmQ//YgdpiyRKd6uAuEt
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241025_003037_600849_8BE61CFB 
X-CRM114-Status: GOOD (  11.72  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] i2c: get adapter.nr from device tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In case we are instantiating a I2C bus driver from device tree let's
try to get the bus number from the device tree instead of dynamically
assigning a free bus number.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/i2c/i2c.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index 5471519045..4eed7fb5c6 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -705,6 +705,9 @@ int i2c_add_numbered_adapter(struct i2c_adapter *adapter)
 	struct device *hw_dev;
 	int ret;
 
+	if (adapter->nr < 0 && adapter->dev.parent && adapter->dev.parent->of_node)
+		adapter->nr = of_alias_get_id(adapter->dev.parent->of_node, "i2c");
+
 	if (adapter->nr < 0) {
 		int nr;
 

-- 
2.39.5



