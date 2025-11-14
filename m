Delivery-date: Fri, 14 Nov 2025 06:01:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJlw4-000miU-1X
	for lore@lore.pengutronix.de;
	Fri, 14 Nov 2025 06:01:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJlw3-0004Nu-Ru
	for lore@pengutronix.de; Fri, 14 Nov 2025 06:01:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=bCf87BTFlWISLBmjugRqVfa1B77w+JkuH6obiklAtqg=; b=L9wtaQ20DWPpCmlwBZy7jmayxv
	Q4kC3CuhK6fdNFaMPs95zsEDFHLYivHMKY2TJrfQyXGeKY+vs6eRydBeX5waywVzivRXydn/Q4T9b
	/4FNu9O8xhYEWPqZAlmCeDLSVu0f1zgU0BK+LU4iq9pGhuzLJTLRVjnrzXzjk84nlAAEJ8rXZhyvo
	PO4tUojHR4IrdfA2fcnm/UkEGDYWhh1tBtOsDjbGbixRPwoA2v3SRIGtCEnVgOz3oq+YGkbnSc/XB
	WYSfgb+7uyNfhE0djNrhz8FeNOhz7MFXHxc5HVkFbYhYMsFCBtm1oeHeBXexMWqvbTg/FHtGuyBlK
	gmaqcF+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJlvR-0000000BZcT-1a07;
	Fri, 14 Nov 2025 05:00:45 +0000
Received: from mail-qk1-x72d.google.com ([2607:f8b0:4864:20::72d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJlvN-0000000BZbt-15oC
	for barebox@lists.infradead.org;
	Fri, 14 Nov 2025 05:00:42 +0000
Received: by mail-qk1-x72d.google.com with SMTP id af79cd13be357-8b21fa7b91bso152082185a.1
        for <barebox@lists.infradead.org>; Thu, 13 Nov 2025 21:00:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763096440; x=1763701240; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bCf87BTFlWISLBmjugRqVfa1B77w+JkuH6obiklAtqg=;
        b=fnKp6T8cW+hsax5SYB4i3TQGigFriND5gFldUIbxT9FMoTdOM/E7XB/vs/ksgXOjW5
         6aqkTPcP53DBwd9OQPEHRncS01y/5snEuVg88n4fpGC2m18B25EQwXT4QybmtfHteIqO
         1xRUznGrVPnYgzt/bgxzM8MUaW2gzBop871Jsa9dg6UTHm1px1X7iJ8Z+4GC4qOC2jQU
         3GLobg02fKqzr63harJ/jUb0IFVEKy4FeNL7jkxzji6Pvaado9YLRWt3nAaNYH8p0emX
         K7yj5kqMN075n15WAFjf8SgFR8dXYc4WgkHN5LZPkGst7zqDqn6P6P+bDGADMhYyP8RU
         dXEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763096440; x=1763701240;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bCf87BTFlWISLBmjugRqVfa1B77w+JkuH6obiklAtqg=;
        b=as8aPtA6UAnFazWfFgvWkV9xOg6OfhLfxeyA7LgoQ+JMwiAOhTT1zE93orhpR1q0C9
         iAEBpC257wdlnyFHufwuWG8ALbvLHJP/Tbj5D6rRpJuc5tDMDKgboF7M1M5VAjGvY6iH
         z53+lV5lpyrWRQq/dg3cMXqI4/pMJjaRHTkLTTX7Zbfr5xYUS7x9ZUhFc6EwPMVXP8tz
         H05DD6IqTwVlFX5Ob/KY2aD0PBnYIXzmNXtD35364Vx8owJTR9Ihy7dtlgc71L08BXXv
         MTv4CxGmoOEK2A/hSGWbqVt8keJqGL95L6hXCqI90jixgZyoYW9m1FgUVk5h4dIPSG92
         g1ng==
X-Gm-Message-State: AOJu0YxldsQRwq9TyqPNawYn9NScrCtgAcWkCmjagHZnpoRW8W93xxzG
	f2VAwKmp6yUAJiRe5xCMxYuqBhEA/vy2EgMnQugoUIG5rKUPtFg0+F0b
X-Gm-Gg: ASbGnctOVIbx3++L7ipMsJLyL4+RmUjNf2OClN9QRLMoNShE8SqkTpCD9vvEn+psEK+
	/Bx0IX9WsO9yXvIZsyB5fLP2Xa9kvTWXU9AEoMdatXYvPtRDnOMhXHYz0wT0C61UY62pkezsY63
	/LoPnO8SyHMYnAoqSlO0rqTBsxkF2AgcN8PcUzczcnq3ZLJXu3ORdguAi2TmZsX7U+4z0ex7W1V
	23WMXcKmzFxkMW3KLCVx+LVn6zZ152wyJlcZpn7QtwQdNtmrwfuF60lNrDEavEWiB9aYmDY2sqN
	p8xCf7V3dO9D9Awrec0h+wv5g8MNUiqD7zXWgF/9Uupl++rberOOk2xwWB0Ej/AGgMzyXn8DcNH
	hzAVtZhVET69pZ9XrssoIYg3El6sE9XiylYEdz44/BnYfbmbKnO55oijJSOGR+MsRnUiYPYT4uf
	k5PIQ1bXWjoEq16UPtzH9U
X-Google-Smtp-Source: AGHT+IGEHxFtbTyZD5EVRz6NggQ9Tav8cTHSD+NtMDcR2aGMBEZXWXeAMN7pFzFhOw0cAlQt5vue6g==
X-Received: by 2002:a05:620a:2686:b0:892:43af:ba4b with SMTP id af79cd13be357-8b2c315962amr250042685a.29.1763096439481;
        Thu, 13 Nov 2025 21:00:39 -0800 (PST)
Received: from CNCMK0001D007E.ht.home ([2607:fa49:8c41:2600::d61])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8b2af062acasm267252785a.53.2025.11.13.21.00.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 21:00:38 -0800 (PST)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Fri, 14 Nov 2025 00:00:34 -0500
Message-ID: <20251114050034.186683-1-chalianis1@gmail.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_210041_306514_3ACDC8DF 
X-CRM114-Status: GOOD (  11.49  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] blspec: derive root prefix from blspec config path instead of mountpoint
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

Add get_prefix_path() to compute the filesystem prefix of a BLSpec
entry by locating the deepest /loader/entries/ component in the
configuration path. This ensures correct rootpath extraction for
nested loader directories, mixed path layouts, duplicate segments,
and paths without valid loader entries. If no prefix is found,
fall back to get_mounted_path().

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 common/blspec.c | 25 ++++++++++++++++++++++++-
 1 file changed, 24 insertions(+), 1 deletion(-)

diff --git a/common/blspec.c b/common/blspec.c
index 80ebe256ceaf..ad94d4d6be64 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -391,6 +391,29 @@ static bool entry_is_match_machine_id(struct blspec_entry *entry)
 	return ret;
 }
 
+/*
+ * Return the path prefix before the deepest "/loader/entries/" component
+ * in @configname. Falls back to the mounted path if none is found.
+ */
+static char *get_blspec_prefix_path(char *configname)
+{
+	char *p;
+	char *scfg = configname;
+	char *save = NULL;
+
+	while ((p = strstr(scfg, "/loader/entries/")) != NULL) {
+		if (p - configname > 0)
+			save = p;
+
+		scfg = p + 1;
+	}
+
+	if (save && save - configname > 0)
+		return xstrndup(configname, save - configname);
+
+	return get_mounted_path(configname);
+}
+
 static int __blspec_scan_file(struct bootentries *bootentries, const char *root,
 			      const char *configname)
 {
@@ -404,7 +427,7 @@ static int __blspec_scan_file(struct bootentries *bootentries, const char *root,
 	if (IS_ERR(entry))
 		return PTR_ERR(entry);
 
-	root = root ?: get_mounted_path(configname);
+	root = root ?: get_blspec_prefix_path(configname);
 	entry->rootpath = xstrdup_const(root);
 	entry->configpath = xstrdup_const(configname);
 	entry->cdev = get_cdev_by_mountpath(root);
-- 
2.49.0



