Delivery-date: Mon, 25 Sep 2023 13:11:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qkjUi-00ATYb-I9
	for lore@lore.pengutronix.de; Mon, 25 Sep 2023 13:11:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qkjUg-0004v5-8C
	for lore@pengutronix.de; Mon, 25 Sep 2023 13:11:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mLvfNpb01zACcHcQMt6d9E80uvu5LJyI5L5mMFcHYA4=; b=PQmRKbeWIbaCR1c/n1VAiBtujD
	pzQSOf12r1+gftlDA3i427wWgijPGRBVlY5KWZojaP3VnYM+Y0i0E8EdXdwdBLDPEcJN0c1hgp0Ji
	9nRSTqQXCCZ7iRmu6oPHUb0nl+anQ0LEWY6hwFEv5K+n+GG7AGdlcQ40XU9mlwmqzrI5ziS49Rh6w
	If72z5NNZTgCZBzY6n0V5z7MXSdg3sy7iIAh3voNvJs64BP+1OLMqt+5GlGclGmWzQ7eMA0PfdqTk
	LCuhNHNcXtxjp9+8xUisDMBhGF5zMRzCSKiQ/PS5qRWSEgX5gYb9u8beS+iw+wern2EwtAeSxF4ez
	oqnWcwRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qkjTZ-00E8x2-0h;
	Mon, 25 Sep 2023 11:10:05 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qkjTV-00E8ve-2l
	for barebox@lists.infradead.org;
	Mon, 25 Sep 2023 11:10:03 +0000
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2c022ce8114so98033631fa.1
        for <barebox@lists.infradead.org>; Mon, 25 Sep 2023 04:09:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695640194; x=1696244994; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=mLvfNpb01zACcHcQMt6d9E80uvu5LJyI5L5mMFcHYA4=;
        b=f7oGD7wOatic0zSqAMZAL/VFKnQFiIQTnjKsY1BvtBizKj0oeEgXW2DiwCCnXjre3h
         XRnuGa4z6iDQOLvABH5BCidF5Nteac5Guw38GnNWltAQ5P+0OZzv6LC2NpgqUSn3PQoF
         LMkdt9y6iiR8aLiUfLM2UFwBT51bF1PfiLCnY/XmzUBoUEWy3vccBbgVKL5FW9aUzyxh
         VuDYce539LSFkOBb3+aA1latqS2D6bwLJsgI+eWkhqb56e5qd4pzlD5D1aomcWZn3Rcc
         VW4ydPH6+atrfecy0ysEQEXIbBN8z/JrnQtOL4hZ3TOIedbWcM8lhPIp6c5CX4C7Ps4c
         cWXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695640194; x=1696244994;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mLvfNpb01zACcHcQMt6d9E80uvu5LJyI5L5mMFcHYA4=;
        b=Pc20z2eFCSm+CwGw6uyQVvRct2pZJrkAhCf9h48elAYhVty+RgIsBQiaVKyvowMcix
         5GadPnUwPWE2wHeVExZqOGGe1oMsE58THiqRgC0YFgVBvHQ+WGJtNndIQf99cyHu97wq
         WUh3guNqOTKOaJg7zSTxlzMv17viIVZn1wUDg4auNHS1eEd2J3v+fHVd88BPFZQojQTt
         eoI0PZrofz8fxiO2Jcy/kFrYSheU21kJ+uqkzv3/Z2HPucoNvWarygRPofT8Kk8rECZx
         FIjwjtlZlAaX7BqL7xN8+SfHVAMyHcSpyHnTyiUOeItws9UI6CkCbCCIlWyRoaSl4rAB
         3B2Q==
X-Gm-Message-State: AOJu0YwhbTK2z+0cQ8tL7uWa9cZwvf/zkv9fH+CbRKU1q7I7sdvdf7BQ
	9zq2y5sCh5gP5PiNUFVZnpTJ5YhbxYM=
X-Google-Smtp-Source: AGHT+IEXqMlNh6Tx2WZCt80NBCMY90mOjqw+25RdFMpUJ0JNw91w3oOXFjZhyV04nARQ6vmk2ou8Sw==
X-Received: by 2002:ac2:4d90:0:b0:503:74c:9446 with SMTP id g16-20020ac24d90000000b00503074c9446mr4107543lfe.24.1695640194169;
        Mon, 25 Sep 2023 04:09:54 -0700 (PDT)
Received: from lifebook.fritz.box (p200300da6717b70030ba293c6b339dee.dip0.t-ipconnect.de. [2003:da:6717:b700:30ba:293c:6b33:9dee])
        by smtp.gmail.com with ESMTPSA id f1-20020a17090624c100b009ae3e6c342asm6123832ejb.111.2023.09.25.04.09.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Sep 2023 04:09:53 -0700 (PDT)
Message-ID: <c5c2a899c801a86d67d8a5139eed8424143cd0ca.camel@gmail.com>
From: Denis Osterland-Heim <denis.osterland@gmail.com>
To: barebox@lists.infradead.org
Cc: Denis OSTERLAND-HEIM <denis.osterland@diehl.com>, Ahmad Fatoum
	 <a.fatoum@pengutronix.de>
Date: Mon, 25 Sep 2023 13:09:52 +0200
In-Reply-To: <20230925110716.5370-1-denis.osterland@gmail.com>
References: <20230925110716.5370-1-denis.osterland@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230925_041001_900465_603562CF 
X-CRM114-Status: GOOD (  14.94  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 1/2] raspi: support to read vc values via dt-2nd boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

RnJvbTogRGVuaXMgT1NURVJMQU5ELUhFSU0gPGRlbmlzLm9zdGVybGFuZEBkaWVobC5jb20+CgpJ
biBjYXNlIG9mIGJvb3QgdmlhIGR0LTJuZCBwYmwgZG9lcyBub3QgY29weSBkdGIsIGJlY2F1c2Ug
aXQgaXMgbm90CmV4ZWN1dGVkLiBXaXRoIHRoaXMgcGF0Y2ggdGhlIHZhbHVlcyB3ZXJlIHJlYWQg
YW5kIHJlZ2lzdGVyZWQgYXMKZml4LXVwcy4gSXQgYWxzbyBhZGRzIGEgaW5pZiBmdW5jdGlvbiB0
aGF0IG9ubHkgZml4LXVwcyB0aGUgZXRoZXJuZXQKTUFDIGFkZHJlc3MuCgpTaWduZWQtb2ZmLWJ5
OiBEZW5pcyBPU1RFUkxBTkQtSEVJTSA8ZGVuaXMub3N0ZXJsYW5kQGRpZWhsLmNvbT4KQWNrZWQt
Ynk6IEFobWFkIEZhdG91bSA8YS5mYXRvdW1AcGVuZ3V0cm9uaXguZGU+Ci0tLQrCoGFyY2gvYXJt
L2JvYXJkcy9yYXNwYmVycnktcGkvcnBpLWNvbW1vbi5jIHwgMzAgKysrKysrKysrKysrKystLS0t
LS0tLS0KwqAxIGZpbGUgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9hcmRzL3Jhc3BiZXJyeS1waS9ycGktY29tbW9uLmMK
Yi9hcmNoL2FybS9ib2FyZHMvcmFzcGJlcnJ5LXBpL3JwaS1jb21tb24uYwppbmRleCA1NmU3ZWVi
ZDYxLi5jZWFmZDU1YTU2IDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib2FyZHMvcmFzcGJlcnJ5LXBp
L3JwaS1jb21tb24uYworKysgYi9hcmNoL2FybS9ib2FyZHMvcmFzcGJlcnJ5LXBpL3JwaS1jb21t
b24uYwpAQCAtMTEwLDYgKzExMCwxMiBAQCBzdGF0aWMgdm9pZCBycGlfYWRkX2xlZCh2b2lkKQrC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGxlZF9zZXRfdHJpZ2dlcihMRURfVFJJR0dF
Ul9IRUFSVEJFQVQsICZsLT5sZWQpOwrCoH0KwqAKK3N0YXRpYyBpbnQgcnBpX2V0aF9pbml0KHN0
cnVjdCBycGlfcHJpdiAqcHJpdikKK3sKK8KgwqDCoMKgwqDCoMKgcnBpX3NldF91c2JldGhhZGRy
KCk7CivCoMKgwqDCoMKgwqDCoHJldHVybiAwOworfQorCsKgc3RhdGljIGludCBycGlfYl9pbml0
KHN0cnVjdCBycGlfcHJpdiAqcHJpdikKwqB7CsKgwqDCoMKgwqDCoMKgwqBycGlfbGVkc1swXS5n
cGlvID0gMTY7CkBAIC0yNzYsMTYgKzI4MiwxMiBAQCBzdGF0aWMgdTMyIHJwaV9ib290X21vZGUs
IHJwaV9ib290X3BhcnQ7CsKgICogU29tZSBwYXJhbWV0ZXJzIGFyZSBkZWZpbmVkIGhlcmU6CsKg
ICoKaHR0cHM6Ly93d3cucmFzcGJlcnJ5cGkuY29tL2RvY3VtZW50YXRpb24vY29tcHV0ZXJzL2Nv
bmZpZ3VyYXRpb24uaHRtbCNwYXJ0NArCoCAqLwotc3RhdGljIHZvaWQgcnBpX3ZjX2ZkdF9wYXJz
ZSh2b2lkICpmZHQpCitzdGF0aWMgdm9pZCBycGlfdmNfZmR0X3BhcnNlKHN0cnVjdCBkZXZpY2Vf
bm9kZSAqcm9vdCkKwqB7CsKgwqDCoMKgwqDCoMKgwqBpbnQgcmV0OwotwqDCoMKgwqDCoMKgwqBz
dHJ1Y3QgZGV2aWNlX25vZGUgKnJvb3QsICpjaG9zZW4sICpib290bG9hZGVyLCAqbWVtb3J5Owor
wqDCoMKgwqDCoMKgwqBzdHJ1Y3QgZGV2aWNlX25vZGUgKmNob3NlbiwgKmJvb3Rsb2FkZXIsICpt
ZW1vcnk7CsKgwqDCoMKgwqDCoMKgwqBjaGFyICpzdHI7CsKgCi3CoMKgwqDCoMKgwqDCoHJvb3Qg
PSBvZl91bmZsYXR0ZW5fZHRiKGZkdCwgSU5UX01BWCk7Ci3CoMKgwqDCoMKgwqDCoGlmIChJU19F
UlIocm9vdCkpCi3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm47Ci0KwqDCoMKg
wqDCoMKgwqDCoHN0ciA9IG9mX3JlYWRfdmNfc3RyaW5nKHJvb3QsICJzZXJpYWwtbnVtYmVyIik7
CsKgwqDCoMKgwqDCoMKgwqBpZiAoc3RyKSB7CsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgYmFyZWJveF9zZXRfc2VyaWFsX251bWJlcihzdHIpOwpAQCAtMzYzLDcgKzM2NSw3IEBAIHN0
YXRpYyB2b2lkIHJwaV92Y19mZHRfcGFyc2Uodm9pZCAqZmR0KQrCoMKgwqDCoMKgwqDCoMKgcmV0
dXJuOwrCoH0KwqAKLXN0YXRpYyB2b2lkIHJwaV92Y19mZHQodm9pZCkKK3N0YXRpYyBzdHJ1Y3Qg
ZGV2aWNlX25vZGUgKnJwaV92Y19mZHQodm9pZCkKwqB7CsKgwqDCoMKgwqDCoMKgwqB2b2lkICpz
YXZlZF92Y19mZHQ7CsKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgZmR0X2hlYWRlciAqb2Z0cmVlOwpA
QCAtMzc5LDE3ICszODEsMTcgQEAgc3RhdGljIHZvaWQgcnBpX3ZjX2ZkdCh2b2lkKQrCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlmIChvZnRyZWUtPnRvdGFsc2l6ZSkKwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcHJfZXJyKCJ0aGVyZSB3YXMg
YW4gZXJyb3IgY29weWluZyBmZHQgaW4gcGJsOgolZG4iLArCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oGJlMzJfdG9fY3B1KG9mdHJlZS0KPnRvdGFsc2l6ZSkpOwotwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgcmV0dXJuOworwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIEVS
Ul9QVFIoLUVJTlZBTCk7CsKgwqDCoMKgwqDCoMKgwqB9CsKgCsKgwqDCoMKgwqDCoMKgwqBpZiAo
bWFnaWMgIT0gRkRUX01BR0lDKQotwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJu
OworwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIEVSUl9QVFIoLUVJTlZBTCk7
CsKgCsKgwqDCoMKgwqDCoMKgwqBzaXplID0gYmUzMl90b19jcHUob2Z0cmVlLT50b3RhbHNpemUp
OwrCoMKgwqDCoMKgwqDCoMKgaWYgKHdyaXRlX2ZpbGUoIi92Yy5kdGIiLCBzYXZlZF92Y19mZHQs
IHNpemUpKQrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHByX2VycigiZmFpbGVkIHRv
IHNhdmUgdmlkZW9jb3JlIGZkdCB0byBhIGZpbGVuIik7CsKgCi3CoMKgwqDCoMKgwqDCoHJwaV92
Y19mZHRfcGFyc2Uoc2F2ZWRfdmNfZmR0KTsKK8KgwqDCoMKgwqDCoMKgcmV0dXJuIG9mX3VuZmxh
dHRlbl9kdGIoc2F2ZWRfdmNfZmR0LCBJTlRfTUFYKTsKwqB9CsKgCsKgc3RhdGljIHZvaWQgcnBp
X3NldF9rZXJuZWxfbmFtZSh2b2lkKSB7CkBAIC00NTIsNiArNDU0LDcgQEAgc3RhdGljIGludCBy
cGlfZGV2aWNlc19wcm9iZShzdHJ1Y3QgZGV2aWNlICpkZXYpCsKgwqDCoMKgwqDCoMKgwqBjb25z
dCBzdHJ1Y3QgcnBpX21hY2hpbmVfZGF0YSAqZGNmZzsKwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBy
ZWd1bGF0b3IgKnJlZzsKwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBycGlfcHJpdiAqcHJpdjsKK8Kg
wqDCoMKgwqDCoMKgc3RydWN0IGRldmljZV9ub2RlICpyb290OwrCoMKgwqDCoMKgwqDCoMKgY29u
c3QgY2hhciAqbmFtZSwgKnB0cjsKwqDCoMKgwqDCoMKgwqDCoGNoYXIgKmhvc3RuYW1lOwrCoMKg
wqDCoMKgwqDCoMKgaW50IHJldDsKQEAgLTQ4MCw3ICs0ODMsOCBAQCBzdGF0aWMgaW50IHJwaV9k
ZXZpY2VzX3Byb2JlKHN0cnVjdCBkZXZpY2UgKmRldikKwqDCoMKgwqDCoMKgwqDCoGJjbTI4MzVf
cmVnaXN0ZXJfZmIoKTsKwqDCoMKgwqDCoMKgwqDCoGFybWxpbnV4X3NldF9hcmNoaXRlY3R1cmUo
TUFDSF9UWVBFX0JDTTI3MDgpOwrCoMKgwqDCoMKgwqDCoMKgcnBpX2Vudl9pbml0KCk7Ci3CoMKg
wqDCoMKgwqDCoHJwaV92Y19mZHQoKTsKK8KgwqDCoMKgwqDCoMKgcm9vdCA9IHJwaV92Y19mZHQo
KTsKK8KgwqDCoMKgwqDCoMKgcnBpX3ZjX2ZkdF9wYXJzZShJU19FUlIocm9vdCkgPyBwcml2LT5k
ZXYtPmRldmljZV9ub2RlIDogcm9vdCk7CsKgwqDCoMKgwqDCoMKgwqBycGlfc2V0X2tlcm5lbF9u
YW1lKCk7CsKgCsKgwqDCoMKgwqDCoMKgwqBpZiAoZGNmZyAmJiBkY2ZnLT5pbml0KQpAQCAtNTk5
LDYgKzYwMyw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcnBpX21hY2hpbmVfZGF0YSBycGlfM19p
ZHNbXSA9CnsKwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAuaW5pdCA9IHJwaV9iX3Bs
dXNfaW5pdCwKwqDCoMKgwqDCoMKgwqDCoH0sIHsKwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAuaHdfaWQgPSBCQ00yODM3X0JPQVJEX1JFVl9DTTMsCivCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAuaW5pdCA9IHJwaV9ldGhfaW5pdCwKwqDCoMKgwqDCoMKgwqDCoH0sIHsKwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAuaHdfaWQgPSBCQ00yODM3QjBfQk9BUkRfUkVW
X0NNM19QTFVTLArCoMKgwqDCoMKgwqDCoMKgfSwgewpAQCAtNjExLDEwICs2MTYsMTMgQEAgc3Rh
dGljIGNvbnN0IHN0cnVjdCBycGlfbWFjaGluZV9kYXRhIHJwaV8zX2lkc1tdCj0gewrCoHN0YXRp
YyBjb25zdCBzdHJ1Y3QgcnBpX21hY2hpbmVfZGF0YSBycGlfNF9pZHNbXSA9IHsKwqDCoMKgwqDC
oMKgwqDCoHsKwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAuaHdfaWQgPSBCQ00yNzEx
X0JPQVJEX1JFVl80X0IsCivCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAuaW5pdCA9IHJw
aV9ldGhfaW5pdCwKwqDCoMKgwqDCoMKgwqDCoH0sIHsKwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAuaHdfaWQgPSBCQ00yNzExX0JPQVJEX1JFVl80MDAsCivCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAuaW5pdCA9IHJwaV9ldGhfaW5pdCwKwqDCoMKgwqDCoMKgwqDCoH0sIHsK
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAuaHdfaWQgPSBCQ00yNzExX0JPQVJEX1JF
Vl9DTTQsCivCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAuaW5pdCA9IHJwaV9ldGhfaW5p
dCwKwqDCoMKgwqDCoMKgwqDCoH0sIHsKwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAu
aHdfaWQgPSBVOF9NQVgKwqDCoMKgwqDCoMKgwqDCoH0sCi0tIAoyLjM5LjIKCgo=



