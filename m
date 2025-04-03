Delivery-date: Thu, 03 Apr 2025 15:44:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u0Krn-007qDt-0U
	for lore@lore.pengutronix.de;
	Thu, 03 Apr 2025 15:44:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u0Krm-0007Za-KY
	for lore@pengutronix.de; Thu, 03 Apr 2025 15:44:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:Subject:
	Message-ID:Date:From:MIME-Version:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=TXcrL5ivN1dMFQDz+iG2RslC4vlb81B58tfHDPhP8Hg=; b=eK1p0d3wqZNSXjVfNKlwayOuVH
	v6trHnCMOw4qQyiifyElRBPhI5eJtyNdmMVrzvpZXslIStW20GHLoaS+oA5F/46gQCEc6AH/Bp5ZI
	pZYJJmVPvYsGIxXvFwPEi6nPqQOjSKLCv+InCuAQnKGTaY3AyWzHDyD8l4vzHncPTbLzkfat6lr8I
	LFJOAHoTfzqRfoZyw7LpkFw6kwSR88N8ILsIUnxa3v9LLcJHvKvaRO+D3z17PRxGCNEBluO2Qcmka
	06FFDry3Sy+NHeJNLZIR8prI5tViDcB7bF8qXAinibcq9S7lXDsPSMuEdI4yehFD9Z4CuwO6+04Rg
	NmrKY8rQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0Kr0-00000008wtI-3uEu;
	Thu, 03 Apr 2025 13:43:35 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0Kqx-00000008wsq-3ETD
	for barebox@lists.infradead.org;
	Thu, 03 Apr 2025 13:43:32 +0000
Received: by mail-pj1-x102a.google.com with SMTP id 98e67ed59e1d1-301e05b90caso869202a91.2
        for <barebox@lists.infradead.org>; Thu, 03 Apr 2025 06:43:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743687811; x=1744292611; darn=lists.infradead.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=TXcrL5ivN1dMFQDz+iG2RslC4vlb81B58tfHDPhP8Hg=;
        b=RG+af2iufkzfdiJw5czg92rXF9liYv5zJnchQgHTx2YkFfdclVAuYC/I8Z0a5bZTIn
         LSn3lSuCD+70JHke93yyEFRu5pJFePsyIRbh1vtEGfbKygIEPw+7CZ0wrirCYA4MJ6c7
         1jX6TNh1ot19O2FqnNGKy4bX22re2xMrs//KJE2uCbHiNtPkYvcBr5hxXiKCg1BOVeRo
         hC4LFVsxhBWl8F/L/4QfrT1VAqbX3ltvEFbxGwGEvcKjyYbjCc7Q9f8cq9EmB3mGZSPA
         PmTSUsXSwpXl0bfK04/o/AdBX6dyDET2mxzqUH1PvmG4fKkjlba/BA0exDmWToTQqrsP
         NDPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743687811; x=1744292611;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TXcrL5ivN1dMFQDz+iG2RslC4vlb81B58tfHDPhP8Hg=;
        b=whcOR1BKMBa9VbxjJF1SvzsgqHXDFqUa9zKTavuSAGj3POYxcJcKZsFsUxQeVMwCq7
         Ov+zRzVTLU6yjsziSTd05HvTCMbOfRnsEsmDW95PtliiuSrymUMnKjy7m0ODggp9D3x9
         OvNqrEmtkmU5s0dmnBxjpcmhgGocN7hCnSfWLRud5MANgC1e/kTITZTiBV3k0Qsv7+tT
         ksKQcza3Kg/+d5h3rY03QDag1jhq79O8DcZCiVuL+Abhem85ryIgc8Bu7mZtLYLPWoO5
         gSbj+QtJqjyIMDp/CunFY1UoPTo2u7dgeEb91PRg9a73+iuzvjG4KspKoNvSif6+HouD
         CoWg==
X-Gm-Message-State: AOJu0Yzww7OcbKA7AQKMXRcVLHouBLg8tBRC3+ae09NA1RPGMfw8awKO
	i4bsd3wpWtfnvTbwvrSTdgvSNFYrBRULx8X3hGVn1Fxgx+tFpnRgUbWCKlaolOCnspUNRSl226v
	b6w5AIjT0kd8URWXNqUd8KpqBoOWddqfy
X-Gm-Gg: ASbGnctzy31GdFA75JD+KEugeDvkRloTLz8W+I4NHne8wOX+NE/0tIteuqyCXVNrrup
	CIGatEGovHETluqr1/TLSeu9u1gnF420veGSpjK8m/zeckUFvFzi4sfLxocsmg9OlypZjlAwz35
	8yUuYAf8zl7DBrkSppo6m32kkF63c=
X-Google-Smtp-Source: AGHT+IGkLueAl1daVQKRrh7AqiTsB5bTUd45bKkWxfeUX5c2aumOmTMGCOFuQlUBOFfEMnsTPXWFRq3Vdh0aWUYJ6Ig=
X-Received: by 2002:a17:90b:534d:b0:2ee:df70:1ff3 with SMTP id
 98e67ed59e1d1-3057c9da782mr5014320a91.0.1743687810843; Thu, 03 Apr 2025
 06:43:30 -0700 (PDT)
MIME-Version: 1.0
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 3 Apr 2025 16:43:19 +0300
X-Gm-Features: AQ5f1JrURoxGn0lvyxSSWHBfkf2ySeFsW49wwLQ2Sf9ls0YEektatHFOgFk7Kzw
Message-ID: <CAP1tNvQLfni2s37JYe-hDBxQfWLc2TNhrypH+-bicWXmW9o6Og@mail.gmail.com>
To: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250403_064331_849744_DF08E76A 
X-CRM114-Status: UNSURE (   4.21  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: RK3588 CPLL question
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello All.

Who has a board equipped with a RK3588 CPU?
I need to check the cpll frequency. Now on my system (by clk_dump)
this is 750 MHz,
although it should be 1.5 GHz, otherwise all other frequencies are divided by 2,
which is critical for network interfaces, for example...
Can anyone test this?

Thanks!


