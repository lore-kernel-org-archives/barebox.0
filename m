Delivery-date: Wed, 14 Jun 2023 10:11:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9Lbc-006NrI-P4
	for lore@lore.pengutronix.de; Wed, 14 Jun 2023 10:11:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9Lba-00032p-Df
	for lore@pengutronix.de; Wed, 14 Jun 2023 10:11:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=w02pebhLbnZoAHaBRkAZat8WicSlmI43G+iP6MqKkHY=; b=HMPPInoW1zdEKtUvl3qXKASDse
	CR7ESda4IegaW8jAYR5+HvNTCg39qMk1ZCo7EjMoXDmxSCqeKzApjlE77rl+FJvRvOHT0PczIIdsL
	Vfl8otMHWiX+Cu3nQEUzWqEWZa5QhILIdRnXhFIcDPLDp1ooi2plGZorEOQx1rFKicKC0mkwxJ8Dt
	2EamAla4joN7QYuNdswl0XlGQjZDVfvZacqnAv2/NuWVsAaAlw70ZwUEs527BfbifNvhdGcLe6ujS
	4rlfT2G92HQmDDIrnrCcnmLi6+a2Pw7N8qxwdoSLEXvBNDjgzLXwflGtXroYnpxQ+GKC1MgWO2bSm
	n+yCOZ7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9LaW-00ApeE-1o;
	Wed, 14 Jun 2023 08:10:44 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9LaT-00ApdN-1D
	for barebox@lists.infradead.org;
	Wed, 14 Jun 2023 08:10:42 +0000
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2b1bdfe51f8so4469091fa.0
        for <barebox@lists.infradead.org>; Wed, 14 Jun 2023 01:10:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20221208; t=1686730238; x=1689322238;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w02pebhLbnZoAHaBRkAZat8WicSlmI43G+iP6MqKkHY=;
        b=bONklqsRfWhYHEKBypeRk1DUJvFmoEjDxPiN5UmbK+7XPxL60WUpbLkuRpsxwWGg6N
         ZqOnuWraa2xTwB3nkDrCjYXI6pEumkkAG3BJ70WguE+53wyu6TXy1/I38L9+kSOD0cOP
         v79BXdd73CtmpjhIDyI2UKacomTiIAsqFPAyk4/TOKGw/JC6404TORlgT6bAHg86oJqB
         1kKXBxzPS6oNRFYcOu4lXGckMufdwwEE3ISBv1zsLZbImVky7WxnZsJvNWGlPUorco7M
         UB6o0H5uAFEJ4aHy4RGkmrVULfK5XTMxdXvyuFyLCrc15M+qDossL3AZ/+up04ur6MoG
         9boA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686730238; x=1689322238;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w02pebhLbnZoAHaBRkAZat8WicSlmI43G+iP6MqKkHY=;
        b=BK4i98aOcXIP2csxFvxPR/Ttf+2re6YghzWOSiXbot0B1AzUE6QS0n+Y3Q6xu3MdIw
         QGJyqXtNFrZ1lrMgjGEzWsAWeC6cMpkbsmcbBCP3qk62uXddnd6VTiC5gf5qJGIqyYgM
         DzuCayTQO0EA7xRls++LcLfNWEUJRjk/4XbkPnwMAdd9u3/ZUbkk/g//PhDeRMxRE/6K
         X8O7nWj2VvRbNF8P9ytzKhpWRhNGFGfOLhO/lrUN3CjRgYjs6J7HdxFqi5zlnbLQpDVO
         IkI5GNopzS36tHJMBRInucItzP2VhQmKSuj3psVRIdvaid9+A9tl8q+Wq4SBkENSoH1/
         eqcg==
X-Gm-Message-State: AC+VfDwunXQHQjPFveL65KmAkIkyQHrGFQEHLnlc8t2ipjXAZI9fx95E
	A1Ai8pnk5LUXiTPtPLCnTkwoESAaw74/j0fIBveS9y9K
X-Google-Smtp-Source: ACHHUZ7fuUJs55xiQZZf4hiOqR7HpknMqbBtggkXDts28VnQd5VkswYkRlqLS9e61TsZdAQdxAWSNCxfhqY0Wha4t+A=
X-Received: by 2002:a05:651c:11cf:b0:2b1:c47a:5507 with SMTP id
 z15-20020a05651c11cf00b002b1c47a5507mr328768ljo.12.1686730237993; Wed, 14 Jun
 2023 01:10:37 -0700 (PDT)
MIME-Version: 1.0
References: <20230614080919.1716578-1-yegorslists@googlemail.com>
In-Reply-To: <20230614080919.1716578-1-yegorslists@googlemail.com>
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Wed, 14 Jun 2023 10:10:25 +0200
Message-ID: <CAGm1_kse6q1OzD7yZN6Ts5PtxHM+CtJPVLnrNhQeSDJXzVN4bg@mail.gmail.com>
To: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230614_011041_414684_FBE961F9 
X-CRM114-Status: GOOD (  16.06  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH][RFC] lib: zstd: resolve maybe-uninitialized warning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jun 14, 2023 at 10:09=E2=80=AFAM <yegorslists@googlemail.com> wrote=
:
>
> From: Yegor Yefremov <yegorslists@googlemail.com>
>
> Perform memset() at the very beginning of the ZSTD_getFrameParams()
> routine.
>
> Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
> ---
>  lib/zstd/decompress.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/lib/zstd/decompress.c b/lib/zstd/decompress.c
> index 19bf712881..78df7d660a 100644
> --- a/lib/zstd/decompress.c
> +++ b/lib/zstd/decompress.c
> @@ -207,6 +207,7 @@ static size_t ZSTD_frameHeaderSize(const void *src, s=
ize_t srcSize)
>  size_t ZSTD_getFrameParams(ZSTD_frameParams *fparamsPtr, const void *src=
, size_t srcSize)
>  {
>         const BYTE *ip =3D (const BYTE *)src;
> +       memset(fparamsPtr, 0, sizeof(*fparamsPtr));
>
>         if (srcSize < ZSTD_frameHeaderSize_prefix)
>                 return ZSTD_frameHeaderSize_prefix;
> @@ -214,7 +215,6 @@ size_t ZSTD_getFrameParams(ZSTD_frameParams *fparamsP=
tr, const void *src, size_t
>                 if ((ZSTD_readLE32(src) & 0xFFFFFFF0U) =3D=3D ZSTD_MAGIC_=
SKIPPABLE_START) {
>                         if (srcSize < ZSTD_skippableHeaderSize)
>                                 return ZSTD_skippableHeaderSize; /* magic=
 number + skippable frame length */
> -                       memset(fparamsPtr, 0, sizeof(*fparamsPtr));
>                         fparamsPtr->frameContentSize =3D ZSTD_readLE32((c=
onst char *)src + 4);
>                         fparamsPtr->windowSize =3D 0; /* windowSize=3D=3D=
0 means a frame is skippable */
>                         return 0;
> --
> 2.34.1

This patch is compile-tested only.

Yegor


