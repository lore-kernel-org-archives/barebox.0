Delivery-date: Fri, 15 Nov 2024 15:35:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tBxPt-002HXI-2u
	for lore@lore.pengutronix.de;
	Fri, 15 Nov 2024 15:35:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tBxPt-0006Eh-8D
	for lore@pengutronix.de; Fri, 15 Nov 2024 15:35:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vcmLaqwL0uCBAOM0JWKtiIzg7RgFLSBo1mW+5a/eQRI=; b=cDodujhrnIhD1Bp57eE8GYF1cn
	wO24E86E7cU6pV2bLxv6sHxkEMuiIoA2FTYvw9lGgC02YX0t0C6D1Ll1kBQQVCTvtIuccdmyNNJ0A
	FB5iAcdpK7lmu/diBUkxm7NTvNQXj4VYnXvdnVhs4cHGU2CBnF2d2lx9rpDQfTI1mLHq1QU/oEUgR
	Igp8Vx/2tJebJ6o9kc/FxqddS53k6apqokd1k8yjyIbcltHxT+aJQX//K4pzzYN8qtdNdSFtQLeMz
	yyUiVGh7n+0+iTT5P0+50vQL+tUH5s/aqXp71wj24l0SN+LxqNDKDt4N8IJoebKMLtLgjvm2fjyfR
	7TzZEFHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBxPJ-00000002zuW-1jFP;
	Fri, 15 Nov 2024 14:34:45 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBxPG-00000002ztQ-1DGS
	for barebox@lists.infradead.org;
	Fri, 15 Nov 2024 14:34:43 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-382219ceaacso901802f8f.3
        for <barebox@lists.infradead.org>; Fri, 15 Nov 2024 06:34:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731681281; x=1732286081; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=vcmLaqwL0uCBAOM0JWKtiIzg7RgFLSBo1mW+5a/eQRI=;
        b=Sbo/ippHRFgqCUFTQv4bx9weCod47hLMb/RDiGp8gQPdj/wKRUWpqNj7lUzBUGiF48
         RP7+NCSA3YrSorHxh2qpQR53yZj0YxFcbW5JRQP4RtajT/IAOx3QoZ3G77+40LgSbRJh
         cGN1o3DoxG/TktyGovQH6KxZNnBVhCpmW9Og1raFiMv33qrE9hwzYyeJ+A1Xxx68MoyR
         29G3bjwWGsTDVTxAFJmkrXXuHkHBAj5T+ExNEEWQw3megyTcJB9Q7jfUWYIhw+DYo2xh
         kcrfkUbF2ZGF+MjTro/S1FZxh/IGrq/yA8u0Vbu0CNmhV8jmkWukpnp0ui0RMkzaR2K5
         RpOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731681281; x=1732286081;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vcmLaqwL0uCBAOM0JWKtiIzg7RgFLSBo1mW+5a/eQRI=;
        b=rzqYuk0RnbSz+n4I2iwu8kXil7eCjy33ATKuIKcxXX35Dc/4MT0+NhSvwBbbIX1LX5
         45sgAIpZwgWNHKjsM38ypNr4fg0EASmiXryVU1qj7+OFyPg/CEilaLvLzzOWaQrJHQmA
         zh3iYvYWEdihyldKsPVZ4JteEc6AS0VkDIoJH3me+Srt/4F+ovzpMsct6RenJ4FWF+5E
         CKpQ6DkNVJt8pYud9fcLWAltNlh11zKCpxlA6yapeUQqPCnh/Ch9GIEWnJFeLHIyGpA6
         uJlySnQahjJLfpWQvRKkNctZweP8Tii3hPzPU4aOuWTgqlTohw1xqKTlVQqqnii4E0BU
         CQTQ==
X-Gm-Message-State: AOJu0YzVu4Ahn1L3yjD7H3NGMtFN6q1SvoT5CbnK85mE3Ho3Cjs/iDeZ
	ZTvLUu1tbfyQ+cHOs9o25rQ038BU44iTUizwKuOGTfszxZSswmufkKbrbWptyZ16LF1zIjRpM4N
	ZknRMTkgP5fUacsiq+w84RRv+0Fy+Rpvj
X-Google-Smtp-Source: AGHT+IH3EanYtTpMkxEpnqg3Oz2iWNBfCZTNuWfp4Y/+CkwtITQMIuoV7KMB9LUUJF43kisneEXWecvmhCAwffHNY4s=
X-Received: by 2002:a05:6000:1fa3:b0:37d:39f8:a77a with SMTP id
 ffacd0b85a97d-382258f77d4mr2412875f8f.8.1731681280573; Fri, 15 Nov 2024
 06:34:40 -0800 (PST)
MIME-Version: 1.0
References: <20241115135242.1251691-1-a.fatoum@pengutronix.de> <2b2b5c31-38cd-4456-8f62-946bb6eb72a8@pengutronix.de>
In-Reply-To: <2b2b5c31-38cd-4456-8f62-946bb6eb72a8@pengutronix.de>
From: Stefano Manni <stefano.manni@gmail.com>
Date: Fri, 15 Nov 2024 15:34:29 +0100
Message-ID: <CANn9nbhYoaKbFRTk6ODHndSzsZNWvq=ztzegBroXFS4CRSm8vg@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241115_063442_343830_3C3CC671 
X-CRM114-Status: GOOD (  22.11  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master] remoteproc: use I/O memory variants of memcpy/memset
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Tested-by: Stefano Manni <stefano.manni@gmail.com>

Il giorno ven 15 nov 2024 alle ore 15:03 Ahmad Fatoum
<a.fatoum@pengutronix.de> ha scritto:
>
> On 15.11.24 14:52, Ahmad Fatoum wrote:
> > Reserved memory is unmapped strongly ordered in barebox and calling
>
> argh, `is mapped' is what's meant of course.
>
> > normal optimized memcpy on may trigger an abort due to misalignment.
> >
> > Fix this by using the slower I/O variants of memcpy/memset, which are
> > do not expect bufferable memory like the optimized variants and thus
> > don't cause unaligned accesses.
> >
> > Fixes: 66e233b8c04b ("ARM: mmu64: map reserved regions uncached")
> > Reported-by: Stefano Manni <stefano.manni@gmail.com>
> > Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> > ---
> >  drivers/remoteproc/remoteproc_core.c       | 2 +-
> >  drivers/remoteproc/remoteproc_elf_loader.c | 4 ++--
> >  2 files changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
> > index 7590c1f9305b..17159316ee31 100644
> > --- a/drivers/remoteproc/remoteproc_core.c
> > +++ b/drivers/remoteproc/remoteproc_core.c
> > @@ -75,7 +75,7 @@ static int rproc_firmware_write_buf(struct firmware_handler *fh, const void *buf
> >               return -ENOMEM;
> >       }
> >
> > -     memcpy(rproc->fw_buf + rproc->fw_buf_ofs, buf, size);
> > +     memcpy_toio(rproc->fw_buf + rproc->fw_buf_ofs, buf, size);
> >       rproc->fw_buf_ofs += size;
> >
> >       return 0;
> > diff --git a/drivers/remoteproc/remoteproc_elf_loader.c b/drivers/remoteproc/remoteproc_elf_loader.c
> > index f3bf93df2c4a..740ce8765165 100644
> > --- a/drivers/remoteproc/remoteproc_elf_loader.c
> > +++ b/drivers/remoteproc/remoteproc_elf_loader.c
> > @@ -70,7 +70,7 @@ int rproc_elf_load_segments(struct rproc *rproc, const struct firmware *fw)
> >
> >               /* put the segment where the remote processor expects it */
> >               if (phdr->p_filesz)
> > -                     memcpy(ptr, elf_data + phdr->p_offset, filesz);
> > +                     memcpy_toio(ptr, elf_data + phdr->p_offset, filesz);
> >
> >               /*
> >                * Zero out remaining memory for this segment.
> > @@ -80,7 +80,7 @@ int rproc_elf_load_segments(struct rproc *rproc, const struct firmware *fw)
> >                * this.
> >                */
> >               if (memsz > filesz)
> > -                     memset(ptr + filesz, 0, memsz - filesz);
> > +                     memset_io(ptr + filesz, 0, memsz - filesz);
> >       }
> >
> >       return ret;
>
>
> --
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


