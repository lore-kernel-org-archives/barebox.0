Delivery-date: Thu, 19 Nov 2026 19:59:57 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xU7MS-001BrQ-35
	for lore@lore.pengutronix.de;
	Thu, 19 Nov 2026 19:59:57 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 7ACB52059D4
	for <lore@pengutronix.de>; Thu, 19 Nov 2026 19:59:53 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=A6JE9H72;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=barebox.org (policy=none)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795114793;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=LP6osmaY6qXtUfztZDHMwZSRyhcsrEZI763J7lZkM04=;
	b=X1Kzl0kAxmWuX4dlNIF5ZnQgDog1Iv2tb0ItjSJnnUlafWRqn3hfJRy95Zrnev7aE/uNhe
	CIfMv6W1bf2XULjaUQt1jhtk7lB9KAPp3QbXSMqxK+6DPq3t+AeJitZh5UOFkwxBseCz8d
	xayj4+Ya0wytApAHwQnE7qxwiKSyeM1B/oHrRLFlsLo+IWH9KSKCbQk6hopWxCjI3uvbZW
	ho/f5mMiDsMJXgHpARoWj1VJcuH23Io3H8GnUqVQbQo9yv0RRakmAcFlO8LSs3k4sydGgz
	Qr94LefXLtYrFEgLG+FU/mEvYKPf+CDqZeac82fLv82+0Dhmbx9JrONLyW8gbw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1795114793; a=rsa-sha256;
	cv=none;
	b=gZjwf+zdsxyuBqt7utRaK1QCvtGXwE5pEPbn43+XgdyAaHfiYGV/kYE5w8VhfH44nohs2a
	3w4ue60RqFoFANNZH08JH3V29vDzRrpdj9g8+RzofMTZOWhQy+X1PXw9gSzQbpBR0xtjoq
	I4aKpJM/bDWHW6fHzd4noILZ6kUoqFgGetIR/bDrIO0Aiv31fIJIlPrO51iADu4+fbzmEw
	CoNIgQLcu3e2vCSass6ACnU4Dq6jCjnZms0Gt+0FX5S6Y24wqba+b8cX0CXSmViWiQrj/Q
	uSEeUs/X3pTxTtuP19fEkxd+iWcI12jfM4s2uYuLNO7ELD14t0AWB6NbYAb7jA==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=A6JE9H72;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=barebox.org (policy=none)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=LP6osmaY6qXtUfztZDHMwZSRyhcsrEZI763J7lZkM04=; b=A6JE9H726fokaL
	237d4lHKfJIIPQU8V33I26drTCKDYU78eBKtfPGUwEiHFj/ujB3iXlK2AHKlB2jkIembBqWIjO+UI
	ZZwsLYTd7JatYUiK7xnHT3sMGz+3/FV2Wxf0D/DhmEY3hUthJmv6GYwIX+hyWrsJ9KxxElpyhinbM
	6CH6tvRpqqSdeyX0KGTbOYsjZxIgQaD25BpDC/BtsYLod2EUHy0fJUPW85y4VWmXxVM7NGf01I4kk
	3sAOHFidIQn9c2sZ0dnyFi4cT5jQQZFzcTyO31RsiVfvelHdewGddLvXQWn2LlWRyp7G7GB0NI2vT
	i2X/a/yrGMAuQhujB/yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU7LI-0000000D7pi-47Co;
	Thu, 19 Nov 2026 18:58:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU7LC-0000000D7lo-0xnn
	for barebox@lists.infradead.org;
	Thu, 19 Nov 2026 18:58:42 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xU7L8-0003xr-Bj; Thu, 19 Nov 2026 19:58:34 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 4/6] i2c: allow creating siblings on demand while populating the bus
Date: Thu, 19 Nov 2026 19:58:14 +0100
Message-ID: <20261119185828.92337-4-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261119185828.92337-1-a.fatoum@barebox.org>
References: <20261119185828.92337-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261119_105838_302040_5E10BD7A 
X-CRM114-Status: GOOD (  15.23  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  With deep probe, a device probed while its adapter populates
    the bus may depend on a sibling that comes later in the device tree, e.g.
    a GPIO expander whose vcc-supply is a PMIC regulator. To create t [...] 
 
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
	BAYES_HAM(-3.00)[99.99%];
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
X-Rspamd-Queue-Id: 7ACB52059D4
X-Rspamd-Server: mx1
X-Stat-Signature: i7zhazsuoa8ukf1gr51ki83zn46yrqob

With deep probe, a device probed while its adapter populates the bus
may depend on a sibling that comes later in the device tree, e.g. a
GPIO expander whose vcc-supply is a PMIC regulator. To create the PMIC,
of_device_create_on_demand() rescans the controller, but the rescan
hook is only installed after population. So the PMIC node gets a
platform device without a driver instead, the bus then skips it as
already registered and the PMIC never probes.

Install the hook before populating the bus. Alone, that makes the
nested rescan register the expander again, recursing until the stack
overflows, because its node only gets its device after probe. So set
it before registering the client, like platform devices already do.

The nested rescan must also register only the requested node.
Otherwise, all later siblings are probed while the expander is still
probing, and one using the expander's GPIOs fails to get them.

Reported-by: Alexander Shiyan <eagle.alexander923@gmail.com>
Link: https://lore.barebox.org/CAP1tNvRtU8munqnUTiqU_zEP_rxdm_hb42u_oU1FVL93czrtFA@mail.gmail.com
Fixes: 7d8f15b36489 ("i2c: implement rescan")
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/i2c/i2c.c | 25 ++++++++++++++++---------
 1 file changed, 16 insertions(+), 9 deletions(-)

diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index ef92854eefe0..d0f9be826025 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -405,16 +405,17 @@ static struct i2c_client *i2c_new_device(struct i2c_adapter *adapter,
 
 	client->dev.parent = &adapter->dev;
 
+	/* claim the node before probe can rescan the bus */
+	of_node_set_dev(chip->of_node, &client->dev);
+
 	status = register_device(&client->dev);
 	if (status) {
+		of_node_set_dev(chip->of_node, NULL);
 		free(client);
 		return NULL;
 	}
 	devinfo_add(&client->dev, i2c_info);
 
-	if (chip->of_node)
-		chip->of_node->dev = &client->dev;
-
 	dev_dbg(&client->dev, "registered on bus %d, chip->addr 0x%02x\n",
 		adapter->nr, client->addr);
 
@@ -496,7 +497,12 @@ static void i2c_hw_rescan(struct device *dev, struct device_node *np)
 	for_each_i2c_adapter(adap) {
 		if (dev != adap->dev.parent)
 			continue;
-		of_i2c_register_devices(adap);
+
+		if (!np)
+			of_i2c_register_devices(adap);
+		else if (np->parent == adap->dev.of_node &&
+			 of_device_is_available(np))
+			of_i2c_register_device(adap, np);
 		break;
 	}
 }
@@ -742,17 +748,18 @@ int i2c_add_numbered_adapter(struct i2c_adapter *adapter)
 
 	slice_init(&adapter->slice, dev_name(&adapter->dev));
 
-	/* populate children from any i2c device tables */
-	scan_boardinfo(adapter);
-
-	of_i2c_register_devices(adapter);
-
+	/* children probed below may need their siblings created on demand */
 	hw_dev = adapter->dev.parent;
 	if (hw_dev && dev_of_node(hw_dev)) {
 		if (!hw_dev->rescan)
 			hw_dev->rescan = i2c_hw_rescan;
 	}
 
+	/* populate children from any i2c device tables */
+	scan_boardinfo(adapter);
+
+	of_i2c_register_devices(adapter);
+
 	return 0;
 }
 EXPORT_SYMBOL(i2c_add_numbered_adapter);
-- 
2.47.3



