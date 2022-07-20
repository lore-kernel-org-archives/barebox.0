Delivery-date: Wed, 20 Jul 2022 10:33:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oE59X-00FPMr-CU
	for lore@lore.pengutronix.de; Wed, 20 Jul 2022 10:33:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oE59V-0005S5-4h
	for lore@pengutronix.de; Wed, 20 Jul 2022 10:33:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6apowxhmsOmEA5IOx9W2Fi5KBb9c3vUdzdgUIL+WiIE=; b=e4m33yrIPrUM9ip+06NA7mCEor
	nNPjZdDg+BMMsZhsXdcCIc74z4emr655NMZSl+skqvOl0ucoPh4Wzmy142R9Sp+mei7HTy9HYxSli
	y/SBA6gr+pHjp4uYR3VVpoNl4Kf7Xap0hyHAgA2leCXOtPJvkenXLga5DjzY8OZ162VvaiDDBnHkd
	j84ikoyOlTGk1dWwWv4QWak2H5egJqwTIg5+buqdyIaalbMJ0qzpQALpsaz6m9+OqeoPRDkKIxUe1
	4fS09n2ymoehwxacROdP2v42Tss52zW+r7AFbT+P8UCU8gn4ddsCIEp+JOs6/q2uF40zKCxKmrG6n
	0p+Dvzsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oE588-002cF6-6T; Wed, 20 Jul 2022 08:32:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oE581-002c63-MX
	for barebox@lists.infradead.org; Wed, 20 Jul 2022 08:32:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <jzi@pengutronix.de>)
	id 1oE57y-0005Ew-9B; Wed, 20 Jul 2022 10:32:18 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <jzi@pengutronix.de>)
	id 1oE57x-0024xo-JC; Wed, 20 Jul 2022 10:32:17 +0200
Received: from jzi by dude03.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <jzi@pengutronix.de>)
	id 1oE57w-005E7h-SJ; Wed, 20 Jul 2022 10:32:16 +0200
From: Johannes Zink <j.zink@pengutronix.de>
To: barebox@lists.infradead.org
Cc: afa@pengutronix.de,
	Johannes Zink <j.zink@pengutronix.de>
Date: Wed, 20 Jul 2022 10:32:15 +0200
Message-Id: <20220720083215.1245844-1-j.zink@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220720055042.3510276-3-a.fatoum@pengutronix.de>
References: <20220720055042.3510276-3-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220720_013221_755547_B51AB895 
X-CRM114-Status: GOOD (  11.81  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! bootsource: allow DT aliases and bootrom numbering to differ
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

bootsource was used when src should have been instead. While at it,
rename bs to src for alignment with other functions.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
---
 common/bootsource.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/common/bootsource.c b/common/bootsource.c
index d74c5e5cb..70bac945d 100644
--- a/common/bootsource.c
+++ b/common/bootsource.c
@@ -33,9 +33,9 @@ static enum bootsource bootsource = BOOTSOURCE_UNKNOWN;
 static int bootsource_instance = BOOTSOURCE_INSTANCE_UNKNOWN;
 const char *bootsource_alias_name = NULL;
 
-const char *bootsource_get_alias_stem(enum bootsource bs)
+const char *bootsource_get_alias_stem(enum bootsource src)
 {
-	switch (bs) {
+	switch (src) {
 		/*
 		 * For I2C and SPI EEPROMs we set the stem to be 'i2c'
 		 * and 'spi' correspondingly. The resulting alias will
@@ -55,7 +55,7 @@ const char *bootsource_get_alias_stem(enum bootsource bs)
 	case BOOTSOURCE_MMC:	/* FALLTHROUGH */
 	case BOOTSOURCE_SPI:	/* FALLTHROUGH */
 	case BOOTSOURCE_CAN:
-		return bootsource_str[bootsource];
+		return bootsource_str[src];
 	default:
 		return NULL;
 	}
@@ -127,7 +127,7 @@ void bootsource_set_raw_instance(int instance)
 		pr_setenv("bootsource_instance", "%d", instance);
 }
 
-int bootsource_of_alias_xlate(enum bootsource bs, int instance)
+int bootsource_of_alias_xlate(enum bootsource src, int instance)
 {
 	char alias[sizeof("barebox,bootsource-harddisk4294967295")];
 	const char *bootsource_stem;
@@ -137,11 +137,11 @@ int bootsource_of_alias_xlate(enum bootsource bs, int instance)
 	if (!IS_ENABLED(CONFIG_OFDEVICE))
 		return BOOTSOURCE_INSTANCE_UNKNOWN;
 
-	if (bs == BOOTSOURCE_UNKNOWN ||
+	if (src == BOOTSOURCE_UNKNOWN ||
 	    instance == BOOTSOURCE_INSTANCE_UNKNOWN)
 		return BOOTSOURCE_INSTANCE_UNKNOWN;
 
-	bootsource_stem = bootsource_get_alias_stem(bs);
+	bootsource_stem = bootsource_get_alias_stem(src);
 	if (!bootsource_stem)
 		return BOOTSOURCE_INSTANCE_UNKNOWN;
 
@@ -159,15 +159,15 @@ int bootsource_of_alias_xlate(enum bootsource bs, int instance)
 	return alias_id;
 }
 
-int bootsource_set(enum bootsource bs, int instance)
+int bootsource_set(enum bootsource src, int instance)
 {
 	int alias_id;
 
-	alias_id = bootsource_of_alias_xlate(bs, instance);
+	alias_id = bootsource_of_alias_xlate(src, instance);
 	if (alias_id == BOOTSOURCE_INSTANCE_UNKNOWN)
 		alias_id = instance;
 
-	bootsource_set_raw(bs, alias_id);
+	bootsource_set_raw(src, alias_id);
 
 	return alias_id;
 }
-- 
2.30.2



