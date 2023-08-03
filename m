Delivery-date: Thu, 03 Aug 2023 12:16:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRVNq-004udR-VO
	for lore@lore.pengutronix.de; Thu, 03 Aug 2023 12:16:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRVNp-0004ko-6G
	for lore@pengutronix.de; Thu, 03 Aug 2023 12:16:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h0jT1xSqgJz9B0kbUhxa7+wxne6SO2vdxZYXKeZkmxw=; b=lltJHQ1Co7sPlz0mAtU/UEdFqw
	gZI1RgRnsgPz+3mH7N8eItdrTAOnhlb9AiSqLc7j8j6/qd3grN3l0yTd5XQsdFLOhMlXD0wY5l2Ms
	IukzOrxfjk6TypJAoZLoj0wD/8lXglgmdw7skHFOFdJpsQUNL/DqRtffhgfZ+Jz9ou+muFoCvKN/j
	BIjIYwbResI7ZdAWMj1/KrdeqYpFdGJLL2rEujYI1Rad6Y2A8Vdy+QuMP/iklm3zvaahY8uvIZW4b
	71l3uXxInC0qiO/isymKGJ2qzCLp9Ge55IkxSJmQBfVa3+6aJ2Vg+zLIV1BsaiQl1k3T7gFayPOK2
	jq07LHMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qRVMg-007KBu-2I;
	Thu, 03 Aug 2023 10:15:30 +0000
Received: from mail-pg1-x52d.google.com ([2607:f8b0:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRVMc-007KA2-1n
	for barebox@lists.infradead.org;
	Thu, 03 Aug 2023 10:15:28 +0000
Received: by mail-pg1-x52d.google.com with SMTP id 41be03b00d2f7-563df158ecaso498773a12.0
        for <barebox@lists.infradead.org>; Thu, 03 Aug 2023 03:15:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691057725; x=1691662525;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h0jT1xSqgJz9B0kbUhxa7+wxne6SO2vdxZYXKeZkmxw=;
        b=mbaJDhQdTdE3xsI9QULJLtBX5RNcrXQfH9Dl9AFeCE/5jiXNx/r5QPJXb05zhqIZey
         b5hlQbBhEPNBdiX5B0xindNEz5/BDfuIN4VPWXdDcHfJjmjoAbngmLHgxFgntIUN8Z3e
         ldc+E6hlLdc1nzC9cv3BDPPJ0ydkj4y7Zb+mFUOF6kBPJ6Xh73OmpZt/AmBC88PxGpQD
         cqd0FJMNslJuz0Q3coOEBsyT0S82IUsX6MvTRQ6qQpfDsna8Kz8LTUtl2iwS/HioJtgo
         iLqINAnOJvMu1lQMY17XfyUxN7RZQ/V2bsJWPmM9k74nt6ttm4K+w1cauNke/0haoYQI
         LEtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691057725; x=1691662525;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h0jT1xSqgJz9B0kbUhxa7+wxne6SO2vdxZYXKeZkmxw=;
        b=JLrffeWBu/kLQyGDgzh2iJI6VyDCYmKykOz8hoJM/Z3NDvVpe/hKlJ9XLXqnu9t6o+
         vjB3xXNpjPmhgsa76/CMrANwbRsqEXOFfoj77gecKHc37x7UoMIEFMf0Ke/rt0SwbW2a
         RWiG7YdsAn2Py49HmSpmTLfopHE+J3LpydjC1XmYLRexqUJfUffApUw7cwy0wx4XG8Yn
         D0USRICHyEvFYJjWVrsAo4zRBxkRSKk0GI1e0QZnH87wEbMuMkR4xEtg6N+R3rjH0PeL
         q8IDHu/OWnfVSfBT9djs+yWlmwk13/X2d8+v/di44wAiyAc1Ms5zApLAV+bUTcAw81JK
         c5dw==
X-Gm-Message-State: ABy/qLZ5kvs5hhx1WYX/LAq4zWO1u1J/hoHO1u52K3DT37nq2Mo+ybrC
	ZiZbFcIelUo1Kaw2CEYaDUKPqnyEsLGeHRI0H+Ar2okrnzV6qg==
X-Google-Smtp-Source: APBJJlErmRvoDsREhmHPNlGn+To1YUQbYynXrPPhbov9PHWuWBtKjQC9ulYHP0o2AjUoBbJUvcCnw1muJ5c7Hlm5amw=
X-Received: by 2002:a17:90a:7bc5:b0:25b:d292:d9a3 with SMTP id
 d5-20020a17090a7bc500b0025bd292d9a3mr17894020pjl.37.1691057725079; Thu, 03
 Aug 2023 03:15:25 -0700 (PDT)
MIME-Version: 1.0
References: <20230803085134.3912884-1-s.hauer@pengutronix.de>
In-Reply-To: <20230803085134.3912884-1-s.hauer@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 3 Aug 2023 13:15:13 +0300
Message-ID: <CAP1tNvSTZY2LC8bOfZ-_jgQZoQaVi6CDp9cmKmF7ZmBfRcYP2w@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230803_031526_661251_74773EE8 
X-CRM114-Status: GOOD (  23.74  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] of: never fixup internal live tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Now it works as expected.

Tested-by: Alexander Shiyan <eagle.alexander923@gmail.com>

=D1=87=D1=82, 3 =D0=B0=D0=B2=D0=B3. 2023=E2=80=AF=D0=B3. =D0=B2 11:51, Sasc=
ha Hauer <s.hauer@pengutronix.de>:
>
> Calling of_fix_tree() on the internal live tree has undesired side
> effects, so refrain from doing so.
>
> One of the side effects is that some parts of barebox store pointers
> to properties in the live tree which might become invalid when during
> of_fixup these properties are deleted or updated.
>
> The other is that it's unexpected that the live tree is modified
> after a dry run boot with the live tree.
>
> This changes of_get_fixed_tree() to always call of_fix_tree() on
> a copy of the device tree and not on the device tree itself. To
> emphasize this make the device tree argument to of_get_fixed_tree()
> const.
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  common/oftree.c | 19 ++++++++++---------
>  include/of.h    |  2 +-
>  2 files changed, 11 insertions(+), 10 deletions(-)
>
> diff --git a/common/oftree.c b/common/oftree.c
> index 3e85070d11..51eebd36bd 100644
> --- a/common/oftree.c
> +++ b/common/oftree.c
> @@ -416,26 +416,27 @@ void of_fix_tree(struct device_node *node)
>   * It increases the size of the tree and applies the registered
>   * fixups.
>   */
> -struct fdt_header *of_get_fixed_tree(struct device_node *node)
> +struct fdt_header *of_get_fixed_tree(const struct device_node *node)
>  {
>         struct fdt_header *fdt =3D NULL;
> -       struct device_node *freenp =3D NULL;
> +       struct device_node *np;
>
>         if (!node) {
>                 node =3D of_get_root_node();
>                 if (!node)
>                         return NULL;
> -
> -               freenp =3D node =3D of_dup(node);
> -               if (!node)
> -                       return NULL;
>         }
>
> -       of_fix_tree(node);
> +       np =3D of_dup(node);
> +
> +       if (!np)
> +               return NULL;
> +
> +       of_fix_tree(np);
>
> -       fdt =3D of_flatten_dtb(node);
> +       fdt =3D of_flatten_dtb(np);
>
> -       of_delete_node(freenp);
> +       of_delete_node(np);
>
>         return fdt;
>  }
> diff --git a/include/of.h b/include/of.h
> index 92a15f5c4a..0deb327971 100644
> --- a/include/of.h
> +++ b/include/of.h
> @@ -75,7 +75,7 @@ int of_add_initrd(struct device_node *root, resource_si=
ze_t start,
>
>  struct fdt_header *fdt_get_tree(void);
>
> -struct fdt_header *of_get_fixed_tree(struct device_node *node);
> +struct fdt_header *of_get_fixed_tree(const struct device_node *node);
>
>  /* Helper to read a big number; size is in cells (not bytes) */
>  static inline u64 of_read_number(const __be32 *cell, int size)
> --
> 2.39.2
>


