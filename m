Delivery-date: Fri, 10 Nov 2023 14:04:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1RBO-005rs1-0F
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 14:04:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1RBO-0006sq-2x
	for lore@pengutronix.de; Fri, 10 Nov 2023 14:04:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=CBug0tu6tc2xQYa0G1xb+aT2PcL0isxbbwulUPFotaw=; b=OOh721vpRLUxlbkGKLiovm16t7
	55Tj1i7DSanrH6iOkgjyWwSlr/bfH/AjGnhkq3M26rkh4oi9CieKmo7ze5juTo3dHlCId/OYCMBQ1
	WkBE/j2zDOiIjaMsVSM89x3ShJKgHi1OXpZtV4m8npXXabtPsxevB5OzEhExcvcVgNtmhe9Nc2sSh
	QQQFpP2Ag6WyJqdDS2Tjmf5WkyRk3YYZVhhd/dR4t2Y2loXQQvbPc2HE//ImqTzS7TbJ4NOTOUuFN
	gJ4/tZVu2XLACDAY/UBpPZ3MkAX+9Lo86RbOP38Geh2F33x2Z5gzRAR+mg0qCa21mRWIMLJHF0bTj
	87do5iqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1RAQ-008nl3-1L;
	Fri, 10 Nov 2023 13:03:22 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1RAO-008nk2-2b
	for barebox@bombadil.infradead.org;
	Fri, 10 Nov 2023 13:03:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=CBug0tu6tc2xQYa0G1xb+aT2PcL0isxbbwulUPFotaw=; b=c8WuWWKF0xQTsxp7KpMIQkHV68
	KecEW+rFxraqEZxvgJmF9ZWB1x489CQa7NRQe/iAN5jDsVRqq9aKApnCVUCuJXgzxdCMyPCPcBpNE
	1m7ILBg7UjBFzOhoxcBOGT+DRr18Kd+DwdCD8CMTlB6IAQdJzbA/6XLbnQdkmFStorbyoQNYhtc+G
	SBT/5xaRnSvJpBdbr9DtkvBJPZ1E4GYsorXAhw9wOnhswkb7wKacUaudVQxHSNYAvKhbw7mAuUu9S
	gG3pS1SZD0csdOAHdEYT/9EyROiBX0A9B+4SbUb7FiX+3JFwfGHrYLzM9vXR9No3kHWhZhrJJOUh5
	l3K1RBlA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1RAK-00FcCS-1q
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 13:03:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1RAJ-0006AI-Sx; Fri, 10 Nov 2023 14:03:15 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r1RAJ-0081z8-Ge; Fri, 10 Nov 2023 14:03:15 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1r1RAJ-009NXi-1E;
	Fri, 10 Nov 2023 14:03:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 10 Nov 2023 14:03:11 +0100
Message-Id: <20231110130312.2234966-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_130316_891883_4CD97D82 
X-CRM114-Status: GOOD (  11.25  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] mfd: pca9450: Add support for pca9451a
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add support for the pca9451a chip variant. This is not compatible
with the other variants, but as we currently only provide a regmap
this is fine.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mfd/pca9450.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mfd/pca9450.c b/drivers/mfd/pca9450.c
index cf0efab16f..20f6b016fa 100644
--- a/drivers/mfd/pca9450.c
+++ b/drivers/mfd/pca9450.c
@@ -92,6 +92,7 @@ static int __init pca9450_probe(struct device *dev)
 static __maybe_unused struct of_device_id pca9450_dt_ids[] = {
 	{ .compatible = "nxp,pca9450a" },
 	{ .compatible = "nxp,pca9450c" },
+	{ .compatible = "nxp,pca9451a" },
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, pca9450_dt_ids);
-- 
2.39.2



