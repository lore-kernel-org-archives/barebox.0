Delivery-date: Mon, 23 May 2022 12:39:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nt5T4-006PpO-L8
	for lore@lore.pengutronix.de; Mon, 23 May 2022 12:39:18 +0200
Received: from [2607:7c80:54:3::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nt5T2-0003Uf-L7
	for lore@pengutronix.de; Mon, 23 May 2022 12:39:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YoNPuRHnSRyNOEbi3bElyR29SKSGPaAXLcoGTyh2eOo=; b=MlK3Bf6HefKtRa
	h1S1EawmH3xyzcDE0ZldKqw91fONG20Pl2hpCNxQtgTAGk9Zip4Wbba/evy1FQzpHshUzm/GjTT2U
	P3ooUQ1KOKJE0ZKHLXHt2FlRyAN8/7lOO9c7Bo1bkixhEUdY08ENJjwqfYjau4kRExfJVsj2i7wJ8
	kQy8m7CC4Rl2DPuWzw/uo3MsO3hgiR+3qN+Kmk+qSoJG57hdAt6iqhasIF2nv5nGxCNjcV9oMt74R
	sQTS1FB8uUnLhg6Q6+5E+BerogQhe9ydJ6mTpy2Oc++2AKdQDk0QsVBU6cP9V46QDF4V7wbZ839qH
	Z6g8uGVMjwVQEBY1xPmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nt5RX-003JEx-Hx; Mon, 23 May 2022 10:37:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nt4Jr-002p4Q-07
 for barebox@lists.infradead.org; Mon, 23 May 2022 09:25:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nt4Jn-0005u6-4I; Mon, 23 May 2022 11:25:39 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nt4Jn-0043MV-OP; Mon, 23 May 2022 11:25:38 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nt4Jj-003Jz8-W4; Mon, 23 May 2022 11:25:35 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 23 May 2022 11:25:23 +0200
Message-Id: <20220523092526.791716-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220523092526.791716-1-a.fatoum@pengutronix.de>
References: <20220523092526.791716-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220523_022543_121126_7C8C570D 
X-CRM114-Status: UNSURE (   8.99  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:3::133 (failed)
X-Broken-Reverse-DNS: no host name for IP address 2607:7c80:54:3::133
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,PTX_BROKEN_RDNS,RDNS_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.2
Subject: [PATCH 5/8] serial: imx: add $global.bootm.earlycon fixup support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Allow barebox compute a suitable earlycon parameter.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/serial/serial_imx.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/serial/serial_imx.c b/drivers/serial/serial_imx.c
index 6a933c930e9b..cf9c3f02a7ef 100644
--- a/drivers/serial/serial_imx.c
+++ b/drivers/serial/serial_imx.c
@@ -234,6 +234,8 @@ static int imx_serial_probe(struct device_d *dev)
 	cdev->flush = imx_serial_flush;
 	cdev->setbrg = imx_serial_setbaudrate;
 	cdev->linux_console_name = "ttymxc";
+	cdev->linux_earlycon_name = "ec_imx6q";
+	cdev->phys_base = priv->regs;
 	if (dev->device_node) {
 		devname = of_alias_get(dev->device_node);
 		if (devname) {
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

