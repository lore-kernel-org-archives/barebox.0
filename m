Delivery-date: Sat, 05 Jun 2021 22:17:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lpcjV-0007D5-A5
	for lore@lore.pengutronix.de; Sat, 05 Jun 2021 22:17:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lpcjU-0006GJ-Dy
	for lore@pengutronix.de; Sat, 05 Jun 2021 22:17:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:Subject:
	Message-ID:Date:From:MIME-Version:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7F1367dk/Nn3/x4l60FbDM+herRyWnBMVtpEzK0KOxA=; b=LTm9BKUOiOVgBtDzPUFvIfg7Zq
	uSWm12cCf+Xj77DtpxnUDUnENxI4Qhd81hZGu79oKd/pjC3hdRZR1j3SbzKa1osas3g3eD/+2CULp
	yzERpHKmv0nd20RXyU6VLT+A98WNDeiex5FIiCMgLByjMo3mYY6j5XM+eyns3RkswlI0Wse3XDH7c
	6KqPdTb5hnP9yNqbGq5wLN7VE+V1cZfJ/8XTNS3Rg+NWiITYeye5au5Hu4NwUMLnDLV7Kg83lNaRm
	lxJuOGTBxVPdLBHcb7MQeCXQFmrFD2H3zKdh7rNm4mWdsPiI0aItiFF9H3Gw6pWSYToM0pqbSCisQ
	O6j2NZmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lpchv-00H2Pj-UA; Sat, 05 Jun 2021 20:15:48 +0000
Received: from mail-ot1-x336.google.com ([2607:f8b0:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lpchq-00H2Od-6j
 for barebox@lists.infradead.org; Sat, 05 Jun 2021 20:15:43 +0000
Received: by mail-ot1-x336.google.com with SMTP id
 66-20020a9d02c80000b02903615edf7c1aso12601258otl.13
 for <barebox@lists.infradead.org>; Sat, 05 Jun 2021 13:15:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=n0exynZhcTEkINHzWnUvGqxF6ANsZPwibpOu95ipk90=;
 b=CyacoRovK0FpJ02ctKmiHbfnfBnxk5iLk6PxHSTq4hKq9dIJ7AkC97Mq+GLX8prmgq
 S0XplJPSX7Zp2CBqVm66wd/fApcbO0Y1ObxhsvhU3P10yacmc0IyW/l+qlLKLJvMl1aM
 tIhGyNQiFjEvuUILzBW6U3e5VwzP9jKR0JjJ8Iehvk9P0ynos/ZpIaQ4up7NUoTL+Fek
 MlfsvM2h0s6yPGRs5eI7ji026OvxPsHGi4e9WXLtjqVRoKkCuNXM9qWK34JzYe3AGLBE
 /ysQxbOLZQBeY+EAp5WPJm94HKvyfuQ3yQZouCh1UyB5b8mLVeHzsGZuVwtsWjQU1mPF
 ByPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=n0exynZhcTEkINHzWnUvGqxF6ANsZPwibpOu95ipk90=;
 b=I7KfWc9SJ/3OG0Gse6j0NJICYSlp2lXZqzJAoMJVfsgWlNTaiCDY3zRUbNdNOzhK5h
 1TB1Hwp+Az0Y3J9iz4YbKX3xQGlWupKF1UvLsZlC4NCr0UKqz+etVO8bFrp3sv1GXrTk
 e6U+gQMkTI6dOmXFyqbt1TnXzoc3uESl2/wMbcsch3oKnfXQrRDD8bBKA1LEm6vdDA78
 3crPLRq0ln4tMd86MXKogWTlUJAjHV1mj7aoTiAqyWMTcNVyFjnlIBLFlb9a3b9v/5IO
 gwaGLEUxxqztWpmkUtqXhV7y0VFyFmKFRwpo3YScrONhmsCdPG4FBIwMHi6fkgKbQ6Vf
 srLw==
X-Gm-Message-State: AOAM5334IJKBOW9Md1ijPoduCVUhoLMzNRIDuBZaRfMfzeTn87iuo5Ue
 YAC+sBtcaODCNdLA7Rj8kRy53PhWW472ls7l95Ls2CJKJTthYw==
X-Google-Smtp-Source: ABdhPJx/K2f4xm2RAwPGiBdb+XWfnvzMILLZ6DFVdWjpLCTXD5y9gVYM//DebMzygX9TzxSrYDfYSh1vXeIY/rLyfoY=
X-Received: by 2002:a9d:8a7:: with SMTP id 36mr8424482otf.287.1622924138354;
 Sat, 05 Jun 2021 13:15:38 -0700 (PDT)
MIME-Version: 1.0
From: Pip Cet <pipcet@gmail.com>
Date: Sat, 5 Jun 2021 20:15:02 +0000
Message-ID: <CAOqdjBd=5z0yqK57NMPL+yDKd4duy-AXcqBY2J=zg76oUAabYw@mail.gmail.com>
To: barebox@lists.infradead.org
Content-Type: multipart/mixed; boundary="000000000000c3bb1505c40a7872"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210605_131542_305331_669EB59C 
X-CRM114-Status: GOOD (  12.63  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] handle 10-bpc framebuffer layouts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

--000000000000c3bb1505c40a7872
Content-Type: text/plain; charset="UTF-8"

I'm playing with barebox on an Apple M1-based MacBook Pro that uses
the (new-ish) x2r10g10b10 framebuffer layout. The attached patch is
sufficient to get a white-on-black prompt rather than black-on-black
text.

(I can't actually use the prompt yet, as there's no keyboard driver,
but it's a start.)

I'm aware that this code isn't as accurate as it could be (the LSBs of
the 10-bit color are always 00), but I think it's worth it to keep
this code (relatively) simple, and the difference is unlikely to ever
be apparent to anyone. Please let me know if you'd prefer a version
which does the (r * 0x101) >> (16 - length) thing or any other
version.

Thanks!
Pip

--000000000000c3bb1505c40a7872
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="0001-graphic_utils.c-handle-10-bpc-framebuffer-layouts.patch"
Content-Disposition: attachment; 
	filename="0001-graphic_utils.c-handle-10-bpc-framebuffer-layouts.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_kpk715lk0>
X-Attachment-Id: f_kpk715lk0

RnJvbSBlYWM5NjEwODMzYjc0N2FhM2QxNjg1ZGJjNjY1Y2YxM2Q4NjNlYWE2IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBQaXAgQ2V0IDxwaXBjZXRAZ21haWwuY29tPgpEYXRlOiBTYXQs
IDUgSnVuIDIwMjEgMTk6NTk6MDkgKzAwMDAKU3ViamVjdDogW1BBVENIXSBncmFwaGljX3V0aWxz
LmM6IGhhbmRsZSAxMC1icGMgZnJhbWVidWZmZXIgbGF5b3V0cwoKU2lnbmVkLW9mZi1ieTogUGlw
IENldCA8cGlwY2V0QGdtYWlsLmNvbT4KLS0tCiBsaWIvZ3VpL2dyYXBoaWNfdXRpbHMuYyB8IDgg
KysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvbGliL2d1aS9ncmFwaGljX3V0aWxzLmMgYi9saWIvZ3VpL2dyYXBoaWNf
dXRpbHMuYwppbmRleCAwYmVkOTMyMjEuLjNjYjc5MTA1MCAxMDA2NDQKLS0tIGEvbGliL2d1aS9n
cmFwaGljX3V0aWxzLmMKKysrIGIvbGliL2d1aS9ncmFwaGljX3V0aWxzLmMKQEAgLTI0LDEwICsy
NCwxMCBAQCB1MzIgZ3VfcmdiX3RvX3BpeGVsKHN0cnVjdCBmYl9pbmZvICppbmZvLCB1OCByLCB1
OCBnLCB1OCBiLCB1OCB0KQogewogCXUzMiBweDsKIAotCXB4ID0gKHQgPj4gKDggLSBpbmZvLT50
cmFuc3AubGVuZ3RoKSkgPDwgaW5mby0+dHJhbnNwLm9mZnNldCB8Ci0JCSAociA+PiAoOCAtIGlu
Zm8tPnJlZC5sZW5ndGgpKSA8PCBpbmZvLT5yZWQub2Zmc2V0IHwKLQkJIChnID4+ICg4IC0gaW5m
by0+Z3JlZW4ubGVuZ3RoKSkgPDwgaW5mby0+Z3JlZW4ub2Zmc2V0IHwKLQkJIChiID4+ICg4IC0g
aW5mby0+Ymx1ZS5sZW5ndGgpKSA8PCBpbmZvLT5ibHVlLm9mZnNldDsKKwlweCA9ICgodCA8PCAy
KSA+PiAoMTAgLSBpbmZvLT50cmFuc3AubGVuZ3RoKSkgPDwgaW5mby0+dHJhbnNwLm9mZnNldCB8
CisJCSgociA8PCAyKSA+PiAoMTAgLSBpbmZvLT5yZWQubGVuZ3RoKSkgPDwgaW5mby0+cmVkLm9m
ZnNldCB8CisJCSgoZyA8PCAyKSA+PiAoMTAgLSBpbmZvLT5ncmVlbi5sZW5ndGgpKSA8PCBpbmZv
LT5ncmVlbi5vZmZzZXQgfAorCQkoKGIgPDwgMikgPj4gKDEwIC0gaW5mby0+Ymx1ZS5sZW5ndGgp
KSA8PCBpbmZvLT5ibHVlLm9mZnNldDsKIAogCXJldHVybiBweDsKIH0KLS0gCjIuMzAuMgoK
--000000000000c3bb1505c40a7872
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--000000000000c3bb1505c40a7872--


