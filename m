Delivery-date: Mon, 05 Jun 2023 22:28:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6GoR-00CCUe-IR
	for lore@lore.pengutronix.de; Mon, 05 Jun 2023 22:28:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6GoO-00013S-MA
	for lore@pengutronix.de; Mon, 05 Jun 2023 22:28:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QjoejGleN0lh++t8k/uDLEmrScj+tcNwtARLvA3kx+M=; b=Bi80XISfAkQ0Nt
	S67NPWkXNbOfrVCB7TUwjyG8JLh/sTNgPMbllLgG+zsAhaqdJNWuykRlMcrRWqUmFIhh+DyZNia0M
	Kzf7yxQ5h2P+DvWqe/lO+HUufQzIp7ASx4A+HJRzZ+LAZC4hOsTTac7BEew/lOmkUN4swrtJuOnKW
	+zfBxy4XHPwcnoQaNYsSWPJ6JLz6xt4NqExFBUvz5xNZ7AHNl1SP5SxTqF389YoUUsEruxEW1Cyt3
	lUe1jpEx1i3WBgxPCZ33gVx1ltNBLkgZg6WJGPqjZjMvu98XkgeVj2OBQn8GQZQpWifGjsR46gEy7
	ev0rESX508Tdx3Us9r/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Gn8-00GhAa-0l;
	Mon, 05 Jun 2023 20:27:02 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Gn4-00Gh7y-1z
	for barebox@lists.infradead.org;
	Mon, 05 Jun 2023 20:26:59 +0000
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2b1a66e71f9so62302661fa.2
        for <barebox@lists.infradead.org>; Mon, 05 Jun 2023 13:26:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685996817; x=1688588817;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QjoejGleN0lh++t8k/uDLEmrScj+tcNwtARLvA3kx+M=;
        b=IRBDEGG9QYoUU/Xm2/7xjCpVFnH9x9250kl5zuZYxD2MKvWpzSmjq8d15pBV6Ps5RB
         K6grvfwxp286RCiXeke/wCuBdrS4brSauRH+zYOfdy74IvNJvxpmwMNvYTTZDTavnsmw
         UuwLx0I3iMdp73x4Z8U8oRr0TTLRJ589Oqdm7d4ftVocUxmzftUnmXdfH9Eb+IWKMoLt
         jiCYQ6Ukihpa3Xr2hLeTvLndox6Q9pIDWCabEEL0sn8zCFpKz2vmx8B+9qloq1uycifv
         LtRW36iCU1LXmL61ybFyHk/nOpbs5t65W9gIC9tek4Nw2gEjSnSui7wwcD7pQtMy1+JX
         4X4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685996817; x=1688588817;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QjoejGleN0lh++t8k/uDLEmrScj+tcNwtARLvA3kx+M=;
        b=ZrlQtI1ULRilvZeU3QGwhm4jVqS2/Vhoa7xxLD5vudgdY08HSWSCa22KUP2kG5TX02
         XJwEYtweP+wVcYNbIMyY51zkumzd4oJsQa1ssQI3TDRONr/4THNfN1lXz5+5w3NFMGU4
         Kd+VEsZa33v9AunB4kvlJQ4gwng0pkfyTOrtyYp5v8OL1Qb7hsvlTyfTNpWUsFbIeIyK
         9vSMx6YL/4UU8BEgmQq+xHvDryAJ1t36Bhz6aqcEgGswQRG76hfNrqQZ1lAor2Tl9MQX
         KbDMczbwiHSKR3j/SOWsNrWkVmSdiRld2RxsH7KsxV/3GdgHx3EoIxEmx3cuozsTBqjF
         1+9w==
X-Gm-Message-State: AC+VfDzXrRyLZgnvEPfJC+6P3bFcpzzM4/94i7BaP4tqQpAujIjDb55R
	ImwyNaTjsOkdaEMsJfYCdTfNZO8imLhFuQ==
X-Google-Smtp-Source: ACHHUZ42aaBpsm8J2zwzwvSk53Ft3kYJsCLeyl5t5ID5YaZpVKiyi39kJzIUVb1ErWGBuAPPwwkdCA==
X-Received: by 2002:a2e:8097:0:b0:2b1:eba8:9cd9 with SMTP id i23-20020a2e8097000000b002b1eba89cd9mr228828ljg.21.1685996816757;
        Mon, 05 Jun 2023 13:26:56 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.216])
        by smtp.gmail.com with ESMTPSA id i18-20020a2e8092000000b002a9f966f4b3sm1587087ljg.26.2023.06.05.13.26.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jun 2023 13:26:56 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Mon,  5 Jun 2023 23:10:40 +0300
Message-ID: <20230605202634.42175-10-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230605202634.42175-1-denorl2009@gmail.com>
References: <20230605202634.42175-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230605_132658_651479_069F6ED2 
X-CRM114-Status: UNSURE (   9.91  )
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
Cc: Denis Orlov <denorl2009@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 09/17] MIPS: fix addresses of exception vectors in 64-bit mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Do not (accidentally?) truncate addresses when setting them in the
handler array.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/mips/boot/main_entry.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/boot/main_entry.c b/arch/mips/boot/main_entry.c
index 2c18bc81c3..d061a0e987 100644
--- a/arch/mips/boot/main_entry.c
+++ b/arch/mips/boot/main_entry.c
@@ -22,7 +22,7 @@ unsigned long exception_handlers[32];
 
 static void set_except_vector(int n, void *addr)
 {
-	unsigned handler = (unsigned long) addr;
+	unsigned long handler = (unsigned long) addr;
 
 	exception_handlers[n] = handler;
 }
-- 
2.41.0



