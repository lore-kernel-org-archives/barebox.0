Delivery-date: Wed, 13 Mar 2024 10:27:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkKtE-004Be5-2g
	for lore@lore.pengutronix.de;
	Wed, 13 Mar 2024 10:27:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkKtE-00041J-99
	for lore@pengutronix.de; Wed, 13 Mar 2024 10:27:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Q+xpLfFYIKnCm9+BBdMU9JMk7p6u/BZJKg72fTpcBso=; b=b0Jnnd5WTlWFF0ljYN1YIXforL
	yeK3wjh1whYNA9cF3Ivp3A0leeXBaq8KlkiqAEYHUG7dV98wwFqTW6vstv/bPN5aEM33eC6XmnZzX
	Zbt+RlXAgtDb7muQmFbtRo0kYgJRuPQehXxWX0DMPEJQiyJcxt6Gwtary7q2ziwIxbaH1BDuBqRIn
	86wfiXOfIVY2dD3kwOIeDKQ+46Nc3wRjtIG26x9qKzdZZojL0KX5xR7OQatuFn9/DPO2PhcElCtf9
	oDh05SQD0qmNo/Mv72WnPSCD7XcPKZoe5lTLhbiJORVHTFlP+o2PpoEiIS1euWfZ4LDF5/4U621SO
	ML44NqGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkKsj-00000009VIr-1yIi;
	Wed, 13 Mar 2024 09:26:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkKsg-00000009VGx-1bWZ
	for barebox@lists.infradead.org;
	Wed, 13 Mar 2024 09:26:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkKsd-0003eb-Lj; Wed, 13 Mar 2024 10:26:35 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkKsd-0065Nj-96; Wed, 13 Mar 2024 10:26:35 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkKsc-00E0iO-2A;
	Wed, 13 Mar 2024 10:26:35 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 13 Mar 2024 10:26:33 +0100
Message-Id: <20240313092633.3339320-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240313_022638_463898_4A672DC7 
X-CRM114-Status: GOOD (  11.84  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master] common: console_common: handle NULL dev gracefully in dev_printf
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

dev_name(NULL) returns NULL, which snprintf can handle, but dev->driver
used beforehand would derference the NULL pointer without checking.

Fix this by checking that dev is !NULL before dereferencing.
This still leads to an ugly <NULL>: prefix, when a NULL dev is used, so
it can be fixed, but without the crash, which might be difficult to
pinpoint if the print happens early.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/console_common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/console_common.c b/common/console_common.c
index 631756e4800c..0113a6413850 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -146,7 +146,7 @@ int dev_printf(int level, const struct device *dev, const char *format, ...)
 	if (!IS_ENABLED(CONFIG_LOGBUF) && level > barebox_loglevel)
 		return 0;
 
-	if (dev->driver && dev->driver->name)
+	if (dev && dev->driver && dev->driver->name)
 		ret += snprintf(printbuffer, size, "%s ", dev->driver->name);
 
 	ret += snprintf(printbuffer + ret, size - ret, "%s: ", dev_name(dev));
-- 
2.39.2



