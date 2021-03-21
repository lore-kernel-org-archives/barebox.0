Delivery-date: Sun, 21 Mar 2021 07:53:25 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNrxl-0001de-HP
	for lore@lore.pengutronix.de; Sun, 21 Mar 2021 07:53:25 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNrxh-0001YS-Ne
	for lore@pengutronix.de; Sun, 21 Mar 2021 07:53:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=1/zpMRwlpdA9bj6C4y3KCeeErQ12BG19KJLHZl5gnPM=; b=of4qcNrHfbcCHgKtqwaTQf7Pln
	Pg2djvMrm9ErMXpWKV2czuZ3LFztzlfcRcVP5cfP337lVH0BgcExkUaf66dMEPdGt1n7O48uZOFPa
	wEFUlKziUuP8zoY7ylXaZYkflBPnPDDVYxVZ1rkLedj4XbNuASVnjoeoRhn+SMn1RDVEZ6TND2EeN
	3MNmCa5MAcrupJrbZW97VPpLunNUyXpn+ne28k8ULWhGGCirtbCjoi8tbp3Y5iUyr3vAa3eVUT3Ab
	SlqpxJx7oG/m9kncV6ta96zMgKK/h9DOAhm/0tiFas/GTCnuemEJhHB6SibixHU3kV0wGM/mt1BLV
	tpXJk8Sg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lNrwM-009g6Y-Kt; Sun, 21 Mar 2021 06:51:58 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lNrwD-009g5n-DH
 for barebox@lists.infradead.org; Sun, 21 Mar 2021 06:51:51 +0000
Received: by mail-lf1-x133.google.com with SMTP id f3so7973157lfu.5
 for <barebox@lists.infradead.org>; Sat, 20 Mar 2021 23:51:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sD2cVW3WGFF4Fl+NPd7XXL3XJVTUl5u0YFm4U+Btceo=;
 b=a6tGU7OBqE6UhePJMxG5uCBK93sdhPZZlWRfJfrJVLKwazo3OudVJZD+O7KoIGFAHG
 4W8kR+MX4Cm09eLXCzm+vvHBawbVI39a23quE9/3TAhfFqIsm+gPSNyt96anSInjIEZ7
 7tbUpt+UkPFym4w12XxRUKcHo3a+zhexNzxQ3WRMgrvu9XRrGbLUyuDAXuKk4DIJFC+s
 EIJ6zvNjzRSr2TyVDRdnVsruyMWcWAefSBBGHMdX555jMR8Pu2wTULJQRSJdOi7HYUPx
 tLhY1ikZ5BlR1A1nUesmKSuzOQ9mkHVSPh0CNgZeCkMRf32ZiC+25GXsBKQAWz/+2ZrG
 qQzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sD2cVW3WGFF4Fl+NPd7XXL3XJVTUl5u0YFm4U+Btceo=;
 b=FQ3ty9q0P/ErYr1q7+69Ctt1RqtMNWdgVLXTqdtvzDpyUpiLZEO1AWAKrJJ5I/oxd5
 gr3P32ZjWwV54d+Lm+OuiFtXWPgoHJH90JpKm9YOWefU0B415vlf2KBKVS8kopKpkgaP
 45+qb2GCHnvnAldcFWyRo9frMX9jeokttZe8euCY8lh40vQgeMp3/TlubxvoiT/Qoi6K
 7jpe/NVkvE/Pd8kuHnEmv3zWH33/zL28T04s9JJao6PxqwMjnTtOY2XSzxVFyxksmI61
 wRz20m1wOQZnh1W2C6ZXx9koxjLEtLil+NzScMRLDGeOMxUaGJd0/TWfKz+fDUh9BXz1
 ws2g==
X-Gm-Message-State: AOAM531tqiZoHpbDwwqXdwYxRhQv8p9woZpbKFvsNO0u6i1vsZL/kf3D
 GV6hVcJNo9DnOnkPkDdqGrSS4+qlRDNFVA==
X-Google-Smtp-Source: ABdhPJwB/aF8UTb9J9HTOxwlm2hiR9e+Jt7grb1ZG+GiK7FJAOtfihga6Emz7xTh7hGcIkflOo41cg==
X-Received: by 2002:a19:7dc5:: with SMTP id y188mr5738719lfc.309.1616309507749; 
 Sat, 20 Mar 2021 23:51:47 -0700 (PDT)
Received: from localhost.localdomain (109-252-203-32.dynamic.spd-mgts.ru.
 [109.252.203.32])
 by smtp.gmail.com with ESMTPSA id v11sm1390275ljp.63.2021.03.20.23.51.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 20 Mar 2021 23:51:47 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 21 Mar 2021 09:51:41 +0300
Message-Id: <20210321065141.292006-1-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210321_065149_644670_93A1F918 
X-CRM114-Status: UNSURE (   5.90  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] fixup! RISC-V: erizo: migrate to PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

---
 images/.gitignore | 1 +
 1 file changed, 1 insertion(+)

diff --git a/images/.gitignore b/images/.gitignore
index 377c14ceb3..eafdb44b5b 100644
--- a/images/.gitignore
+++ b/images/.gitignore
@@ -31,3 +31,4 @@ barebox.sum
 *.image
 *.mvebu1img
 *.stm32
+*.nmon
-- 
2.30.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

