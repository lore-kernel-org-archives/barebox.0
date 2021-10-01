Delivery-date: Sat, 02 Oct 2021 01:49:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mWSH0-0006N4-Ik
	for lore@lore.pengutronix.de; Sat, 02 Oct 2021 01:49:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mWSGz-0007zI-Hu
	for lore@pengutronix.de; Sat, 02 Oct 2021 01:49:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zx9znQzJpWpnAze676vs1BJm9A6S+QnQ6i5bjvGOwrE=; b=IfsYi6Bz40VvH2
	Nbo/jwoZkgRbeemCA+4A93LO9YhIhY99G03u3PJvksD13QXyCcR9HQKB/TkbbwHhZK5z+FwJuMTpN
	Jnq5ycRbdOk4arKfP5DoI+QwVhyzNAy1Hnz9JvJjG/MdaFWePbBbFwTQJfZRSxtLnnKZtN5K5Vq+u
	gxj1eXcAxywQ6X1BiTwshnND9S+tVlvBjKy3SbVP2PkCZyd2vsYa/37+0ZIsPepr9stHNoUbB0ygq
	cmdISzC9sKWbSw2zKOX/zh9jwsP9WUjTEn3ejb0ZuxC5yRsKNJLHWBex/uF0fhBVc2Kv7UXT1GeSe
	QBq9cO6TSyFvNuIT8K8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mWSFI-001USY-4J; Fri, 01 Oct 2021 23:47:16 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mWSFD-001USD-36
 for barebox@lists.infradead.org; Fri, 01 Oct 2021 23:47:12 +0000
Received: by mail-lf1-x130.google.com with SMTP id y26so44856744lfa.11
 for <barebox@lists.infradead.org>; Fri, 01 Oct 2021 16:47:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YfUcTLMeSC9mMxIzs8e8eCIslZL9lagC7a25jGL2Lzk=;
 b=GmmlzfgaodXiFUSpeBBiZ7wCZ18DjIdJWEesM7hVPObCddl+R66m1ktbKHeNZCoOtc
 ua1rgA3M2Ib2CgKepYL9D+bPJawow/cZplfsYKjSvqBQvkaNXqm4TLh4Z9psH3ALXCl/
 2tb1/8d61sSYrxknjrPfC4vCRHp0Hu+0MU3XQ+gjhsBOYdVfdTrww8hrA4J7F+2GZsGa
 Tr1fsrU/cYwhM6VyU734qslhocSCDRtDSYmrmgcBW5CwEP520KLv8RbX/5M0ejS+U8Dw
 qTH8IBz6TnxxPUslk+e2ZzVfkEaYAAdlPg7PbzdBf1daoVcMF7oYB/Wiq4f1TgyJ3Zmp
 6LFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YfUcTLMeSC9mMxIzs8e8eCIslZL9lagC7a25jGL2Lzk=;
 b=uRHSILqR4qwRcPa7b1f0HlBy4i3CsGY6iihmY3EVZdH5IHkTwIG1QUFoQdmo6frFr2
 QG8twXh2OgEPLXc1l4D91rNGW5nak8k/9uxphPemqviAAhuKTeJRNg1NBlQAwi0KzXAf
 Ce8ZTQKpcBN/RSrWvXeJm+JVLB5uVpfFdEDY6vj0kAq1VxnQk+jHgMvR//JTD0jpY06G
 A8aLarx/Z7+vXQCRcxkh5+K/KBl7p+egZwLv84WG8rmBTbw+rgOpqSaRa1LQYFB8g6On
 i98HHHdxCDc3p8guzjmQCRtveu1LfkTJwnVgZ8rrRLmmlCQwrsxgFHbbxgMRkQfEN590
 A/yA==
X-Gm-Message-State: AOAM533o1Vyl79WIHXwTIDpCHw8WkhrrAVFlT0l2onZgEnpo2muCZBhy
 1ZWCHWFYcnFAqsXFGiVkAvpZIfjllLw=
X-Google-Smtp-Source: ABdhPJz+QtpAkuZFvotgtRQberILqP6RL0jair3EOFNRo17s5uKV6IGqRsxkg3a6hqOMjjLwOau1VQ==
X-Received: by 2002:a2e:b8d1:: with SMTP id s17mr768671ljp.173.1633132029381; 
 Fri, 01 Oct 2021 16:47:09 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id m2sm803983ljj.70.2021.10.01.16.47.08
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 01 Oct 2021 16:47:08 -0700 (PDT)
Date: Sat, 2 Oct 2021 02:47:07 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, Uwe =?ISO-8859-1?Q?Kleine-K=F6n?=
 =?ISO-8859-1?Q?ig?= <u.kleine-koenig@pengutronix.de>, Steffen Trumtrar
 <s.trumtrar@pengutronix.de>, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-Id: <20211002024707.a75f2fd7ed905739c5f14aea@gmail.com>
In-Reply-To: <20211001144619.6db15b8269c912722bf0f2d0@gmail.com>
References: <20211001144619.6db15b8269c912722bf0f2d0@gmail.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211001_164711_180938_A9851515 
X-CRM114-Status: GOOD (  12.36  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: 'of_compatible' and 'model' imd records are unusable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, 1 Oct 2021 14:46:19 +0300
Antony Pavlov <antonynpavlov@gmail.com> wrote:

Hi all!

> I have cloned barebox c67ada0024da (v2021.08.0) and found that
> 'of_compatible' and 'model' imd records are unusable.

I have found a quick-and-dirty solution for the problem.

of_compatible and model imd types were introduced in

commit 97e81f2d78f30fb4936f0f6fe52b317d8dbc9881
Author: Sascha Hauer <s.hauer@pengutronix.de>
Date:   Mon Jul 28 07:22:40 2014 +0200

    Add support for metadata in barebox images


the commit
commit 58eae8361c10fea661bcb48c4c5e75e7ad19e1c1
Author: Sascha Hauer <s.hauer@pengutronix.de>
Date:   Fri Oct 23 09:14:54 2015 +0200

    ARM: Allow compressed dtb binaries

breaks adding of of_compatible and model records
by changing in scripts/gen-dtb-s.


the commit =

commit c1c818735caa8222d88aa9286a219d6055c1699d
Author: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
Date:   Thu Feb 21 11:25:30 2019 +0100

    imd: create new helper macro to add data from oftree to image meta data

introduces macro for explicit adding of of_compatible
imd record from C code.


You can resurrect of_compatible and model imd records adding
by partialy reverting c1c818735caa822:scripts/gen-dtb-s and 58eae8361c10fea=
66:scripts/gen-dtb-s
e.g.

barebox$ make rpi_defconfig
...
barebox$ make
...
barebox$ ./scripts/bareboximd images/barebox-raspberry-pi-3.img
buildsystem version: =

crc32: 0x00000000
build: #8 Fri Oct 1 23:23:30 UTC 2021
release: 2021.08.0

barebox$ patch -p1 <<EOF
diff --git a/scripts/gen-dtb-s b/scripts/gen-dtb-s
index 4f8c62a0b..649021e20 100755
--- a/scripts/gen-dtb-s
+++ b/scripts/gen-dtb-s
@@ -18,8 +18,8 @@ FDTGET=3Dscripts/dtc/fdtget
 =

 if [ "$imd" =3D "y" ]; then
 	echo ".section .barebox_imd_0.${name},\"a\""
-	echo ".global __barebox_imd_OF_${name}"
-	echo "__barebox_imd_OF_${name}:"
+	echo ".global __imd_${name}_start"
+	echo "__imd_${name}_start:"
 =

 	compat=3D$($FDTGET -d notfound -t bi "$dtb" / compatible | sed "s^ ^,^g")
 	if [ "$compat" !=3D "notfound" ]; then
@@ -51,6 +51,10 @@ echo "__dtb_${name}_end:"
 echo ".global __dtb_${name}_end"
 echo ".balign STRUCT_ALIGNMENT"
 =

+if [ "$imd" =3D "y" ]; then
+	echo ".word __imd_${name}_start"
+fi
+
 lzop -f -9 $dtb -o $dtb.lzo
 if [ $? !=3D 0 ]; then
 	exit 1
EOF
patching file scripts/gen-dtb-s

barebox$ make
...
barebox$ ./scripts/bareboximd images/barebox-raspberry-pi-3.img
buildsystem version: =

crc32: 0x00000000
build: #9 Fri Oct 1 23:24:06 UTC 2021
release: 2021.08.0-dirty
of_compatible: raspberrypi,3-model-b brcm,bcm2837
model: Raspberry Pi 3 Model B
barebox$

 =

> E.g.
> =

> barebox$ make ARCH=3Darm CROSS_COMPILE=3Daarch64-linux-gnu- imx_v8_defcon=
fig
> barebox$ make ARCH=3Darm CROSS_COMPILE=3Daarch64-linux-gnu-
> ...
> images built:
> barebox-nxp-imx8mm-evk.img
> barebox-prt-prt8mm.img
> barebox-nxp-imx8mp-evk.img
> barebox-nxp-imx8mq-evk.img
> barebox-zii-imx8mq-dev.img
> barebox-phytec-phycore-imx8mq.img
> =

> barebox$ ./scripts/bareboximd images/barebox-nxp-imx8mm-evk.img
> build: #1 Fri Oct 1 10:16:30 UTC 2021
> buildsystem version: =

> crc32: 0x00000000
> release: 2021.08.0
> barebox$ =

> =

> There is no 'of_compatible' and 'model' imd records in bareboximd output.
> =


-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

