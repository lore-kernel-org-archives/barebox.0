Delivery-date: Sat, 22 Feb 2025 21:47:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tlwPK-005eVh-33
	for lore@lore.pengutronix.de;
	Sat, 22 Feb 2025 21:47:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tlwPJ-00024u-Oh
	for lore@pengutronix.de; Sat, 22 Feb 2025 21:47:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ndfBmBvp6MP0gNlIOiBuYJafLCwZSHOs5ibJhaL73a4=; b=2hhx0RltqzFz2oLusYYdGONuPy
	ZPJL2esxzTn7NfZ71nK8cDHNqdeNfVvvqB3xx+XFsjLiayqkDKOxGtC0WsdeceKruRbFj1VjWGtSs
	mqvtCIPWxusGrBtb7c0O5YWcQgeGG82wmVeHEoeILpP8gtR33vJDOEcS5EJBrfJwjutgs1kUUUNFn
	PV5FeWKp76bN0vNyGbebMi+qT4N+FkCGWQg0cZBHbhFZ4yoT06TQ/MvjnBnHqqfZ22x9lWSlu9mEl
	l3Xd1ktPG0mjX/MUnwtgN6h35bn5lfLkMGQ+7OiC48y08eeCmc3nRtBLVpaXcXxuqNBZ3Xm7P1WLM
	8kcTZrPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlwOP-00000008gW4-2NqF;
	Sat, 22 Feb 2025 20:46:33 +0000
Received: from mail-vk1-xa2a.google.com ([2607:f8b0:4864:20::a2a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tlwON-00000008gUv-0FrW
	for barebox@lists.infradead.org;
	Sat, 22 Feb 2025 20:46:32 +0000
Received: by mail-vk1-xa2a.google.com with SMTP id 71dfb90a1353d-51eb1a6ca1bso854814e0c.1
        for <barebox@lists.infradead.org>; Sat, 22 Feb 2025 12:46:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740257189; x=1740861989; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ndfBmBvp6MP0gNlIOiBuYJafLCwZSHOs5ibJhaL73a4=;
        b=aLbW9XlKgr1F/HAOryluRXkY9kkejGQ3vI0acXvFA1aSyHbN6KrVQJ/Q3KfNdmTe3N
         wz3dsbrBpuZCEnR+aRUTFKI3XTEk3mY8bAshE87yvNM3wPVIftLZwXHataxkVPeHmFGI
         taXWDKvQrhF82nHW37+TzsiZYR6Lka4gx1wXjp1unCFTf8wbgl+QPzc6lTOOmiAKAnvj
         IgrjO85qDCRLl8Zrb0NyQe69huMXsUG+uJMr84a7fiwvzl6lQant7G7MXj/M9ldWQ2KT
         /F3bLAI7n0xRtKHLd8N523pQ7OAIzydpI2qXKpG77MipSBRvHGYAWC9Yh6qGM+TPjhut
         v75w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740257189; x=1740861989;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ndfBmBvp6MP0gNlIOiBuYJafLCwZSHOs5ibJhaL73a4=;
        b=E4fE+B1yB5zXN4IkG0JYqdFf2AZSWkuDe8hz8iDHG7Du0FeOmJjwTBTlIgs85Ol6Fm
         rdqVY5jCbd8gRsFlqBUSlLNlQS1hghr0DB5k2OCipZw/SMrQcY3b1Qxzwe4PehPFI7tI
         k1165ZMFmOvRSb365QsW9BVucgKvW++40pfzTK7lo6wd4V91MnXYficiK0KEQgbUX9Q2
         aleJwVX3ronb1o/dOf2F+e/zCKlg1oGW8ch7DgUmwzczkr/8FFQxn4uBXHArCdQFvIPP
         nBKYsSFkcKu4zdTmQZ8UxdVZyq/srzWvxyG9XoXQDs81c73m5bcnYM/hTVmS9V5MHaPw
         gCKA==
X-Gm-Message-State: AOJu0YzxjYehtS+rREfFksUesW6941shC680p7b7tTKGRbUEENrdCaYO
	1Qn9eTszMyC+IGb+LOoiYCmP/owos5LNIJ4jlhtHVPyTYcphbvrqoRJDI6Gd0tGnq3jljIIjPZf
	hUtsyzI+X7RdgrMLcljk9eeuFzfJkjOWT
X-Gm-Gg: ASbGncsy/+dZprQaim8aDuTtxx1dMu2fTIJeX6AxSj3sTvrXlvVoVqoQIjTjOvYl8FT
	6BY5ebEjRqOV2oKMS3/e9qrm3DBUR6s9wbfnE35EYCPoq9XsTL3k5+oLhRHSpBG4oVbkWTn1YSe
	zXgjAizr9Am7FhSQT838cUjukbkpTOSkS6qCs8Iw==
X-Google-Smtp-Source: AGHT+IF8/XXbWbpbeyvIoUw8eOyJDOzEZ3IKcbryy/Fts9ntundiOp2iZUry4q6WYwgmhQdoKmElHKfhKymOSD61Y94=
X-Received: by 2002:a05:6122:4885:b0:520:652b:ce18 with SMTP id
 71dfb90a1353d-521edfd0df2mr4048836e0c.0.1740257189235; Sat, 22 Feb 2025
 12:46:29 -0800 (PST)
MIME-Version: 1.0
References: <20250219141844.1912413-1-s.hauer@pengutronix.de> <174012323334.2354255.16758545638294107895.b4-ty@pengutronix.de>
In-Reply-To: <174012323334.2354255.16758545638294107895.b4-ty@pengutronix.de>
From: Jonathan Bar Or <jonathanbaror@gmail.com>
Date: Sat, 22 Feb 2025 12:46:18 -0800
X-Gm-Features: AWEUYZmtAmUNzLMhlVy2dnnoY0tdsKIYU3ZIm89693OKKSRlYDbPse9ISIHzoiw
Message-ID: <CABMsoEGDcxSCSfdnV0B1dKvvJaQYBYhpAu2R_t31j5g_Q8fVBg@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250222_124631_124630_E1CAD639 
X-CRM114-Status: GOOD (  13.06  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 0/5] Filesystem memory corruption fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Those are awesome, thank you.
We intend to publicly disclose March 19th, is that okay?

Jonathan

On Thu, Feb 20, 2025 at 11:33=E2=80=AFPM Sascha Hauer <s.hauer@pengutronix.=
de> wrote:
>
>
> On Wed, 19 Feb 2025 15:18:39 +0100, Sascha Hauer wrote:
> > These are some fixes for memory corruptions that can occur on corrupted
> > or manipulated filesystems.
> >
> > In case you use one of the affected filesystems in a secure boot chain
> > you should apply these patches.
> >
> > Normally you shouldn't use a barebox filesystem in a secure boot chain,
> > but instead use FIT images on a raw partition. We never made this expli=
cit
> > though. Ahmad has done this recently:
> >
> > [...]
>
> Applied, thanks!
>
> [1/5] CVE-2025-26722: fs: squashfs: Ensure positive inode length
>       https://git.pengutronix.de/cgit/barebox/commit/?id=3D6281a871e2c6 (=
link may not be stable)
> [2/5] CVE-2025-26724: fs: cramfs: fix malloc(size + constant) buffer over=
flow issues
>       https://git.pengutronix.de/cgit/barebox/commit/?id=3Df86e528c8fba (=
link may not be stable)
> [3/5] CVE-2025-26723: fs: ext4: fix malloc(size + constant) buffer overfl=
ow issues
>       https://git.pengutronix.de/cgit/barebox/commit/?id=3D51eea5c16fd2 (=
link may not be stable)
> [4/5] CVE-2025-26725: fs: jffs2: fix malloc(size + constant) buffer overf=
low issues
>       https://git.pengutronix.de/cgit/barebox/commit/?id=3De7397340359d (=
link may not be stable)
> [5/5] CVE-2025-26721: fs: pstore: fix malloc(size + constant) buffer over=
flow issues
>       https://git.pengutronix.de/cgit/barebox/commit/?id=3D7563f5722dfd (=
link may not be stable)
>
> Best regards,
> --
> Sascha Hauer <s.hauer@pengutronix.de>
>


