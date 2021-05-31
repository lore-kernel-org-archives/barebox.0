Delivery-date: Mon, 31 May 2021 16:56:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lnjKt-0005DC-Nw
	for lore@lore.pengutronix.de; Mon, 31 May 2021 16:56:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lnjKs-0000fw-Pw
	for lore@pengutronix.de; Mon, 31 May 2021 16:56:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=meGMf2LCFyl4s88dMC4TZrXpi+mjHBz3Fn+Ivlyspj0=; b=gc8W5xpys2Y8CJ
	B0UGj/S2UcoG+iQ4cxG69Il8hDvbg9p7fw53AlZcc4TvXe5n++X5mQcUtR7ZRvow3o9szaJtV5dVI
	bRNE4raiUXUv+lMI5qSnFAqZ1bRGCpx3iVPSzOVlhEPHninPlXJZxn1qSE/4J2IMh5KcjsYTe4MHG
	qYGORxpdDmMExF2+os2qE8M9Dk+NqD2jp1qp+VrfLdaGubJYTLpd/FLn61Kb6Oa7xfStG9vVIjvxh
	uBkyI3nazm/Pr9P7KYTRp5x5GIkbSqF7L7s8A4Cc3jnDidX+EQMvdkzaRBABYFKjjoqbWlJ2O274m
	8xEP1MqDM9PR3OHX3oUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lnjJI-00Ce8s-Ep; Mon, 31 May 2021 14:54:32 +0000
Received: from mail-pf1-x42c.google.com ([2607:f8b0:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lnjJD-00Ce8S-0F
 for barebox@lists.infradead.org; Mon, 31 May 2021 14:54:29 +0000
Received: by mail-pf1-x42c.google.com with SMTP id 22so9170541pfv.11
 for <barebox@lists.infradead.org>; Mon, 31 May 2021 07:54:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pHKZltXRMLAWpd7oRdhav+PYHvRz9PjW4Low3hRyIJw=;
 b=u7JlYtBM3deV2wv8JTLjsPqHyI4JS/2qodX+v2Hcf/3Rv9gYN0vap8ZqN4+0tnUwtI
 3GwUv0cAqaeFMq6DzvejZ08ZMYzAldKhtt26RfFuHDLskpa7FNnsW5FJmi1a9UI8qytW
 ejb8nkcYdOff0haPdVejLqfJ+201gVqXflZOwcxBmdUOFC5IEy6WCU6OvjDJpo0fIKQl
 9/9/60VR4zQVe8tooovSpf4w2GM3K9ACuKQ0KOb9i+TwmOaeNRN9GE14sA3POdfK6LFi
 V/FUuFcV07MesxOvraqS/1YBu/MZ/MCZa4kIvYw1qBwAeBVxs0j8AYcLcAhinM8azSUC
 RcRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pHKZltXRMLAWpd7oRdhav+PYHvRz9PjW4Low3hRyIJw=;
 b=CIXqk17OC66AHbug0oCrNUE1Thsi33tvc6dPxvfd+FaoIciPXnv5caYXyfb01X2UiT
 pLI56J2AnXA4alNzQl6srCC7AQdtRaGBF6YAca3OFjzmGStPBrR3SP5T1k3TKKOM75uZ
 9zIHfZQpJYCWQvEcNjhuoz0XLE9KfSW99XPUwRZgCpCuQnMcsIcYHlJOccARjUcdnALI
 iNPkEZp8Arft+rXG6DRMPXSCaroTHKVHkAGruSHGbrJHBE1yTAni1c2QtVyVxced42mw
 NAG/2nKerCkh4cgrWtq8YFNI9cNs4AYGtAJM52+FHQy+9j2TyTLKWjvawxq1cyAkSI7C
 pt9Q==
X-Gm-Message-State: AOAM532a1EMYsvoN0PRReZaQ3s/tcfLh9uQHIphrm+4RU2fsh3SXC08V
 jvY27Afq2UTX2iC6dA57dVgSV6NMDkGOfA==
X-Google-Smtp-Source: ABdhPJzIYxP6CGTDafj3lCjQj9lN4fhOWQOz4Uv6sTHakQBRNfdzWWcYIW+MVldSbcCpnldDyuZPUw==
X-Received: by 2002:a63:1149:: with SMTP id 9mr23310814pgr.156.1622472863769; 
 Mon, 31 May 2021 07:54:23 -0700 (PDT)
Received: from zen.local (97-113-152-155.tukw.qwest.net. [97.113.152.155])
 by smtp.gmail.com with ESMTPSA id o17sm12012371pgj.25.2021.05.31.07.54.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 31 May 2021 07:54:23 -0700 (PDT)
From: Trent Piepho <tpiepho@gmail.com>
To: barebox@lists.infradead.org
Cc: Trent Piepho <tpiepho@gmail.com>
Date: Mon, 31 May 2021 07:54:14 -0700
Message-Id: <20210531145414.1210207-1-tpiepho@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_075427_070329_FD9B6271 
X-CRM114-Status: GOOD (  14.13  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] drivers: base: Check all compatible strings for modalias match
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

When attempting a modalias match in device_match_of_modalias(), only the
first string in the compatible property, which is a list of strings, was
used.

A modalias (which is a bit of a misnomer in Barebox) match is used when
a driver does not have an of_compatible match table, e.g. the at24
driver.  The compatible string after the comma is matched against the
driver's id table.

Extend modalias match to try all strings in from the OF node's
compatible property.  This will cause a compatible like
"rohm,br24g04-3", "atmel,24c04" to match against the "24c04" ID in the
at24 driver.  Or "isil,isl12057", "dallas,ds1337" will match the ds1307
driver's table, which doesn't know about isl12057 in Barebox.

Signed-off-by: Trent Piepho <tpiepho@gmail.com>
---
 drivers/base/bus.c | 27 +++++++++------------------
 1 file changed, 9 insertions(+), 18 deletions(-)

diff --git a/drivers/base/bus.c b/drivers/base/bus.c
index 1038d20a1..aac5b69f3 100644
--- a/drivers/base/bus.c
+++ b/drivers/base/bus.c
@@ -75,7 +75,7 @@ int device_match_of_modalias(struct device_d *dev, struct driver_d *drv)
 {
 	const struct platform_device_id *id = drv->id_table;
 	const char *of_modalias = NULL, *p;
-	int cplen;
+	const struct property *prop;
 	const char *compat;
 
 	if (!device_match(dev, drv))
@@ -84,25 +84,16 @@ int device_match_of_modalias(struct device_d *dev, struct driver_d *drv)
 	if (!id || !IS_ENABLED(CONFIG_OFDEVICE) || !dev->device_node)
 		return -1;
 
-	compat = of_get_property(dev->device_node, "compatible", &cplen);
-	if (!compat)
-		return -1;
-
-	p = strchr(compat, ',');
-	of_modalias = p ? p + 1 : compat;
-
-	while (id->name) {
-		if (!strcmp(id->name, dev->name)) {
-			dev->id_entry = id;
-			return 0;
-		}
+	of_property_for_each_string(dev->device_node, "compatible", prop, compat) {
+		p = strchr(compat, ',');
+		of_modalias = p ? p + 1 : compat;
 
-		if (of_modalias && !strcmp(id->name, of_modalias)) {
-			dev->id_entry = id;
-			return 0;
+		for (id = drv->id_table; id->name; id++) {
+			if (!strcmp(id->name, dev->name) || !strcmp(id->name, of_modalias)) {
+				dev->id_entry = id;
+				return 0;
+			}
 		}
-
-		id++;
 	}
 
 	return -1;
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

