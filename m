Delivery-date: Thu, 11 Jun 2026 13:22:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXdUa-004gV1-2h
	for lore@lore.pengutronix.de;
	Thu, 11 Jun 2026 13:22:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXdUY-0007DQ-5Q
	for lore@pengutronix.de; Thu, 11 Jun 2026 13:22:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eVvwABW1EzJug205qoDL1OZ+Us7MgJu+JSDANoNE/2M=; b=JHpN2wNa9h/ukB4JF7KW8LyWSk
	56nQT8CJbw09788MrGLHJraxBmjeEElYkZ1Jt42yrs8aAiA/s9t5uVGhphvx6T8hZ28+4YV+++JsP
	jnU9uE0bMgl4AaBqifOp1fYbEXfwRm8PMUzyXKpf/N/+cyj3E80wmm/EsnwQiJh3Gm3p00O9tamyE
	clj7XfG8v9t6U0cCp5RPlzkrPxf8Dof4nmEk0EcV5oMECemdhY466dJgQBJKBXTk+wKo1DWMDG16q
	vKqma9cCyIJNB644WlYO/+bDUVFc6OMP99rTZzeQmxLSb46EqUf6RzOooqOQQuDVNcV8XD68Mjedd
	WD2Hh9VQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXdTN-00000009Ibx-1adh;
	Thu, 11 Jun 2026 11:21:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXdTK-00000009IZt-3IZY
	for barebox@lists.infradead.org;
	Thu, 11 Jun 2026 11:21:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1wXdTI-0006lv-3e
	for barebox@lists.infradead.org; Thu, 11 Jun 2026 13:21:16 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <l.stach@pengutronix.de>)
	id 1wXdTI-002Cuo-03
	for barebox@lists.infradead.org;
	Thu, 11 Jun 2026 13:21:16 +0200
From: Lucas Stach <l.stach@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 11 Jun 2026 13:21:12 +0200
Message-ID: <20260611112115.670073-3-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260611112115.670073-1-l.stach@pengutronix.de>
References: <20260611112115.670073-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_042118_825665_FB2FEC1D 
X-CRM114-Status: UNSURE (   8.92  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 3/6] mfd: rn5t618: demote probe message to debug level
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/mfd/rn5t618.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mfd/rn5t618.c b/drivers/mfd/rn5t618.c
index 2cecdac49b5f..d0c8824489a1 100644
--- a/drivers/mfd/rn5t618.c
+++ b/drivers/mfd/rn5t618.c
@@ -111,7 +111,7 @@ static int __init rn5t618_i2c_probe(struct device *dev)
 		return ret;
 	}
 
-	dev_info(dev, "Found NMD RN5T567/618 LSI %x, OTP: %x\n", reg[0], reg[1]);
+	dev_dbg(dev, "Found NMD RN5T567/618 LSI %x, OTP: %x\n", reg[0], reg[1]);
 
 	/* Settings used to trigger software reset and by a watchdog trigger */
 	regmap_write(pmic_instance->regmap, RN5T618_REPCNT, RN5T618_REPCNT_OFF_RESETO_16MS |
-- 
2.47.3



