Delivery-date: Fri, 28 Feb 2025 09:27:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tnvil-007z8C-25
	for lore@lore.pengutronix.de;
	Fri, 28 Feb 2025 09:27:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tnvik-0003Ig-EV
	for lore@pengutronix.de; Fri, 28 Feb 2025 09:27:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gLwyvB7cLdTuNnYeQ0a8Pm6LBeZY0i63+d/JT2pclT8=; b=oYyfl1DwCeN4YKChSvVI0JBLQo
	5F8PZcyWZOUrBIKd46SQdu/gLLOwKr/3/+Y+kLRn6DJND0YRrMwYM07Zgt9igVRoGq0J3tBu5zrGz
	X12o78rxkIOskf9hKthInT+lmn2b73lumHT1DnW4t5G1f/uVbvd02cY7EzdpfMVy4F+OuKZHIhUQO
	J5iHKXDXryzjOAgd7CaEU71UCMmJ9i2pFTOcr+I+UOGdZyhRgnE9bpJtuBJpletQflSLo6/uYvzQK
	kf6dSbyQsBvAQFWLdEaTHM/tIPP7XOXTqyVUuSvdmXmg2tCUZxLEIvVw/avS9UM/1AZa2PZNye/wn
	3auPV02g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnviF-0000000AB6p-1zMI;
	Fri, 28 Feb 2025 08:27:15 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnvaU-0000000A9UX-0IGG
	for barebox@lists.infradead.org;
	Fri, 28 Feb 2025 08:19:15 +0000
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-2234daaf269so48604275ad.3
        for <barebox@lists.infradead.org>; Fri, 28 Feb 2025 00:19:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740730753; x=1741335553; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gLwyvB7cLdTuNnYeQ0a8Pm6LBeZY0i63+d/JT2pclT8=;
        b=WfqiyCv8qFR86qtSHVNWRZY5Fowg3/OXtsY5ibXjxWhwWSH8wpjhtRcRm7ir56wTWi
         bLkdILzClP5gihsYJD2uo+HL9KOoBL3KTi2twg8prZW7PjBMTBuissPo8pW3VvCho0sO
         IsagdqSCqHSltL9yhGWBlYUlS5aFmcJ045Nt8Jug1pGN8ZqYuaeIxer64cZBLK5fIbW+
         KmN/tn5LICCUxd9MuqbV7wRVS1k6oEg3kgW/zXN+ZK261pqXV0roFSVx0JZ3YiL2OYAY
         vgxcHg5EUEjIEJLyXKhi/fUMES3KyOQUl5iLfuHwKy3qD195LJQyhncVLQqP6s9eFmNi
         WpDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740730753; x=1741335553;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gLwyvB7cLdTuNnYeQ0a8Pm6LBeZY0i63+d/JT2pclT8=;
        b=CoqIOO+ZSGW587568r41rTbj47Vm8rGFg3oB4kIzcg1LOlTJqsI5/Ui+gK0otmnN9y
         pqwfnBb25tijRW+aPAVgRPtgpdHXSpNU+LUJ9lXhiGVeCCDToAnLFCpq2Svs+nd645y2
         oDJYEDWo7mvH5ihnFoQFyhUmXhARcaWAWdbpgM+27gReOgq6SD3lJpksY2ckknJEbMTE
         9kh71ErikL5P2n+aYvWgWyxioRyiv/l52nutulGvrbgzDbM+O4Ufqfom4X9d/SLGCiTI
         RegqKfQt67QhXLeRNEeOqNOgK02SqWqtKAbq6kZAST3jcY6WNbibmosbPrlUe+aPJwzv
         cTIw==
X-Gm-Message-State: AOJu0YxZX+sbp3Gopp09LwtlNcLSdvTH9eDc/vbO2NOIiqNsWEXt+BPl
	NjG+z7wzQAKHR2oNylbvQ1kknuEaSD7jtfCO3wBraBYMSzfyk5NjkZaFXchFiytreSyvNbckm2H
	wrZqkAHubZWfIerki881utx/RNb8oBVPO
X-Gm-Gg: ASbGncsAed/hmOB+BowKeX7MsYN6nBO0icE0GTHrhtJg9YNj4WvFMNg744y3GYBEhbF
	e5YhWRNw1OkP35TJUDxljey9ZtF/W8aQpZa2EJcvWMOYXUzPJ0ManTudCf6SfLCYhzOOmqlgugJ
	MK1VKhtXE=
X-Google-Smtp-Source: AGHT+IEX7srMltrtnqN8ukKe3j17eZ+FNSlZEYdnxNWawFyfp94MJJqbLQVSB57hZWci9AhUn91XM09o8ACCON+ji/0=
X-Received: by 2002:a17:902:e84a:b0:220:c143:90a0 with SMTP id
 d9443c01a7336-223690e0257mr38545745ad.24.1740730752947; Fri, 28 Feb 2025
 00:19:12 -0800 (PST)
MIME-Version: 1.0
References: <20250228080214.1319495-1-s.hauer@pengutronix.de>
In-Reply-To: <20250228080214.1319495-1-s.hauer@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 28 Feb 2025 11:19:01 +0300
X-Gm-Features: AQ5f1JoaxICeP0ekvon28EHNLO-A6NOzqxIdfh6YuwLSb3ULQ4fZwOSYDbHJDn8
Message-ID: <CAP1tNvQ95MoXMdW1KK=23rS7kD6w=1Q49-v9WNfyuX1yo+Humg@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250228_001914_105232_63C06F26 
X-CRM114-Status: GOOD (  18.61  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] barebox-environment: Use default mount path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Tested-by: Alexander Shiyan <eagle.alexander923@gmail.com>

=D0=BF=D1=82, 28 =D1=84=D0=B5=D0=B2=D1=80. 2025=E2=80=AF=D0=B3. =D0=B2 11:0=
2, Sascha Hauer <s.hauer@pengutronix.de>:
>
> When using a file inside a partition for the barebox environment we
> mount the partition to a non standard path ("/boot") which can cause
> problems with autmounting. Mount the partition to the standard location
> and create a symlink from /boot to the mounted path.
>
> Reported-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/of/barebox.c | 25 ++++++++++++++++++-------
>  1 file changed, 18 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/of/barebox.c b/drivers/of/barebox.c
> index e6bcff7116..e52cdcf52a 100644
> --- a/drivers/of/barebox.c
> +++ b/drivers/of/barebox.c
> @@ -35,7 +35,9 @@ static char *environment_probe_2node_binding(struct dev=
ice *dev)
>  {
>         const char *filepath;
>         char *devpath =3D NULL;
> +       const char *path =3D NULL;
>         int ret;
> +       struct cdev *cdev;
>
>         ret =3D of_find_path(dev->of_node, "device-path", &devpath,
>                            OF_FIND_PATH_FLAGS_BB);
> @@ -55,22 +57,31 @@ static char *environment_probe_2node_binding(struct d=
evice *dev)
>                 goto out;
>         }
>
> -       /* Get device env is on and mount it */
> -       mkdir(ENV_MNT_DIR, 0777);
> -       ret =3D mount(devpath, "fat", ENV_MNT_DIR, NULL);
> -       if (ret) {
> -               dev_err(dev, "Failed to load environment: mount %s failed=
 (%d)\n",
> -                       devpath, ret);
> +       cdev =3D cdev_by_name(kbasename(devpath));
> +       if (!cdev) {
> +               dev_err(dev, "Cannot find device for %s\n", devpath);
> +               ret =3D -ENOENT;
>                 goto out;
>         }
>
> +       path =3D cdev_mount_default(cdev, NULL);
> +       if (IS_ERR(path)) {
> +               dev_err(dev, "Cannot mount %s\n", devpath);
> +               ret =3D PTR_ERR(path);
> +               goto out;
> +       }
> +
> +       symlink(path, ENV_MNT_DIR);
> +
>         /* Set env to be in a file on the now mounted device */
>         dev_dbg(dev, "Loading default env from %s on device %s\n",
>                 filepath, devpath);
>
> +       ret =3D 0;
> +
>  out:
>         free(devpath);
> -       return ret ? ERR_PTR(ret) : basprintf("%s/%s", ENV_MNT_DIR, filep=
ath);
> +       return ret ? ERR_PTR(ret) : basprintf("%s/%s", path, filepath);
>  }
>
>  static int environment_probe(struct device *dev)
> --
> 2.39.5
>


