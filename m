Delivery-date: Sat, 14 Nov 2026 17:21:30 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xSGVN-00ApiD-0W
	for lore@lore.pengutronix.de;
	Sat, 14 Nov 2026 17:21:30 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 6518D201A62
	for <lore@pengutronix.de>; Sat, 14 Nov 2026 17:21:29 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=E+OA1c+m;
	dkim=fail ("headers rsa verify failed") header.d=amelchem.com header.s=default2004 header.b=FhJEWB5Z;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=amelchem.com (policy=none)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794673289;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=7taOaaFCktlOC4SnsIao0YCcp9NRA6PYvskemM75gjg=;
	b=X4LB8HY8t6eRLSiRGAFxVUGkxvmHjDJ7UIGoO/YAtrgqG8tOGIY3OAcToMcKdBm38amBiD
	ZbUoUKwH5/R4IONvNGIiNZQcsHPg8KHePB9dnPWt74UaX9NIml3tlyl4qrIvyd1JEYuljF
	bHehuMetQujmbAyXJMhqiEh/DC+d00d8YAs0IeZlwdwPZVgiRyw6Mt9ymDkOqqfLmVOoMj
	Ytxv40TbSS9995PhlZ+B9WsFNxTkT8IofVgmTG/LsDUWujSo+r10D5YHCohHtAX0Z/Huzi
	9SaK/lrEAz9NmsmVaV9wWnLExKtZIdnm5wMDOQ7uebC8nn5EYC8gu1IYbr8+sQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794673289; a=rsa-sha256;
	cv=none;
	b=e3JSYEz1kRpbSza/GvA+F6Zby+PLRH/SenLsOvZ8VZfwrJCr7KdyXPid8KLW/IY62Zmug2
	hFQPxFTOEzpe1xGzIBDqRo9sPFvrIneQJgMqmyDrIbwM0PVXvAEcp4Evl7+zLpf7vXa4fr
	tdh8w35A0IRXH4Xpxt0qD3RbBkGUwR7JQH50uxt9VeYqj5Q6H7dUEJB0yvxzvmgIi3/6+W
	dRKqW6ERB6NgBLOGICp+TKDHvKyBFFt88cLcZ3t1ewfQiroEQJHHxoHIMCqNpmw3PxqtT3
	SZp1kCLUZr90b4gYhZbiiSwvQYOoTjkNVxNeiV3x00CzHBAJSHI60tDsxDkUkw==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=E+OA1c+m;
	dkim=fail ("headers rsa verify failed") header.d=amelchem.com header.s=default2004 header.b=FhJEWB5Z;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=amelchem.com (policy=none)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=7taOaaFCktlOC4SnsIao0YCcp9NRA6PYvskemM75gjg=; b=E+OA1c+mJr6tkA
	mMZ9lZTaGAsarier+4WTJEDiw/TvqRkdao5qfyq+wH/mF1RxO6kf7aA3AvAUeQgUPDwQ1Sg3QpUGc
	A+lc2XFXhW5i2yQeRi8QhzYDJ6m77h852aFDCQNcqaf3ivdTN80+SW2IKQWMgK6xvMu5OPVR6NI2F
	ZJnd+zOE++v8ibd++d/z43OmHb1eo/0FXgMHPisiktTHnTYDmRX59Dn5VWZ0offlYeYrpG84/+HD6
	DJQUQzblvBHBVwWPUa9ybvw2TzPQQ6t7Wv0GrwOamyuWcWyu9K/nJRIN3xi4ArRfwAaDirSkH2cWo
	e0v69eZqWitQLUWQ/z6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSGUI-0000000GRr2-1ajI;
	Sat, 14 Nov 2026 16:20:22 +0000
Received: from www153.your-server.de ([213.133.104.153])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSGUF-0000000GRov-1Y8b
	for barebox@lists.infradead.org;
	Sat, 14 Nov 2026 16:20:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=amelchem.com; s=default2004; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=7taOaaFCktlOC4SnsIao0YCcp9NRA6PYvskemM75gjg=; b=FhJEWB5Z30x+A20nSaTZTLu0/d
	Qs06mIHJkYx3O2kjG76VW2PlQx2sVSPTi1o4AK2LinQTlkIsy/kPXOrxK9srcAEf5R6pecOkI7JqT
	d5lt7oPeuC014h8AjZe4BScqPNNAKUNi9r6qa/euRLDIFHKcHggKnxgP1hhezLWsw4cAyz+SVA95U
	Y2Kiw7DP2C5qhPMjgJk8MVNV2LU7p6tefvjdd7Pd07AiP2jzy6+xbfUw3fFpgoU5N0fhiB2jgGBwM
	uR5ISEo73G+niyxmRvnffilJaXJnAkV7d6Zh5HCvxxwpQYt5lKMbS9nxl/mEefgEYC606NfDdAcV0
	MCalzdZA==;
Received: from sslproxy07.your-server.de ([78.47.199.104])
	by www153.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <rossi@amelchem.com>)
	id 1xSGU6-0009mR-3B;
	Sat, 14 Nov 2026 17:20:11 +0100
Received: from localhost ([127.0.0.1])
	by sslproxy07.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <rossi@amelchem.com>)
	id 1xSGU6-000MCb-21;
	Sat, 14 Nov 2026 17:20:10 +0100
From: Giandomenico Rossi <rossi@amelchem.com>
To: barebox@lists.infradead.org
Cc: Giandomenico Rossi <rossi@amelchem.com>,
	Nicola Fontana <ntd@entidi.it>
Subject: [PATCH 1/4] usb: typec: add typec_port_from_device()
Date: Sat, 14 Nov 2026 17:19:50 +0100
Message-Id: <20261114161953.1457428-2-rossi@amelchem.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20261114161953.1457428-1-rossi@amelchem.com>
References: <20261114161953.1457428-1-rossi@amelchem.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: Clear (ClamAV 1.4.6/28183/Sat Nov 14 07:24:17 2026)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261114_082019_433904_1275EB2A 
X-CRM114-Status: UNSURE (   8.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Add an exported helper to retrieve the struct typec_port associated
    with a struct device. This allows callers holding a Type-C port device to
    obtain the corresponding typec_port handle, whose definition is private to
    drivers/usb/typec/class.c. 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was blocked.
                             See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URI: amelchem.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
 -0.0 DMARC_PASS             DMARC pass policy
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
X-Spamd-Result: default: False [-5.81 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[amelchem.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_MIXED(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DNSWL_BLOCKED(0.00)[78.47.199.104:received];
	RCPT_COUNT_THREE(0.00)[3];
	R_DKIM_REJECT(0.00)[amelchem.com:s=default2004];
	DKIM_TRACE(0.00)[lists.infradead.org:+,amelchem.com:-];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[rossi@amelchem.com,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: 6518D201A62
X-Rspamd-Server: mx1
X-Stat-Signature: 455j61qcitm3ymdns7ia1ytg1qd8axkh

Add an exported helper to retrieve the struct typec_port associated
with a struct device.

This allows callers holding a Type-C port device to obtain the
corresponding typec_port handle, whose definition is private to
drivers/usb/typec/class.c.

Reviewed-by: Nicola Fontana <ntd@entidi.it>
Signed-off-by: Giandomenico Rossi <rossi@amelchem.com>
---
 drivers/usb/typec/class.c | 21 +++++++++++++++++++++
 include/linux/usb/typec.h |  2 ++
 2 files changed, 23 insertions(+)

diff --git a/drivers/usb/typec/class.c b/drivers/usb/typec/class.c
index e03eaccbb9..e13699719b 100644
--- a/drivers/usb/typec/class.c
+++ b/drivers/usb/typec/class.c
@@ -83,6 +83,27 @@ int typec_set_role(struct typec_port *port, enum usb_role role)
 }
 EXPORT_SYMBOL_GPL(typec_set_role);
 
+
+/**
+ * typec_port_from_device() - get the typec_port embedding a struct device
+ * @dev: device backing a registered Type-C port
+ *
+ * Resolves the struct typec_port that contains @dev. Intended for callers
+ * that hold a struct device (e.g. from get_device_by_name()) and need the
+ * opaque typec_port handle, which they cannot obtain themselves since the
+ * type is private to this file.
+ *
+ * The caller must ensure @dev actually backs a Type-C port; passing an
+ * unrelated device yields an invalid pointer.
+ *
+ * Return: the struct typec_port containing @dev.
+ */
+struct typec_port *typec_port_from_device(struct device *dev)
+{
+	return container_of(dev, struct typec_port, dev);
+}
+EXPORT_SYMBOL(typec_port_from_device);
+
 /**
  * typec_get_drvdata - Return private driver data pointer
  * @port: USB Type-C port
diff --git a/include/linux/usb/typec.h b/include/linux/usb/typec.h
index 315dee95e4..2de110d592 100644
--- a/include/linux/usb/typec.h
+++ b/include/linux/usb/typec.h
@@ -51,4 +51,6 @@ int typec_set_role(struct typec_port *port, enum usb_role role);
 
 void *typec_get_drvdata(struct typec_port *port);
 
+struct typec_port *typec_port_from_device(struct device *dev);
+
 #endif /* __LINUX_USB_TYPEC_H */
-- 
2.34.1



