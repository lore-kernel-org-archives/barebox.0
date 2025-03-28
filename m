Delivery-date: Fri, 28 Mar 2025 17:55:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tyCzc-005MPZ-2e
	for lore@lore.pengutronix.de;
	Fri, 28 Mar 2025 17:55:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tyCzb-0005mT-Vi
	for lore@pengutronix.de; Fri, 28 Mar 2025 17:55:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=06FZ0sr22BY2fIlF9momEjh3BXIXn18wx1XVcuDvUDk=; b=C9N2z8j9dPOdjjsG0gcBYzlzS8
	PddCv4zn53MvnMvlKJGAmzxl7JelYZUgJ9IVjUEBXSFTaOQGqbE7UltR3txQerjauy72MwbWlMBFk
	yD8kgRuwb6S3jLLCRb3sSd6XZpgiJalDY99PuLOYuA38nffG4FRDPCBpXnZqOqX0S2q/fuxx7SwDH
	xWoDy/l7hUMTGM5GS/WA/bV8NkrdjPa2aoBx8/dvip3Dn7i8RqLMSKt3mMQbKSAFi9uO1yX4iFagw
	4SRV6WCaH5UZptMniBu0mq8eDcs04Wo+go7IvV0+UjFXhhTknakfQWm3hrwYhQMWKP8pwgSZhHGNB
	G9GC2VIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tyCyg-0000000Dvkt-2uKI;
	Fri, 28 Mar 2025 16:54:42 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tyCye-0000000Dvkl-3fcA
	for barebox@bombadil.infradead.org;
	Fri, 28 Mar 2025 16:54:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=06FZ0sr22BY2fIlF9momEjh3BXIXn18wx1XVcuDvUDk=; b=aPNbLmyUzCfXhwksfIa2j/JgR9
	wRB5osrwA5nxB3pA2AgYapRRVU16hkKC2uMxyda2B6OuJckth7zs0PFeXLU1GV2ZAQbXY12WxqCkw
	Y/AoknpziXUTX9d/VGi+DHJaXGBcZ5pBkjweJsXeRkDXI1cuF1JiaMZqfXUByIgH1ICuGtB9RLyYL
	gdIJfEVoKYTK5+wmRvEwiL5KvmQoRmcC+6AdA5jWyRtfP6yl+nPAPVbFZnPCOkfzWaAh5CBkkxZ+s
	ydDFV4P8aPhSDnDpPh3btv3IgNFoXr9N7AIWegmmPwBWwOvMRy8nWc0om2NhNu41FulqldhVEZnWa
	Yc71CG0g==;
Received: from mail-qv1-xf32.google.com ([2607:f8b0:4864:20::f32])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tyCya-00000006Ar2-41mA
	for barebox@lists.infradead.org;
	Fri, 28 Mar 2025 16:54:39 +0000
Received: by mail-qv1-xf32.google.com with SMTP id 6a1803df08f44-6e8ffa00555so19611236d6.0
        for <barebox@lists.infradead.org>; Fri, 28 Mar 2025 09:54:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743180873; x=1743785673; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=06FZ0sr22BY2fIlF9momEjh3BXIXn18wx1XVcuDvUDk=;
        b=iVS65bSTgVH71/VRBdcYLGL2NxYRcBGIAuz+ky8w6B0zF/49xCjQ2aIqr51Yx4aBvC
         wmHleJkSlZefx5JpSBwFfMGHUI6B/ZCNs8YwUYDToleOiAV/uD+bHJp2tG2Ie7Ylqxaz
         ViupnzVH919iAizjiUqgb9Hfn5UspKOBA+3jLhB4AkjqQy/gwRE0Gt7XBb7YvxV4TA1L
         FRnUL1raDT0x+sXMdRR8xDLZ8dvo5uQNKbBfuIfY6tMUlr6+RJxnvqP2M5mjN+sSMD8d
         J6uPGa16GWbNP1r2y4Rfh7lgzAYDESWCVRtWcbEwvpMTExflXBCzCtVPS6FQaTXSD+Yb
         hHBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743180873; x=1743785673;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=06FZ0sr22BY2fIlF9momEjh3BXIXn18wx1XVcuDvUDk=;
        b=JzsLWlva1pyXwglfJ12pWmA6m5QHsfQ+xloukz1dj2jWHdaBxvanY6bIn9ruLUeoTz
         S86qzVHtgdZmsRAAZW4yqb//Kps6IiW+Lk2dhEnPNjNqT2TAkHadOQtqJGZzs4o6sm11
         V9b1IfHIAML7Y8mpE1R2HVryMrXM14xIhajEK7/Gx8HbtX8EFxwlftxdhaoBWH5lttcb
         u5demK8otyLro9WFyNyMv06Y89tQLnR86U3G5N5NNVP8eQONYhNkGA1gkW+FSITIVVvd
         kb67LqoiS4rtjPyv+vcjkfbsLf1kBjHIJ6XcmpZjhDTMsODUBf7fJuMOIg2Yw7yhDWbd
         834w==
X-Gm-Message-State: AOJu0YytnsLqPNPCv1eeDusXlwNSL7egEQrqHd9ybMSoEZm79VMBap0e
	bveiJ5wln/1tY0CKZFkRddfUwrL8f/8hOzIUDYIZUYf5qYHxuhyG2/PpBpJNothPhs5DRXllW9P
	T+xQTVz2Tatk+YuzLcqesM8SCoP7j5Q==
X-Gm-Gg: ASbGnctIt56eRVoYZ3dsv5xYdMbKVUNZjQnL+AG1gjz7XwXnK8AddvU1kGf1/MizXvg
	eI0ngzC1zIyW36v4JfevLdgkfnd3xVBg8opJ6DH681tY1sDeIiGsuXWT6FqIOPlxX+ub7CB8LS1
	NLsUfpgFH3i3L01cpJFilmJJGuVgmewkgnvCAS7vhBGiIr9cKaNhN/QXw8yE9Cx1TG2UD9
X-Google-Smtp-Source: AGHT+IEoQIepuM/00w+eJbmJD0owYa7R6hDrV2vq2vENPFCeQbNs7mlJhXut/a4GYHfEE6op1LyCqUAtDk6+rMJCQw8=
X-Received: by 2002:a05:6214:1311:b0:6ed:1da2:afac with SMTP id
 6a1803df08f44-6ed2390449emr134643706d6.32.1743180873045; Fri, 28 Mar 2025
 09:54:33 -0700 (PDT)
MIME-Version: 1.0
References: <20250328083549.514506-1-a.fatoum@pengutronix.de> <20250328083549.514506-2-a.fatoum@pengutronix.de>
In-Reply-To: <20250328083549.514506-2-a.fatoum@pengutronix.de>
From: David Dgien <dgienda125@gmail.com>
Date: Fri, 28 Mar 2025 12:54:23 -0400
X-Gm-Features: AQ5f1Jq3CwX38IPhzUMK8g0KtB0c3aXaI-76Hz64glOZEuRdXX6qz6SZvmcXAs4
Message-ID: <CALTtyOoKbiQFsQT1AfrXLZ+Agxbdz7iyAconRVGNNXXi6ETi6g@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250328_165437_133446_6F9EBAF5 
X-CRM114-Status: GOOD (  23.20  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/3] treewide: export symbols needed for i2c-mux-pca954x.ko
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Mar 28, 2025 at 4:35=E2=80=AFAM Ahmad Fatoum <a.fatoum@pengutronix.=
de> wrote:
>
> The module support in barebox is an experimental feature, but it can
> prove useful in some situations.
>
> Building most drivers as modules currently fails, because e.g. pr_print
> and dev_printf are not exported.
>
> Add EXPORT_SYMBOL annotations for all symbols currently used
> by i2c-mux-pca954x.
>
> Cc: David Dgien <dgienda125@gmail.com>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> David, are you still using the module support? We have added an
> allyesconfig build to CI and an allmodconfig build may be added as well
> if there are users.

No, the program that had been using module support stopped
development, so we have no active users of module support.

There is another program considering using module support, but that
would require fixing modules for aarch64,
and that hasn't been a priority yet, nor do I know if/when it might be.

Thanks,
David Dgien

> ---
>  common/console_common.c | 2 ++
>  drivers/base/driver.c   | 1 +
>  drivers/dma/map.c       | 6 ++++++
>  drivers/i2c/i2c.c       | 1 +
>  4 files changed, 10 insertions(+)
>
> diff --git a/common/console_common.c b/common/console_common.c
> index a8527eee1e5a..5b7a64c99c29 100644
> --- a/common/console_common.c
> +++ b/common/console_common.c
> @@ -135,6 +135,7 @@ int pr_print(int level, const char *fmt, ...)
>
>         return i;
>  }
> +EXPORT_SYMBOL(pr_print);
>
>  int dev_printf(int level, const struct device *dev, const char *format, =
...)
>  {
> @@ -161,6 +162,7 @@ int dev_printf(int level, const struct device *dev, c=
onst char *format, ...)
>
>         return ret;
>  }
> +EXPORT_SYMBOL(dev_printf);
>
>  #ifdef CONFIG_CONSOLE_ALLOW_COLOR
>  static unsigned int __console_allow_color =3D 1;
> diff --git a/drivers/base/driver.c b/drivers/base/driver.c
> index 6363b3948f1d..edba037fa2dd 100644
> --- a/drivers/base/driver.c
> +++ b/drivers/base/driver.c
> @@ -725,6 +725,7 @@ const void *device_get_match_data(struct device *dev)
>
>         return NULL;
>  }
> +EXPORT_SYMBOL(device_get_match_data);
>
>  static void device_set_deferred_probe_reason(struct device *dev,
>                                              const struct va_format *vaf)
> diff --git a/drivers/dma/map.c b/drivers/dma/map.c
> index cd0f5c3d3497..2980d4c2e790 100644
> --- a/drivers/dma/map.c
> +++ b/drivers/dma/map.c
> @@ -7,6 +7,7 @@ void *dma_alloc(size_t size)
>  {
>         return xmemalign(DMA_ALIGNMENT, ALIGN(size, DMA_ALIGNMENT));
>  }
> +EXPORT_SYMBOL(dma_alloc);
>
>  void *dma_zalloc(size_t size)
>  {
> @@ -18,6 +19,7 @@ void *dma_zalloc(size_t size)
>
>         return buf;
>  }
> +EXPORT_SYMBOL(dma_zalloc);
>
>  void dma_sync_single_for_cpu(struct device *dev, dma_addr_t address,
>                              size_t size, enum dma_data_direction dir)
> @@ -29,6 +31,7 @@ void dma_sync_single_for_cpu(struct device *dev, dma_ad=
dr_t address,
>         if (!dev_is_dma_coherent(dev))
>                 arch_sync_dma_for_cpu(ptr, size, dir);
>  }
> +EXPORT_SYMBOL(dma_sync_single_for_cpu);
>
>  void dma_sync_single_for_device(struct device *dev, dma_addr_t address,
>                                               size_t size, enum dma_data_=
direction dir)
> @@ -40,6 +43,7 @@ void dma_sync_single_for_device(struct device *dev, dma=
_addr_t address,
>         if (!dev_is_dma_coherent(dev))
>                 arch_sync_dma_for_device(ptr, size, dir);
>  }
> +EXPORT_SYMBOL(dma_sync_single_for_device);
>
>  dma_addr_t dma_map_single(struct device *dev, void *ptr,
>                                         size_t size, enum dma_data_direct=
ion dir)
> @@ -53,6 +57,7 @@ dma_addr_t dma_map_single(struct device *dev, void *ptr=
,
>
>         return dma_addr;
>  }
> +EXPORT_SYMBOL(dma_map_single);
>
>  void dma_unmap_single(struct device *dev, dma_addr_t dma_addr,
>                                     size_t size, enum dma_data_direction =
dir)
> @@ -62,3 +67,4 @@ void dma_unmap_single(struct device *dev, dma_addr_t dm=
a_addr,
>
>         debug_dma_unmap(dev, dma_addr, size, dir);
>  }
> +EXPORT_SYMBOL(dma_unmap_single);
> diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
> index 7df645ba1c3f..49b87bb47c00 100644
> --- a/drivers/i2c/i2c.c
> +++ b/drivers/i2c/i2c.c
> @@ -765,6 +765,7 @@ struct bus_type i2c_bus =3D {
>         .name =3D "i2c",
>         .match =3D device_match_of_modalias,
>  };
> +EXPORT_SYMBOL(i2c_bus);
>
>  static int i2c_bus_init(void)
>  {
> --
> 2.39.5
>


