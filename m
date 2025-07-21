Delivery-date: Mon, 21 Jul 2025 07:07:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1udikj-0027am-34
	for lore@lore.pengutronix.de;
	Mon, 21 Jul 2025 07:07:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1udikj-0007NL-Ea
	for lore@pengutronix.de; Mon, 21 Jul 2025 07:07:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dc7/nsrBlfPA+IfxJCIn1W4EQ/o2cdoJPlTs6YFF8Gc=; b=fyTFHuA9+XAk43
	eDde9tQL12SIyMnP9xG+anMcFTqvI3rUUc3QsAHMswzGd6mdFJxdWkiF/5ubGn3Ok4Txw3qBfsoad
	cTWwylu1IycLHicDJKx5Ousmx130DOel+jhKSgnPWiIfHUc/nxoWYDSyF88TZ9CNO0rxunbmw7GyI
	GpGxyu7M8k24808AtSI781bzBTEDSwIHB1Wudwba1KOfie6+KtaChk8cIl0Q7l5VLFzjrKjJY1GG0
	RClvKGsbzsHV+wXZu7vawtGRgOeDEDb8Fkv3vCaJC1aA0dC7b7yHglBahj+3LQlBRK7eeGU6gp50o
	q/snfxbg9TQPPIHC6Yyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udik3-0000000GEEx-3xEB;
	Mon, 21 Jul 2025 05:07:11 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udik1-0000000GEDz-2YNn
	for barebox@lists.infradead.org;
	Mon, 21 Jul 2025 05:07:10 +0000
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-6070293103cso6344354a12.0
        for <barebox@lists.infradead.org>; Sun, 20 Jul 2025 22:07:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753074428; x=1753679228; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dc7/nsrBlfPA+IfxJCIn1W4EQ/o2cdoJPlTs6YFF8Gc=;
        b=hjuC2lLW2KdfMyKw0yD9Zw5k9HBrJAIth+P0pazqW5hs4k8rmOgRpWQP7EbPJsmBAI
         LYzUSGb2U5WVyZLHTZPy7WLWM1y7Yxvv23ocB3wjPk8DufUICCSDjvzlu7F13M7nTl65
         khL3Hl92lyuy5KxVRKyliaZOo82eHum3+XMtKx38YXIFQ3l1bjqt718MI/irvPQ0FpdW
         sI4Mld+RGLEXgtSuY5fC0Bb2M5jIDKKr8E52yQVHFLpgX3todNJKrpnN2fvAaGEy0JQ0
         W1pnEXv6kxMDOBYR5wHABbu0D/8c+midZjSV9sCVpDOGN/MT+5s+ffFlCC6lY4UkM/t5
         oMRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753074428; x=1753679228;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dc7/nsrBlfPA+IfxJCIn1W4EQ/o2cdoJPlTs6YFF8Gc=;
        b=AdSFtS+Ie5iQjLHk8lr8PdByYmi6XVupoPAMK5OC0CE7ZLwjxgpWSzhOThlzVQxfpL
         6PtVMw2J8ZHCYOyCy2mlqvxlV7ATj6JH+vWkmQhCk0PWiJtv3te2vFuBBxf/nOp9mDYU
         7b2brc57ERdPRmvYnex9dlHdqBjYo0hzLWlDO5fzIK+OM4+fBGg49uL7vvEd/imu5PJc
         DFQH5tp/Usf6eRhkdyjbJCLoFVmAGX9PZNbBNETCh4l4MsyMsMNkDI+B/qaisakBODYZ
         mXkax2+z6KlqbRJ9AlGRqXKd67K3CU1RkCD0VcTCCV69YAvi4w1WcHhIJoGcSJda2k3A
         d1ag==
X-Gm-Message-State: AOJu0YzsNiZF2r/dMwGnpLCBEykhhnQIycmwlqYWvKp3qwO8MSxdR86J
	lah0gNpFcPxXpGOETqE0/vekLWZ3QtHRNZnZeKsOqi6FIQHhnTwGO7wrY3Oj5w==
X-Gm-Gg: ASbGncur8JOj4AUHt0BU84PPAuQWoxDsxkbndJ8p/qTlloKjW7bQIzHL2zAaghcVFkT
	hyXgtHW+Icpn5QcKiLgiPJICORYyHmWGe+xuOJwtic7CZQn6dWnkFhwG1uaiaZomZXKbIIqOvMd
	DM+kK4yPaxakCKaSq9LBVP5h6A4qrvI57bAhOwCYuGTHo7syFa++/OLhg/fFpGyvvcR3XZX0wE3
	8SnPWIsoxbigUC4MEb8OAHVdqgSfg18xX64B04G96UQ0iM0t2eo1KP6Jgss7lsV/vkdqospswG9
	/dyo4fZWgTxbuducq6FMdgbnO7ZX8H51wEDPyQWDEvmb5DOZ59vTeR0WkpKte1pCXfrIjMVZmpU
	RbkVNvafemSXPRF1kHXZFQq0CVORHPu+cr4m8hfS0KYOVmmsC+W3PbQ==
X-Google-Smtp-Source: AGHT+IHmTTcXGsZj3jE4Ihg2eHBqyOCGEyaENnq+M47TTIcySc4hyZ+71SyA1bh97vjjIn108BoTdQ==
X-Received: by 2002:a05:6402:34c6:b0:612:d8b3:aa08 with SMTP id 4fb4d7f45d1cf-612d8b3af59mr8739419a12.22.1753074427753;
        Sun, 20 Jul 2025 22:07:07 -0700 (PDT)
Received: from cinco.. (109-252-15-179.nat.spd-mgts.ru. [109.252.15.179])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-612c8f5cf4esm4742135a12.32.2025.07.20.22.07.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Jul 2025 22:07:07 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Mon, 21 Jul 2025 08:00:44 +0300
Message-ID: <20250721050045.17310-4-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250721050045.17310-1-antonynpavlov@gmail.com>
References: <20250721050045.17310-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250720_220709_667410_2B0303A5 
X-CRM114-Status: UNSURE (   8.40  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] include/of.h: drop of_parse_dtb() declaration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The of_parse_dtb() function was renamed in the commit
86e787e84565e6c08696450e9d14d066f3f76056
("of: rename of_parse_dtb to of_unflatten_dtb").

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 include/of.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/include/of.h b/include/of.h
index 2258cd501b7..f99f7763251 100644
--- a/include/of.h
+++ b/include/of.h
@@ -116,7 +116,6 @@ void of_print_nodes(struct device_node *node, int indent, unsigned maxpropsize);
 void of_print_properties(struct device_node *node, unsigned maxpropsize);
 int of_diff(struct device_node *a, struct device_node *b, int indent);
 int of_probe(void);
-int of_parse_dtb(struct fdt_header *fdt);
 struct device_node *of_unflatten_dtb(const void *fdt, int size);
 struct device_node *of_unflatten_dtb_const(const void *infdt, int size);
 
-- 
2.45.2



