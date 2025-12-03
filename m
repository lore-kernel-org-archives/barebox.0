Delivery-date: Wed, 03 Dec 2025 18:14:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQqQu-007aaE-0j
	for lore@lore.pengutronix.de;
	Wed, 03 Dec 2025 18:14:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQqQt-000141-KG
	for lore@pengutronix.de; Wed, 03 Dec 2025 18:14:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=byk51a1SrZE4yJxcUWEGpT3y0cbxtgtnadIozrjRIZk=; b=TDcn+ss8yuUY6/Sfo1mQHzw7jY
	nREKsmCA/Zia2dh2XfOR1PFP+gHc4u7YcjauM8Mw8KC3jL9/u7BMtU64j91mAdLAmi4VMOpwATJhO
	a+GSTc9ijQTHmn6eAh1HcF/qUNNi1fU2Jl8NzQs59hjTQQIGZ5ZIrUVLD8TMa7wFjBTSwUEC0I8cT
	b8FLSw2gZkpws9QVhwCqFiFq6y0V5FVRzy4yO7VO89Cinacgz1Aa/7UevwQZc4pnyjZ6KeXoyk9Ls
	qmKuEbLjzrYs2Mcv9oVaJqXvcUS1uwN30xBGJzs9k3SLLU4xqpigzoQZa85zyLq1zqVoxRAWoAyBG
	VoqXltjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQqQP-00000006qba-09Q4;
	Wed, 03 Dec 2025 17:13:57 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQqQL-00000006qYp-3uky
	for barebox@lists.infradead.org;
	Wed, 03 Dec 2025 17:13:55 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-4775e891b5eso30748275e9.2
        for <barebox@lists.infradead.org>; Wed, 03 Dec 2025 09:13:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764782032; x=1765386832; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=byk51a1SrZE4yJxcUWEGpT3y0cbxtgtnadIozrjRIZk=;
        b=gpjH9PnEacznzUYMM1c9waxczUrKbvODtW5ryqymmS4u3s5Af6EXqcv10hFyGq9lqP
         Jlg8Gnc7FkmMmQoprP91ZpImrrDK1HZtLXI+3GVW0wXddxuEvdBL9qqjp9Guwg6hrsTd
         bUyhnEftZOjdOvlWKuyyVsh1Ku5/KSs0cqYueWYC9fiAkBtOqLfGzhjCxvgKsxIc59cI
         GKIL8dOvNRZjcV/rzRR1o1X3RJPb0plob+vtpDq3e8EIo9ON/Oqods4Tli7sfq1ankph
         McISDyaX13G4SSCErcdcAZJbPbH9IC/tLBUeJ9T9tkXf81WrmP+RNCQLlwcwyIAaRyAQ
         HntA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764782032; x=1765386832;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=byk51a1SrZE4yJxcUWEGpT3y0cbxtgtnadIozrjRIZk=;
        b=tzWlADjLXkKX+t3YjkX7sQn8hotysKxaKvnNYEfdvSCpMyUNur2FMt6Kyi9a/j3xyT
         E6rCDaCzRpUdLvOIjjOZ6VhYRM2w95L14fi5FaTHwmcQCJsb6sodrFHWTDMC73b/chIU
         LGXBnqJ74Z6a9dhUApK2mDX4yMFX3kdP7A8kDzixJPNBs5yX+Ax5HMWTabLI6pVgansM
         yCX45dbF1DNZxkbYD/NZseOUl/Klp2LhlutUYXUjoopAr6iqXFVF6y5g1qIuyguKgL/Y
         arGOJdDQV0zph7ssRmJ1019JxrBJ7Et+ndrtI9MmRDyq/fcTQxDADqgKlYEHaaPdli6F
         iN1A==
X-Forwarded-Encrypted: i=1; AJvYcCUMLHr+nObrQTFVysyBezz/7i9pcrpd5djw2IqwlnOaBv0ZZ9KecbX3ktDftfmbU8LVZiFSjqyR@lists.infradead.org
X-Gm-Message-State: AOJu0Yye1Z/ehKxXl1CFLMlpW9SZquud2iukKcMzB5AdvPF1MtK2z2ZE
	KuiW4GmHg9KFmHu95SBiLwlKsJOmSl7dFl+BVHBba0WlZY34+UVwvBgM
X-Gm-Gg: ASbGncvTfeEWdF1qRW1Epq81i2y3FtGF4QamhGkWi26w3KZGaUp6RYSccHrpNulZo5O
	4KlS94s7K4mKjUZhwI+B3RwSj9W7dp5DI/mcuZ6INTd11mQ1SCJGaQRyCEvxNx6fDWUPkzV4R28
	lmBJjpP6L1nl48S8MYDMoXe87NTAYoWH8UNgDhR8jateh/BKb/A2uOoLhJycL4qfKXtvHscEXIl
	yduR9wXp9Yh4MCRpFFmLrhXcsh1janXmjeulFVSYVU0FJZ7z0gvoOIlZ3bzkWfaBGIww+9cYHPk
	iI9IkTcB2cphnWJ8MqP9HTUsNvROgSL/moIF4+UmoFaPOaMcaMYk4Mre+okddcf777hgPAljaJF
	504vhkY1kjf8BrDBj4yLKjI4oEiAqNfWnk9QeWUWJuhDDB+svVM33xwlKJmviIWJLM0APa82Ipq
	NHKC5Ko1ai8+grfSKtCg0NSl2VJbQkyv5yX8JFEtcvFzPaC/z9qXoKZy3iaYKGvUvikdlpjiPUA
	EhDgTI8j7VwpEYwsUA1AghzRMG2rWCaelW9g6EtjodWSlcZ4xQDzB4POkUWDlorBugHv+4ufYyX
	UXb/WICG407cXWldPNDxmxr0cj9SkVfFlHi6L7BaBxfXSMkYavbz
X-Google-Smtp-Source: AGHT+IG7QUQMYSX/+CwOeD1XofP+/EmyiDEoJawnlnSxyzaaaTRlafL9GfXMji6049q3mUA+cucxaA==
X-Received: by 2002:a05:6000:310f:b0:429:bce4:20bf with SMTP id ffacd0b85a97d-42f7320be8fmr3066230f8f.55.1764782032012;
        Wed, 03 Dec 2025 09:13:52 -0800 (PST)
Received: from [127.0.1.1] (2a02-8388-08be-f800-b582-e1f7-764e-a16b.cable.dynamic.v6.surfer.at. [2a02:8388:8be:f800:b582:e1f7:764e:a16b])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42e1c5c3c8csm49112578f8f.2.2025.12.03.09.13.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 09:13:51 -0800 (PST)
From: Sohaib Mohamed <sohaib.amhmd@gmail.com>
Date: Wed, 03 Dec 2025 18:13:16 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251203-avenger96-v2-1-95f0cfa50aaa@gmail.com>
References: <20251203-avenger96-v2-0-95f0cfa50aaa@gmail.com>
In-Reply-To: <20251203-avenger96-v2-0-95f0cfa50aaa@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Sohaib Mohamed <sohaib.amhmd@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764782030; l=2386;
 i=sohaib.amhmd@gmail.com; s=20251127; h=from:subject:message-id;
 bh=awvl+DVPVDx6AkDVtqG1dRUsApOaG5n5HHPwFOlmKic=;
 b=jhlwqTsTTmGCoACpqMpjbPAv6C5SYEiZsum4rbe2FXAX2f0M1k7ZWlOfVEy/hq6UScoSw/w3Q
 Yf04Dfdvsp3AwzySdpYpCFJuJB5PXobnLzO+FOCs0Bnl++mtQ/Mj3LN
X-Developer-Key: i=sohaib.amhmd@gmail.com; a=ed25519;
 pk=Q1nrPhN99EawVQo4UT9CZVAG4nQ2Zq/e3sfCABjccgk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251203_091354_005540_857B5CCF 
X-CRM114-Status: GOOD (  10.38  )
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
X-Spam-Status: No, score=0.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_NONE,SUBJECT_IN_BLACKLIST,SUBJECT_IN_BLOCKLIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/3] common: bbu: refactor flash operations into
 separate function
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



