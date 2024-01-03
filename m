Delivery-date: Wed, 03 Jan 2024 18:08:32 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL4jJ-002GR4-0n
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 18:08:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL4jI-0004hW-6n
	for lore@pengutronix.de; Wed, 03 Jan 2024 18:08:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yDjFQW6qIEAr1u/bQG0IBZtdbNBSJVtChEWCcZKSkR0=; b=5FLNSKI2F5p9M4
	x+wYobg0JF832clNWvZwSHuoqQN6PNdqYGHXey84zz894ekszMaRmczVy+JoPbeGcpqoxO251veiJ
	ofpUohXCnn7DLDVmtUPO7PZB0wzjeRvNW7CQxNi6+Gxk3JL2+JRO13KuW/gn41s8zbgefnH09AQyD
	XxYr3YQeq6vvkZPtG/DUCpOwZIltoNwEioivUP27/ilLV9olZBYmkybdCIKedq4tflwl+ORw1p7OG
	6q4Lb04Irt7cyVqs5/PQAXSKWVXudQlmokH/TwwA8nR95NL0/KcwXxG77SJem/RJ2EPuRKMZHwhiK
	ftsO7V+xJKEOLVjjROZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL4i3-00BUVY-1k;
	Wed, 03 Jan 2024 17:07:15 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL4i0-00BUSq-0H
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 17:07:13 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-50e7c6e3c63so7678529e87.3
        for <barebox@lists.infradead.org>; Wed, 03 Jan 2024 09:07:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704301628; x=1704906428; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yDjFQW6qIEAr1u/bQG0IBZtdbNBSJVtChEWCcZKSkR0=;
        b=LyNQ7XQTBM44rFYUQpMPyE8ahK65WjyZgmBw5oKje7MZHwJjOK1zlz3H6TSbkZe/Eg
         42EMsbBLsbWU+uZ41DKJJ9TTScETR7SWT4rAVvQnBGXdA9XV523u3Bqtjn9IwbAv3BxZ
         DVKgcinxgEI4Oikr7VesTZb2ePl7926m9BjniRwMDYPHyFO7hAAaj//zuOZEy0l0NFTj
         cTsHeYgvxPNd3Xz8MfYe8PGpdLtEIFhmec35hcYMTRCvW4ZANembPVJP6xermHBD7sw/
         8GaA+AhCNNUata2L4xvbCPZnk3BQzwJCQZl7NMXDe9tnatmmep8X1V3unuPeT+Equf3w
         VoVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704301628; x=1704906428;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yDjFQW6qIEAr1u/bQG0IBZtdbNBSJVtChEWCcZKSkR0=;
        b=V4DoMpgMka4wvj3ezvsH3iAN0IG0akwX0cy9PpV5HODmtbrbyTIJz07lNz//x8226Z
         xXYhcxDl5i/q6JguznNwxuxPTnpKL/jB05sns7vg1AMK3swnGecumAjdY80lMeHRT7ui
         m+di97UXVP5U+nLViL4IEThAvZJFl5zSn6JWLjtbvBY4Rh9nA5duvJYRngPf1PZBSL00
         sbn27jGgqdssWEQccuto2VgfEqc7gHlev41zmpiRah40SuCa71oDvMgp0QcsetJsdujy
         mzBouZ2G8zvbrJqEYtcJ/NvQ6oy8WlwbumZcclpbESZLrMhlIyCcLl874s55JT/XLWrI
         zYNQ==
X-Gm-Message-State: AOJu0YxNbeXPJjCnPVKobH3CrKf0qLDAy/aXwWE9oefub9HB9ociMfKe
	YashkKjli5nYR3suChEdqbamasOvCQc=
X-Google-Smtp-Source: AGHT+IGEUQbELrQZBSJLypj2kpN2EYNc/9odpAdROZyufOUF0EwkhJ+ymfMZE2KSYoRJ34W7XMz3rQ==
X-Received: by 2002:a05:6512:3694:b0:50e:7a9e:5c76 with SMTP id d20-20020a056512369400b0050e7a9e5c76mr3001248lfs.175.1704301627681;
        Wed, 03 Jan 2024 09:07:07 -0800 (PST)
Received: from cinco.. (109-252-3-142.nat.spd-mgts.ru. [109.252.3.142])
        by smtp.gmail.com with ESMTPSA id d25-20020a0565123d1900b0050e743b0b2csm3313364lfv.34.2024.01.03.09.07.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jan 2024 09:07:07 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Wed,  3 Jan 2024 20:07:24 +0300
Message-Id: <20240103170725.846378-2-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20240103170725.846378-1-antonynpavlov@gmail.com>
References: <20240103170725.846378-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_090712_138774_97F15162 
X-CRM114-Status: UNSURE (   9.82  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] uImage: use IS_ENABLED(CONFIG_TIMESTAMP)
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 common/uimage.c | 22 ++++++++++++----------
 fs/uimagefs.c   | 24 ++++++++++--------------
 2 files changed, 22 insertions(+), 24 deletions(-)

diff --git a/common/uimage.c b/common/uimage.c
index 72c37b7d15d..3c9a79d9109 100644
--- a/common/uimage.c
+++ b/common/uimage.c
@@ -29,17 +29,19 @@ static inline int uimage_is_multi_image(struct uimage_handle *handle)
 void uimage_print_contents(struct uimage_handle *handle)
 {
 	struct image_header *hdr = &handle->header;
-#if defined(CONFIG_TIMESTAMP)
-	struct rtc_time tm;
-#endif
+
 	printf("   Image Name:   %.*s\n", IH_NMLEN, hdr->ih_name);
-#if defined(CONFIG_TIMESTAMP)
-	printf("   Created:      ");
-	to_tm(hdr->ih_time, &tm);
-	printf("%4d-%02d-%02d  %2d:%02d:%02d UTC\n",
-			tm.tm_year, tm.tm_mon, tm.tm_mday,
-			tm.tm_hour, tm.tm_min, tm.tm_sec);
-#endif
+
+	if (IS_ENABLED(CONFIG_TIMESTAMP)) {
+		struct rtc_time tm;
+
+		printf("   Created:      ");
+		to_tm(hdr->ih_time, &tm);
+		printf("%4d-%02d-%02d  %2d:%02d:%02d UTC\n",
+				tm.tm_year, tm.tm_mon, tm.tm_mday,
+				tm.tm_hour, tm.tm_min, tm.tm_sec);
+	}
+
 #if defined(CONFIG_BOOTM_SHOW_TYPE)
 	printf("   OS:           %s\n", image_get_os_name(hdr->ih_os));
 	printf("   Architecture: %s\n", image_get_arch_name(hdr->ih_arch));
diff --git a/fs/uimagefs.c b/fs/uimagefs.c
index 7af10ca9864..3099f6a1e62 100644
--- a/fs/uimagefs.c
+++ b/fs/uimagefs.c
@@ -300,28 +300,24 @@ static int uimagefs_add_data_entry(struct uimagefs_handle *priv, size_t offset,
 	return 0;
 }
 
-#if defined(CONFIG_TIMESTAMP)
 static int uimagefs_add_time(struct uimagefs_handle *priv)
 {
 	struct image_header *header = &priv->header;
-	struct rtc_time tm;
-	char *val;
 
-	to_tm(header->ih_time, &tm);
-	val = basprintf("%4d-%02d-%02d  %2d:%02d:%02d UTC",
-			tm.tm_year, tm.tm_mon, tm.tm_mday,
-			tm.tm_hour, tm.tm_min, tm.tm_sec);
+	if (IS_ENABLED(CONFIG_TIMESTAMP)) {
+		struct rtc_time tm;
+		char *val;
 
-	return uimagefs_add_str(priv, UIMAGEFS_TIME, val);
-}
-#else
-static int uimagefs_add_time(struct uimagefs_handle *priv)
-{
-	struct image_header *header = &priv->header;
+		to_tm(header->ih_time, &tm);
+		val = basprintf("%4d-%02d-%02d  %2d:%02d:%02d UTC",
+				tm.tm_year, tm.tm_mon, tm.tm_mday,
+				tm.tm_hour, tm.tm_min, tm.tm_sec);
+
+		return uimagefs_add_str(priv, UIMAGEFS_TIME, val);
+	}
 
 	return uimagefs_add_hex(priv, UIMAGEFS_TIME, header->ih_time);
 }
-#endif
 
 static int uimagefs_add_os(struct uimagefs_handle *priv)
 {
-- 
2.39.0



