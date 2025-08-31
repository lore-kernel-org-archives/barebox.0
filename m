Delivery-date: Sun, 31 Aug 2025 05:56:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1usZBE-006Q3G-1H
	for lore@lore.pengutronix.de;
	Sun, 31 Aug 2025 05:56:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1usZBD-0007UO-7a
	for lore@pengutronix.de; Sun, 31 Aug 2025 05:56:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tiEQXmBpj0OMp5yH29nUPkYDBNbvCuhikkC6UYoSX10=; b=Tjk5hLsSn9X+bSiy0cjS3UrvFA
	VZbqTSa8YUfBR1S1pukNqLKAwJJinHxr1YE9vT1Z56d4r3gsaOey/T8BlvTFdxBokHTQmv4cPRD9l
	g9+nEJJ7kfy32mHZJ/qh/9/8NTwdmiivs3mX/wm+BIk9OTM0NzNrH2krSMnl27lWBTyPsVKkxvCsp
	/eBd1MtH62YVzRUJLsCZeqdS5zFC5MRg/V0XJo08DhNLQeAjgm62IPZ8f4+5Kjmywzji8TJYj2f/B
	Yl8RvSr2nRb8OYNjG3kp6KIXmIemp4mT9Fte3jUtnqewz9pbKQtGG1AL4alOAOqPijUK1nnRwXRkJ
	9Ftij6Mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usZAb-000000092Hq-0Ihp;
	Sun, 31 Aug 2025 03:55:57 +0000
Received: from mail-qk1-x72d.google.com ([2607:f8b0:4864:20::72d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usZAW-000000092Ea-475K
	for barebox@lists.infradead.org;
	Sun, 31 Aug 2025 03:55:54 +0000
Received: by mail-qk1-x72d.google.com with SMTP id af79cd13be357-7f8ea864d81so376607385a.1
        for <barebox@lists.infradead.org>; Sat, 30 Aug 2025 20:55:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756612552; x=1757217352; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tiEQXmBpj0OMp5yH29nUPkYDBNbvCuhikkC6UYoSX10=;
        b=ZN4s2fvM7dQiw6vx10kKZWA7OeD+sc+M4aUWUL/w4IfRyPW9/aQbMofOyb90i4ePi6
         CFH7FaItHIs2jrScqWcIXlcYwOdSIo8G+oA9QdyhvRXMBJ+cDWkELRzvNClX5FZ9bFzA
         ZjfRP1krg+ZwG1ydMVFu49Yc4RByWdsrdR+tYhxeNY73ZJUOFkpPaDowCUdC6jNQamdA
         UczHSmBNhkq1xpR+jkxraZHIPnSC6xM8ufFosPlAi/glLfzykcJd+DXvLJuoIA/zQ18S
         JJq8iQ+sYGrQ+/we3JLktrlx1R45vvCjDqaPbjJZJ5RFK3keoLV6Qy1aOHXiFSe4fz/D
         oRCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756612552; x=1757217352;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tiEQXmBpj0OMp5yH29nUPkYDBNbvCuhikkC6UYoSX10=;
        b=q9+SH4MSI8UUjmeTK5BoxmAuR9HhU3D0kYa8+H8cmG3AObze6qH9G8aZak44xsxk06
         dwl6uhqAAPBiuxfXRpSNXqPSO6Ujh/FDlc/xepwQlrhxyfCudHkGvX87Tvlf5KlPfaMQ
         wE8HEnX9oFrXepd1UZr/Kmtu7jkW4PVh6V+OyjFM3xqJsyQ8awjg4+IQMtomcWeXaLdI
         MjsBH3Kfz8hKipQDrHbcwfpLdrTjDOW8KbCZI0z53Zgf1EnheLOtWqGroMuT1B5dEPbV
         dGeqL0NEPPvgaNvbRPzh9QDXig+o2OznPJa5nGX5aoaVhfgaJlAyYAE4kgIrLNAK41Ep
         kjIg==
X-Gm-Message-State: AOJu0Yz8rT0IVpiK6PQduKEw1le/V/UNqwMI4qbtKjQPZE0SSkhfN86N
	7/7e/dHwd0riqqpnDQgdqiNQZGSZGnua/X5KT6vI99BE4KZFjfCyslBfFLYy+SoK
X-Gm-Gg: ASbGncvzUngOK7umTEIAG5vCvNK5+t6ZaeaYGrSxOC4wqvKlqo0MuZeaxvNrUCjliyh
	0fWXMamce38GCDcqpvKWlJAGNhhj8uVpcJYaUwuVErgHg0mhO7qE7aUUrWDpftgyDG+SlO5lplt
	QbFfgiOe64T95zJ6d7Huh41SNx0/zPbAmcwMPCzrqPv8yH/K96AAd6kNn/a/JPgiHoLhv4qZIRy
	oMSD/qtEhG1KRUtTxw3sGkBgInehK/75t/4Sb9z1HWVpV8zFzFA6JQz3vYYG/VDhwTtAUCSeGhe
	JHYRhoc8KfHuSkXFBjGW0eY2TCdO2psNFieNZ80vgkZTlIvUPP0EyMe2yC1mJLHiqbyhAhohhu2
	TjIDXEBK7ImZ4a+ZmFAFVMF3LIrvH6I1q98YyXALFAOAnoR9uFFz0s153+CLq1+4mGvYVmqXwfm
	xdcjGSpKXK28yGvUnnITwC8suw8kOaqHDlhwnq
X-Google-Smtp-Source: AGHT+IEreu7IGK21ax9QZvoZz+hAyPUVEtdu8lAFaJs9jFpsc/rW9oBqT/BmAkM9fuSvm6TA2/LnnA==
X-Received: by 2002:a05:620a:4621:b0:7e8:b54:782e with SMTP id af79cd13be357-7ff2b2c63dbmr366468485a.44.1756612551854;
        Sat, 30 Aug 2025 20:55:51 -0700 (PDT)
Received: from Latitude-7490.ht.home ([2607:fa49:8c41:2600:10aa:d623:fe15:9cbf])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7fc0f097401sm433366985a.30.2025.08.30.20.55.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Aug 2025 20:55:51 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de,
	a.fatoum@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Sat, 30 Aug 2025 23:55:40 -0400
Message-Id: <20250831035542.1623695-5-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250831035542.1623695-1-chalianis1@gmail.com>
References: <20250831035542.1623695-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250830_205553_031154_F9F638D5 
X-CRM114-Status: UNSURE (   7.48  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 5/7] lib: fdt: add lib fdt padding size.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

When loading an unflating an FDT in some cases we need to have
a padding space to be able to apply fixes.

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 lib/Kconfig | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/lib/Kconfig b/lib/Kconfig
index d07e2f3b6959..89e95d202c2c 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -121,6 +121,10 @@ config FSL_QE_FIRMWARE
 	select CRC32
 	bool
 
+config FDT_PADDING
+	int "FDT padding size for fixups"
+	default 4096
+
 config LIBFDT
 	bool
 
-- 
2.34.1



