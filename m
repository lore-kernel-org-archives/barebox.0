Delivery-date: Wed, 07 Feb 2024 03:38:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rXXpi-006YJR-0A
	for lore@lore.pengutronix.de;
	Wed, 07 Feb 2024 03:38:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rXXpi-0006Lz-Oc
	for lore@pengutronix.de; Wed, 07 Feb 2024 03:38:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:Subject:
	Message-ID:Date:From:MIME-Version:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=YBKbaFsRieChTZEARIM9KA2WnROZvVbIvt8KpNphaEY=; b=Qjd4JU71+FFS7E4cL4UAEdcjZX
	x1dCT13frl/PF4fHSBg26abK0Be8OXI5UGc0967JiruZQUqVM/fOTgh7n9UO9BaIK5Q57YnAfcquA
	am7jhoApp29CMLtpuKExTcVPjPtm6YXkv64ftkRDUBpQuoTwQwHcHeaE6itkuT1kR/rJrkJolFvJM
	iO9e29iAOThjOJt0zviKWzRFI+ALmpJJpjRF/Vt9XLAhuxFfkaGjCXoYDBSwFgj7K2Oq34RrdItPF
	V+9CF5XfT7ZmyuWl+Qbut3i6g0slRAZG9Mj9opJB7sJyFIVlZUOs8HcqtsAwPB0nY3Taf1Z5AC9HK
	HFdkRpmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXXp4-00000009U4p-2xfZ;
	Wed, 07 Feb 2024 02:38:02 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXXp1-00000009U4H-3fvt
	for barebox@lists.infradead.org;
	Wed, 07 Feb 2024 02:38:01 +0000
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-2d04c0b1cacso1791941fa.0
        for <barebox@lists.infradead.org>; Tue, 06 Feb 2024 18:37:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707273476; x=1707878276; darn=lists.infradead.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=YBKbaFsRieChTZEARIM9KA2WnROZvVbIvt8KpNphaEY=;
        b=X2Hi9FuBFDcTqMlNLDsbKJnZXVh7e+gh5dVH/ilPE5KXkxdpOpoyHwTjj7BEdmXqbD
         uVUMU30+wZhNKrDpdvA2ycfUC1G7ZpaIPPDURhk61TXJ7IAk41iNZr14jO/Q/q95ocUA
         5q/TlFaN3naTsMflarUb8RUnq0lcHoRcd/S7XuUr2MXlBL6jcx86xYGerGg/hCWDMfvv
         EHICa92r+l3R4nbRKIg9fIrHP9ZhSV4478ASwL2W6HPEuhXauyeRTrzLO6QA5oQBm+FH
         ROQhqk8tTMhpjTEhFz57SZW94tADU9XfRwtmn0zi/d8eVUNX+7nKHvc9N/WVuqkIK82x
         UYVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707273476; x=1707878276;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YBKbaFsRieChTZEARIM9KA2WnROZvVbIvt8KpNphaEY=;
        b=hPBeY566W+F2EFV1RhTDW3+MK+x6CVzERpVj+Usm7yH2WCezI9ImLWR49hy5rvmSiY
         aD1yebCWpI7s7QAElty5B/UIwE8D1QdKhKpYTjqmGo2ABsxzGg3Vm2h+9oP2K5rAQR5w
         1k6FFXl1ue22BcoEwmanvNGY+cfxJMXqSOc8+nn5a48M0v7dV+T08QY4JxTyTQbmA/K/
         S/TmRNKAEWPQGm8+wXTHC+szkrQpilfJlmC4NCJjgFZhbaJB36aNmk6j1qgy3nziP3i9
         KDNfEFz+Ykvy7Ga2/vs+VKPLXbVOy88RYQAp3nzUU8whxHVNUPduphz+55vXPlsWIdX5
         biNw==
X-Gm-Message-State: AOJu0Yy2Rxu8psyIlUG0UgFQy/n371LOe1lTo9Jw1csl1O8RW1BInJSS
	83Km5EejJkRJVZ0nakoUvc5FHDqydBwDYG42BD+NWxlZ5oPJ3oDFC5z5UQrgWUk5tUCQrKsfpDV
	NgrUBl4f2qqkessFBJDDNsDugez7TTP7SFg==
X-Google-Smtp-Source: AGHT+IHpndgk73tjPtNDlQWlTry88b7IGDkjzEk85rw8LNmYe0N7WDrlTcNBIj4RQE2K6rq8myz/uqyPSlhtWWmLQaw=
X-Received: by 2002:a05:651c:1508:b0:2d0:c9af:a336 with SMTP id
 e8-20020a05651c150800b002d0c9afa336mr128351ljf.28.1707273475951; Tue, 06 Feb
 2024 18:37:55 -0800 (PST)
MIME-Version: 1.0
From: Thaison Phan <tsphan42@gmail.com>
Date: Tue, 6 Feb 2024 21:37:47 -0500
Message-ID: <CAFPn3sTc_3q04koG_oPnqTmhGnejxtiva+B5KwYsCdC3czCmKw@mail.gmail.com>
To: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240206_183759_939832_FDF7CE3A 
X-CRM114-Status: GOOD (  13.07  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] Patch to fix bootm barebox load address alignment to
 acomodate ADRP instruction
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

The aarch64 bootm image handler for barebox can choose a load address
that is not 4KB aligned. This can result in unexpected behavior with
the ADRP instruction that is available in 64 bit ARM architectures.
ADRP forms a PC-relative address to a 4KB page where the bottom 12
bits of the current PC will be masked out. When the load address of
the barebox image is not 4KB aligned ADRP can end up forming an
address that starts from an invalid page of memory or the wrong page
of memory that was expected to be formed. The following patch aligns
the load address for the next barebox image to be 4KB aligned to
accommodate the ADRP instruction.

Thanks,
Thaison

---
 arch/arm/lib64/armlinux.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm/lib64/armlinux.c b/arch/arm/lib64/armlinux.c
index 8382ffdf1b..d66963dae5 100644
--- a/arch/arm/lib64/armlinux.c
+++ b/arch/arm/lib64/armlinux.c
@@ -43,6 +43,8 @@ static struct image_handler aarch64_fit_handler = {
        .filetype = filetype_oftree,
 };

+#define ADRP_PAGE_MASK 0x1000
+
 static int do_bootm_barebox(struct image_data *data)
 {
        void (*fn)(unsigned long x0, unsigned long x1, unsigned long x2,
@@ -55,7 +57,7 @@ static int do_bootm_barebox(struct image_data *data)
        if (ret)
                goto out;

-       barebox = start;
+       barebox = ALIGN(start, ADRP_PAGE_MASK);

        ret = bootm_load_os(data, barebox);
        if (ret)
--
2.25.1


