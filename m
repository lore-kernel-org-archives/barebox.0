Delivery-date: Thu, 19 Nov 2026 20:00:06 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xU7Mc-001BtA-0O
	for lore@lore.pengutronix.de;
	Thu, 19 Nov 2026 20:00:06 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 9E3F1202284
	for <lore@pengutronix.de>; Thu, 19 Nov 2026 20:00:02 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=1dBLKhm+;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=barebox.org (policy=none)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795114802;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=uqNjrO5wmu4RDG+fdI3I72SiUg5h8+ApdFLfOfFXXOc=;
	b=EQeM8pu8zhB4oHUn8yYsvgohMBxeWjPtx76ZDNlZMNNr1IaTpwZmSy8nxlzzPWnRk5UISU
	Kkf/4kOFn3Qa/Fr+lB4tcTFQr3Jdprg6HFuWY9dene+5miAcDtK78/iPl7Rt4IEVqjtij3
	6yLbaK2NKa9BrekfGvKjjRQiZgbGFKz7SapOZLacCp5+ypy9X7WfO4XmA+fxwvvpTScOnM
	kloCja3t8kruSWgDUK7lmV/IyEb80quLtoVRUmxcwdVhsw3QBLdjCECbE/6b03V5WLFfLS
	AzX5PeOocS5IM1xrNvG8fWc7VNDDOxTha4HzzHl4LgDn4FrtwGV0sWIBAL6Tzg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1795114802; a=rsa-sha256;
	cv=none;
	b=KRPCQ8QVU0cLkA2LDb3m+Zj1cPewugKPvh631kTLp2k7XuLlTbdRdDlknW3Cst/pjbvifN
	S7S6RFZ5Tm/c8qaE0igGhkNj+AwFe0QXhwmp5LiqMPBPV3+CdGo/QIT44dlLrg6viddhNc
	rSEDSIafOCa8UZt3L3M6hTZW1MQtx+fbmmhNRxUAUNhi+02erWZmUyYmSzM2myjhWCfcjd
	8rqLdBicPcWMzxZJGlt/TLuZP5Q01K6LrpW7gEW9vS9l05L7AyNEpuw3SJa/TW5MCHNxQn
	dgusox8N9DQj5triaTuA5bq99ME5n9n+r55deaCuQsztHbOJmDRl80dZufamag==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=1dBLKhm+;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=barebox.org (policy=none)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=uqNjrO5wmu4RDG+fdI3I72SiUg5h8+ApdFLfOfFXXOc=; b=1dBLKhm+zQSa4+Ccid5BOvsR4v
	/XEn4IMfN+NQaMYsAcdPtSqHk5klhy/LX1l8AbkFa6UnNxH2Uq6i4q1IOqGsQ/a5Zh6dW7L56ES+b
	WTfj6O/wuDKDrZslaHAkBS2puiJd9nUlBjS3IrPsK0ZAgqY5rI9WTRd5eWe9InusNUzd29FHvEP9l
	Q3ZnUV77m7AnGu3LV/5vvb/f2Y8fOUefv1ab8RAaArHqCH3vHe/ydFabATrTtSZ+DU4UinP+Y5IN/
	ev+8z4+MruGz3wzJ8hSlq/QvfbrZ+QBgHbBSZ2U1NQK/AfK22IRTmdvMAKiy3HIRPkdFxmfmqr4bH
	wuVh15lQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU7LI-0000000D7pT-3GwI;
	Thu, 19 Nov 2026 18:58:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU7LC-0000000D7le-12Q0
	for barebox@lists.infradead.org;
	Thu, 19 Nov 2026 18:58:42 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xU7L7-0003xr-Lv; Thu, 19 Nov 2026 19:58:33 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 1/6] spi: fix NULL pointer dereference for board info devices
Date: Thu, 19 Nov 2026 19:58:11 +0100
Message-ID: <20261119185828.92337-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261119_105838_338278_04881F7A 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Devices registered with spi_register_board_info() have no
   device node, but spi_new_device() unconditionally stores the new device in
    it. The at91sam9m10g45ek board, which has the Atmel SPI driver enabled in
    its defconfig, still registers its devices this way. Let's add an of_node_set_dev()
    helper that only sets the node's device if the [...] 
 
 Content analysis details:   (-1.0 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/, low
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.7 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.9 DMARC_NONE             DMARC none policy
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
X-Spamd-Result: default: False [-6.11 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:900:1d::77:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:2:b01:1d::104:received];
	DMARC_POLICY_SOFTFAIL(0.10)[barebox.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,barebox.org];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: 9E3F1202284
X-Rspamd-Server: mx1
X-Stat-Signature: hyx7fjawzukgtxn6mj39yntmybsx3bx3

Devices registered with spi_register_board_info() have no device node,
but spi_new_device() unconditionally stores the new device in it.

The at91sam9m10g45ek board, which has the Atmel SPI driver enabled in
its defconfig, still registers its devices this way. Let's add an
of_node_set_dev() helper that only sets the node's device if there is
a node and use it here.

Fixes: cd23b6facf33 ("common: add initial barebox deep-probe support")
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/spi/spi.c | 2 +-
 include/of.h      | 6 ++++++
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index b64e20664985..53bcd22b8c56 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -125,7 +125,7 @@ struct spi_device *spi_new_device(struct spi_controller *ctrl,
 	if (status)
 		goto fail;
 
-	chip->device_node->dev = &proxy->dev;
+	of_node_set_dev(chip->device_node, &proxy->dev);
 
 	return proxy;
 fail:
diff --git a/include/of.h b/include/of.h
index 07d435f91475..993315247bf0 100644
--- a/include/of.h
+++ b/include/of.h
@@ -134,6 +134,12 @@ static inline struct device_node *of_node_get(struct device_node *node)
 static inline void of_node_put(struct device_node *node) { }
 DEFINE_FREE(device_node, struct device_node *, if (_T) of_node_put(_T))
 
+static inline void of_node_set_dev(struct device_node *np, struct device *dev)
+{
+	if (np)
+		np->dev = dev;
+}
+
 void of_print_property(const void *data, int len);
 void of_print_cmdline(struct device_node *root);
 
-- 
2.47.3



