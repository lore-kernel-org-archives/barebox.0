Delivery-date: Wed, 28 Apr 2021 06:40:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lbc0B-0007M5-6c
	for lore@lore.pengutronix.de; Wed, 28 Apr 2021 06:40:43 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lbc0A-0002ce-9I
	for lore@pengutronix.de; Wed, 28 Apr 2021 06:40:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:Message-Id:
	Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TcxVvpktG7nrNOm0KVffc1lpTMgxZzNiJ+VIanI2Wi4=; b=qdZTJpyyOkF2pCCnF1yDM9dvH
	yCeT4tIhHv9EKmtjnXIxCyyBTeoeRseVY/syNWt8n/D8N3CA+Maicx27d//YRhOqA9VByNtfNEty0
	lpAA43krRFvNSD9kq67zb82lD7Sv0Ub4/+HJKGzOi/UAxbSGrifM+coIy46LelkANj0zbmYR8IiCm
	QwZAS+AGFsTts+L1R8+ct9Ybx0g03thAkZ1XIa5OGMW/LjPeTq0XNtleoD+xqm37heawvLDT/k2J7
	a9nyKgzbiGn/0k3mwIWpsmQENjUEKir8HMKEu+iuzfWPU/sqcRV60rLBDxhO2j5vi35r+KTx20FSs
	KwQA5mnFQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbbyv-002lTR-7o; Wed, 28 Apr 2021 04:39:25 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbbyq-002lTG-0a
 for barebox@desiato.infradead.org; Wed, 28 Apr 2021 04:39:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:Mime-Version:References:In-Reply-To:Message-Id:Subject:To:From:
 Date:Sender:Reply-To:Cc:Content-ID:Content-Description;
 bh=dmCEhjS/EvhRBWM9yEUKIgI5XlXu+W0eiwg11P8tW5A=; b=z9yRXz6bMdn/NoPGfQjZWIz69w
 2RpJ36xWqcIfURQ2yOsOxJPPSPaQzbIStvkgRuvyBT3ouabDzE/TiXvJ33LjCKaSDc9IbmVvwfMIh
 IHQA+tu5kYo+NOWDVm7xM/Lk2cemqLtko+xQnPToNf7AaxG3295JsykOFFo8uqGmo75fZ8jSvX28m
 m+CKPZogN8icE4illAZRAq/1uyy5oT3HGTHjXkGCO1nXw22cmhodRoCr2SreiTM4xiCCNBpRehd90
 WFt8ZcukvwpW5Xax/D2JIvD9ot8nky1FAtIBC9G/xtk4ynCDWvnL8QqFJFbz4DXwSAmtGoTjlUhGI
 K/EuLCBQ==;
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbbyn-00HB02-5w
 for barebox@lists.infradead.org; Wed, 28 Apr 2021 04:39:18 +0000
Received: by mail-lj1-x234.google.com with SMTP id z23so24235157lji.4
 for <barebox@lists.infradead.org>; Tue, 27 Apr 2021 21:39:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=dmCEhjS/EvhRBWM9yEUKIgI5XlXu+W0eiwg11P8tW5A=;
 b=Oy10AhZKqnSx+/V+CGUL7UNwo5TF5K5Aacl5n8My+A8NNw/gwTC3rXo4POKZJAYNie
 Oz1w/08k8xWCkH7hVc1ds4OHiigVmgcTP5jv/BXJ8lmtDxdiGrXSX8gxR4Yk+VK9H4vq
 OKb9kAL6RDFnypMS/pEPbDYHxg00TxaMnj4rb1+7mkdjZz4007hKE6nuxtoyHn+KwPuL
 xawXqvR8B9J13tBADU8DwcccxawBvnJVVJaHMwd0NARPaJGDNdbuP3cZ9pxUtf0dhGyS
 V5oACugzQZZVn6SeXslQqVVjOg2/dAKs5g4zhaDeMHrfBN1nLZOWCEmnlgj6X5qstKZa
 nedw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dmCEhjS/EvhRBWM9yEUKIgI5XlXu+W0eiwg11P8tW5A=;
 b=IQ+PdORWOhSnz+ML0QgypoGUHduAcQen37QdaH6oWPRVZ/glqco9tYX1XTdwArF93F
 no/s3L2uUFiINb3NJJ2aW5BTUgv55EqIqd6AvOhUUTkggLzVPqSs+3tvt0b95MzjsoHD
 qNHCI2q8jJ/5Z+mVFj4iYkFsdGf4LwWnrPwjHIYbNKaWGXNxYXHuGgLt+7Z2+LbvdTuf
 cfWqzi3Cg9e1yiYiOsaGgv+t5SiU8iUJeE/jm8UPtIL/H7IXExSds2235nlMbQVbBOy0
 86+Ve3NpAEc1ieBTwrbrwKDc2N03gYuvtTpXewUGWk0bSgqsTMs82v9TU1lQJm9m4vPb
 VLFw==
X-Gm-Message-State: AOAM531MaRrwZJWE/1EKN1MZNTglF7y+707ideYKaBziMcZRug/lLmV/
 h8h8fd8YDtb3XpvMzx5Qt7AO1LQCIN1kGw==
X-Google-Smtp-Source: ABdhPJzIJEESDal5VJnPdG8+KxG8odihp8jq1CZGTjN0VEine9pX1o99QWrkQ3rcuGBewXjFY2bjZw==
X-Received: by 2002:a2e:a590:: with SMTP id m16mr19284780ljp.422.1619584753629; 
 Tue, 27 Apr 2021 21:39:13 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id v8sm924774ljn.17.2021.04.27.21.39.13
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 27 Apr 2021 21:39:13 -0700 (PDT)
Date: Wed, 28 Apr 2021 07:39:11 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>, Uwe
 =?ISO-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-Id: <20210428073911.122e5bd2dd27df3ec6bf6873@gmail.com>
In-Reply-To: <20210416091404.92251-1-antonynpavlov@gmail.com>
References: <20210416091404.92251-1-antonynpavlov@gmail.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210427_213917_263716_E94E16BB 
X-CRM114-Status: GOOD (  18.32  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] scripts/spdxcheck.py: Use Python 3
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, 16 Apr 2021 12:14:04 +0300
Antony Pavlov <antonynpavlov@gmail.com> wrote:

ping

> Based on this linux kernel commit:
> =

> > commit d0259c42abff51b586496a0594933e394efefbc5
> > Author: Bert Vermeulen <bert@biot.com>
> > Date:   Thu Jan 21 09:54:12 2021 +0100
> >
> >    spdxcheck.py: Use Python 3
> >
> >    Python 2.x has been officially EOL'ed for some time, and in any case
> >    the git module for it is hard to come by.
> =

> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  scripts/checkpatch.pl | 4 ++--
>  scripts/spdxcheck.py  | 2 +-
>  2 files changed, 3 insertions(+), 3 deletions(-)
> =

> diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
> index b8bd4e1a59..36e3d768f3 100755
> --- a/scripts/checkpatch.pl
> +++ b/scripts/checkpatch.pl
> @@ -885,10 +885,10 @@ sub is_maintained_obsolete {
>  sub is_SPDX_License_valid {
>  	my ($license) =3D @_;
>  =

> -	return 1 if (!$tree || which("python") eq "" || !(-e "$root/scripts/spd=
xcheck.py") || !(-e "$root/.git"));
> +	return 1 if (!$tree || which("python3") eq "" || !(-e "$root/scripts/sp=
dxcheck.py") || !(-e "$root/.git"));
>  =

>  	my $root_path =3D abs_path($root);
> -	my $status =3D `cd "$root_path"; echo "$license" | python scripts/spdxc=
heck.py -`;
> +	my $status =3D `cd "$root_path"; echo "$license" | python3 scripts/spdx=
check.py -`;
>  	return 0 if ($status ne "");
>  	return 1;
>  }
> diff --git a/scripts/spdxcheck.py b/scripts/spdxcheck.py
> index 6374e078a5..0f81337394 100755
> --- a/scripts/spdxcheck.py
> +++ b/scripts/spdxcheck.py
> @@ -1,4 +1,4 @@
> -#!/usr/bin/env python
> +#!/usr/bin/env python3
>  # SPDX-License-Identifier: GPL-2.0
>  # Copyright Thomas Gleixner <tglx@linutronix.de>
>  =

> -- =

> 2.31.0
> =



-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

