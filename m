Delivery-date: Mon, 21 Jul 2025 07:07:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1udikj-0027aP-1Z
	for lore@lore.pengutronix.de;
	Mon, 21 Jul 2025 07:07:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1udiki-0007N7-NY
	for lore@pengutronix.de; Mon, 21 Jul 2025 07:07:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iEVyURQjbbE+He4uVD3t8nzffpfITCYb4keXqjZB+cU=; b=zyUI1MK6Y2FPMJ
	/cWV+Qq6Fh2+tWtqYTt3iRVettUbxk7zZ29fudisBkjMccqtScUQhE55nHbCkwPIy4VdwVgzSsyiu
	osbEgJo7JxzrB3x8kxOiwxz3s+y2GLT8ypyswpw6bW8S0/brK7O2dW4rLh0rtCU0IYWtZgKi6MjLI
	10yNBToREOa2ztdac2SstPg2hIkKyMvXAgvSjqywvHFDH2KvMM+T4t1lZ8ayEY+7vNkEEH0a9yOeS
	c0eSWdUPRKgH2fU2FI6SZbbix/6DYlJgXrBm1nNK0S0n1A3qolonHIGGMg4AIS63eaNPg08nY5fFH
	oHac06ff5C7qbIhTiwag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udik1-0000000GEEL-3yvA;
	Mon, 21 Jul 2025 05:07:09 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udijy-0000000GED0-3tAI
	for barebox@lists.infradead.org;
	Mon, 21 Jul 2025 05:07:08 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-ae3a604b43bso655701766b.0
        for <barebox@lists.infradead.org>; Sun, 20 Jul 2025 22:07:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753074425; x=1753679225; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iEVyURQjbbE+He4uVD3t8nzffpfITCYb4keXqjZB+cU=;
        b=lGWatnckp6lXXEu+edpnbD0U2yX4ufyqX1IPZ7N5LjGHjfB5E1eLzzbrbJsdrcpKxS
         X0qIeby8ZmiKUQR1BIQWzvaqxudNSlL51rMkKeyRxKHX7P8WLXM8LY/RL/Vuc82pebsV
         eT6d2LtdFvpXeMgmfTTrgO5E9c8xJmx2e3j3veQAAXu+wf5ssYFC97f04j+Fm5LImoje
         EVnx7hyRdtsVytR+s/8oNPLftA1iZL0UhQQ8YI+uIU8ie0AbgIWiVBRLfxtLUumS8hso
         aa1onEp3IgJd6I1b83GigGWHzsnMEmnTDw6RwfUkVGdMiw0av44eLVifHPul3xTHlnpj
         apDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753074425; x=1753679225;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iEVyURQjbbE+He4uVD3t8nzffpfITCYb4keXqjZB+cU=;
        b=OTFdep7LqibuEbr2XAodCFXZyzXNP8TrkO9UnYhURGZ6ykTvnEI5VMwSVE1nu0v2Io
         TpyOy8C5H1bQiuAQQ8/jzSpAqU80lZd6Ml2CnR0MZFweiZ/ACSRFH58JSo8twv9Hvr/3
         kMwrPe390XLhGFQHIWPFgBaH6CDtuvmNWwAvE2J9P7HM9LpOE+kLHPInEp7/ysig9Ifs
         kigUZlDwSPw4aVmEQ3SVnz9XZtCqM+0tP0oamNf6ivbfFvMTUs0PI+PiTc4aqpeZtBzB
         56/lccazgd+yARNQ2gmnOnWDb9bKRErubL3VfKoDSD4KYvViYzR7lDRtMoTCbKQ2ScRP
         xFsw==
X-Gm-Message-State: AOJu0YyI4jiMQCozxzCW06M9LXBkAPRo0C3dej63DvbsrW//CiXVFFcb
	WZRsNDexaRDgzUjfMoH+5N+bBH9EBiwDWrwvXIB6cz8D3kVc/sGPfkq1iSc6hw==
X-Gm-Gg: ASbGnctUp0+9Bbbbi5qQGNzsGmEjxGQZf3IUHbmH5/fd0VLmdfzTkWvHKpqEkSPrAJu
	2N8q6n3g9TjAO7YW9mFEqHGBa+7iIyX5ju5cMByTrjRtWAvNxf3hN9JSd0I+mE5R+qdJKriQoJ4
	N9FDE6hHAknQABrf9DN0/vE/y8L4J9ahVZs0rcZXZvRnhXKRN8MMI79DgmFiorBL7iL/YUx78Vs
	Nb4Rohtxblzd6kjINgyiBt2tbC0Vhrml0b5tPMgigs9xfbuWFncbAd3AMZunuSMj+c0+OeITa09
	kFxXFxr4SWtrTEEnrDp+aFPBdT+2DOjrEr5rDRD6Md+DibHX04+nVkTZDT4mS1K7mOSP97rxNlg
	+oc7lNjyWR8YEnj/bHHJLwoPXgf1oR8/id5BAY8t17oXFWxwIwch0Bw==
X-Google-Smtp-Source: AGHT+IFjatvRhsSwvqEpYhAj3paYVUordyYwpg+nhtb+AWEuSzhw6nZeGpjU1Pq7w32C6fJpbg1ncA==
X-Received: by 2002:a17:906:255b:b0:ad5:27f5:7183 with SMTP id a640c23a62f3a-ae9ce0c5bc3mr1370883866b.39.1753074424752;
        Sun, 20 Jul 2025 22:07:04 -0700 (PDT)
Received: from cinco.. (109-252-15-179.nat.spd-mgts.ru. [109.252.15.179])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-612c8f5cf4esm4742135a12.32.2025.07.20.22.07.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Jul 2025 22:07:03 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Mon, 21 Jul 2025 08:00:42 +0300
Message-ID: <20250721050045.17310-2-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250721050045.17310-1-antonynpavlov@gmail.com>
References: <20250721050045.17310-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250720_220706_964971_4D71F8BF 
X-CRM114-Status: UNSURE (   8.37  )
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
Subject: [PATCH 1/4] include/stdio.h: drop serial_printf() declaration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The serial_printf() function was removed
in the commit af347d05abb8b69f ("svn_rev_380").

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 include/stdio.h | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/include/stdio.h b/include/stdio.h
index 50688feff4e..b4acc01bc39 100644
--- a/include/stdio.h
+++ b/include/stdio.h
@@ -10,10 +10,6 @@
 /*
  * STDIO based functions (can always be used)
  */
-
-/* serial stuff */
-void serial_printf(const char *fmt, ...) __printf(1, 2);
-
 int sprintf(char *buf, const char *fmt, ...) __printf(2, 3);
 int snprintf(char *buf, size_t size, const char *fmt, ...) __printf(3, 4);
 int scnprintf(char *buf, size_t size, const char *fmt, ...) __printf(3, 4);
-- 
2.45.2



