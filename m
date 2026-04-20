Delivery-date: Mon, 20 Apr 2026 14:16:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wEnYF-00EL8H-0g
	for lore@lore.pengutronix.de;
	Mon, 20 Apr 2026 14:16:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wEnYE-0004Zl-Lq
	for lore@pengutronix.de; Mon, 20 Apr 2026 14:16:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EZK2fkEM5cdkjMiygFOsqhk0D12O6SqHhAqm4xFanm0=; b=2Csv3nfLcAmh7hL/V4+mIgvm5G
	psA9nzYr/w67DiEpvKJEG9hlKkPsWthzQ9KszEX8QoVPj6ztMGLlk/w9myEV8a1JVd8+Bnr064moR
	mAb+AgH1iyEXpaie92/++fh8h3iw5ow9sXIuNCMrDHm43K9VAYsQpFnyywVsFs2g7Orjw8l1gl3LF
	tdnVsmzpTYgMXy3YpUXBn8LKWspDh8ziznVNbiCaKlSWkNtGnVt2lf4fjd5Gqk2oD5+6GVZMZu2wY
	TjkR22zuZdkz6DljKnDXMTBj4FkItxOvIKVWCk2y/SU/eWXDlCv/NGBZbaTJWB5ITBb96BDVyulYI
	3n1n/MlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEnXm-00000006rgs-1w1V;
	Mon, 20 Apr 2026 12:16:02 +0000
Received: from mail-dl1-x1235.google.com ([2607:f8b0:4864:20::1235])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEnXk-00000006rgU-0d7N
	for barebox@lists.infradead.org;
	Mon, 20 Apr 2026 12:16:01 +0000
Received: by mail-dl1-x1235.google.com with SMTP id a92af1059eb24-12c8ccc7755so1008024c88.0
        for <barebox@lists.infradead.org>; Mon, 20 Apr 2026 05:15:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776687359; cv=none;
        d=google.com; s=arc-20240605;
        b=irJXEpbHoAiwpd+G1w8VQaeUvu8u5YGcrHx2ixUhAG2+j1GS7F45sDtfuitfgIgHa9
         /9O43YcYIDDG0sBlfQpPRuJjOlmIZWTRrtMZKt6H9g7QNgZuIrHsL+n882tFUtCUT1sa
         UMjNayhFzJ8IO/qMPT6JudE/E2Ukg1GWqt2jKi8Daq8cTsdVXN7xEbjhEsvBgV5aNXg3
         UhzeKadjzGiacbejU2icHH/ACe0yuHrIcbfqg4p7u0mv9BexUB2cpALf0Jevc47r2ggS
         C4EU94e03xGmCye+SGvfk5Cgl5lwg28JEJ6MD3Hg47nDu3BaPb9EJ14u5/NfYJJjUM/e
         6Hdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=EZK2fkEM5cdkjMiygFOsqhk0D12O6SqHhAqm4xFanm0=;
        fh=vM2vRr44yOjyRdmzXzSi6lSzuq2Z1E6KH1Rw/zd25II=;
        b=XQJUyPriVXfIzu1XR80ltvxPjUO/lqgZeOBo/HMUfIuSr8/qrXoAFEflWArmTwY3UE
         1RcBbWV4iT+GGYm188sZECh4o+jPha1bD0Wv7zvlg3vaR7DgbDGJrrq6KOkzVxPnPFed
         GDDBBxZizE11wcCIJoIHQSN14tij315yFjb0s/cQbRfgbk20mCwXjLdyGCTRciwIUg7E
         /TNo2yHgqXFCfFEf7twqhoTCmM4XsDMDgordqJ0H0HcL5XCll259NXJ2dicQ3ppoM8Ww
         wfGlxCqyaFqAeQhlwJ+fA2ZKP5JQFgHJK62b/6hFmzInN5ZRKo+ax3ZtNL9Se0b8g0ah
         xglA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776687359; x=1777292159; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EZK2fkEM5cdkjMiygFOsqhk0D12O6SqHhAqm4xFanm0=;
        b=YocYCFBJQ98saKhS0xiw6vbbUa8vC22AXK2mP5pDXuIaIwBuDxeUrrUuKpd7fycdMc
         SwsZyPMQY4N0zjypoPiZ+AZRIYjTBz1tW14hhje8eigCGO4OKT0TseaVYx1wlyBzYveZ
         mySNrLyiCjsuJ6MBjYxD0wGP8fex19T2R4eCuVByqw0RvWR9sIQ1sjzTeK4Drf4mZjhs
         C4+SmUJDBRKHksh0Ro89iTMCPa+i3RBh8fO/6SO6VUj6+GBESO0vRfYbrhkq1ep5HZpF
         prdj85msKmoyuSFLzlRuKLlLQo0aG4KTQnG2MnlyMLXRnC9WOS5TBO7pvVApfvYGyN8h
         qoDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776687359; x=1777292159;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=EZK2fkEM5cdkjMiygFOsqhk0D12O6SqHhAqm4xFanm0=;
        b=ZFhOHvRpHW9BAJBtahlYmREMRuTr38Knx8vGDGQ90qnFhM8n6B14q2JAWPxNV8pjhn
         Amc3fSSh+Zhet0URYLCY3lFsCoyyfX5erxrcLxG+ifjOWaD63x0Y2iIksMVR0uORVxqx
         cJxvngZuRZC1WLXMKq9NYrCgNd6c6oFPQOTFm6eCgK6st5YmLSp2K13Qr31hkvG6gz6+
         FsBnn2ilH4WbyUpR856sACcgcqsdAMEzJErfR+LTYZFcjF8v4JJTWgoDyryNQ/lWAxsx
         WfyMXg4TPSbkXJx0LkyaQdXsXIuZjCnCQJQh9ZwQxHSiCFwd85J7s0TgZ5WoLtDCkOAW
         gPIQ==
X-Gm-Message-State: AOJu0Yy2stlOJTYeJAtis7BlEbL5qtEERN2d403lnMjywG7vEbnOsw9F
	1CJJ8KjxacWlHSbVEIoFIFMgFPwHcvKXVpl5jvxdY+aKN3aIYZyNprtI2R2z+DnRzvSkzZ2UKYO
	QwcpWbPbuuxwuSDmudaap4lswZaCb5I1F2JIvrwm2iA==
X-Gm-Gg: AeBDieugHQViXL3OtQ0Hn3u/J3CEfIIAC5vNGxDgaFfDmLvc10Cngd2vIJN5M5Xc1Ax
	tQS6F33m+0AniYdJz3aXv/qpH7SbMuNUAo1xg19wUsOj2PF6BYlyHfwk6q8nJdXEXsjW0ntwGKB
	AX1m6sU3R5wvHAPLXSojj0nwOpiUzc1sjqzV5JyfjWtOMfO8Ed35rvOgFXJiA2EJ25Gc5c9vqUL
	ThwCTfq7qklZlKhgDkD90w8u3biXNm/uln947eJ0pRoEj9nu+vjK9OJbvJ69wBcaA5rkYP6YGGU
	ESK8x5AwbmekXSdf
X-Received: by 2002:a05:7022:6ba1:b0:119:e56c:18a5 with SMTP id
 a92af1059eb24-12c73f72648mr6153405c88.13.1776687358740; Mon, 20 Apr 2026
 05:15:58 -0700 (PDT)
MIME-Version: 1.0
References: <20260420075708.4090183-1-s.hauer@pengutronix.de>
In-Reply-To: <20260420075708.4090183-1-s.hauer@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Mon, 20 Apr 2026 15:15:44 +0300
X-Gm-Features: AQROBzCnxSPQoFrJvd2E81WXepXdUPUKD0sydEYMc20RDaRjo12knD0P-MAejlE
Message-ID: <CAP1tNvQ_hWDUBpHcOvXt7mS72McusuqNfpsTVOxoO=QdUyjFBA@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260420_051600_229954_4E831708 
X-CRM114-Status: GOOD (  13.85  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fs: set linux.bootargs.rootopts only when existing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This version works fine, so

Tested-by: Alexander Shiyan <eagle.alexander923@gmail.com>

=D0=BF=D0=BD, 20 =D0=B0=D0=BF=D1=80. 2026=E2=80=AF=D0=B3. =D0=B2 10:57, Sas=
cha Hauer <s.hauer@pengutronix.de>:
>
> Not all filesystems specify rootopts. Only create
> linux.bootargs.rootopts when it's non NULL. Otherwise dev_get_param() on
> this returns the literal string "<NULL>" which then shows up in the
> Linux bootargs.
>
> Reported-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  fs/fs.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/fs/fs.c b/fs/fs.c
> index a562fe0fc6..5ca98ec127 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -1244,8 +1244,9 @@ void fsdev_set_linux_root_options(struct fs_device =
*fsdev, const char *root, con
>
>         dev_add_param_fixed(&fsdev->dev, "linux.bootargs.root",
>                             "%s", fsdev->linux_root);
> -       dev_add_param_fixed(&fsdev->dev, "linux.bootargs.rootopts",
> -                           "%s", fsdev->linux_rootopts);
> +       if (rootopts)
> +               dev_add_param_fixed(&fsdev->dev, "linux.bootargs.rootopts=
",
> +                               "%s", fsdev->linux_rootopts);
>  }
>
>  void fsdev_get_linux_root_options(struct fs_device *fsdev,
> --
> 2.47.3
>


