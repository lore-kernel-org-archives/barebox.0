Delivery-date: Tue, 19 Nov 2024 11:41:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tDLg3-003nOi-1C
	for lore@lore.pengutronix.de;
	Tue, 19 Nov 2024 11:41:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tDLg2-00010c-Q6
	for lore@pengutronix.de; Tue, 19 Nov 2024 11:41:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RESdQlu+B2wA26jxNNT3qkZQYF0tAoXe5T86PvXaFcs=; b=FWPTP5h74oQAPLzfc7veC+BiuR
	4WESzF7PdL2+IhRAx2g/VYPqJgqUU4ER05XCfANRVnNFEA3HFCzwFMhpPpCRipkD3lYyTTevHAZd8
	UsE78V281r0gHLZRzBVO9vrlZfIKgXBe6khIVUcGfOCqgKJTD64WKgH7fa9cqrNd5oZCHROHODoeb
	sI3LQ7qU/eJXWn8ZETA+4TrgDJoakYahvAvQyf4Zjkf3RIthW0SXkDEi/YzkWloVtl6mvXuiNwODl
	YdQpr8yPQcln/WQzrV0ksJ1v0/SLrCiueeA/p/hWTh1NvFBXxkmL7Y5MZxl4/ZAavtLwagZn9vZaY
	4sVlbdUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tDLfP-0000000C5aq-3NWN;
	Tue, 19 Nov 2024 10:41:07 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tDLfN-0000000C5aM-1bHH
	for barebox@lists.infradead.org;
	Tue, 19 Nov 2024 10:41:06 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-432d86a3085so28195255e9.2
        for <barebox@lists.infradead.org>; Tue, 19 Nov 2024 02:41:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1732012863; x=1732617663; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=RESdQlu+B2wA26jxNNT3qkZQYF0tAoXe5T86PvXaFcs=;
        b=iL3Dsp+W2ojTXiNzn5jqUxb3DtJBH7/IzzZfdMTflm76pMYF2rzBDBgNBp2U+B59ke
         2jPBlKKJ/6gHmmU4qp6hLOaZ0kK4p4uxLXPslTil0HnU5yeVdLIgDn/of2k1vdrXVHe0
         VLrOslMwcnE7XOk5hYJKYX6tHqdLvDiWlVD3+kctCdJty4Lvhyjoy22qS9kwlPNSSurk
         OpmGRKzyN0BHbrGYeuMLEGtJ7GZj5UnCfckI58jreRm3hhommq87AkRAr4KHGfKIK33r
         ZzkK8hGmdmRluziRod2y+IfiFJ2+fj/MjQ0ph2hSO01bp7VDzc9QhKIf2aBHppVIj8Bp
         0pfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732012863; x=1732617663;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RESdQlu+B2wA26jxNNT3qkZQYF0tAoXe5T86PvXaFcs=;
        b=jJo+/Ah021LMCwkjBgj656RM4K5JJspKm/5+sHjgMYCkfHvOq3agle3hruLJzXT44d
         uJkhNbp4GfLVSN4CUceGrE8/vPP/f5snvUlqXIubjwa1uLfZABrxOfMAme5ZQFdocS1t
         SBl19X3JJ1DURQaVMZI8OQ2A6Z0FWsDoxoXbdB/nRg/uZ1RJuiaL7xArDkjIL4qjGltq
         TqrtefP3qaySBhLjsZD3ECj8o3uuNAP7HIYJRnKufv3bKCHCXOijbKimqMPdRwlVTeLe
         I/gstMV+dcod+kSXpQ0qA/UH5FNcMUlG/CYvushxuXH0hvyILa4guH/DkvHDSEFRzfL/
         4USw==
X-Gm-Message-State: AOJu0Yyti0jGSmWCtSTRnsWiBUuVHcEEAZsIn3oSU1Oj3pJytY7nFTmn
	yE89xGEddXIEzH4N8pRMAtmLfccC3enUMOHz103CEfEWqWeETvPU6/dgmL74WBa53X+O7V5qgyb
	EEueOKccbJ0zo3JpYqH9ZnQu0b9o=
X-Google-Smtp-Source: AGHT+IHqTpH2Sohstxt8ZcD/wr5sZD0hGz2+RV1Ps+SLqqUM/EOZhW1eOpQYs17InK2xkXrUtMy2gsB+Q6HOtutGo1s=
X-Received: by 2002:a05:6000:1fa3:b0:37d:50ed:daa8 with SMTP id
 ffacd0b85a97d-382259060f7mr11688546f8f.18.1732012862616; Tue, 19 Nov 2024
 02:41:02 -0800 (PST)
MIME-Version: 1.0
References: <CANn9nbiT8J+irgWYQxiTydNyOiTEiXBo_ZLqdVG1EGpHY9eyOA@mail.gmail.com>
 <ed999cd8-a8e3-4e19-ba7d-924e393945ab@pengutronix.de> <CANn9nbjCGMOavMYQ+_WSGvSXYVcvFsi6d4H89LWqYfjFP4Pk6A@mail.gmail.com>
 <eaf67a30-ea57-4d4a-8be8-b72273918956@pengutronix.de> <CANn9nbhjc_r+Y2zogX9bgKb=BjvOk2AJc5wa4hYSF=00kAP8zA@mail.gmail.com>
 <55dbe395-08b7-4b72-b2b9-6e2ceee182b5@pengutronix.de>
In-Reply-To: <55dbe395-08b7-4b72-b2b9-6e2ceee182b5@pengutronix.de>
From: Stefano Manni <stefano.manni@gmail.com>
Date: Tue, 19 Nov 2024 11:40:51 +0100
Message-ID: <CANn9nbi2HiandQTRiAL7RgFY6f6yUU21vT6iAnZMp7gNg81bFw@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241119_024105_418727_382A665F 
X-CRM114-Status: GOOD (  11.43  )
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
Subject: Re: firmwareload fails for cortex-m7 on imx8mp
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Il giorno mar 19 nov 2024 alle ore 10:03 Ahmad Fatoum
<a.fatoum@pengutronix.de> ha scritto:
>
> I am surprised it works for you in Linux. To get it working with barebox:
>
>  1) run iomem and note where your malloc area begins. Set CONFIG_MALLOC_SIZE,
>     so it starts after 0x90000000
>
>  2) Add the following to your DT:
>
> &{/reserved-memory} {
>         rproc_reserved: rproc@80000000 {
>                 reg = <0 0x80000000 0 0x10000000>;
>         };
> };
>
> &remoteproc_cm7 {
>         memory-region = <&rproc_reserved>;
> };
>
> Do you not have an equivalent memory-region definition in your kernel DT?

Yes, I have. Adding rproc_reserved to barebox as in kernel DT it fixes
the issue.

>
>  3) I found some issues that I just Cc'd you on the fixes for. They may not be
>     necessary for the simple hello-ddr.elf example though.

Do you need that I test them?

Thank you.
Best,
Stefano


