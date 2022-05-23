Delivery-date: Mon, 23 May 2022 12:37:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nt5Rj-006Pm1-Sz
	for lore@lore.pengutronix.de; Mon, 23 May 2022 12:37:55 +0200
Received: from [2607:7c80:54:3::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nt5Rh-0003B9-7R
	for lore@pengutronix.de; Mon, 23 May 2022 12:37:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a7TcX21HrIjppbIIHglEVaJIGW2AXgtKNLmVcDItcFY=; b=jqqR8zhMAKaDFK
	ZqxUb4l0vz9ZneLsE8brvfCnwU/L2jJ1mitOFb9R7cJxwt6UG2nHTPRmWO0/5xTGIIjLOg5Mrr3xy
	btvrIPDmBB4FOqr/ASan7uIzpcIcnC0+y9yqRorMwn9/RAFvFnr2/N2WzCG0TP4N02FexT0ksvrz/
	IR9iQomspJlyVQmgKBpfzMsWdDIjlCA9XfldIfxc0mnF+xN1h3vcbXtpQlQtZZn1C7Q9bRLRsiQDn
	g1igx/CjnkcEyA2E99O+qmT/PDygUIBHfDYEv2qTOyh7UH4f9Q+c0+iXyBbQT7rvlqyhEJFv180zL
	zXjYJl3LROb/XsWwPOyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nt5Pz-003Ibv-NO; Mon, 23 May 2022 10:36:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nt4Jq-002p4M-Te
 for barebox@lists.infradead.org; Mon, 23 May 2022 09:25:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nt4Jn-0005to-0A; Mon, 23 May 2022 11:25:39 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nt4Jn-0043MP-Jb; Mon, 23 May 2022 11:25:38 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nt4Jj-003Jz2-VM; Mon, 23 May 2022 11:25:35 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 23 May 2022 11:25:21 +0200
Message-Id: <20220523092526.791716-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220523092526.791716-1-a.fatoum@pengutronix.de>
References: <20220523092526.791716-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220523_022543_054864_B46902CB 
X-CRM114-Status: UNSURE (   8.87  )
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
X-Spam-Status: No, score=-2.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,PTX_BROKEN_RDNS,RDNS_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.2
Subject: [PATCH 3/8] serial: amba-pl011: add $global.bootm.earlycon fixup
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Allow barebox compute a suitable earlycon parameter.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/serial/amba-pl011.c | 2 ++
 drivers/serial/stm-serial.c | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/drivers/serial/amba-pl011.c b/drivers/serial/amba-pl011.c
index 345c58e27426..b53ff6877b77 100644
--- a/drivers/serial/amba-pl011.c
+++ b/drivers/serial/amba-pl011.c
@@ -202,6 +202,8 @@ static int pl011_probe(struct amba_device *dev, const struct amba_id *id)
 	cdev->getc = pl011_getc;
 	cdev->setbrg = pl011_setbaudrate;
 	cdev->linux_console_name = "ttyAMA";
+	cdev->linux_earlycon_name = "pl011";
+	cdev->phys_base = uart->base;
 
 	pl011_init_port(cdev);
 
diff --git a/drivers/serial/stm-serial.c b/drivers/serial/stm-serial.c
index 30aaba94f0ef..b4b2c4cc8f71 100644
--- a/drivers/serial/stm-serial.c
+++ b/drivers/serial/stm-serial.c
@@ -149,12 +149,14 @@ static int stm_serial_probe(struct device_d *dev)
 	cdev->setbrg = stm_serial_setbaudrate;
 	cdev->dev = dev;
 	cdev->linux_console_name = "ttyAMA";
+	cdev->linux_earlycon_name = "pl011";
 
 	dev->priv = priv;
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores))
 		return PTR_ERR(iores);
 	priv->base = IOMEM(iores->start);
+	cdev->phys_base = priv->base;
 	priv->clk = clk_get(dev, NULL);
 	if (IS_ERR(priv->clk))
 		return PTR_ERR(priv->clk);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

