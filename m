Delivery-date: Thu, 15 Oct 2026 10:49:47 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHH9n-00Dqcb-2d
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 10:49:47 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 493AB201CD6
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 10:49:47 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=JL42bM76;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=cE0xigYu;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792054187; a=rsa-sha256;
	cv=pass;
	b=M42j/VihvMNGdfYZYw19XwlGbLVv6bks5ASUcLNi5qUR9YwXdjE/RRrNxcayHaNUDW8nuB
	NZj8BCCNspPVW6hZgQZfLV3WQDCyeTXkqRUC8ZRYRRgmyrsXf/Cu287NXpdK8FV3RuBzXW
	1FBSJajb6QLsAH8Lzc4hoMStRyErO2wcjnpr2IK7aymfX2ENdqgd2Tl7bARwWiT1e2qLKl
	s06ISTdA9fLzHd29bEyHeZqmdAPSWJBQWdwMmCJjN5BMsPeCrBrwrzSAEnRyfiERpgyQil
	xRGbiOE+TQsBO4Sa6fCPDeOP4SVMSr6cuft8iqNxAbJOQ8+vKbS9rJe1KaB+ZQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=JL42bM76;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=cE0xigYu;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792054187;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=QCBGEV2/it/fBRAUPLcJVC38La61ftJdZvDUfdG3w2k=;
	b=UmC43Bh29yTc4aWXCa1xmu6td4L1CivCtYZ2u+ieEWNhRu8CF04hpdeAAS/FEtWSmA9n6W
	RvGjwm2q6LItABUZchENvagc4eXzu9wDp3cBLtTtfkAJSpbiM9bWDH0qdThT7KC41k0Svy
	p0F0aT3Us7gOyUiiCPfwkvKpdhGlH14RxdLMTEGadmZoKiRMBulsfZLFoVpPyrdVP5zWLo
	R6GqOZ0VZwQO8pDU1wt2up/cDmhC9TKcmQwancsY6AahCGkSekxsHM0gzf/zodKsCw6JLV
	SC+u+ss33jat7pcJ9FMfd6/ejyQPuJMchywC2A4SEpkNO+Hbj2KDcJzOVrzfgQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QCBGEV2/it/fBRAUPLcJVC38La61ftJdZvDUfdG3w2k=; b=JL42bM76OyVgKFz1Lc0MuBKxU+
	Wdon+CcrvnAsB2lEonElJwNfokwJJP69nJIvDAoNTH59QbIjGDdbkrY2spRqdOrnOXl2Eehjvk7GT
	/2jOKQ4q5799xs7qUEp1AT6++Jha2DzBrNHXHQFIuORGporAyw7S1oJi9pIEADk4ghy0OHj4s51y7
	teXlAErdAA1q9Io+O1zXTJ3UotnzXehNWSQ9E8bdmAD5gSpg4gKiEKwE2E5mLj2zadfiQ1awXOJvf
	Ox6fQMFpdvxig7QhRnh5Z2xylyjy+swjU2gP/08oHjFZnNhWNgjOhRlBuuG8jLcZSqcWimYbMf1y4
	YiczmGSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHH8h-0000000HBko-10kn;
	Thu, 15 Oct 2026 08:48:39 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHH8e-0000000HBjt-0Akb
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 08:48:37 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 534BA202339;
	Thu, 15 Oct 2026 10:48:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792054114;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=QCBGEV2/it/fBRAUPLcJVC38La61ftJdZvDUfdG3w2k=;
	b=cE0xigYulzqzQwzz58eu6IqQwODKONmUSJmJiDtP1RR4Cyc2zZm1S95yaJbCfkwXvH4AkT
	jaEwKbj7F6QjlwZbaaSQo3PPiq+aZtQRVWsWMRlHyeQLg+xVpHqzdCy0+3rQgdqC1r4u6Y
	Jfd/Gn/rziUgV0/qh7wXqQ7k1Fb55AN2c8IxvEJpn1gdhcxZ6vOmw/UBgLWZWtUO0HRpAD
	SGle9RgZ67NlzqyZGRMgXQekAYhMhiXcuflApOXsRfLSEIS3A7X3m4WsrKbt3o9NDENpqU
	rZ/Z7DYTeCHdUSpshdq9tdwAfN9LfKpRTyStzRIgNQk3HyeBW0aflBth5HqUAQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792054114; a=rsa-sha256;
	cv=none;
	b=Nv7Ve+hITfpIA3NLrG9CHH5rwFiy+hMXmo94HHJOS/zLvqOPEP9YZ7/63dXRnOuCoUePfO
	SiqeXKmYZEMJr5thr9o9iMkz+M740/0hrhJWePlTC0p6WGX+FH3tbbyU1lCTdKT0SlPkyB
	WGl0zdgdNupBYpTEnG8ObM9VZ7hI5mZZGoR/BEz1g9y3VLZhiYRhyAT6HlqRB/5qX0s/jh
	RdfVo5XLiAbruTPuSp+J/6XGgfdeYR/LdExZl9x5nRTAuHcTqGYAM5c5AF3399a5P1ioA2
	LqxbzgWkcxkLDhx5W8s9hTjnokWdaeOXTf3zmchy776IBd75yS25PSbddZDmZw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792054114;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=QCBGEV2/it/fBRAUPLcJVC38La61ftJdZvDUfdG3w2k=;
	b=aP0kqL7bI6q8udtQPn+Jsdauj+wJxB0lsGcvnku4YpzEmOqoaJqllN8BRKrS8+p8v1E2q2
	NPgi1TpIJF+EORRk6Xu5N9suqfk2zR8eisxre+fZTDI32Kb6CezGPnZRmMOUmNLGcVX3hW
	S+oqIamMIkGcLy69246yKSnzHJV+wbxcAt3rw0T3LGGrnvvHx6ZXycmkbm2RaKtPME1Yw7
	x0Ejx5ttOJeWCq5kT01NuZmPjP5wv3CT5wCASwK8M5PPJoBUy8zpUin1LdTKWmqore0kae
	BarjjA3lAgrUz53GhuxdXeH4qXndiX845vMFl1n2b5L5kxRMgHVdH1fIQzVsoQ==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 3AD737415DA;
	Thu, 15 Oct 2026 10:48:34 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH master 2/3] ARM: rpi: look up emmc2bus by alias for dma-ranges fixup
Date: Thu, 15 Oct 2026 10:48:30 +0200
Message-ID: <20261015084833.4090522-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261015084833.4090522-1-a.fatoum@pengutronix.de>
References: <20261015084833.4090522-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_014836_379677_07FA1082 
X-CRM114-Status: GOOD (  17.25  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> The VideoCore firmware
    patches the dma-ranges of the eMMC2 bus to match the BCM2711 stepping (B0
    vs. C0). It finds the node via the emmc2bus alias. Commit 3f9788433919 ("raspi:
    add a fixup for the `dm [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
X-Spamd-Result: default: False [-58.91 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	DBL_PROHIBIT(0.00)[0.0.0.0:email];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 493AB201CD6
X-Stat-Signature: 8sibpj38k7xum3czaqqkbuuys1rckmd4

From: Ahmad Fatoum <a.fatoum@barebox.org>

The VideoCore firmware patches the dma-ranges of the eMMC2 bus to match
the BCM2711 stepping (B0 vs. C0). It finds the node via the emmc2bus
alias. Commit 3f9788433919 ("raspi: add a fixup for the `dma-ranges`
property of the `/emmc2bus` dt node") propagates that value into the
DT passed to the OS, but it looks the node up by the hardcoded path
/emmc2bus in the VideoCore DT and then creates/overwrites the node at
the same path in the DT being fixed up.

Linux commit 929dc5b3e06c ("ARM: dts: broadcom: bcm2711: Fix
'simple-bus' node names"), which came in with commit fe223ba39321
("dts: update to v7.0-rc1"), renamed /emmc2bus to /emmc2-bus@fe000000.
Since then, booting with barebox' internal DT and a firmware DT that
still uses the old name (any DT older than Linux v7.0) adds a stray
/emmc2bus node holding the dma-ranges, while the real bus keeps the
hardcoded B0 ranges.

Look up the node via the emmc2bus alias in both trees like the firmware
does, so the fixup works irrespective of the node name, and don't create
the node in the target DT if the alias is missing.

Fixes: 3f9788433919 ("raspi: add a fixup for the `dma-ranges` property of the `/emmc2bus` dt node")
Fixes: fe223ba39321 ("dts: update to v7.0-rc1")
Assisted-by: Claude:opus-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/boards/raspberry-pi/rpi-common.c | 31 ++++++++++++++++++-----
 1 file changed, 24 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index fe0b11efad68..e0a4438d54e0 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -61,8 +61,9 @@ struct rpi_priv {
 };
 
 struct rpi_property_fixup_data {
-    const struct device_node* vc_node;
-    const char *propname;
+	const struct device_node* vc_node;
+	const char *propname;
+	const char *alias;
 };
 
 static void rpi_set_usbethaddr(void)
@@ -314,9 +315,23 @@ static int rpi_vc_fdt_fixup_property(struct device_node *root, void *data)
 	struct device_node *node;
 	struct property *prop;
 
-	node = of_create_node(root, fixup->vc_node->full_name);
-	if (!node)
-		return -ENOMEM;
+	if (fixup->alias) {
+		/*
+		 * The node name need not be the same in the VideoCore FDT
+		 * and in the DT we fix up (e.g. /emmc2bus was renamed to
+		 * /emmc2-bus@fe000000 in Linux v7.0), so look it up via
+		 * the alias like the firmware does and don't create it.
+		 */
+		node = of_find_node_by_alias(root, fixup->alias);
+		if (!node) {
+			pr_debug("no '%s' alias found in fdt\n", fixup->alias);
+			return 0;
+		}
+	} else {
+		node = of_create_node(root, fixup->vc_node->full_name);
+		if (!node)
+			return -ENOMEM;
+	}
 
 	prop = of_find_property(fixup->vc_node, fixup->propname, NULL);
 	if (!prop)
@@ -332,13 +347,15 @@ static int register_vc_property_fixup(struct device_node *root,
 	struct device_node *node, *tmp;
 	struct rpi_property_fixup_data* fixup_data;
 
-	node = of_find_node_by_path_from(root, path);
+	node = of_find_node_by_path_or_alias(root, path);
 	if (node) {
 		tmp = of_dup(node);
 		tmp->full_name = xstrdup(node->full_name);
 		fixup_data = xzalloc(sizeof(*fixup_data));
 		fixup_data->vc_node = tmp;
 		fixup_data->propname = xstrdup(propname);
+		if (*path != '/')
+			fixup_data->alias = xstrdup(path);
 
 		of_register_fixup(rpi_vc_fdt_fixup_property, fixup_data);
 	} else {
@@ -377,7 +394,7 @@ static void rpi_vc_fdt_parse(struct device_node *root)
 	register_vc_property_fixup(root, "/reserved-memory/nvram@0", "reg");
 	register_vc_property_fixup(root, "/reserved-memory/nvram@0", "status");
 	register_vc_fixup(root, "/hat");
-	register_vc_property_fixup(root, "/emmc2bus", "dma-ranges");
+	register_vc_property_fixup(root, "emmc2bus", "dma-ranges");
 	register_vc_fixup(root, "/chosen/bootloader");
 	chosen = register_vc_fixup(root, "/chosen");
 	if (!chosen) {
-- 
2.47.3



