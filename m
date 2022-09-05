Delivery-date: Mon, 05 Sep 2022 12:58:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oV9o3-007PRC-A5
	for lore@lore.pengutronix.de; Mon, 05 Sep 2022 12:58:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oV9nz-0000Tz-L1
	for lore@pengutronix.de; Mon, 05 Sep 2022 12:58:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=g9CLBeMs44kW0DR5o0YyTidK6jL0RX7NkypWiPdba64=; b=wAJJHfY/WC+DIbd0tE7fklIoym
	p2DUAJbp3TJ+DR2zheLqae/cE34hu8usyKA2rlivHUowQmzbDS3GUkUToLwFjeO7o8Et+UXltC8Dw
	YbR8opeac7xtRp1NknbEOdt0+44z4Ul/vyindZLDN45zFXiv4kRuo6NHmFKnP6sgTbmSxwI+Wu9jD
	oooTrlSq9mRNOaGwYFjSw8zARHvXom2QxyD7nLb5eFgcdn4ipksI8wUzzD16sbB+Lah7UfPe07X9s
	EWQQ4rItwKT1XhCHfpzTrlV0TcvsGbFCkvodJh9stFhtKOHXvoUTjmNs3nz+oIfz7zqb5XuEbBsQr
	1bQLpmIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV9g5-000ez1-13; Mon, 05 Sep 2022 10:50:05 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV8qA-00H4Kl-Iv
	for barebox@bombadil.infradead.org; Mon, 05 Sep 2022 09:56:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=g9CLBeMs44kW0DR5o0YyTidK6jL0RX7NkypWiPdba64=; b=mQOmCCMU/gNVRS0X7Cm9GwbPkM
	5BxwMpawDrJtyCKokXwSKvm7Ap3z/e+P4zKG15O6qPShl+jRG5d9HIinNzAzfW/i1hHc9lVGAchhA
	yPquByetFVR9BDIjlcEWr+OpXUeNpOZq022iRopJDzsHJJTRwX1cU1LNy62eWdEg2lgL13C/AjQJK
	Pbj5q7etVQWqOlAFCUedrrv6+CLKE9nouNBpoPQFgKV0NaQJrYgBrvbP6rEHHVyxLKrBWl+M0Ga9h
	e3hfGMDXpcgBSAXkY9xxi1RSxfiVd1IhBPjQ0wsBYdirg3+ezWs2zJPQyHXSugRDMxcyruDFCIM6n
	lzIR3M4Q==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV8q0-009UjK-Ab
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 09:56:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pr-0008HF-PM; Mon, 05 Sep 2022 11:56:07 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8po-0042Gl-WC; Mon, 05 Sep 2022 11:56:06 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pm-002Wep-3S; Mon, 05 Sep 2022 11:56:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Sep 2022 11:55:50 +0200
Message-Id: <20220905095557.596891-26-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220905095557.596891-1-a.fatoum@pengutronix.de>
References: <20220905095557.596891-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_105616_693107_6A86D88A 
X-CRM114-Status: GOOD (  11.34  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 25/32] serial: ns16550_pci: drop useless assignment
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Code was imported from the kernel and the kernel had this fixed in the
meantime, so follow suit here.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/serial/serial_ns16550_pci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/serial/serial_ns16550_pci.c b/drivers/serial/serial_ns16550_pci.c
index fde8f718dd51..0d7b686fef0a 100644
--- a/drivers/serial/serial_ns16550_pci.c
+++ b/drivers/serial/serial_ns16550_pci.c
@@ -1203,7 +1203,7 @@ static int pci_quatech_init(struct pci_dev *dev)
 			outl(inl(base + 0x38) | 0x00002000, base + 0x38);
 			tmp = inl(base + 0x3c);
 			outl(tmp | 0x01000000, base + 0x3c);
-			outl(tmp &= ~0x01000000, base + 0x3c);
+			outl(tmp & ~0x01000000, base + 0x3c);
 		}
 	}
 	return 0;
-- 
2.30.2



