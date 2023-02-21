Delivery-date: Tue, 21 Feb 2023 08:09:05 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUMlt-00DbOB-Jz
	for lore@lore.pengutronix.de; Tue, 21 Feb 2023 08:09:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUMls-0007aA-4d
	for lore@pengutronix.de; Tue, 21 Feb 2023 08:09:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Y6sQnjiTwxtJJwwthZUvU/ttdX/vYO2fn0xfya3TYQ0=; b=qLulLsB+EOawLXlBwPoZiUed4F
	ZylhsxAn3EelW4ssf7WtJEiZlg85BpFFsEh4B7x5lDQiKCOsbzeQJA+PfHtbiuppXjENQxK0KwDtU
	epw712ikUq7gai399DkhY+ZG3VCDzaFfmStYzdStyspQhnuPc8YuQ38EQPkGEymyZpKWFfQjqid9z
	sA0/25q4+JvBGgMWiEY8u6/jzjWwpBy2TwBczQNuj7bADgZEJGLJzvszLVFdDdviYeknFYF8W95hK
	nytjO8aUVtnMY5tZkTZmQK4GQqCn+L13z9emiqGHQKlOxmNNjWqhp6X6w6RiseiHVYvvFWOepVaN6
	alPSE3zA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUMkj-006pJl-3c; Tue, 21 Feb 2023 07:07:53 +0000
Received: from relay8-d.mail.gandi.net ([2001:4b98:dc4:8::228])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUMkc-006pHO-GL
	for barebox@lists.infradead.org; Tue, 21 Feb 2023 07:07:48 +0000
Received: (Authenticated sender: ahmad@a3f.at)
	by mail.gandi.net (Postfix) with ESMTPSA id B45401BF204;
	Tue, 21 Feb 2023 07:07:40 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Tue, 21 Feb 2023 08:07:35 +0100
Message-Id: <20230221070735.1130600-2-ahmad@a3f.at>
X-Mailer: git-send-email 2.38.3
In-Reply-To: <20230221070735.1130600-1-ahmad@a3f.at>
References: <20230221070735.1130600-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230220_230746_859997_AF02F101 
X-CRM114-Status: GOOD (  11.67  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 2/2] bootsource: use /chosen instead of /aliases/barebox,bootsource-
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Aliases were a bad choice for this as barebox could end up calling MMC
devices /dev/barebox,bootsource-mmc0, which was not intended.

Move over to using chosen instead.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 .../devicetree/bindings/barebox/aliases.rst     | 17 +++++++++++------
 arch/arm/dts/rk356x.dtsi                        |  2 +-
 common/bootsource.c                             |  6 +++---
 include/bootsource.h                            |  2 +-
 4 files changed, 16 insertions(+), 11 deletions(-)

diff --git a/Documentation/devicetree/bindings/barebox/aliases.rst b/Documentation/devicetree/bindings/barebox/aliases.rst
index e6face2c3314..8d226cfab6eb 100644
--- a/Documentation/devicetree/bindings/barebox/aliases.rst
+++ b/Documentation/devicetree/bindings/barebox/aliases.rst
@@ -20,16 +20,21 @@ probing the node at ``&iwdg`` will be named ``wdog0``.
 By default, barebox will assume the aliases in the DT to align with
 the bootsource communicated by the firmware. If this is not the case,
 a device tree override is possible via an
-``/aliases/barebox,bootsource-${bootsource}${bootsource_instance}``
+``/chosen/barebox,bootsource-${bootsource}${bootsource_instance}``
 property:
 
 .. code-block:: none
 
-  &{/aliases} {
-	mmc0 = &sdmmc0;
-	mmc1 = &sdhci;
-	barebox,bootsource-mmc0 = &sdhci;
-	barebox,bootsource-mmc1 = &sdmmc0;
+   / {
+   	aliases {
+		mmc0 = &sdmmc0;
+		mmc1 = &sdhci;
+	};
+
+   	chosen {
+		barebox,bootsource-mmc0 = &sdhci;
+		barebox,bootsource-mmc1 = &sdmmc0;
+	};
   };
 
 This will ensure that when booting from MMC, ``/dev/mmc${bootsource_instance}``
diff --git a/arch/arm/dts/rk356x.dtsi b/arch/arm/dts/rk356x.dtsi
index 254450d78fa8..6a9cd14d2d5a 100644
--- a/arch/arm/dts/rk356x.dtsi
+++ b/arch/arm/dts/rk356x.dtsi
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 
 / {
-	aliases {
+	chosen {
 		barebox,bootsource-mmc0 = &sdhci;
 		barebox,bootsource-mmc1 = &sdmmc0;
 		barebox,bootsource-mmc2 = &sdmmc1;
diff --git a/common/bootsource.c b/common/bootsource.c
index 66bddf2dacf4..da528a5b9b19 100644
--- a/common/bootsource.c
+++ b/common/bootsource.c
@@ -137,7 +137,7 @@ void bootsource_set_raw_instance(int instance)
 
 int bootsource_of_alias_xlate(enum bootsource src, int instance)
 {
-	char alias[sizeof("barebox,bootsource-harddisk4294967295")];
+	char chosen[sizeof("barebox,bootsource-harddisk4294967295")];
 	const char *bootsource_stem;
 	struct device_node *np;
 	int alias_id;
@@ -153,10 +153,10 @@ int bootsource_of_alias_xlate(enum bootsource src, int instance)
 	if (!bootsource_stem)
 		return BOOTSOURCE_INSTANCE_UNKNOWN;
 
-	scnprintf(alias, sizeof(alias), "barebox,bootsource-%s%u",
+	scnprintf(chosen, sizeof(chosen), "barebox,bootsource-%s%u",
 		  bootsource_stem, instance);
 
-	np = of_find_node_by_alias(NULL, alias);
+	np = of_find_node_by_chosen(chosen, NULL);
 	if (!np)
 		return BOOTSOURCE_INSTANCE_UNKNOWN;
 
diff --git a/include/bootsource.h b/include/bootsource.h
index 381776a85a4c..05935b64a763 100644
--- a/include/bootsource.h
+++ b/include/bootsource.h
@@ -46,7 +46,7 @@ int bootsource_of_alias_xlate(enum bootsource bs, int instance);
  * bootsource_set() will instead consult
  * /aliases/barebox,bootsource-mmc1 which may point at a different
  * device than mmc1. In absence of appropriate barebox,bootsource-*
- * alias, instance is set without translation.
+ * chosen property, instance is set without translation.
  */
 int bootsource_set(enum bootsource bs, int instance);
 
-- 
2.38.3



