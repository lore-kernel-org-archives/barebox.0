Delivery-date: Thu, 14 Nov 2024 17:43:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tBcwW-001ut5-14
	for lore@lore.pengutronix.de;
	Thu, 14 Nov 2024 17:43:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tBcwV-00036B-Mz
	for lore@pengutronix.de; Thu, 14 Nov 2024 17:43:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IAlWuQ6kaE/UzHXG6JZA6XcELwoTA/QtIe7JA5ezml4=; b=ZChOf6qqhSQXiOfnsKjvuCwgSi
	HVfZNxP0p0bKHJrHTOdF3ArSEly7Y5xn7qI1wBqE4PFtyTmGEWTnSXH/IhCV311s5UZ+zwDz4ctgt
	01/ZCbmnIREoL3p1AMap7UTanUSNTE6QbXKCTOwxOgExzAnJZnJOd64VJ62s1H5doGSFZx6BNnGNd
	F3PwHoVbtBSHIhob6AgkDwqMaLQsy7WyWgbgcMXa0XXWpTp6X3IDkrCifQS2RlXCoTbuCtDQfEa2K
	vHhqDKBTyvMdwqiKehv7VsSzKN8pj8qwKH0VYSWu+6T/nD0SpmA1Iz0fb14XLTt9Pbo6Y8zjsl+Z1
	XZMFkb+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBcvy-00000000B39-1GDd;
	Thu, 14 Nov 2024 16:43:06 +0000
Received: from zdiv.net ([2001:4b98:dc0:43:f816:3eff:fee4:1d8c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBcsN-00000000APn-0DJG
	for barebox@lists.infradead.org;
	Thu, 14 Nov 2024 16:39:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=24;
	t=1731602358;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=IAlWuQ6kaE/UzHXG6JZA6XcELwoTA/QtIe7JA5ezml4=;
	b=T3FtFHEWEq45j1BO10P0tvJg7DuzOCq3LGiYqje0OGPYaAsZKgJOfSQ6eSp3NVs9h4ae6f
	roW4x44tP+I+LVRN2UdcDh3TqitAGlac1XitzDUJrz+F38bGsB821d/upa0HYv8BVhOkSr
	b45bv0tenYK4SOuCCB6yQaU4cNmLSBuOMCgDG+uGY+GRgkpXBIG7US4eniNCL/0Gj/e/gt
	S+nBvuknsa0qKsUykmyGFKqsvBAUzerSVplwvobxj1WBzIiscoNkPxel0ocrhvUQ2kwehG
	mD9+x9aVds6yiJE1s409xCJB3XFM99oqJQtgMBwvnkdplaUZ/oWM154yfu3WVQ==
Received: from [127.0.0.1] (91-160-75-97.subs.proxad.net [91.160.75.97])
	by zdiv.net (OpenSMTPD) with ESMTPSA id 641d0fce (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Thu, 14 Nov 2024 17:39:18 +0100 (CET)
Date: Thu, 14 Nov 2024 17:39:16 +0100
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org,
 Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>, s.hauer@pengutronix.de
User-Agent: K-9 Mail for Android
In-Reply-To: <20241114155115.594121-1-abdelrahmanyossef12@gmail.com>
References: <20241114155115.594121-1-abdelrahmanyossef12@gmail.com>
Message-ID: <BC1F52F5-B2FA-431A-81B7-057317A89C47@zdiv.net>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241114_083923_393227_76D8EB40 
X-CRM114-Status: GOOD (  12.75  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v4] of: fdt: fix possible overflow during parsing of fdt
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Abdelrahman,
just a remark, nothing wrong with your patch

On November 14, 2024 4:51:14 PM GMT+01:00, Abdelrahman Youssef <abdelrahma=
nyossef12@gmail=2Ecom> wrote:
>While fuzzing, the name marked by FDT_BEGIN_NODE sometimes extends beyond
>the struct block area, causing a heap-overflow=2E
>
>Since `maxlen` is an unsigned integer representing the length of name,
>It can be negative, so it overflows to large numbers, Causing strnlen()
>to overflow=2E
>
>So we can just change the type of maxlen to signed and check if it's a
>non-positive value, because name has a minimum length of 1 byte ('\0')=2E
>
>Also in strnlen() we shouldn't check for bytes exceeding maxlen, so we ca=
n remove
>+ 1 in strnlen()=2E We also change if (len > maxlen) to >=3D to count for=
 the null
>terminator=2E
>
>Signed-off-by: Abdelrahman Youssef <abdelrahmanyossef12@gmail=2Ecom>
>
>---
>v3 -> v4:
>  - replace maxlen < 0 to maxlen <=3D 0 (Sascha)
>  - remove + 1 in strnlen() (Sascha)
>v2 -> v3
>  - changed formatting
>v1 -> v2
>  - the overflow was due to integer overflow not out-of-bounds (Ahmad)
>---
> drivers/of/fdt=2Ec | 11 ++++++++---
> 1 file changed, 8 insertions(+), 3 deletions(-)
>
>diff --git a/drivers/of/fdt=2Ec b/drivers/of/fdt=2Ec
>index 2c3ea31394=2E=2E75af1844f3 100644
>--- a/drivers/of/fdt=2Ec
>+++ b/drivers/of/fdt=2Ec
>@@ -176,7 +176,7 @@ static struct device_node *__of_unflatten_dtb(const v=
oid *infdt, int size,
> 	void *dt_strings;
> 	struct fdt_header f;
> 	int ret;
>-	unsigned int maxlen;
>+	int maxlen;
> 	const struct fdt_header *fdt =3D infdt;
>=20
> 	ret =3D fdt_parse_header(infdt, size, &f);
>@@ -210,8 +210,13 @@ static struct device_node *__of_unflatten_dtb(const =
void *infdt, int size,
> 			maxlen =3D (unsigned long)fdt + f=2Eoff_dt_struct +
> 				f=2Esize_dt_struct - (unsigned long)name;
>=20
>-			len =3D strnlen(name, maxlen + 1);
>-			if (len > maxlen) {
>+			if (maxlen <=3D 0) {
>+				ret =3D -ESPIPE;
>+				goto err;
>+			}
>+
>+			len =3D strnlen(name, maxlen);
>+			if (len >=3D maxlen) {
here len cannot exceed maxlen, but if len =3D=3D maxlen this means that th=
ere is not nul-byte in the name array (up to maxlen)=2E
by not passing maxlen + 1 there is a slight behavior change but i don't kn=
ow if this an issus or not=2E
in the previous case strnlen could read one past maxlen which is suspiciou=
s (maybe a bug)

> 				ret =3D -ESPIPE;
> 				goto err;
> 			}


