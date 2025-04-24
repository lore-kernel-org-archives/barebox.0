Delivery-date: Thu, 24 Apr 2025 18:04:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7z45-004w0k-22
	for lore@lore.pengutronix.de;
	Thu, 24 Apr 2025 18:04:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7z45-00005N-0X
	for lore@pengutronix.de; Thu, 24 Apr 2025 18:04:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WQ57O/tU048eQaGxVJwTQ0DQo5ks0dofjClA/mb1qPM=; b=E/8gUP4i90rWViRClE5bhYaNRA
	kXzUsSqoRJ1eAartmN2GqV9bDQchWO9Zhq5dGTIj4FFD3H5NCbYer2g8YcpS3QUFOMwyJw3vsam65
	cNKXdJEeI9RbfuwtLaJN1/hchV7GiSdSeHxKOcHwC6ww5eCsH1v1jI3tA4LfyMsAIBjZXcuFgyyh3
	3VAPlbDViBQVGxk60nR7QmnHNVyRsIA0T2gdWIlTc3Rr6ju2MxP/s8iaBuERoAEerndw7PyDG2kzM
	QlRTxoN6gqW4lAu+VnNW90BhFwaYv4TQ7qBq1W+rL10Q/KD5KpPZuwVVoGCJxRlmak/1RUap3KIQQ
	HUGJOPaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7z3w-0000000EbBB-2PiW;
	Thu, 24 Apr 2025 16:04:32 +0000
Received: from mail-yw1-x112d.google.com ([2607:f8b0:4864:20::112d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7wG0-0000000E8SX-18xK
	for barebox@lists.infradead.org;
	Thu, 24 Apr 2025 13:04:49 +0000
Received: by mail-yw1-x112d.google.com with SMTP id 00721157ae682-708154c2a80so9463567b3.1
        for <barebox@lists.infradead.org>; Thu, 24 Apr 2025 06:04:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745499887; x=1746104687; darn=lists.infradead.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WQ57O/tU048eQaGxVJwTQ0DQo5ks0dofjClA/mb1qPM=;
        b=d4thNbljwt4pYuE23pvmTvod5Kfz9z0SQffO4a/6RBgPwb3bFtKzggOkBwdMkMxwTa
         vQNwzm9/MG9spheDvchuwg832TiJNIwBROQsx6V6uGdwEHzCJLYc+6/hy94UkWiCNm8O
         tSHKlPzKQAHgPiKKk5OkytDWJzIErspRuGWNVYFMhpstRzezBfV+7gRucxdoiKH+skCt
         iH29ayiSe8gsvp7ynpHt+uzWlKdLCdSdgVeDCl/bexIH21Afp+ylSu9JtrrS7FEksxgn
         5vOJihtc6hGEAmPbMt2zAoK4GicBvg8sP2DaYNQuNRnWV5y5qZNYRECzybLuGZ2CC9XY
         lI+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745499887; x=1746104687;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WQ57O/tU048eQaGxVJwTQ0DQo5ks0dofjClA/mb1qPM=;
        b=b6iQK7eWJGT0YZ7Gc2NroQ+x97T2F+iWf8M+nf1au9514z8SZGT8rmbxemx6riiMUd
         UHculnk0pRk+s+KLoaW/yv1UMD/M32t5ovej1Mo9d5HTwFpezm7lfqCjpj7A6X8y0mw4
         wZms+P3Nc4muEOmbIXmsb6DEdHGxbAcAUOJVpxH79Gd1Geg5b6lVa/1Sk2kbTWTapJFZ
         Y90ovB8UwYoLdoJyhkI0QUqBkaIHXvKoL8OATOLreOCUthzQNmLdOa5kXA9nu8Emxa3y
         RbCfexdcs0sZcA+b00BCWlozgPDtGoxnPX+Dne7goVqP9GBaA+geQKlQG16xWiZkfT3f
         ePkA==
X-Gm-Message-State: AOJu0Yx38pd2S5dfMcWEeCaVI7URNkqq8M8xLh2OXiebMd+rCdt0xqPe
	oK5gpMA6b20eiwFHJLZV3VuYEGLAImVkAYERLTuEudPk7DulI195m5zUdd00P9KPWIoRzO4Iw6J
	2KjhdDvwfx2CySeNcahSym+CvMJE5vNmu
X-Gm-Gg: ASbGncsH0yh0X9X2ULoR4pDCtvkkq1gX2Aajfq567wxUtpZscS4nXscuuwCfFJw8XXZ
	TTQxiFoQ/ZaI9yesClZVeVUXQ7JJum+Pcrj+PtlkkY2UwLq1lYYOL2H4Q0gLq6KEwJ9GO3roC7r
	uoZaOQ3nS5+jJiy+Btv7ydPjSR
X-Google-Smtp-Source: AGHT+IEA1t9RdZjvo9aipe8062aJ0iOFFo0b8qv2ugPYrswBanb1QD3ky6maQ4VBNKsg+wIkZgy7xopobSNHcQHrjA8=
X-Received: by 2002:a05:690c:a00e:b0:6fb:b1dd:a00d with SMTP id
 00721157ae682-7083ed6a99cmr35451327b3.30.1745499886617; Thu, 24 Apr 2025
 06:04:46 -0700 (PDT)
MIME-Version: 1.0
References: <20250311141713.30947-1-jonas.licht@gmail.com> <20250320092300.21427-2-jonas.licht@gmail.com>
 <67d4d49a-a558-427b-8965-4992efd74f3c@pengutronix.de>
In-Reply-To: <67d4d49a-a558-427b-8965-4992efd74f3c@pengutronix.de>
From: Jonas Licht <jonas.licht@gmail.com>
Date: Thu, 24 Apr 2025 15:04:34 +0200
X-Gm-Features: ATxdqUGHq56_Tx94ogQ2KeDy37eXH6g5Zl8QhdrelXz1slm5cu3dbJ8Myzktsfk
Message-ID: <CACoKKUuL2cswx8-GNeoRvF==xr3=A91iBtp_Lf+dMRVZmgtF_g@mail.gmail.com>
To: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250424_060448_307478_795EC3F4 
X-CRM114-Status: GOOD (  10.21  )
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
	SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3] environment: support reading and writing of efivar
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Am Fr., 4. Apr. 2025 um 16:51 Uhr schrieb Ahmad Fatoum
<a.fatoum@pengutronix.de>:
>
> Hello Jonas,
Hello Ahmad,
>
> On 20.03.25 10:22, Jonas Licht wrote:
> > Skip the detect code when __BAREBOX__ is defined as well.
> > I've noticed that the first pread in detect_efi_vars never comes back
> > in __BAREBOX__ , when the efivar file don't exists, but doing this on a
> > file at /tmp works.
>
> Oh, so that's a bug in the barebox efivarfs implementation?
Yes it looks like the barebox efivarfs implementation is not capable
of doing a pread, or do have a bug there.

Thanks,
Jonas


