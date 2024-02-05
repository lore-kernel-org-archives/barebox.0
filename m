Delivery-date: Mon, 05 Feb 2024 19:32:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rX3le-004atr-0n
	for lore@lore.pengutronix.de;
	Mon, 05 Feb 2024 19:32:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rX3le-0004JH-Se
	for lore@pengutronix.de; Mon, 05 Feb 2024 19:32:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Mime-Version:References:In-Reply-To:Message-Id:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uKJjunN4tcXroJRqGIliKMkmvWHN/5e+UuSzXvO5mNs=; b=LU2q3FAYJlJtRhZV3y+9crjGYF
	+rsLLnQnszuWQO1IwoqtMBNFFtSVQpS8pCSzyvc67l4I8V7xHCg6b0iLrv78DA1PABtSjLyJma+jt
	aEFmd0Tm6/oZsr9L16D5QtYZDHIOiBPH+UWlNmtUKdYkSrvmJu4MVbJu9uGav9me0WX9drJEbEot3
	2fv5zzAHnd2Z8F+e18Xg+2ovAp+iOi8s+1QMf0ynLcoDdtouZfw6TLSYgIcNUT0e746RzVbnUqIR0
	VryT3TuI3Zn+u9AgzX2Sa0oY6eY9OZ0voWmLZ1onrgLFQWFSePcMxFf/MRMfUwbSBtEYq7waAY4VP
	TM3mXo9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rX3l2-00000004ONX-3Pqx;
	Mon, 05 Feb 2024 18:31:52 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rX3kz-00000004OMm-0qy5
	for barebox@lists.infradead.org;
	Mon, 05 Feb 2024 18:31:50 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-511234430a4so8237624e87.3
        for <barebox@lists.infradead.org>; Mon, 05 Feb 2024 10:31:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707157907; x=1707762707; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uKJjunN4tcXroJRqGIliKMkmvWHN/5e+UuSzXvO5mNs=;
        b=MGOO19ar9MUS8v/0jHsLEjfs4YhvI6+B34F+U5eR0EHFHbr8hdkjfhVGFkEzDWFHTd
         RI/HwOdUpynXyYz9RSeghz9skD+3eE3Ee9g9YpDu9zE+8zkZwuScnDZgQ2DlgOocCPgq
         MsgRnjuxtRg58036cJSBigV6y0Pmheik+oFDMp5xZG+d4ldruD4Eu/Ja/9lz5JtIlh4d
         Y5abKssnR0Z4YlXtByJvlXhcGLC76694LBsCsWkoWN0lhTYmuu19WE0PrgZypw9nDlyH
         h6akM25mnEh25xBI+JBGN22r7Ku9DuRqkDRwnLfuT3CtgM47uHX0vlEY15YhJUq4PyuC
         sZrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707157907; x=1707762707;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uKJjunN4tcXroJRqGIliKMkmvWHN/5e+UuSzXvO5mNs=;
        b=s3Qgfm+Rifopvyqvf3HHUX/a0n1LrMTZwRD5UbMS17+2cMuwBOwSVx5NuOGtolLqJ0
         joYv9zO8vQARLSJ1liPRCJShPYV39S7epll/snGc8dwPzpsr+bSeN9vnV4/+OF9vq3Uk
         /2D8gkCcst5QQrJOSGJjHLNKb1hOi3U83EwIfMfOHoPeapL9/mVhgdLJ7VA1ZM90/6TL
         eoHRlI4e7LefHKbeS0Pcg2L2ftR5gFwhRyKzhjD2GUqqn05dYla8vEV7mLGQfAUsc1Bg
         LtXGRsWKNpjRDBC1sfK16m6YorzPR1K5i6Xf5X8N1h/RlfrxxJ7a0y2efZcW1ePlmjYr
         SI7w==
X-Gm-Message-State: AOJu0YwjbfMmJ6ZExN02xxOo+azypjDsrWxdEJGEu87ySrDVvDktewGa
	vhjTZNw03zVzZxebzHbu/SGTDrcruxiZIbJIKFerTcW/S7v7KmaB1DTG7PGs
X-Google-Smtp-Source: AGHT+IFONhidbeqBGBbEyVC8e5VDXKq0KqPoMZ5MyQDOKr52z/Fgy4MQZYrIA4uwxKuu6xJAGd/lzw==
X-Received: by 2002:ac2:5499:0:b0:50f:1c06:f9ba with SMTP id t25-20020ac25499000000b0050f1c06f9bamr16714lfk.64.1707157906869;
        Mon, 05 Feb 2024 10:31:46 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCVDL0RZPPd9u8D21DgQ8C3M7YDjjZ4d/iPVMFKlCJ6Jx5m950Ey8INRtzEfSS8+HmpmbFgTfY/7sduST2lCvKkcJZOALy69GdYMl7I=
Received: from flare ([146.185.218.236])
        by smtp.gmail.com with ESMTPSA id h21-20020a19ca55000000b0051155ed0553sm27715lfj.205.2024.02.05.10.31.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Feb 2024 10:31:46 -0800 (PST)
Date: Mon, 5 Feb 2024 21:41:25 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Dan Shelton <dan.f.shelton@gmail.com>, barebox@lists.infradead.org
Message-Id: <20240205214125.166802e0ece35280b563d728@gmail.com>
In-Reply-To: <a154ae13-86e1-4c2b-9c38-3774fde6a6c8@pengutronix.de>
References: <CAAvCNcCZhS8mkvdgcJ2L-eiur+OxgWEXRLnadO_HFyHfSi7WFA@mail.gmail.com>
	<a154ae13-86e1-4c2b-9c38-3774fde6a6c8@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.33; i686-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240205_103149_267343_C5FD18D4 
X-CRM114-Status: GOOD (  22.60  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,NICE_REPLY_A,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: NFSv4 boot support?
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, 31 Jan 2024 22:37:50 +0100
Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:

Hi all!

> Hello Dan,
>=20
> On 31.01.24 22:03, Dan Shelton wrote:
> > Hello!
> >=20
> > Does barebox support booting from a NFSv4 filesystem, e.g. boot from
> > NFSv4 filesystem into a Linux NFSv4 netroot (diskless machine)?
>=20
> The barebox network stack only does UDP/IP. There have been attempts to
> bring a TCP stack into barebox, but none have so far succeeded to
> make it mainline. This is a hard requirement before we can consider
> supporting NFSv4. I hope that lwIP could fill this gap in the future,
> but no one is actively continuing this work as far as I am aware[1].
>=20
> > We need NFSv4, because it does not need rpcbind, and combines
> > filesystem, lockd and other stuff all in one TCP port (2049). Site
> > policy also does not allow NFSv2/NFSv3, but allows NFSv4.
>=20
> Please note that this only concerns barebox and that kernel nfsroot is
> unaffected. You can load kernel and device tree over TFTP and supply a
> suitable command line argument to the kernel to use a NFS root.
>=20
> The standard net boot target does just that:
> https://elixir.bootlin.com/barebox/v2024.01.0/source/defaultenv/defaulten=
v-2-base/boot/net
>=20
> It specifies TCP, but hardcodes v3 currently. I guess we could drop the v=
3 and let
> the kernel decide on its own what version it will use? If that doesn't wo=
rk, you can
> override the file locally in your environment, e.g. via CONFIG_DEFAULT_EN=
VIRONMENT
> pointing at a directory that contains a boot/net file with the appropriate
> changes (or just call your boot target something else like boot/nfsv4).
>=20
> Hope this helps.
>=20
> [1]: Some attempts I am aware of:
>      https://github.com/a3f/barebox/tree/lwip

It looks like lwip is BSD-3-clause-licensed. Can we use the BSD-3-clause co=
de in barebox?


>      https://github.com/olerem/barebox/tree/picotcp-2019.06.29
>      https://github.com/jmaselbas/barebox/commit/4a987bfdc2ad50c13126dd62=
90d2477c3fc0c87d

--=20
Best regards,
=A0 Antony Pavlov


