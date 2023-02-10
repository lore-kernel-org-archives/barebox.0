Delivery-date: Fri, 10 Feb 2023 15:41:14 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pQUaR-0037dY-QA
	for lore@lore.pengutronix.de; Fri, 10 Feb 2023 15:41:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pQUaP-0004sd-92
	for lore@pengutronix.de; Fri, 10 Feb 2023 15:41:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9iRZ5aobuGrc/czMiCyZXDsNf16dW+D9qp8nZCLBKgo=; b=giGWWQtEorv+x+
	x1nxyaDdQwP+HbOGSAJJmCyztVu83u4iem3vG0HRB/qHKNrcYd1wALGFAJXY2q+ER7ahsuFm3e+Pn
	K/ruNPWXf3EJqtcAJmZ91F9i+Ujh26QW4v9ESx8xSrc6rLYAurisbZslrswefT66ea/ccozkd8N8B
	OZoVp1IEQOCFRlo0kw8xhu2+TVFwBZySQXG59Bwh2TRRAWOOv4XN5u03BObDuRpr2Bx6Vp9PuUWxd
	Cn7KJBrfyyeQtpqAJMWa98zf+ENVLm1PCnELp+Wnlpd4pYsRWLTt6E3rvRwzn21YQrFksM7/RnGEg
	o6lsuYLJrXW9FPmEzESg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQUYu-0064N3-Hq; Fri, 10 Feb 2023 14:39:40 +0000
Received: from mail-qt1-x831.google.com ([2607:f8b0:4864:20::831])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQUYq-0064MK-R7
	for barebox@lists.infradead.org; Fri, 10 Feb 2023 14:39:38 +0000
Received: by mail-qt1-x831.google.com with SMTP id h24so5867776qta.12
        for <barebox@lists.infradead.org>; Fri, 10 Feb 2023 06:39:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9iRZ5aobuGrc/czMiCyZXDsNf16dW+D9qp8nZCLBKgo=;
        b=FetV/OxMt+5uoo51z+l6fo1iZmFA0v6ReOug2kD//5T6vOox3MJ1SQtJmQbRyq4/VV
         vLxWReoGyDVAZK1wsW9tDBuUqjjNp7fnNxigtDs3zVciJes2DoImLCZL8Bz55VOcl7eC
         YMToRHznjtjdLW/zEKrnjqyR0ZAkQ14MvA6uQR6QCeBvgwiBBLnDyu7kj9xtXtM+VZyz
         2BGicN3Ke+cR+T4N/yFi7USi6Bvx30BZNK7p0eiAsnNFme0KxEsEzue8mphg6Zmyfwzd
         QUYPZhk7TW4I12yR55N51/haQD2iMXwtGChBPynigoe2giod1/oxhyM3IrFvQcrW4PUi
         7nGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9iRZ5aobuGrc/czMiCyZXDsNf16dW+D9qp8nZCLBKgo=;
        b=Uwhlsv3gFuub29hCIThok4eJNdMH3q57SIj/rxOmnpd2DKjnUjlrGzkS85aWY46T70
         9XLBC4/+xkVecCtddl5DUKtoR0QOkOukvhObuw+WA5Qn0NNvBbHrYOVZvPS9g8rWAV3U
         NINoaCZcbB2AAlDCRFNrfndyg6pSVtmVKHisNZTAD1KrI/FmkpHrcWmHJUY2CqOXNL5c
         AFWI1g0Af80iYGm8++isxUcqPeQDGugxu9DmOmiop5lPr6KHxJTh8b/0YBDovIFtDiIR
         uCzYpOo2DKxuBp2Jn3BkSZEXI5Zy9qQb2WHRx843iJdVzOD3Dtwn3oD+4FWo3X5hX/aZ
         hs2Q==
X-Gm-Message-State: AO0yUKVEgFXKlCr7Mum3Ha3XEsgHiKvYJYDnrC2DJZmon3txIa+ePQqz
	+U3adROlZ4oe3fZbSloN6nfUFuOtKhBdUqDAoEQ=
X-Google-Smtp-Source: AK7set/nGZnsLCAiLdgl1ATe4Z5b2Y2ZBEHfnSbGrxfT0q5WHuXAqEY+jrJHk3dcK85cE6+airbYqg==
X-Received: by 2002:a05:622a:181e:b0:3b9:ec33:eabb with SMTP id t30-20020a05622a181e00b003b9ec33eabbmr12188012qtc.19.1676039972638;
        Fri, 10 Feb 2023 06:39:32 -0800 (PST)
Received: from localhost.localdomain ([193.232.173.109])
        by smtp.gmail.com with ESMTPSA id u1-20020ac83d41000000b003b643951117sm3442155qtf.38.2023.02.10.06.39.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Feb 2023 06:39:31 -0800 (PST)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Fri, 10 Feb 2023 17:39:22 +0300
Message-Id: <20230210143924.915149-1-denorl2009@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230210_063936_895592_AB32598F 
X-CRM114-Status: UNSURE (   6.65  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/2] make e1000 work on MIPS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With these changes, e1000 driver now works on MIPS Malta in QEMU with
the corresponding network controller attached:
  -netdev user,tftp=/tftpboot,id=net0 -device e1000,netdev=net0

Antony Pavlov (1):
  net: e1000: properly map dma allocations

Denis Orlov (1):
  dma: use virt/phys conversions when no dma_offset is specified

 drivers/dma/map.c         | 25 ++++++++++---------------
 drivers/net/e1000/e1000.h |  2 ++
 drivers/net/e1000/main.c  |  8 ++++----
 3 files changed, 16 insertions(+), 19 deletions(-)

-- 
2.30.2



