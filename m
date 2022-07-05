Delivery-date: Tue, 05 Jul 2022 11:08:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o8eXg-006N8E-VH
	for lore@lore.pengutronix.de; Tue, 05 Jul 2022 11:08:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o8eXh-0003JO-In
	for lore@pengutronix.de; Tue, 05 Jul 2022 11:08:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=aDltTY55d+IVP+U8sv63yAlqPTKaMA65ihgxBGSfKYk=; b=rtsEohcHaF1aCxV199FW1+FlSo
	Z16Pg8W7UR11vdLSh2LHXnt+e66iqXk90cE6ckde7PY2LALWAfA0uvYIGojahO7bLKjfkMibUmEwO
	d6FYXTXBCdUiWzxFV+qfqLbxeoDaKqFl6uND5HgrWMiS+Y4jdmpBQcOsn1GvVn+bixh6VjH/D27a/
	D//kkqA//h7IYtZSEWihBpL5YKUEqLgS+t24g3Uvnu+xsMyUZxRwK3Wzlr1blHCgowty/Uiexd96e
	31myzP1ECx5EPg+Tjg+foK9V00ZX0RKzRg4MPp4WLuAkoUHzIfI8Ugp6gwbc9w7PGCPEn3E2ukWZm
	vXcqO2UQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8eVv-00GUZv-Sw; Tue, 05 Jul 2022 09:06:37 +0000
Received: from cpanel.siel.si ([46.19.9.99])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8eLg-00GObD-0g
	for barebox@lists.infradead.org; Tue, 05 Jul 2022 08:56:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com;
	s=default; h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:
	Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=aDltTY55d+IVP+U8sv63yAlqPTKaMA65ihgxBGSfKYk=; b=PnpIioaffp2hB4+8A6aZ4dZDCa
	BAGABpc9zxFdzsdAbUB91fEvw5L59N9lEWxFf71MXJu/UXdkHrCauBbNYF0VY0gDFd+7N/r+KLq+P
	hnUOYI1HPbTglPhk+UdYUmunrRfy6Q3wJENndcBmkgkDnXS3OV2MlRaitS8DQnlRJRZLE9AdXGeXV
	czjJ53MUfm+OtWsrZAnWX96T8XEObhSpX6hoWQVJ6iRxzQRaOteV8cuB+7vj/rO/HjRmKoBhneQ/j
	zKEQTjdWnj5+SPx/4ls/VTcKBZaAbFI8kX7r2VRMOSTyfTaO0bL9LykfJuSNZdVoMtdCS5FRQRxFW
	SW2No5tw==;
Received: from [89.212.21.243] (port=52520 helo=localhost.localdomain)
	by cpanel.siel.si with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.95)
	(envelope-from <anze.lesnik@norik.com>)
	id 1o8eLL-000H9W-RY;
	Tue, 05 Jul 2022 10:55:47 +0200
From: =?UTF-8?q?An=C5=BEe=20Le=C5=A1nik?= <anze.lesnik@norik.com>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?An=C5=BEe=20Le=C5=A1nik?= <anze.lesnik@norik.com>
Date: Tue,  5 Jul 2022 10:55:34 +0200
Message-Id: <20220705085534.34251-1-anze.lesnik@norik.com>
X-Mailer: git-send-email 2.37.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel.siel.si
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cpanel.siel.si: authenticated_id: anze.lesnik@norik.com
X-Authenticated-Sender: cpanel.siel.si: anze.lesnik@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_015600_606608_35337ADC 
X-CRM114-Status: UNSURE (   8.15  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] drivers: net: fec_imx: Fix system halt after FEC reinit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Fix problem with system hang when trying to re-init ethernet interface
on i.MX devices. The problem is that RX and TX buffer descriptor address
registers are only being set in fec_probe(). When fec_halt() is called
when bringing down the interface, this resets the FEC and values are
lost. As per documentation, these registers should be reconfigured
before re-enabling the FEC. Additionally, move fec_init() call from
probe to open, since the FEC needs to re-initialized after every reset.

Signed-off-by: Anže Lešnik <anze.lesnik@norik.com>
Link: https://lore.barebox.org/barebox/c51b2c94-61b7-df44-5d4c-025d18c4b24f@norik.com
---
 drivers/net/fec_imx.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 0c2d600d1..673555a48 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -320,6 +320,10 @@ static int fec_init(struct eth_device *dev)
 	/* size of each buffer */
 	writel(FEC_MAX_PKT_SIZE, fec->regs + FEC_EMRBR);
 
+	/* set rx and tx buffer descriptor base address */
+	writel(virt_to_phys(fec->tbd_base), fec->regs + FEC_ETDSR);
+	writel(virt_to_phys(fec->rbd_base), fec->regs + FEC_ERDSR);
+
 	return 0;
 }
 
@@ -359,6 +363,8 @@ static int fec_open(struct eth_device *edev)
 	if (fec->phy_init)
 		fec->phy_init(edev->phydev);
 
+	fec_init(edev);
+
 	/*
 	 * Initialize RxBD/TxBD rings
 	 */
@@ -839,9 +845,6 @@ static int fec_probe(struct device_d *dev)
 	base += FEC_RBD_NUM * sizeof(struct buffer_descriptor);
 	fec->tbd_base = base;
 
-	writel(virt_to_phys(fec->tbd_base), fec->regs + FEC_ETDSR);
-	writel(virt_to_phys(fec->rbd_base), fec->regs + FEC_ERDSR);
-
 	ret = fec_alloc_receive_packets(fec, FEC_RBD_NUM, FEC_MAX_PKT_SIZE);
 	if (ret < 0)
 		goto free_xbd;
@@ -861,8 +864,6 @@ static int fec_probe(struct device_d *dev)
 	if (ret)
 		goto free_receive_packets;
 
-	fec_init(edev);
-
 	fec->miibus.read = fec_miibus_read;
 	fec->miibus.write = fec_miibus_write;
 
-- 
2.37.0



