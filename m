Delivery-date: Mon, 17 Jan 2022 21:16:24 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9YQS-004tU6-NF
	for lore@lore.pengutronix.de; Mon, 17 Jan 2022 21:16:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9YQR-0002nF-Dw
	for lore@pengutronix.de; Mon, 17 Jan 2022 21:16:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=smoDkgZwmBzJJ5nVfME+Cq3dMiHCxCwXFMtoj3/CA2g=; b=z5frso7NAxkNaO
	K601+0ed/He1VnU1QKh15WN7lJP/CMcHNIHMdJifBMB/78M6MNUnBCtvNfxap7CW9DvKDn8V/xxhS
	bHiw8vax6sc0cEBJT3njC+RlKS+Uo0qfJybMhR6bm3F0MshOEZSemvvEhxDtnY6pnzwlVOER7N+bA
	hA9dxgNpNkUvocwvRmaBYHPtFvm2z2BE7wW1jia/BK5yM2mgaFgTN/ezrA5PIcM1HadofAhP+lCBo
	0ABmezpbjKVc0oK1XWvFTjV+73A9EUrbRjXWQ6oAPE10Rw4Cg16VKk6t91oBmBDbEU3/Llcz8iN0o
	pBQFZrnEsC+BKXfGDckQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9YOj-00GJSZ-VA; Mon, 17 Jan 2022 20:14:38 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9YOe-00GJRf-1a
 for barebox@lists.infradead.org; Mon, 17 Jan 2022 20:14:33 +0000
Received: by mail-lf1-x134.google.com with SMTP id bu18so38926725lfb.5
 for <barebox@lists.infradead.org>; Mon, 17 Jan 2022 12:14:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0EoGfiY9d8F0bZLfCN9LY/hq9izxodhfsFslgQVSUeE=;
 b=D/CJjbfEGIxk34nIKSbYDl9AVvlbu+DXXxXDhXWDNc0Srxs63F/eHuCduFPZyPTZOs
 Te60qCXbt3nbW3cGbWeoXjQmC7c6p90ID0JSeblE5QO9k2DEmg48OfYVgRcfPxU1jpVY
 spDLnFmol7cBlxSeme63tkZkv7wiwvFpzZMsgGqM0U9y0ucbM1/aGAKywIUIxMUOBqgs
 BqLw6oe7BtxAD7Cr6NNAP3YbMjlBIp4mjhQ6OedmrSpGJyWpo2hFpyBJsSkPdS88YF5s
 mWs8btyADEDfsZ4u0aQB+9ssGkBw51sJdQ5HDv1FKkdEoCOCeL8P48/XxSk1a+Ku9oUH
 d+QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0EoGfiY9d8F0bZLfCN9LY/hq9izxodhfsFslgQVSUeE=;
 b=ChXAdcxgqSwltAZQ13dc75jyI+nAOHhIxiv2RD1YzRq7d0YEa8Ny0MOhSNvCA4hdPv
 wi6nXg+DUrwHyA5qbGVbdTW8V73NlurO9l4HfITuJuqg4jqCB2V+28Mb1fKw8yYoKXM2
 TkaQYb8/eptHW/d12CRhiKSZYDBomoEOCWFUAltVzwRhcGuZeOikA5/iD44uYWUEHnaN
 f5TBMLRNsOWDopFv/fOtB5Wy4gPAPNhbzvEzC3ww+sEkFAYlGcvdP+nG0kHUaqvURIWC
 Kd6gmq/ZobZArZUBTe7ji+eZM0SamhDq5p87PUU4xHxuR/cfvlwD/bmjJAiXY1paBAdn
 waVg==
X-Gm-Message-State: AOAM532gj408LqFSwju0/L5/kAQsEK4lSyu4AFmIm7FvZ8nG8rBbIxup
 M18SXckfBT+IjAnk9RqIWO8ppHHLxqr9JylhEBVGvA==
X-Google-Smtp-Source: ABdhPJyhfC9jaiozh7QHKkH6r4oSuygRJ7oXI+NEmAeqlI/3/6sQo2pgHjbdUssHw9ba3tfv5ox1Q4W/nwXsvX22iz4=
X-Received: by 2002:ac2:4db4:: with SMTP id h20mr18295677lfe.362.1642450468366; 
 Mon, 17 Jan 2022 12:14:28 -0800 (PST)
MIME-Version: 1.0
References: <20220117120500.3556703-1-o.rempel@pengutronix.de>
 <20220117120500.3556703-3-o.rempel@pengutronix.de>
In-Reply-To: <20220117120500.3556703-3-o.rempel@pengutronix.de>
From: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Mon, 17 Jan 2022 12:14:17 -0800
Message-ID: <CAMHeXxOMT7=Eo1Xsx484WQcX0eEXfSb9v9L7U6fLubBYnFz1WA@mail.gmail.com>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220117_121432_295545_4FB85DDC 
X-CRM114-Status: GOOD (  21.31  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 3/4] ARM: rpi: validate devicetree compatible instead
 of changing model name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jan 17, 2022 at 4:06 AM Oleksij Rempel <o.rempel@pengutronix.de> wrote:
> +struct rpi_priv;
> +struct rpi_machine_data {
> +       unsigned int hw_id;
> +#define RPI_OLD_SCHEMA                 BIT(0)
> +       unsigned int flags;

hw_id is only a byte.  Both of these fields could be u8, which would
make the struct smaller.

> +struct rpi_priv {
> +       struct device_d *dev;
> +       const struct rpi_machine_data *dcfg;

Doesn't seem like there is any need to have dcfg saved in this struct.
It looks like it's used just once, in the same function that finds the
value.  rpi_get_dcfg() could return the value directly, rather than
indirectly by writing it into a field of a struct passed as an
argument.

>
> +static int rpi_get_dcfg(struct rpi_priv *priv)
> +{
> +       const struct rpi_machine_data *dcfg;
> +       int ret;
> +
> +       dcfg = of_device_get_match_data(priv->dev);
> +       if (!dcfg) {
> +               ret = -EINVAL;
> +               goto exit_get_dcfg;
> +       }

Then later:
> +       ret = rpi_get_dcfg(priv);
> +       if (ret)
> +               goto free_priv;

It looks like any board that doesn't have match data will be rejected
and fail to init.  But then what about these boards:

>  static const struct of_device_id rpi_of_match[] = {
>         /* BCM2711 based Boards */
>         { .compatible = "raspberrypi,400" },
> @@ -465,24 +599,24 @@ static const struct of_device_id rpi_of_match[] = {
>         { .compatible = "raspberrypi,4-model-b" },

Looks like they'll get rejected since they have no match data.

> +
> +       for (; dcfg->hw_id != UINT_MAX; dcfg++) {
> +               if (priv->hw_id & 0x800000) {
> +                       if (dcfg->hw_id != ((priv->hw_id >> 4) & 0xff))
> +                               continue;
> +               } else {
> +                       if (!(dcfg->flags & RPI_OLD_SCHEMA))
> +                               continue;
> +                       if (dcfg->hw_id != (priv->hw_id & 0xff))
> +                               continue;
> +               }
> +
> +               priv->dcfg = dcfg;
> +               break;

Could just return 0 here instead of break.  Or better, "return dcfg",
as there's no reason not to just return the value like a normal
function.

> +       }
> +
> +       if (!priv->dcfg) {
> +               ret = -ENODEV;
> +               goto exit_get_dcfg;
> +       }

Then this can become ret = -ENODEV and the if and goto go away.

> +
> +       priv = xzalloc(sizeof(*priv));
> +       if (!priv)
> +               return -ENOMEM;

No need to check the return value of "x" alloc functions.  That's the
whole point of the x version.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

