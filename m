Delivery-date: Thu, 30 Jan 2025 09:07:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tdPa0-006GB1-0n
	for lore@lore.pengutronix.de;
	Thu, 30 Jan 2025 09:07:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tdPa0-0001f8-7H
	for lore@pengutronix.de; Thu, 30 Jan 2025 09:07:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=egOMqrEIpI7pf+XCoFS+mcIpuzuEprXWZyGm/74V+UY=; b=ehsEhSP/PrNkKw/BlaBjnoMYQw
	cgAva0TC8XsYXwQ44l8A8ETzbNnujrmTJeGOUJJLDByOW0CF9XlOR8SI4O8be/+xxqfJxA0nsKY/2
	NDJMuRdZstOCVtAPGK2qQBzU3h4+V+8f/jFlSP5YZbTYQjSEwHPrp3+H1PzF97ju2awUH8NeCd/ZL
	BKAuXzFghb9zS9Tv/Nqn5MsAAn01v5W34kJ3K7Zj1tOlj0nAtTYjomclikSojU1DEz2gxraaZsiB2
	7877qaskX/P4dxNrixXy+a0l1JsqNjCv2LhumvYK7IPmgSSBTVzggwlfmyeAI86Lze9iLg6kviOig
	d7XTJl5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tdPZJ-00000008OTY-1jcU;
	Thu, 30 Jan 2025 08:06:33 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tdPZH-00000008OTA-1wpE
	for barebox@lists.infradead.org;
	Thu, 30 Jan 2025 08:06:32 +0000
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-21636268e43so10140575ad.2
        for <barebox@lists.infradead.org>; Thu, 30 Jan 2025 00:06:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738224390; x=1738829190; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=egOMqrEIpI7pf+XCoFS+mcIpuzuEprXWZyGm/74V+UY=;
        b=UFQSMle+32dltvIvCzpzgkN8sjSeytLsNwFBV6VjXgl7SkLJVHmNS471uOEciIx5Q7
         mpeRqIQ+6uybO+M4hOyO+3Ygv5vv1OZVAwbhVA9qm7S/WGJc97QRsEOUOCKH9S1STQ/T
         j5ggq0nQrv4p+JlqeaQMvDS1DaSW1jIO9+XX6BTBCIOnxhvGmeEM8GYBz2P5YAL6CYI3
         1ZGZKQGhTmjfZYtTpo1oabGpvgItCgNOEOBAthC0SDKi+Sq9TBuhcLt81dsFsQ7Ye3Q6
         Oi9KHcxhlI/1qK9JGwTQy0rk88kD1XHQgbv+GyvvYNuT2rCy6Q+4GdpMHtPI7pca6sSa
         /QTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738224390; x=1738829190;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=egOMqrEIpI7pf+XCoFS+mcIpuzuEprXWZyGm/74V+UY=;
        b=OrvMSdY0AcvAwop0tAqiDfADXYzl7E29FKYNHiNB2oTS82gnMQJllScxkBEeWb97PH
         9ACDlFtw0k21KtWqDV03DvVQi6l8vS8S/fl3sjuCBv10nxUj4YjUIbBTjghskFmwS0jd
         ZNBDyCtx+FuUlWQA7Vj7FMFBkAKtodajpL9/p/MVQEOycEFVSCAhMO9TF1KFBz/65Eab
         xRRoen1SYPMoRZCYvdvkhEIMY0y8NFMIdbrdVwC+B/q1C2DaN5oyg4YyFa5Rr5JcQLxc
         qPzrdheL4tM3w47tbOzYv2hTLlLAo2HSX9rCZjDPOhgN3T4yXjmZnFcO0cF+cUHQ050r
         IeeQ==
X-Gm-Message-State: AOJu0YzmN/v5+zXcRJ2STu9DWMszd0i1RhI9mrjXrovCB0/6uu6/37Vm
	sizll21BQkiJ4kOkyxIvoNjvkeM23UzqPrsmXINNN/tQthww46kJx58wW+srtpu3dyRUMoNGu+9
	YJ3UQzoLJm9dfFT8KwGUnBHQnx8oIOUtxbQ8=
X-Gm-Gg: ASbGnctCCVtHpwc9aL64W+tK7WtcSYjwsC7+31OM/GZXssskxujJhC6rmxixj21qceE
	e2C6AAa6y9Eh1S5MpKNFqKA8eidMQ3tE2NXTWw6OD3LBkJaUD78Yr674Vd2ltpzgOm++5jbEj
X-Google-Smtp-Source: AGHT+IHfYhNE/wgKW7RPEn0XSYJVG+YkkZ0apgajq0+wTtDw3HcRmeJKmB67Pvl6OUwwNMR2JY8amNPf6taWjvBRt7Q=
X-Received: by 2002:a17:902:cf0a:b0:215:a80b:f6f9 with SMTP id
 d9443c01a7336-21dd7c449ffmr78276755ad.8.1738224389877; Thu, 30 Jan 2025
 00:06:29 -0800 (PST)
MIME-Version: 1.0
References: <CAP1tNvRa-1XPm087pzti1XmqvRDqchKOWZgvgYmcAQh+uOayBg@mail.gmail.com>
 <20250129085028.rd6xep2tjdffynna@pengutronix.de>
In-Reply-To: <20250129085028.rd6xep2tjdffynna@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 30 Jan 2025 11:06:18 +0300
X-Gm-Features: AWEUYZnCNk5D95aH2VxvcSBqqrY7uAHjnkISx8_xgrnTPB8Zg7dR1XOoTVGdCls
Message-ID: <CAP1tNvQacfmq4oL1-ptT-XTfmoFWwAU6E-m5+cHuPgdEZ=EhOQ@mail.gmail.com>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250130_000631_509349_B06631F5 
X-CRM114-Status: GOOD (  17.63  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Devicetree add-on
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello.

Yes, I know about such an implementation.
But it seems a bit complicated to me compared to if it were possible to loa=
d
the full devicetree.
Also, the overlay is a bit limiting functionality, for example I can't use
new aliases in the overlay. There are also difficulties with writing endpoi=
nts.

Thanks!

=D1=81=D1=80, 29 =D1=8F=D0=BD=D0=B2. 2025=E2=80=AF=D0=B3. =D0=B2 11:50, Mar=
co Felsch <m.felsch@pengutronix.de>:
>
> Hi Alexander,
>
> thanks for reaching out to the ML.
>
> On 25-01-29, Alexander Shiyan wrote:
> > Hello All.
> >
> > The question arose whether it is possible to load an add-on into
> > devicetree, but NOT through an overlay,
>
> Why not dt-overlays?
>
> > i.e. as a full-fledged dtb?
> > Ideally, it should look like this: the main ENTRY_FUNCTION() loads the
> > base tree, then,
> > after initialization in device_initcall(), the board modification is
> > determined and the full devicetree
> > written for this variant is loaded.
>
> Sounds exactly like a dt-overlay use-case. As it sounds to me you do
> have common base for your platform/product family. This would be your
> base-dtb loaded for every product. Later on you need to apply the
> overlays accordingly.
>
> E.g. for the platform family I'm currently working with we do the
> following:
>
> base-dt:
> --------
> / {
>         feat_a: feature-device-a {
>                 compatible =3D "xyz,feature-device-a";
>                 ...
>                 ...
>                 status =3D "disabled";
>         };
>
>         feat_b: feature-device-b {
>                 compatible =3D "foo,feature-device-b";
>                 ...
>                 ...
>                 status =3D "disabled";
>         };
> };
>
> feat-a-dto:
> -----------
> &feat_a {
>         status =3D "okay";
> };
>
> feat-b-dto:
> -----------
> &feat_b {
>         status =3D "okay";
> };
>
> This way we define the whole node within the base-dt and the overlays
> only enable it. This makes the overlays very straightforwward and you
> still have the opportunity to reconfigure the device-node if you really
> have to.
>
> Regards,
>   Marco


