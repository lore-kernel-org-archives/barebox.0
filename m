Delivery-date: Sun, 16 Aug 2026 20:17:05 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wvfPs-003qTh-1E
	for lore@lore.pengutronix.de;
	Sun, 16 Aug 2026 20:17:05 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id EF4FB2010BD
	for <lore@pengutronix.de>; Sun, 16 Aug 2026 20:17:04 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Crdq4VSB;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Q7HeiNAyV1DPTWeZ4Nq/Gl3EvMFnc3Yf3WeYsbgskWM=; b=Crdq4VSBmsRWiFOEVWYJfjPrtu
	QayxStsqI4WaphjhpoftRSm+hHw1mHpNg1nQHwut7MEqak3JtLq6Jw7qhagDMWP6bM//ryKfz6Raj
	iiYEEjdm7FHXghvScTwhyUicwhbJ0MTRLIcYVIL1fCD2eMy4tnu2vMuBiLQ8grxYNImHGhvRoMGHH
	KY0F/Pj5d2Hfty1Syw1ewQWIAnW7kXKNrKx1r1GhNS/gowUBtq+3NXYScXI0KgKw9yYphT+SSST5s
	H+TBB0JyTi4NqW+5fHUYO1apYy5zBLU2vaeIc7koWvfn4RS2yKU9Kd/5kO2IgN7TdM4bNEeyMRi39
	NTXHKg/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvfBS-00000004xXU-29Zt;
	Sun, 16 Aug 2026 18:02:10 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvfBM-00000004xNR-3N06
	for barebox@lists.infradead.org;
	Sun, 16 Aug 2026 18:02:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 8AAC3201ED5;
	Sun, 16 Aug 2026 20:01:59 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wvfBH-001os3-1X;
	Sun, 16 Aug 2026 20:01:59 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wvf5u-00000003pGc-15Yc;
	Sun, 16 Aug 2026 19:56:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 16 Aug 2026 19:56:33 +0200
Subject: [PATCH 13/27] serial: pxa: add device tree support
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260816-pxa3xx-v1-13-f3c3d7a6c43f@pengutronix.de>
References: <20260816-pxa3xx-v1-0-f3c3d7a6c43f@pengutronix.de>
In-Reply-To: <20260816-pxa3xx-v1-0-f3c3d7a6c43f@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1786902986; l=1173;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=dEt+kR/1+lacu3Fl0iARNinitgpfxAXnaUU6VJCEOtQ=;
 b=GJ7Av375Xf7uwdbP5crcg3ynK2aYAhV/OiVM+TQIdfld74jf4yv/Pv9TD3qVt/R+xlWwmSuMR
 2Xk+I/5NJyuAlRsTdbRXSDj0DP4js2Vaz+3XzREn7jtm2YmBokKT0k/
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260816_110205_049413_5230111F 
X-CRM114-Status: GOOD (  11.69  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The driver has only been probed from platform devices so far.
    Add the "mrvl,pxa-uart" compatible used by the upstream device trees. The
    UART clock is still taken from pxa_get_uartclk() rather than from the clocks
    phandle as barebox has no clock driver for the PXA3xx clock controller the
    device trees point to. 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: eshyfmm1ooj6qkhitbjnwjuez6mc3s83
X-Spamd-Result: default: False [-7.71 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: EF4FB2010BD

The driver has only been probed from platform devices so far. Add the
"mrvl,pxa-uart" compatible used by the upstream device trees.

The UART clock is still taken from pxa_get_uartclk() rather than from
the clocks phandle as barebox has no clock driver for the PXA3xx clock
controller the device trees point to.

Assisted-by: Claude Opus 5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/serial/serial_pxa.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/serial/serial_pxa.c b/drivers/serial/serial_pxa.c
index a0bebef811..bc792d62a5 100644
--- a/drivers/serial/serial_pxa.c
+++ b/drivers/serial/serial_pxa.c
@@ -187,8 +187,18 @@ static int pxa_serial_probe(struct device *dev)
 	return 0;
 }
 
+static __maybe_unused struct of_device_id pxa_serial_dt_ids[] = {
+	{
+		.compatible = "mrvl,pxa-uart",
+	}, {
+		/* sentinel */
+	}
+};
+MODULE_DEVICE_TABLE(of, pxa_serial_dt_ids);
+
 static struct driver pxa_serial_driver = {
 	.name = "pxa_serial",
 	.probe = pxa_serial_probe,
+	.of_compatible = DRV_OF_COMPAT(pxa_serial_dt_ids),
 };
 console_platform_driver(pxa_serial_driver);

-- 
2.47.3



