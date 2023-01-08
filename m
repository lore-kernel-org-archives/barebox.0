Delivery-date: Sun, 08 Jan 2023 14:36:46 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pEVqx-005hOH-2e
	for lore@lore.pengutronix.de; Sun, 08 Jan 2023 14:36:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pEVqv-0002td-1r
	for lore@pengutronix.de; Sun, 08 Jan 2023 14:36:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pwsPWKFJYWslPPqOEJNIP0jkelUSa9kqF+WQ6+9iWiY=; b=o9WU0IZ0TDct/6B/al69Gm4zw0
	Dc1czAH+jd0RIIDsN/LuFGcjc7ww46k0sJljFVajB+E3IRL8kHfxJLqw9tHH4x8t/Yg0KfIfnk3wd
	BofO+FK8NR6ECsO71XhHt0S0leUqbYpO2BqijMvpk4cvqkuWMyNB8qsv14xA/fU6LiYTOgDB6d0zU
	3Xw1c/D046+QuRyb/JOt6BQk7iXAWgmXjrVeK10keAccL6qqPoQFvKhhjHV0bLaRvz7j3M4MNKmoo
	55Q/nBkXNToYkWM8Bk3ZKaevHmDV1sJIFOIaMUICzWLYsOdScZJ/4sGxwSOQG+RBEfDIAG2qKkDog
	Pj2UFBMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEVp5-00Dtpq-NS; Sun, 08 Jan 2023 13:34:52 +0000
Received: from mail-pg1-x536.google.com ([2607:f8b0:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEVoz-00DtpA-N6
	for barebox@lists.infradead.org; Sun, 08 Jan 2023 13:34:47 +0000
Received: by mail-pg1-x536.google.com with SMTP id g68so3098125pgc.11
        for <barebox@lists.infradead.org>; Sun, 08 Jan 2023 05:34:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pwsPWKFJYWslPPqOEJNIP0jkelUSa9kqF+WQ6+9iWiY=;
        b=As21PjAth6Zm0dWrRqmLI8uNlkfTCZGPalQWQRZptl3eA7bVs7W/CERQ/x2+s+BodH
         7fgWNcxFX35jn7TdoBMZRCaMRtL2+noSbgPy9ErWzV4WgukeTjrZuH7aX0C7VYLxZ2F0
         lm/G/vhEkei4J+Cf4VFPElHRnMrmogaV62BMoFYwBA5QgwRWiTL0PBZ6aolCMnce/7RO
         CPebopGoLX3OW1dQWTmAe7++f1qAf5mITFKn6BKCdwYTfMcnF3kCT4q9TG9CO5+yV7GC
         Ma+SYBYs9xhtbf0fI8W54lKCgRyb7bGpQA0iFytwmfCEOmPzfh34ot80Kmf3JXZiGdPb
         YqDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pwsPWKFJYWslPPqOEJNIP0jkelUSa9kqF+WQ6+9iWiY=;
        b=heqRZBJ8p1vO3dykBW/dRqNJb97wCm43bCkb5MSzh6DX4ffzIJRKgJ+qYR5HiPmJSd
         qkrIAC+rtNPwim8fOPwOYnh2/uqN6cax5rjNimIIvhXN95VFfRMvvCdJyemA9/r+3wIL
         qSO57nL3Rbj1bLd/owUztwvtHoACBU8+sxpneJCSrZcnE8UpcK1VT71OAziHX6B1pgaa
         fKT++zI+IGYtpyvq9kniHjaEmRpPhXum+Z0ibj2C/qn1P93ZpfboyEILFwFHVAAGZhM6
         NfA8KwI13UbNp6LOs5mHu51OY5/5ntKpl7tR01Wqwuv+mVPEe9Mp4tno85Dd2/A59RAe
         aESA==
X-Gm-Message-State: AFqh2kqY8SbTpQMCU4bFPZsVWSYDj5/SHKHOc1nJBd+NJSDfal2EDBTl
	p4cn8JK81di88UUFk7FIDXFcv2kMN5QiB7aPyr8=
X-Google-Smtp-Source: AMrXdXvtRGHyWl44Kr1MAzojxgLIjiHWCzxiSn3tb8yRRUkpvFdKbgbdNsALdoFVCX1HVVp89FABuzJeh7GFKfsa/Bw=
X-Received: by 2002:a63:4201:0:b0:478:c151:b9b6 with SMTP id
 p1-20020a634201000000b00478c151b9b6mr4019582pga.444.1673184883751; Sun, 08
 Jan 2023 05:34:43 -0800 (PST)
MIME-Version: 1.0
References: <20230106150143.612182-1-u.oelmann@pengutronix.de>
In-Reply-To: <20230106150143.612182-1-u.oelmann@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Sun, 8 Jan 2023 16:34:32 +0300
Message-ID: <CAP1tNvTmOs2uDKhy6XK5K8sqEb9GvuN1OQd5F_nQDex4MiTXGA@mail.gmail.com>
To: =?UTF-8?Q?Ulrich_=C3=96lmann?= <u.oelmann@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230108_053445_812978_2C7E97C9 
X-CRM114-Status: GOOD (  13.50  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] of: partition: moan if adding a partition failed
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello.
Can you fix also double semicolon at line:
new->device_node =3D node;;

=D0=BF=D1=82, 6 =D1=8F=D0=BD=D0=B2. 2023 =D0=B3. =D0=B2 18:03, Ulrich =C3=
=96lmann <u.oelmann@pengutronix.de>:
>
> Do not silently continue if e.g. the label of a partition defined in the
> devicetree collides with the name of a partition defined in a GPT on the =
device.
>
> Signed-off-by: Ulrich =C3=96lmann <u.oelmann@pengutronix.de>
> ---
>  drivers/of/partition.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/of/partition.c b/drivers/of/partition.c
> index abbda674d6cb..b414985555b4 100644
> --- a/drivers/of/partition.c
> +++ b/drivers/of/partition.c
> @@ -67,8 +67,10 @@ struct cdev *of_parse_partition(struct cdev *cdev, str=
uct device_node *node)
>         filename =3D basprintf("%s.%s", cdev->name, partname);
>
>         new =3D devfs_add_partition(cdev->name, offset, size, flags, file=
name);
> -       if (IS_ERR(new))
> +       if (IS_ERR(new)) {
> +               pr_err("Adding partition %s failed: %pe\n", filename, new=
);
>                 new =3D NULL;
> +       }
>
>         if (new)
>                 new->device_node =3D node;;
> --
> 2.30.2
>
>


