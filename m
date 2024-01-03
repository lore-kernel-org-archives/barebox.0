Delivery-date: Wed, 03 Jan 2024 22:56:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL9ED-002gmF-1B
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 22:56:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL9EC-00085Z-8r
	for lore@pengutronix.de; Wed, 03 Jan 2024 22:56:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-Id:Subject:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5zbVgYKRdVGjYuZVHEyqox6uvjJ9CT1Dhc06aOjYtyo=; b=N03WsPBjO2Fl7x
	NVXnECntQ3Sm/pj0LHP9vNWfhr1+kYbvqoHYKyEkSzc2OggdIpDMs8VojWFJjHyUZ/Qnkokv6Dmev
	CbOQRgsOrP0Syfvfx/Oq83I2vGelsC4/UCSgI1/it+6S9XGQgqz2pynUVY4kZ0RnEp4oViOL0wJ5r
	8Uq/25MpLJ1OdlXz4eJxwH2XRrpRpMl5B60hpAu2DaS1JMSINHWSPDGHJZvJVrk5hC+eeyuj7enra
	Rl6ue8X/RhGMv2COHCN3naHqxFM5+2fS+mZzwpcADNK6AjUA6BY7+QsaJ5V+Ysv2ospo4B1kQ+smg
	AAzukwrxfKH3iChxdwqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL9Cr-00CChd-1l;
	Wed, 03 Jan 2024 21:55:21 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL9Cm-00CCbh-0N
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 21:55:19 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-50e7c6e3c63so7989300e87.3
        for <barebox@lists.infradead.org>; Wed, 03 Jan 2024 13:55:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704318906; x=1704923706; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:subject:cc:to
         :from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5zbVgYKRdVGjYuZVHEyqox6uvjJ9CT1Dhc06aOjYtyo=;
        b=Cn9VlOoH28xYJI+GNMuTZx8PDloxyx/qJM/MWh0ndJe7bSHqbNaXow+1BzJEYHdhQN
         Ihszne8XUqdwkrmzMp5pPFmZLinH6kPBxnTyxonQeNXP5S+LKJzNyO+d9fIVmlsVnpDT
         Hmh1VMzjIvM8r6pYODi5g4ItpNm6e6TIl6WUU331WQjn+xklh15+A9ltBdh0VyRBJSxU
         WQkj1KAXTNsZAGb1Vu3Y6BO7ClyQSJ5QSrTb8Ba29aJvltfJaib43uwr4j+6lluNkgEq
         Dq2nyVCkN3z6mDube/BEYCRklaGwvDq4SfsnjSBlbV0j6hc6IhGBE0v90j8AtzrbsvzT
         hDSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704318906; x=1704923706;
        h=content-transfer-encoding:mime-version:message-id:subject:cc:to
         :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5zbVgYKRdVGjYuZVHEyqox6uvjJ9CT1Dhc06aOjYtyo=;
        b=om/69yhdowrl+jOjHSACIFI7z5rWUx7wRYdPoRt/WUzdjMHILNPavReM0AHLefKlr5
         AP7E6sCCUipYZkD2TGeteXx6l2u83eZnLj/0xQl6TCk4xJmqFAq4MR4HHTvYOfmv9wJC
         iu7xUL5w80VPhW9cqCR/QE0puUwAYll8S/E0E9RMvaeRQ+WdrnMuMxxZSGtacoBcGV9b
         Awwl5QX9qImIZEeSl2FSJT9tHy/B+zNRYCzq2LDbDn6xblxYCaZqDFJiTyY6EXbWEguH
         Bcve93hkvWnJz9ksWrJJrOkFBMAuz7W4Y6jK0kr+l83KkvEuqrs+1FbiWfS+zCXpkscW
         F67w==
X-Gm-Message-State: AOJu0Yx0IrHKVIzOWnFrpwKbe4qahafJqxVsz1YyUOEB+FfoG19CItTm
	SGS+sp+b6dhBrJhCJlnPs0yJQl9yYLs=
X-Google-Smtp-Source: AGHT+IHkcWfKSBVJjAcAVY+IeK9EJVTpcsep4VOAzDYRr5Tea7AdOlJXIRDatt/yGKfbNuLJUHAF+Q==
X-Received: by 2002:ac2:4c2d:0:b0:50e:75e3:10f2 with SMTP id u13-20020ac24c2d000000b0050e75e310f2mr2664167lfq.103.1704318905625;
        Wed, 03 Jan 2024 13:55:05 -0800 (PST)
Received: from flare ([146.185.218.236])
        by smtp.gmail.com with ESMTPSA id d12-20020ac241cc000000b0050e6b5f7938sm3571775lfi.300.2024.01.03.13.55.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jan 2024 13:55:05 -0800 (PST)
Date: Thu, 4 Jan 2024 01:04:04 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Message-Id: <20240104010404.c88b208689aca142c3828bf8@gmail.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.33; i686-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_135516_159906_6ACF6A58 
X-CRM114-Status: GOOD (  10.52  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [RFC] uimagefs segmentation fault
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi!

I have prepared a linux uImage file for testing my uImage-related patches.

barebox$ dumpimage -l ./defaultenv/defaultenv-2-base/uImage
Image Name:   Linux-6.7.0-rc4-00003-ge185a416f
Created:      Wed Jan  3 15:28:27 2024
Image Type:   ARM Linux Kernel Image (uncompressed)
Data Size:    6131616 Bytes =3D 5987.91 KiB =3D 5.85 MiB
Load Address: 00000000
Entry Point:  00000000

I tryed to mount my uImage under mainline master sandbox barebox:

barebox@Sandbox:/ mount -t uimagefs env/uImage /mnt/
Segmentation fault

The problem is in the uimagefs_add_str(). if s =3D=3D NULL then strlen() fa=
ils:

static int uimagefs_add_str(struct uimagefs_handle *priv, enum uimagefs_typ=
e type,
                                char *s)
{
        struct uimagefs_handle_data *d;

        d =3D xzalloc(sizeof(*d));
        d->type =3D type;
        d->name =3D xstrdup(uimagefs_type_to_str(type));
        d->data =3D s;
        d->size =3D strlen(s); <<<<<<<<<<<<<<<<<<<<<<<<<<< s =3D=3D NULL!

        list_add_tail(&d->list, &priv->list);

        return 0;
}


It looks like my uImage lacks some attributes, e.g. "os".

So I can propose several solutions for the problem:

1. don't call strlen(s) if s =3D=3D NULL:

@@ -226,7 +226,7 @@ static int uimagefs_add_str(struct uimagefs_handle *pri=
v, enum uimagefs_type typ
        d->type =3D type;
        d->name =3D xstrdup(uimagefs_type_to_str(type));
        d->data =3D s;
-       d->size =3D strlen(s);
+       d->size =3D (s !=3D NULL) ? strlen(s) : 0;

        list_add_tail(&d->list, &priv->list);

So we will have empty files (len =3D=3D 0) for absent attributes.

2. regard the s =3D=3D NULL situation as error:

@@ -222,6 +222,9 @@ static int uimagefs_add_str(struct uimagefs_handle *pri=
v, enum uimagefs_type typ
 {
        struct uimagefs_handle_data *d;
=20
+       if (!s)
+               return -ENODATA;
+
        d =3D xzalloc(sizeof(*d));
        d->type =3D type;
        d->name =3D xstrdup(uimagefs_type_to_str(type));

So we can't mount uImages without required attributes.

3. don't show absent attributes, e.g.:

@@ -222,6 +222,9 @@ static int uimagefs_add_str(struct uimagefs_handle *pri=
v, enum uimagefs_type typ
 {
        struct uimagefs_handle_data *d;
=20
+       if (!s)
+               return -ENODATA;
+
        d =3D xzalloc(sizeof(*d));
        d->type =3D type;
        d->name =3D xstrdup(uimagefs_type_to_str(type));
@@ -421,7 +421,7 @@ static int __uimage_open(struct uimagefs_handle *priv)
                goto err_out;
=20
        ret =3D uimagefs_add_os(priv);
-       if (ret)
+       if (ret && ret !=3D -ENODATA)
                goto err_out;
=20
        ret =3D uimagefs_add_time(priv);


I'm not a skilled uImage user so I have no idea which solution is acceptabl=
e for the users.

Please comment!

--=20
Best regards,
=A0 Antony Pavlov


