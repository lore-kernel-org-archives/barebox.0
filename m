Delivery-date: Sat, 29 May 2021 08:27:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lmsRd-0004Oi-0d
	for lore@lore.pengutronix.de; Sat, 29 May 2021 08:27:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lmsRc-0001UV-3u
	for lore@pengutronix.de; Sat, 29 May 2021 08:27:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=M0VbpnBZa25E/O1SUdE4AYrh5gU/NT8ZOBGlWdmB/AM=; b=eeGmIJBumUb0oD
	yw2aWeJ0B63m/A2xKgZ7qPE7dgzpjHD27gzXFRP44TWxTDhulcwlDBcZL3vVs+rYsyoEoFEXnVsdK
	pNlu8C1nGelRAVRQHPCa86z2/s2MUXOXJ+uRoZZHumefq4ysTh9yWEfkM8xsOsc4hk8i4VlYK8//q
	SHVG7lQ9GMDdr2HZ7cjtTdIyRZg9dCHnpIsynPimaK0cS0wcz/4EYTZ/rSa8yFyPS0/jKYVDRRfoH
	65Xvr91VAt8YrbfDfTSgvd5CaQhji0DQzybHm76aKud/dGP4qaOdub2yuo/91fva32SzJTP/3AmD4
	n6TnyFkK1cg5pJm4PSUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmsPz-003XVn-4a; Sat, 29 May 2021 06:25:55 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmsPt-003XUf-OJ
 for barebox@lists.infradead.org; Sat, 29 May 2021 06:25:51 +0000
Received: by mail-pj1-x1034.google.com with SMTP id g24so3746912pji.4
 for <barebox@lists.infradead.org>; Fri, 28 May 2021 23:25:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jsOlRT/VClARW6tulqahyTzExDkrvC1je+Sf7W6m0m4=;
 b=g/EHuW29bgCFAfZbToLklWEJywa4b3sPr/m9oIrUCcw8zAOyj2L9CI0CivLKqRguTU
 aoX2TZ1AbFpBigWdcwkgRPc/Oih8BKpaV13el5ZqlOVCH8bUaLFkwGABxTHEeTseG955
 18t05BRMiud7XKGoE9djXZBNuE3vFBhwQ/bVGPaaExQQk271Aa0uFCj2/rtJzEFBL3u/
 fGZHn9+FSS5xzh8rmv2vsIbZumFFB3PbATA5c2O5tEIEoh/H6fI3d9DypP6tiKcBuJrU
 R3HS18OyYe/fQbcP1oHf9LcXGxjbhMl7EiMqYizJzZSYBLm5DXPnwZ81zga6GmMiaJJd
 6qfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jsOlRT/VClARW6tulqahyTzExDkrvC1je+Sf7W6m0m4=;
 b=it4q4sIlkjcqgan5uQs6B048mUC/AsOMQoiUuEtRf6AApT0S+N65I+yy8sxMB+K9o/
 pKP12Py/H/pN6pFOW4hy+OkTj37cooYBwmYwvZiED2dex8foennXJjSkgeKGe2cT9CHZ
 LcCTguEled/13vheHWW3jqKcG/gqFp27cR7Sg76RzmMxLeoHfI5jFHsN9H0b5dYwAdRA
 mm0rDssYX04uO3vNDaCFkcSC+bwVgnfKm9r8vue0dizU30Yp+OIU2R5uyBRl+z4pY15T
 8YEtfUCVw9wmZ3IiB58Yh9bnT8o6ocdin1gQv497yYGolJvrMi0nDpB/RUGzA/K1e1Ds
 e33Q==
X-Gm-Message-State: AOAM532iJ/llXM9ryd5KvIHeaW8oJy4CdMtQWIBW3Ome6ImSsEmrNjhR
 EJOpqrG1M9tcVAcL8Y0ugotCfE9i9opf/g==
X-Google-Smtp-Source: ABdhPJwCfVDkLznQ5WMnx66U59hNV/7YIIOs8Ub3Tcnf1s2C1Dlmz61db4Axw55ZgY7r2+6bNWFOlg==
X-Received: by 2002:a17:90a:d793:: with SMTP id
 z19mr8265205pju.91.1622269547581; 
 Fri, 28 May 2021 23:25:47 -0700 (PDT)
Received: from zen.local (97-113-152-155.tukw.qwest.net. [97.113.152.155])
 by smtp.gmail.com with ESMTPSA id f80sm5603931pfa.160.2021.05.28.23.25.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 May 2021 23:25:47 -0700 (PDT)
From: Trent Piepho <tpiepho@gmail.com>
To: barebox@lists.infradead.org
Cc: Trent Piepho <tpiepho@gmail.com>
Date: Fri, 28 May 2021 23:25:41 -0700
Message-Id: <20210529062541.1123023-1-tpiepho@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210528_232549_834152_57CEAE5C 
X-CRM114-Status: UNSURE (   9.70  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] of: base: constify some property pointers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Make the propery pointers in a few OF functions that read data const.
They don't modify the property.

Signed-off-by: Trent Piepho <tpiepho@gmail.com>
---
 drivers/of/base.c |  4 ++--
 include/of.h      | 10 +++++-----
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 6fe02649e..04814c8f7 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1048,7 +1048,7 @@ int of_property_match_string(struct device_node *np, const char *propname,
 }
 EXPORT_SYMBOL_GPL(of_property_match_string);
 
-const __be32 *of_prop_next_u32(struct property *prop, const __be32 *cur,
+const __be32 *of_prop_next_u32(const struct property *prop, const __be32 *cur,
 			u32 *pu)
 {
 	const void *curv = cur;
@@ -1074,7 +1074,7 @@ out_val:
 }
 EXPORT_SYMBOL_GPL(of_prop_next_u32);
 
-const char *of_prop_next_string(struct property *prop, const char *cur)
+const char *of_prop_next_string(const struct property *prop, const char *cur)
 {
 	const void *curv = cur;
 	const void *value;
diff --git a/include/of.h b/include/of.h
index 645f429bd..4adbb7d54 100644
--- a/include/of.h
+++ b/include/of.h
@@ -95,7 +95,7 @@ static inline void of_write_number(void *__cell, u64 val, int size)
 	}
 }
 
-static inline const void *of_property_get_value(struct property *pp)
+static inline const void *of_property_get_value(const struct property *pp)
 {
 	return pp->value ? pp->value : pp->value_const;
 }
@@ -216,9 +216,9 @@ extern int of_property_read_string_helper(const struct device_node *np,
 					      const char *propname,
 					      const char **out_strs, size_t sz, int index);
 
-extern const __be32 *of_prop_next_u32(struct property *prop,
+extern const __be32 *of_prop_next_u32(const struct property *prop,
 				const __be32 *cur, u32 *pu);
-extern const char *of_prop_next_string(struct property *prop, const char *cur);
+extern const char *of_prop_next_string(const struct property *prop, const char *cur);
 
 extern int of_property_write_bool(struct device_node *np,
 				const char *propname, const bool value);
@@ -520,13 +520,13 @@ static inline int of_property_read_string_helper(const struct device_node *np,
 	return -ENOSYS;
 }
 
-static inline const __be32 *of_prop_next_u32(struct property *prop,
+static inline const __be32 *of_prop_next_u32(const struct property *prop,
 					const __be32 *cur, u32 *pu)
 {
 	return 0;
 }
 
-static inline const char *of_prop_next_string(struct property *prop,
+static inline const char *of_prop_next_string(const struct property *prop,
 					const char *cur)
 {
 	return NULL;
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

