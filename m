Delivery-date: Thu, 11 Dec 2025 21:43:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnVW-00AQTu-1z
	for lore@lore.pengutronix.de;
	Thu, 11 Dec 2025 21:43:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnVV-00010v-W9
	for lore@pengutronix.de; Thu, 11 Dec 2025 21:43:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=E8b5Zv/hq1QGAdvzr8By2aFmFO34HF2s/ENxYBD9ZoQ=; b=IiopA92OvTIYsR2a9p+VnvEc92
	P1Ts3vkpA9+83fr+JUQEF1DvqqwDu32ocxjfybPwxjWRUeNjbnE0/VGWKL6SEDuZZGyBM17WLir6g
	AmHyR/AblfVZzHEfcwVtz1tard/XD8jfJqB6L0hwH9Da/bOO6Wkd2cPhmVt/qWL4lT4xChHlIO1uQ
	mDhQ3TbsmiuUpHKsT2by34mc6f7gjzm7IsYA6kRkG354br5lF2HhPNSy81CoHOGiWUBuX6HJkU0wP
	LEPeLW6sEwZaOR73ITrfh7AThf0ZcV+bmHMUEMPKGZF7PXTRbP9xhPNh0X9jO65iUuIIm7vEITwR/
	jmpKpSnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnV9-0000000HHB6-1QwY;
	Thu, 11 Dec 2025 20:43:03 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnV8-0000000HHAp-1xCX
	for barebox@bombadil.infradead.org;
	Thu, 11 Dec 2025 20:43:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=E8b5Zv/hq1QGAdvzr8By2aFmFO34HF2s/ENxYBD9ZoQ=; b=ktLwd97TdJTZ/0yBwyL+Ck6WWi
	MYCP6n68AWjNgrbk4bNxpWNVQOX7w6jK7HUwfmUWtRLRCHeIdkjO+W+B4OOexnnin/Ugi8+L+rwUd
	JgH9ebPByBTSm83WKoM6ODhAs6Qz87+Z7KZPkkO8S3ECJkNbloCF0q5T3PV8cVPoqQlntDBXIiXb/
	Q2fvhiXkarQXWyWwX94r8fSo+GDRKFH5l4F3/VNeGyPMnDAUSuYqf3HrOsHGr0EEG+C5BfITekwKT
	A7AgHP4mkG8gcFp/pkIJmcp7n+Cwq4vlNaqWeovQMGSMYoY2QxCSxHbA2GEySjsCreoHOhc7iGtSD
	wWb9TFwA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTmda-0000000Fa2r-0QZc
	for barebox@lists.infradead.org;
	Thu, 11 Dec 2025 19:47:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnV4-0000s1-MR; Thu, 11 Dec 2025 21:42:58 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnV4-005BXa-1c;
	Thu, 11 Dec 2025 21:42:58 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnV4-0000000Aw4L-1iI7;
	Thu, 11 Dec 2025 21:42:58 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Dec 2025 21:42:57 +0100
Message-ID: <20251211204257.2605869-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_194742_508966_CB4C63CF 
X-CRM114-Status: GOOD (  11.42  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] boot: allow prioritizing boot entry providers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

It's not unusual for an EFI system partition to both have boot loader
spec entries and an EFI application at the default payload path for
removable media.

In that case, we will want to establish a fixed order for boot entries,
so add an optional priority field for this purpose. The default priority
is 0 and providers can sort themself higher or lower.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/boot.c  | 10 +++++++++-
 include/boot.h |  1 +
 2 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/common/boot.c b/common/boot.c
index 1059e6d995d3..a8a92057844b 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -282,9 +282,17 @@ static int bootscript_scan_path(struct bootentries *bootentries, const char *pat
 
 static LIST_HEAD(bootentry_providers);
 
+static int bootentry_provider_sort(struct list_head *_a, struct list_head *_b)
+{
+	struct bootentry_provider *a = container_of(_a, struct bootentry_provider, list);
+	struct bootentry_provider *b = container_of(_b, struct bootentry_provider, list);
+
+	return compare3(b->priority, a->priority); /* descending order */
+}
+
 int bootentry_register_provider(struct bootentry_provider *p)
 {
-	list_add(&p->list, &bootentry_providers);
+	list_add_sort(&p->list, &bootentry_providers, bootentry_provider_sort);
 	return 0;
 }
 
diff --git a/include/boot.h b/include/boot.h
index ae32b9ead93f..e6309b65a0c3 100644
--- a/include/boot.h
+++ b/include/boot.h
@@ -28,6 +28,7 @@ int bootentries_add_entry(struct bootentries *entries, struct bootentry *entry);
 struct bootentry_provider {
 	const char *name;
 	int (*generate)(struct bootentries *bootentries, const char *name);
+	int priority;
 	/* internal fields */
 	struct list_head list;
 };
-- 
2.47.3



