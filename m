Delivery-date: Mon, 05 Sep 2022 17:26:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVE01-007dsN-Hm
	for lore@lore.pengutronix.de; Mon, 05 Sep 2022 17:26:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVE01-0000VF-IV
	for lore@pengutronix.de; Mon, 05 Sep 2022 17:26:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=6H5M6pOxCH6IUy+OdUvGwdyqStq1V8TZqIuvG2xDNlo=; b=BloZhpHXURPsDkW9FBoWv2gvcN
	nfLZ8MOjU260t61Yka240l87r2zZGahW0RNq3K07TRTB+mDNGGgrxkwGm39y/YwHIQ7FFtANy3kuj
	HI6C31TP0FTkAciwEahI9fo4cOda1ABJZCr2LEGm2fWk+hJv4x35SDdgO2VqUq7gTR3WfaCg7Rr0S
	nccuzazSwiMCwRivwyQ9v+UdYXGsl0D7nT8/lPLe2A0JmyR3R+XdRYm46LGwuKQND7DjnoGuW5GJc
	J678UpVRQUNtx4A06YDcB7J97KlCWcPAkRln6x9YM/T2zRbWilGtsBLFqG4Vj2T8JyqDwtoNUI2Cg
	RgWCaynA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVDyP-005tSR-7K; Mon, 05 Sep 2022 15:25:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVAlY-001gcT-Mn
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 11:59:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oVAlW-0008Ri-KV; Mon, 05 Sep 2022 13:59:46 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oVAlU-0043FQ-26; Mon, 05 Sep 2022 13:59:45 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oVAlV-0081EH-AE; Mon, 05 Sep 2022 13:59:45 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Sep 2022 13:59:44 +0200
Message-Id: <20220905115944.1911301-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_045958_420610_16F59C1E 
X-CRM114-Status: UNSURE (   9.85  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] of: platform: propagate of_devices_ensure_probed_by(name|property) errors
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The of_devices_ensure_probed_by functions are expected to return an
error code after iterating over all matching devices should any device
have failed its of_device_ensure_probed. Doing this unearths one common
failure: a matching node has status = "disabled". These will have
of_device_ensure_probed return -ENODEV, which makes sense for users
wanting to ensure a specific device is probed, but doesn't when
iterating over multiple nodes.

We already have of_devices_ensure_probed_by_dev_id, which does an early
of_device_is_available check, so do likewise for the other to
ensure_probed_by_* functions.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/platform.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index dc784ea8e550..a9a5d4c2daf2 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -525,12 +525,15 @@ int of_devices_ensure_probed_by_property(const char *property_name)
 		return 0;
 
 	for_each_node_with_property(node, property_name) {
-		ret = of_device_ensure_probed(node);
+		if (!of_device_is_available(node))
+			continue;
+
+		err = of_device_ensure_probed(node);
 		if (err)
 			ret = err;
 	}
 
-	return 0;
+	return ret;
 }
 EXPORT_SYMBOL_GPL(of_devices_ensure_probed_by_property);
 
@@ -543,12 +546,15 @@ int of_devices_ensure_probed_by_name(const char *name)
 		return 0;
 
 	for_each_node_by_name(node, name) {
-		ret = of_device_ensure_probed(node);
+		if (!of_device_is_available(node))
+			continue;
+
+		err = of_device_ensure_probed(node);
 		if (err)
 			ret = err;
 	}
 
-	return 0;
+	return ret;
 }
 EXPORT_SYMBOL_GPL(of_devices_ensure_probed_by_name);
 
-- 
2.30.2



