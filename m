Delivery-date: Fri, 28 Nov 2025 01:52:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOmio-005bmz-06
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 01:52:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOmim-0007mn-Gs
	for lore@pengutronix.de; Fri, 28 Nov 2025 01:52:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=byk51a1SrZE4yJxcUWEGpT3y0cbxtgtnadIozrjRIZk=; b=daKJE8YrKB5hFGP87qDn6V3Mby
	hJP8F9b61r0YAUavduIaEB/V+/x2F4bd5J1O4lAbYu4pvreiLABoJJ12AHgsS8IqavbvQ2co778HT
	aDJFp2uGpGRghKg6JpCI5kX3VS3Y8B6Y1riNjBeU9zEbcVlSXml0CLOTBU4ZYpMZZ6pb0tBWLTrb3
	IoznkuIel2AH20VnEbCJ+s0pSOj/fveLiijPt69NQwwXGGXPYQ575v4YeqHv2YCwAAWBUCNi5UOan
	padgKPdj74x52ekOaCtVVUAsBJQUAo14ZlxS1ZBVaVWt/F433j/w4IZEppFeS8Tpx/eIMNQlMYg2o
	+1AkUNYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOmiB-0000000HMW7-0jYB;
	Fri, 28 Nov 2025 00:51:47 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOmi8-0000000HMUg-1gTX
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 00:51:45 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-4775895d69cso5632335e9.0
        for <barebox@lists.infradead.org>; Thu, 27 Nov 2025 16:51:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764291103; x=1764895903; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=byk51a1SrZE4yJxcUWEGpT3y0cbxtgtnadIozrjRIZk=;
        b=QMROsRAP8HPK9LvL7PDPyjEqieD09Yqu0509vs+xlFYwhfQ4cAXbSSIBtXhGFTp71c
         Tg6E0YafelEyKOUaCGiPe5LZnczuUiah+Mr8iu8xpkzmlmxx4qTeZxnBFb1lV0C2tEEV
         dg8KTKdd+p0up417F8ubQjnQ+fXTpjmHieXYe3GY7R/vFIpodCVLw0nU5kwYTsKKsn+7
         2vMNG4wy6AfWhMzdeVRZhCsye137PJGiCdVjRP9UiUF+fqa2vZPy/DzROBjNGSiY3KRe
         TzUszrYvo6bFn7d0y2/2rtum7KQHdes0jN92hUIWGslS4B6OVVcTlJzBJ6wdwa3N9Zbn
         daUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764291103; x=1764895903;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=byk51a1SrZE4yJxcUWEGpT3y0cbxtgtnadIozrjRIZk=;
        b=IGCCD5UyQWJOejAutZu6vGqo18QLuSTOF1EqGzc4nEY7eR+xcfr+PsMOkBB9nbMNmS
         6c95ccM8VfGCO4AQ6R0AEnY5d6n9ZN23ytEB4KEOVycikJPPkz0Ip/66RHwlttT07nPo
         bNSujXC89CZJWejUt64ZN/7TpSBcL+LUvc06FeOG2xSR+wuCD8gCnGabRR+mhAKE4/IE
         sEarrU61Q+W0xvX8YIU5V0wFgTvFQoUn8l44mik2huy5ZueXfSE0Dd9ik/B0QQCDjk1C
         piezBsVNCqWjy3s87M8o91Z+05cmrR3Yg+DAANENTYU8E8+8y2xRJHXOqtopemu8TCMw
         vXHw==
X-Forwarded-Encrypted: i=1; AJvYcCUdMDsoH2LNMzw51i/YMXDWXcrnJ43KlWF7fEL9t8LEAF18eVWL0LQ2kt+XZ2n85CMtiq+KNWVV@lists.infradead.org
X-Gm-Message-State: AOJu0Yw3xEdEvMA3vETp5gLB08TDSokDptaVAvkjaa7VUvxaLTlOedxv
	hqhg8JnkzoZDxNUoFJVLohgqMAjWjW9aHUQ/7IZdleGuptYBz+1vOYgIcrWRKQ==
X-Gm-Gg: ASbGncukG6C5JKVx/q1eV69VbH/yghLwYrMNtCiA9/MUcyC4iFgvcotsnFExZrPyf/V
	WDcUmSU2elVZ3iYIcugq6Ulk+MwGEbtAQKDOtKwFJp9rXD7SdGqtZcF1Z3tR4+5GD0ECWxDRX7D
	wkKyPNv93DvU4ShdTALs4oDpc6hb6Fk/MWLScuXhVatXDtGJVM2BV4d2eJAbw6vbrGusxyeEbfq
	YphXoeNZ1diatW5J4G4r277dYQORQ2DifsrlNdCtd93n1ZBY8uAN8ujviX1byhed47RM/IbWCpR
	geIv0ruWxfDxUndepXkeH93q6pei1YAjmqCwHv9BjCKmRttZ7IOZ8PzxBV/Edwp7M56U99jQssd
	jjZXd8Vm4Ni8cAiSWljz+/Qh7I4YYsZdyZqrqbxsdZPvF0aX6BF8ijq3qlkmW669SIlXBuItxFi
	8rYuM8kpXp20hfEXV4sNdIx0CneMMpEOvuBqrjFgifuKaG9jOs9AlGLL5Mt8fXzbBTH7iIRfzve
	WFmy8v/kShdjNdYiOq1J71XGNsnvpXJcPororQGCrMNTKJWD6Y3FOB392P7tJDiuUrlupPtYjp/
	drmnVfi35CjyhwCNGVfZKPJwMXu7nslYFlUZDgC4sQ==
X-Google-Smtp-Source: AGHT+IFPK3M/TJeJMdx3YpczrmVTlPlSEygNirsJA8k7oEfBEF0izxO/r2f7cRjij9FQ/EwjWD7VXg==
X-Received: by 2002:a05:600c:6287:b0:477:7925:f7fb with SMTP id 5b1f17b1804b1-47904ad0724mr104960385e9.10.1764291102576;
        Thu, 27 Nov 2025 16:51:42 -0800 (PST)
Received: from [127.0.1.1] (2a02-8388-08be-f800-7d9f-531a-c313-37e5.cable.dynamic.v6.surfer.at. [2a02:8388:8be:f800:7d9f:531a:c313:37e5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4790b0e21e8sm123791475e9.15.2025.11.27.16.51.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Nov 2025 16:51:41 -0800 (PST)
From: Sohaib Mohamed <sohaib.amhmd@gmail.com>
Date: Fri, 28 Nov 2025 01:51:17 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251128-avenger96-v1-1-009b13bd8df7@gmail.com>
References: <20251128-avenger96-v1-0-009b13bd8df7@gmail.com>
In-Reply-To: <20251128-avenger96-v1-0-009b13bd8df7@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Sohaib Mohamed <sohaib.amhmd@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764291100; l=2386;
 i=sohaib.amhmd@gmail.com; s=20251127; h=from:subject:message-id;
 bh=awvl+DVPVDx6AkDVtqG1dRUsApOaG5n5HHPwFOlmKic=;
 b=aio9q+UTiUtp9QcCDRW9qDW9pbXQGTE0uf02NnNXl7+IhKc1FqoycQTBQqE8U/uy+/GKz3b7i
 XBb3KOGKhTLACXybdbJdHo7jsh79VzfDIy8RsaDHKrPJjv4b0f5TpNR
X-Developer-Key: i=sohaib.amhmd@gmail.com; a=ed25519;
 pk=Q1nrPhN99EawVQo4UT9CZVAG4nQ2Zq/e3sfCABjccgk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_165144_464174_4881523C 
X-CRM114-Status: GOOD (  10.12  )
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
X-Spam-Status: No, score=0.1 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_NONE,SUBJECT_IN_BLACKLIST,SUBJECT_IN_BLOCKLIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] common: bbu: refactor flash operations into separate
 function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Extract flash logic (protect, erase, write) from bbu_std_file_handler()
into a new flash() function that accepts an offset parameter, so it can
be used from further barebox update handlers as well.

Signed-off-by: Sohaib Mohamed <sohaib.amhmd@gmail.com>
---
 common/bbu.c  | 17 +++++++++++------
 include/bbu.h |  2 ++
 2 files changed, 13 insertions(+), 6 deletions(-)

diff --git a/common/bbu.c b/common/bbu.c
index 03261583fe..39db87e823 100644
--- a/common/bbu.c
+++ b/common/bbu.c
@@ -431,8 +431,7 @@ int bbu_mmcboot_register_handler(const char *name,
 	return ret;
 }
 
-int bbu_std_file_handler(struct bbu_handler *handler,
-			 struct bbu_data *data)
+int bbu_flash(struct bbu_data *data, loff_t offset)
 {
 	int fd, ret;
 	struct stat s;
@@ -458,25 +457,25 @@ int bbu_std_file_handler(struct bbu_handler *handler,
 	if (fd < 0)
 		return fd;
 
-	ret = protect(fd, data->len, 0, 0);
+	ret = protect(fd, data->len, offset, 0);
 	if (ret && (ret != -ENOSYS) && (ret != -ENOTSUPP)) {
 		printf("unprotecting %s failed with %pe\n", data->devicefile,
 				ERR_PTR(ret));
 		goto err_close;
 	}
 
-	ret = erase(fd, data->len, 0, ERASE_TO_WRITE);
+	ret = erase(fd, data->len, offset, ERASE_TO_WRITE);
 	if (ret && ret != -ENOSYS) {
 		printf("erasing %s failed with %pe\n", data->devicefile,
 				ERR_PTR(ret));
 		goto err_close;
 	}
 
-	ret = write_full(fd, data->image, data->len);
+	ret = pwrite_full(fd, data->image, data->len, offset);
 	if (ret < 0)
 		goto err_close;
 
-	protect(fd, data->len, 0, 1);
+	protect(fd, data->len, offset, 1);
 
 	ret = 0;
 
@@ -486,6 +485,12 @@ int bbu_std_file_handler(struct bbu_handler *handler,
 	return ret;
 }
 
+int bbu_std_file_handler(struct bbu_handler *handler,
+			 struct bbu_data *data)
+{
+	return bbu_flash(data, 0);
+}
+
 static int bbu_std_file_handler_checked(struct bbu_handler *handler,
 					struct bbu_data *data)
 {
diff --git a/include/bbu.h b/include/bbu.h
index 94006563c9..f5b74b32ac 100644
--- a/include/bbu.h
+++ b/include/bbu.h
@@ -56,6 +56,8 @@ int bbu_mmcboot_handler(struct bbu_handler *, struct bbu_data *,
 int bbu_std_file_handler(struct bbu_handler *handler,
 			 struct bbu_data *data);
 
+int bbu_flash(struct bbu_data *data, loff_t offset);
+
 #ifdef CONFIG_BAREBOX_UPDATE
 
 bool bbu_handlers_available(void);

-- 
2.43.0



