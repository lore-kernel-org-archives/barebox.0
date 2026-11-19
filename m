Delivery-date: Thu, 19 Nov 2026 20:00:05 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xU7Ma-001Bsn-3C
	for lore@lore.pengutronix.de;
	Thu, 19 Nov 2026 20:00:05 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 6A42A205B35
	for <lore@pengutronix.de>; Thu, 19 Nov 2026 20:00:01 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=FSwNXSSo;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=barebox.org (policy=none)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795114801;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=edHldbVhbA2l1S8Fx/kk5QwYELutz9QbywjlqoBlYzY=;
	b=Lt7nj7wEoZ0QHWk5rh/QIKt/Sn9TVcDLs2kz7rHonezZB6FAjof8pQ2bmfD601pmQtd45a
	WL4CzCXpPrOWI6yKcU+HXT4GUV7vfCpKs0giNEyDR/oM3BKaQIR4ocgbG+zznF7G0ewd5U
	vZTRMzCGNbq9YEUKWm5S2XbLIq8A2ZXl47xZ9/z0W66ORz+46HPV+5uJjlMIRDF6oVmWVZ
	vMUlEXJn+KaSCKjnr2lsI4YvISDyf0JAQQaA0e2o19xUY8T1iwWtYNy+tkRmUI9sHsdbX6
	V1TyS+1WtD0YftQFEOyK85ilaCpR69/i9FwFNmqIukOCjhIONjKovYA1uwl7BA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1795114801; a=rsa-sha256;
	cv=none;
	b=Vo+qiF4xQ3FuyLmeUzM0TuRuNBsWPdZCWBt/sXH46buxpcqXCS4vkdQbb+aSkQ/kSFlnLy
	9l8pTrtUdpCq5AcT0h+i4Zrx8w14LuUeOAXuHWKBdWYDkVSMt3TUFnceYgyjtEmyPEVflT
	AODJPs/Z9ranY20+nYgU2FCQXsv8Nnh33jwWqEl1k3ekBpJ13sxy2qPjxRGdp+J0McHQhe
	9MxAsXZUxu9kdTgPYaSIDfRdJ3bnJdeAIxb7TNPiL6JBNMnzwhj9+k5jpVFtlJ/hL70zyr
	3PU6LcRtzB7JL2KuBNZJkHcFCM2fTTZxlnK8zhw76xQCGtgSJ1Yi3OQ9678KSw==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=FSwNXSSo;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=barebox.org (policy=none)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=edHldbVhbA2l1S8Fx/kk5QwYELutz9QbywjlqoBlYzY=; b=FSwNXSSo+RPnrz
	4mIQyT5s0QhkBbl3aa3eU0IqkbF4M77WFA2Sy2+sWuFWM6Nv+oKQCbK/n/nKRGcAKi0wCDnTtgzef
	tM/VlFGo7X/cvcEiEQ8TADZG4VZNEcEJqAIKE6yc5UAMcKrv08VSCBs12/Y3J8kP9ztF7FUP0MA08
	BZPx/UhMXWcB3ra4cLDssW7thKPLS050GXAxXNoeALMGiCJqZGTbPOJ8/GBPjIpEAT0j0HgFbYUxH
	Rwj7PuzcYt2zkFn4O0bxeAJ7JEuc4j/DMdC8IubfXz+cIIZNqOBN0c6zAD9Cqfm0/JymGyDEWiwk7
	zo3BHRUJAKyA3AiN+Y6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU7LK-0000000D7q3-0PyX;
	Thu, 19 Nov 2026 18:58:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU7LC-0000000D7ll-10LX
	for barebox@lists.infradead.org;
	Thu, 19 Nov 2026 18:58:43 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xU7L8-0003xr-4J; Thu, 19 Nov 2026 19:58:34 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 3/6] i2c: factor out of_i2c_register_device()
Date: Thu, 19 Nov 2026 19:58:13 +0100
Message-ID: <20261119185828.92337-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261119185828.92337-1-a.fatoum@barebox.org>
References: <20261119185828.92337-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261119_105838_325843_8DA9DA03 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Let's move the registration of a single device node into its
    own function. A follow-up commit will use it to register only the node requested
    by the rescan hook. No functional change. Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
    --- drivers/i2c/i2c.c | 72 +++++++++++++++++++++++++ 1 file changed, 38 insertions(+),
    34 deletions(-) 
 
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
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
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
X-Rspamd-Queue-Id: 6A42A205B35
X-Rspamd-Server: mx1
X-Stat-Signature: s6fonwfwp8pdenydk934rqki6dp9n54t

Let's move the registration of a single device node into its own
function. A follow-up commit will use it to register only the node
requested by the rescan hook.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/i2c/i2c.c | 72 +++++++++++++++++++++++++----------------------
 1 file changed, 38 insertions(+), 34 deletions(-)

diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index cfc340736309..ef92854eefe0 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -427,6 +427,42 @@ void i2c_unregister_device(struct i2c_client *client)
 	devinfo_del(&client->dev, i2c_info);
 }
 
+static void of_i2c_register_device(struct i2c_adapter *adap,
+				   struct device_node *n)
+{
+	struct i2c_board_info info = {};
+	struct i2c_client *result;
+	const __be32 *addr;
+	int len;
+
+	if (n->dev) {
+		dev_dbg(&adap->dev, "of_i2c: skipping already registered %s\n",
+			dev_name(n->dev));
+		return;
+	}
+
+	of_modalias_node(n, info.type, I2C_NAME_SIZE);
+
+	info.of_node = n;
+
+	addr = of_get_property(n, "reg", &len);
+	if (!addr || (len < sizeof(int))) {
+		dev_err(&adap->dev, "of_i2c: invalid reg on %pOF\n", n);
+		return;
+	}
+
+	info.addr = be32_to_cpup(addr);
+	if (info.addr > (1 << 10) - 1) {
+		dev_err(&adap->dev, "of_i2c: invalid addr=%x on %pOF\n",
+			info.addr, n);
+		return;
+	}
+
+	result = i2c_new_device(adap, &info);
+	if (!result)
+		dev_err(&adap->dev, "of_i2c: Failure registering %pOF\n", n);
+}
+
 static void of_i2c_register_devices(struct i2c_adapter *adap)
 {
 	struct device_node *n;
@@ -435,40 +471,8 @@ static void of_i2c_register_devices(struct i2c_adapter *adap)
 	if (!IS_ENABLED(CONFIG_OFDEVICE) || !adap->dev.of_node)
 		return;
 
-	for_each_available_child_of_node(adap->dev.of_node, n) {
-		struct i2c_board_info info = {};
-		struct i2c_client *result;
-		const __be32 *addr;
-		int len;
-
-		if (n->dev) {
-			dev_dbg(&adap->dev, "of_i2c: skipping already registered %s\n",
-				dev_name(n->dev));
-			continue;
-		}
-
-		of_modalias_node(n, info.type, I2C_NAME_SIZE);
-
-		info.of_node = n;
-
-		addr = of_get_property(n, "reg", &len);
-		if (!addr || (len < sizeof(int))) {
-			dev_err(&adap->dev, "of_i2c: invalid reg on %pOF\n", n);
-			continue;
-		}
-
-		info.addr = be32_to_cpup(addr);
-		if (info.addr > (1 << 10) - 1) {
-			dev_err(&adap->dev, "of_i2c: invalid addr=%x on %pOF\n",
-				info.addr, n);
-			continue;
-		}
-
-		result = i2c_new_device(adap, &info);
-		if (!result)
-			dev_err(&adap->dev, "of_i2c: Failure registering %pOF\n",
-			        n);
-	}
+	for_each_available_child_of_node(adap->dev.of_node, n)
+		of_i2c_register_device(adap, n);
 }
 
 int of_i2c_register_devices_by_node(struct device_node *node)
-- 
2.47.3



