Delivery-date: Wed, 13 Aug 2025 10:05:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1um6Uf-0006rr-21
	for lore@lore.pengutronix.de;
	Wed, 13 Aug 2025 10:05:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1um6Ue-00013J-Ec
	for lore@pengutronix.de; Wed, 13 Aug 2025 10:05:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5tdT8kyMNe0rVWvUtIcN/VM4Z6C0T/5gPLr4xhJfXZU=; b=ZXlJxJDbol+Ulb4W0PC6AUTuTQ
	sPf1D1hpVte7PPxOldUbO3vJ3VNp2etds6S+mkFANJP3/ZxbgLJkwS2SuLZuaNxMQ++7p7Uo/sEae
	uBG+f/dFoklK08vx882h+0UP/fQiWGVCSLm/IYiV7qJQVoGLZknQFLGdUSy2XTcvPf5yr0UaFZg4/
	9QfFAlWZwutmzXsMcHU+CdXdquUMY/Y2L9z3aOr355Xhrm2C9bmxqxQ9BaxBhArydGbqPjYHSwnx0
	ZfzoxVgdqIpnq4qjjWpupzh9VJiwM15tLkIA0G3vhX+cV+um1TtNWGIy5cjbza/3jhqvmpWsztIXy
	IE6Rq5Tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1um6UB-0000000D218-10uQ;
	Wed, 13 Aug 2025 08:05:27 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1um6Hd-0000000CzbX-1ank
	for barebox@bombadil.infradead.org;
	Wed, 13 Aug 2025 07:52:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=5tdT8kyMNe0rVWvUtIcN/VM4Z6C0T/5gPLr4xhJfXZU=; b=kX7dn4njZT3gezfmETKTa6h29q
	rtS1isfiDSs5q9kfbCEUbiX9Adjj3F7IuwAjaK/A5F0mcRsprlgshz835clvWYlbP2SLtyRWm715x
	k2n59MdQIBOEMVV4nVLIzTHlDq+8I5vXUHNXbQSDfGFJcUWEgd3YWlD1pynnmyeX4+AIlNBJyQMK/
	cDji20/H4/iYNifUCDnLPwGRxKTcKeOqcW/UmwWURmhS9KKtHnU4k3LNoua91a+CT8cM5sxCAp9or
	ZvaPhYy0IqCVCVbRuVS0hLMV7BlRRksYWT5dlW4DAK7UTAaFUcBCxIoZk7UZUJgdkuq6BZyHp15NL
	hoh6Kp4A==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1um6Ha-0000000FzVo-1PIw
	for barebox@lists.infradead.org;
	Wed, 13 Aug 2025 07:52:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1um6HW-0006dc-Tw; Wed, 13 Aug 2025 09:52:22 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1um6HW-0003Sc-27;
	Wed, 13 Aug 2025 09:52:22 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1um6HW-00Etvv-1v;
	Wed, 13 Aug 2025 09:52:22 +0200
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Wed, 13 Aug 2025 09:52:21 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250813-fix-ax88179_178a-dropped-packets-v1-2-2ce605407d0b@pengutronix.de>
References: <20250813-fix-ax88179_178a-dropped-packets-v1-0-2ce605407d0b@pengutronix.de>
In-Reply-To: <20250813-fix-ax88179_178a-dropped-packets-v1-0-2ce605407d0b@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250813_085226_521771_0334E9A3 
X-CRM114-Status: UNSURE (   9.13  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] net: usb: ax88179_178a: align reset with upstream
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This aligns the ax88179_reset function with the latest linux upstream
version 61997271a5a7d ("net: usb: asix: ax88772: Increase phy_name
size").

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 drivers/net/usb/ax88179_178a.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/usb/ax88179_178a.c b/drivers/net/usb/ax88179_178a.c
index 78b5d943a4ecafab025ba3f8cc44293d16f31eb8..ef413c7973693052ea161487cab15f7ee3f74a0d 100644
--- a/drivers/net/usb/ax88179_178a.c
+++ b/drivers/net/usb/ax88179_178a.c
@@ -643,6 +643,12 @@ static int ax88179_reset(struct usbnet *dev)
 	ax88179_write_cmd(dev, AX_ACCESS_MAC, AX_MEDIUM_STATUS_MODE,
 			  2, 2, &tmp16);
 
+	/* Restart auto-negotiation */
+	tmp16 = 0;
+	ax88179_read_cmd(dev, AX_ACCESS_PHY, 0x03, MII_BMCR, 2, &tmp16);
+	tmp16 |= BMCR_ANENABLE | BMCR_ANRESTART;
+	ax88179_write_cmd(dev, AX_ACCESS_PHY, 0x03, MII_BMCR, 2, &tmp16);
+
 	return 0;
 }
 

-- 
2.39.5



