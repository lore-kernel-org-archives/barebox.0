Delivery-date: Wed, 20 May 2026 16:16:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPhiM-001tUh-0N
	for lore@lore.pengutronix.de;
	Wed, 20 May 2026 16:16:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPhiL-0001WI-GY
	for lore@pengutronix.de; Wed, 20 May 2026 16:16:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vgHZ3Fr0vWrt+bBCissOGkPfL+PqxfrHXVk8vhj6uy8=; b=a3/JFco/CXpl26sNiQUTMtSVwI
	58iMSBbjy9xquwq22ova2OpXZLd5ZnbduFokrcZ26xhjVuBBzD+cIC/9hPLIRWbM3AXwGvDs0XpwA
	/KEN7hH5twR5JvobwIuv6LSq7/3WzXjU89KZQdZMVOGZGB2xvWfaCZbDyelQrBnVxUsrrKVk1bgfV
	DXtStrMI5XYVwDqqYWg9gFVhiYwyu7sRR7CpmSgHTi6sDAVPIuSoNeLylnJrJCRhOzwqjjSn7knhO
	gjoov+B+/PARXT4DcmrJ+R/bHpdTL/Zq8PeghzUSg+3R1wZhW4kvHWnRlsZHncXRlfVJH5Bc21sF8
	zyiY9fNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPhh4-00000004mSh-2qkE;
	Wed, 20 May 2026 14:14:42 +0000
Received: from mail-dl1-x1235.google.com ([2607:f8b0:4864:20::1235])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPhh2-00000004mRu-0Dnm
	for barebox@lists.infradead.org;
	Wed, 20 May 2026 14:14:41 +0000
Received: by mail-dl1-x1235.google.com with SMTP id a92af1059eb24-12c1a170a50so6122294c88.0
        for <barebox@lists.infradead.org>; Wed, 20 May 2026 07:14:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779286479; cv=none;
        d=google.com; s=arc-20240605;
        b=e07RWiTu8a6lTvTe43UXrxhS1Acr8MPHNul7plGqmtgRinb2qTjf4aKIGvQosi86wG
         NabWaLLpF0ZzUb/mN+Cwv9pkDiUEIzjDDkqjzSrGK52MltsYyiUMHCydbXQI0rG9a+2z
         yiSE2uxLNa3erGYirSSRHXpLccmIXE5wOfoV5ws7zzNNpPOAHl+reRbxm0jvN/Tt3vu/
         TFCtWxy6fz9onFri8/FzkRtJii/Xb8wU6bW5hZw8PtLC1FYhx6C0EpEqzntVFw59dJam
         sYcQyKB9TXtCmVs8yVxmvTajiWIwJv2mfq9UicbE+uXvdbvz2VROZhmYM3AoXVdY6PM3
         0F1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=vgHZ3Fr0vWrt+bBCissOGkPfL+PqxfrHXVk8vhj6uy8=;
        fh=7Yiba8wXx+vLUz4ud+g5VaEZLPel68E1Fvl1EGss/6I=;
        b=gSGXhh/L5tXeLkhQY6gg4MOmb3EKmX5asfRm+80sYu3P62z22g7I7Q4YismKH7W77w
         jyhKywwtUiYd4GXvxRi5dZDQYVng8xR6ui0NbHOlvOf6ty2nURVby/6LW9KipuXK8L9v
         ZC61UcAiKEL/97W9jeP/rWSgxnJ6ruW418vwjaUOJa+Fx9NlXOQqBPyCFo4fjMp0rbQM
         HbD46n3KKgaWEhUMCEbf0V0YBWa90eJJbTUxCSjycWbj4WQbFYVnNcz3glA8vSVI4zQB
         04F3HIj0b3h2PEZuXz4V2QEndg7xmrh+r+Ql5GW5IfRCp/UaTpKGMijBf4sigM9HPppa
         82UA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779286479; x=1779891279; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vgHZ3Fr0vWrt+bBCissOGkPfL+PqxfrHXVk8vhj6uy8=;
        b=XBqYU/7Oa3L1wBTYgQXyX0WjwKzxYes9OjZCDlRVxR2vHvO2y3ctaQ+qyFeolDdwUD
         3hHgtELG8/GfhDiu5hPvAioktwDGmiIAwqLmL7vZl072FRyPZaUdMu1HRoxoNcip4eGR
         qUq+XpXzupQLG/jnKN9zGsmyLxK7Ea8GFukvde/gDQkMfuhNFu6SxDafTFDybUAl7AEv
         +jh+Lq+HjbcQ9UrFT8wyhX3i04eMN8R5cqIGpyDF7xuFW1IKawM4kYKbIiR8wmEpGQB5
         NcNC7VvKscUrN2ugLLjtOclYpsDUfvUET10HlD9sAD+jzzkV752LO8a3WleaLCk6YLmE
         b0dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779286479; x=1779891279;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=vgHZ3Fr0vWrt+bBCissOGkPfL+PqxfrHXVk8vhj6uy8=;
        b=RVwxM7lzM/v/7FKI8W5x5xtS+ecCf+wl+80pVxn1laTsdaONPqh9z4QZl7GyqwYGIQ
         INE5v1oaN691l6Ggp6PosSRkrYqwYXPlz7jT4GO0Dk9da4YZN9lwBKT1+BegHDMC3gXP
         Io9BRYWhrGznO9IqIHoHpZwCobUh/9O+DEU/zPC1P9toeCPbyqRV8zb8tYgMCjD87pon
         g6tGeX2IAW60uWE+Nc1YYwNGzbMf0VkUvymITJrxNKXOrZfgYHvrwD2alicssqlFjbqo
         5Z5yeXGINtdgCy/LjT87kwjAHfNgZ1sW7l2vV8WKaCPfUZyZRo10kwtetoq4dN6GfipC
         FUnQ==
X-Gm-Message-State: AOJu0YyHDqSfzLyE+lv+6lgj4mgvj3hver8+UF6AeQNx6foGv5x94aBm
	R6Olpqsz3uA+524+zatE7blxB6PrIxQ3sm4lXy9ew8dXCYLQo6k1Y5PtRG1IlMB35/NUhjd97BZ
	GIUU+miBca1DICnUM4iWj6/GcqLKGwmg=
X-Gm-Gg: Acq92OFZnpp46lsC2C//ldjzQIPtmRSRqprZEjK6Ii0yYR/Cn3KALZILz4snNJJ794g
	Oo8Idlk880d/3Q4GfKE0N9lT3/lfq950Y0m2MJKeQMPLhaLKdT2zrUwca/XENi5hAetAB5+RMlr
	OyCN0Tq0ZDu6AnF85+hGAgDsiI5aceyumyHqq9QfK61AGfFO92Q3+DXd+XgOuMeSmDlqNp7l/L4
	rFO1ddqVnsOjSs3pd3Z/9OxDD32pN9CHjSU0Mt2w1B43qo3gNDzTQyAvW7B3/k5Qt8GSACmoQCw
	wbdHr8YG
X-Received: by 2002:a05:7022:505:b0:12d:f0b1:75de with SMTP id
 a92af1059eb24-1350483c2ccmr10217194c88.22.1779286478983; Wed, 20 May 2026
 07:14:38 -0700 (PDT)
MIME-Version: 1.0
References: <20260520134923.3233562-1-a.fatoum@pengutronix.de>
In-Reply-To: <20260520134923.3233562-1-a.fatoum@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed, 20 May 2026 17:14:26 +0300
X-Gm-Features: AVHnY4JjQcKsjydc6XVfUL5MfIpBxHS7VY_lFUU-I33T5pGtQiZQkVUJtu4USSA
Message-ID: <CAP1tNvTpkyroMBFdeWyJ9r-5qk_GSnQ6u36x3cRUm2zG=W3GQQ@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_071440_098899_EF6969D7 
X-CRM114-Status: GOOD (  16.65  )
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
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] of: base: handle of_set_root_node(NULL) correctly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Tested-by: Alexander Shiyan <eagle.alexander923@gmail.com>

=D1=81=D1=80, 20 =D0=BC=D0=B0=D1=8F 2026=E2=80=AF=D0=B3. =D0=B2 16:49, Ahma=
d Fatoum <a.fatoum@pengutronix.de>:
>
> of_set_root_node(NULL) used to be valid and the if clause at the start
> of the function explicitly allowed of it.
>
> This was broken by the unconditional use of of_property_write_bool, so
> guard that behind the existence of a root node.
>
> Fixes: b1ced2c3caa9 ("state: suppress state overwrite warning for barebox=
 DT")
> Reported-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/of/base.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index d4fbd2367baf..57b64bc0b96c 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -2123,15 +2123,17 @@ int of_set_root_node(struct device_node *node)
>         if (node && root_node)
>                 return -EBUSY;
>
>         root_node =3D node;
>
>         of_chosen =3D of_find_node_by_path("/chosen");
>         of_property_read_string(root_node, "model", &of_model);
> -       of_property_write_bool(root_node, "$barebox,root-node", true);
> +
> +       if (root_node)
> +               of_property_write_bool(root_node, "$barebox,root-node", t=
rue);
>
>         if (of_model)
>                 barebox_set_model(of_model);
>
>         of_alias_scan();
>
>         return 0;
> --
> 2.47.3
>


