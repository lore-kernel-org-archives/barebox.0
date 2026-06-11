Delivery-date: Thu, 11 Jun 2026 13:22:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXdUV-004gU9-1y
	for lore@lore.pengutronix.de;
	Thu, 11 Jun 2026 13:22:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXdUU-0007Ak-Da
	for lore@pengutronix.de; Thu, 11 Jun 2026 13:22:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qEKm9ZJC0P6caUVTAaHDW1hg9Fd22Se0Rim6vhcKZm4=; b=Ovi3DKzDVcv/yyxDyij/qM1Q2n
	vWuIrjxkY2dV9BT8i8+51/yh66YAEmzUlvp1UwirHV19KnrvY2BlIzukEBfwayJv6GokjLrtbZFsv
	CdHf+8v45SfVBgI79uuRMiNGibtWRw9fSAQ0mRgdPRy6rH1JFTIFEklFC9LiEWEhAc7VVF/q4Tocu
	FrY6tZziiOI7LrrvIBdlxYC2DnEaIt4hXZclmrffZEsXDIKqoGNtNLMC3LlB/8K0JJQA8oR74z/5H
	zGc9GnB8uT17pbwJs2sy6cUfw3uaNYv7Cq3s1mZfggtHYSVoIZhpznnRwTJbMb2nXkm7wBL8o+vFG
	FAma9sYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXdTO-00000009Icg-2JfP;
	Thu, 11 Jun 2026 11:21:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXdTK-00000009IZs-3IZF
	for barebox@lists.infradead.org;
	Thu, 11 Jun 2026 11:21:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1wXdTI-0006lq-18
	for barebox@lists.infradead.org; Thu, 11 Jun 2026 13:21:16 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <l.stach@pengutronix.de>)
	id 1wXdTH-002Cuo-33
	for barebox@lists.infradead.org;
	Thu, 11 Jun 2026 13:21:16 +0200
From: Lucas Stach <l.stach@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 11 Jun 2026 13:21:11 +0200
Message-ID: <20260611112115.670073-2-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260611112115.670073-1-l.stach@pengutronix.de>
References: <20260611112115.670073-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_042118_829208_1DEF08C2 
X-CRM114-Status: UNSURE (   9.19  )
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
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/6] mfd: rn5t618: use defined compatibles
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Match to the compatibles defined in the ricoh,rn5t618.yaml DT schema.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/mfd/rn5t618.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/mfd/rn5t618.c b/drivers/mfd/rn5t618.c
index 3af3e6e3e039..2cecdac49b5f 100644
--- a/drivers/mfd/rn5t618.c
+++ b/drivers/mfd/rn5t618.c
@@ -131,7 +131,9 @@ static int __init rn5t618_i2c_probe(struct device *dev)
 }
 
 static __maybe_unused const struct of_device_id rn5t618_of_match[] = {
-	{ .compatible = "ricoh,rn5t568", .data = NULL, },
+	{ .compatible = "ricoh,rn5t567" },
+	{ .compatible = "ricoh,rn5t618" },
+	{ .compatible = "ricoh,rc5t619" },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, rn5t618_of_match);
-- 
2.47.3



