Delivery-date: Wed, 05 May 2021 12:10:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leEUF-0007ZO-K1
	for lore@lore.pengutronix.de; Wed, 05 May 2021 12:10:35 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leEUE-00053w-Fj
	for lore@pengutronix.de; Wed, 05 May 2021 12:10:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0REQKpZ59HxZS4Tt+NI7Ofu8jAhy+OQTb6UnFMZHJmk=; b=igXL9Df8SNdKWAcu0wXnZYAH/
	4hgATM3wXzcbNLlmf3PbVG8xAKZ6qdIrAhg2xDdDrFYIlOl3LIpAvMD5OhOKgzkNONHhGYyNpww4l
	qMY7VsGcYaF3dLIAL/SBQAzREQqQnHtl5sMXbbkBIUJ1/nUIgAGgi8htIW3A+jsczoGN1cxtaNi4Z
	U+VXnBHVTWIvdeSI1dzRGYq4/98lbpuraOFuKR6K6TifZ8swr0enQDAMFGz0Vq/ReqEheqPxWqI31
	3fQMJZJwc4Ls8FUcUH0ZKHm38+TU1Bdea//Njkl0fPJSteD4FviXvaZkc98O68FV/GcM6azdLQGFW
	d/tBW0q5g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leETJ-000q3Z-M1; Wed, 05 May 2021 10:09:37 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leET4-000q10-Nd
 for barebox@desiato.infradead.org; Wed, 05 May 2021 10:09:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=/2wkBR5ivXj23SQKWaR+C5jkpagODhawUotExxQ/kG4=; b=tNd6zc5Md49CZx+8DPt14YsjAV
 ASwqHAi3ndYz72Kro6kl6+/XoBg129r6v5Oe9id5YYeedJ6KsPb7rFVLBsC44CuPpTsHCbHrqjoJA
 H9FmCbkyKtVDNx/NX/xanUZWcX8ZXE7JH9+PT3zvKxVbxtVDC59AKG6QxFdNUYSgKekXtaZwJfF9N
 9BScuyGSIbRXyxhhsSmtGRpoHr8vOvA0fumbbMBXqxm7/xFsDMgpL3olG6HC1J1aIDcduAJjTYKf5
 P1hnQGoFIRjEnbBOT2SENxlH+Hk10mGE92dx+rPSRXFYcABlsZ+jHxEaubSeFdXLv02Pj5Id94FIB
 k5sOFRVg==;
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leET2-004eNw-AF
 for barebox@lists.infradead.org; Wed, 05 May 2021 10:09:21 +0000
Received: by mail-lj1-x22c.google.com with SMTP id u20so1673978lja.13
 for <barebox@lists.infradead.org>; Wed, 05 May 2021 03:09:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/2wkBR5ivXj23SQKWaR+C5jkpagODhawUotExxQ/kG4=;
 b=lip/aGNNRi/EOcdPjBQAz/feZAuP+7z/w/4E7GiCsdyWHjE5Ej7PsLOXZesRDwcKCY
 +n/yTxDFK9k4peQt0DgwgzJURioIlgS4f3tIIW3nBWwPWasyAP/za+ecGphlzBhtUNiW
 hxCxvRmvMgckOGcf1KGURkwuPspMGp+SWnKjVRi0PCMxILk5Rvqzw4FkiDQA8/Bvw+5v
 eOB5ccrhwo26tc2fDxgS27i8pxBTdWH08UJUXyAnysCyh57xbmW7wCcfBrvufHS+dm1T
 u7kLRl195BrYcgWnsndQBH0svcrNSym32LfBDkT/Wa7dArdw5Y9aoI1JRkTKOKKGPA2v
 L5wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/2wkBR5ivXj23SQKWaR+C5jkpagODhawUotExxQ/kG4=;
 b=taL96+V1PdDnj0MxtLd2JL7k56CjwpyReoFZ2XZafNDwrrJUqJjPi0ZfKP6omi2FhV
 8mpb/ZE2E2AyWB9lRMc+FdEe4TaRNcagrBm8FO4+mjBlMxHgty4ZUvo/+K5HqrDaO1iV
 F8CBvP08qntFxB5oHqBvynCsYicwx1KDyfS6WIf4bwTml+nVD5or/kvbqhmD3I7TDXpj
 dYLlXwOenuW9aFsrTdMrQqO5TETXJP6VlM4+RMubSIf8jbkwLAq2yANnEITgJQQnE5Xf
 +0SZIdrOjSyaUsTQ6BADtowAzyYGir/Jjaa3smO/eLT3IbFBpfHpHjB6TKqQSpYnPyH1
 +eMQ==
X-Gm-Message-State: AOAM533vSBMiNu9VYT99juw6YOYSuN3G0n+q4Q0z9B+QgpsRrAGHpGln
 DxYcaQ5cAGJ74GhhDqHbWWKPZWldS7/e+Q==
X-Google-Smtp-Source: ABdhPJxX5uOB5QGvMkW2XRTcXclLuOz+fuzXcbQx3NqAyLXJAg6X0SI58ADtAZ2J7wi48DPejvCc2Q==
X-Received: by 2002:a2e:8346:: with SMTP id l6mr20871762ljh.418.1620209357424; 
 Wed, 05 May 2021 03:09:17 -0700 (PDT)
Received: from localhost.localdomain ([176.59.42.245])
 by smtp.gmail.com with ESMTPSA id u8sm497114lfu.284.2021.05.05.03.09.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 May 2021 03:09:17 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Wed,  5 May 2021 13:08:53 +0300
Message-Id: <20210505100900.88141-3-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210505100900.88141-1-antonynpavlov@gmail.com>
References: <20210505100900.88141-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210505_030920_368961_663AECA8 
X-CRM114-Status: UNSURE (   8.98  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/9] RISC-V: boards: erizo: make it possible to use nmon
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/riscv/boards/erizo/lowlevel.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/riscv/boards/erizo/lowlevel.c b/arch/riscv/boards/erizo/lowlevel.c
index d9edb530b7..185de6ed77 100644
--- a/arch/riscv/boards/erizo/lowlevel.c
+++ b/arch/riscv/boards/erizo/lowlevel.c
@@ -7,8 +7,11 @@
 ENTRY_FUNCTION(start_erizo_generic, a0, a1, a2)
 {
 	extern char __dtb_z_erizo_generic_start[];
+	extern void __barebox_nmon_entry(void);
 
 	debug_ll_ns16550_init();
+	if (IS_ENABLED(CONFIG_NMON))
+		__barebox_nmon_entry();
 	putc_ll('>');
 
 	/* On POR, we are running from read-only memory here. */
-- 
2.31.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

