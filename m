Delivery-date: Wed, 15 Sep 2021 23:45:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQcip-0004G3-UB
	for lore@lore.pengutronix.de; Wed, 15 Sep 2021 23:45:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQcio-0005Ak-ST
	for lore@pengutronix.de; Wed, 15 Sep 2021 23:45:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZZqC9YT6vNdsm7+wupmLomTA8Gm6/Ehr5BI91bYw6a4=; b=rIcQRMbJAmB7w6
	eL/DSaxrbQPl64tEPicUMH2UegMNVCZkhlgY9gxIt47XGOQzga1tu1pZElNyF938FUWSp+gnBaP/z
	ktm5LujROH9D7/cfF4sxS6L3fNox6K3xEXEAi4ymkhc1x6bEbO1V48t4u2/loi5rRe3gPg/C0AGCY
	0F8DVtv9D7ycr8bQDakYl4dlFQq6QQTRuAJGXA6mLYAwwbkrURLpsdYaASIlPlOiW/LKMbeMjxv6S
	MWudheFVIvWIRiQ7Jf1mun0IzqiWHYPTh/nJUG6WPPLuapd9VKixvel3UXG5yMrXgRNwdbidGmjfw
	T2CeQ7x2jw8iPZcOZUKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQchD-009y1t-Q4; Wed, 15 Sep 2021 21:43:59 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQch7-009y1Q-F3
 for barebox@lists.infradead.org; Wed, 15 Sep 2021 21:43:55 +0000
Received: by mail-lf1-x12a.google.com with SMTP id t10so4345331lfd.8
 for <barebox@lists.infradead.org>; Wed, 15 Sep 2021 14:43:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cartesi-io.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=TTyqS3HW/drtR0ZS6fZoyillZRvGA1GaX0GlfqjU3U0=;
 b=LW9C7WlGbR6u31c6HG93GNJW7o3xY55a70bXf9BYO33QCat5V2hN7JlpC1tOWuCHJ2
 19R0vNBCU/xM1XqlLj/io2Rrs/rJPDP8ZjEQnRaAFYxCEezdI6r1VEr347X/RT9FPs5m
 sAkJBVzpxFFaGVK6O3XK6UG1EdzyuL3dhvujqrLHVZ1SIaHXvN5iREkyfxvTYG0xBn4o
 Mo2HANmEmWTE3NREITbUzMCV48VZbf9zurTNfg4Nxyu4EST4hsSvB+9mxOHxshbvv5t7
 SVytxIJwq0yG1/PkbFdrV0n7Z5+5IiGRgCh6CBgfQBBmrRLQ4p3JIl7AYfyca4x0/qio
 6r4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=TTyqS3HW/drtR0ZS6fZoyillZRvGA1GaX0GlfqjU3U0=;
 b=pYgheSgV1Q88i2830F5DMiOt4n5qz5kIt0nsYf8yfcwJTVdi0MI8KgJIwCmRamBb3W
 aF+Witml0RnxlasipTQWsrvHgzr77zXiW3KM79yhZbtXr82bQA45Kt6N99Eom9l6sa9z
 MLrDFeRc866baVKR3MXSks8kh22lsz2jAhiO0K4FEDXY8TTOvaMBCQo3WAEgc/5XxrFW
 tn1i426rLAp877BYwy8BErjnCMsWcpzS4yBUdHVbpdtPR0vsfgUyX92kxMZA3F6DhaYa
 XkES1iMCtKRg6Pwq0AYtFwqBHiVErTD3W0A9+k9/BqrRYtWcXHImfOVEzhfSzCsM25aJ
 NuhA==
X-Gm-Message-State: AOAM530/u4/Of3Yx+16MynmEXkkFZGE61Ur2ON3mUFYuVQ1qHB8dy1Bc
 yGPmShVm1HCw7qcLYNhoEkm7rLeOD1PBuEtys8mbqGavc4XZeA==
X-Google-Smtp-Source: ABdhPJygOZQW//uTMgx9qpFzVoA0yRdrmTjTKQKBbxkt3tmlt5kRGDQk6wtKTeX0L0lJ0fUmUziy3ddDGgQsMpYBIwA=
X-Received: by 2002:a05:6512:1396:: with SMTP id
 p22mr1495900lfa.189.1631742231112; 
 Wed, 15 Sep 2021 14:43:51 -0700 (PDT)
MIME-Version: 1.0
References: <CA+cd6D476jyxKGWZUqLbFizW_TvGCpfqvS6-vC8T3sX=nzS5kg@mail.gmail.com>
 <129de0c3-64d9-c2f7-18e0-b3764446b875@pengutronix.de>
In-Reply-To: <129de0c3-64d9-c2f7-18e0-b3764446b875@pengutronix.de>
From: Marcelo Politzer <marcelo.politzer@cartesi.io>
Date: Wed, 15 Sep 2021 18:43:17 -0300
Message-ID: <CA+cd6D6pqMn=DhjPgDGske9u+t3P1zSS0PvK5L2TdAtRfi8FTw@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210915_144353_618696_427DDC6C 
X-CRM114-Status: GOOD (  31.87  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: New RISCV board (cartesi-machine)
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

T24gV2VkLCBTZXAgMTUsIDIwMjEgYXQgNjoxNyBQTSBBaG1hZCBGYXRvdW0gPGEuZmF0b3VtQHBl
bmd1dHJvbml4LmRlPiB3cm90ZToKPgo+IEhlbGxvIE1hcmNlbG8sCj4KPiBPbiAxNS4wOS4yMSAy
MjozMCwgTWFyY2VsbyBQb2xpdHplciB3cm90ZToKPiA+IEhpLCBJJ20gbmV3IHRvIGJhcmVib3gK
PiA+Cj4gPiBJJ20gY3VycmVudGx5IHBvcnRpbmcgYmFyZWJveCB0byBhIHJpc2N2IGJvYXJkIChj
YXJ0ZXNpLW1hY2hpbmUpLgo+Cj4gT2gsIGxvb2tzIGludGVyZXN0aW5nISBXaGF0IFNvQyBkb2Vz
IGl0IHVzZT8KCkl0IHVzZXMgU09DX1ZJUlQuIEl0IGlzIGFuIGVtdWxhdG9yIHRvIGJlIHByZWNp
c2UsIHdlIHVzZSBpdCBmb3IKdmVyaWZpYWJsZSBjb21wdXRhdGlvbnMuCkl0IGlzIHByZXR0eSBl
YXN5IHRvIHRyeSBpdCBvdXQgKHRoZXJlIGlzIGEgZG9ja2VyIGltYWdlIGZvciBpdCk6Cmh0dHBz
Oi8vd3d3LmNhcnRlc2kuaW8vZW4vZG9jcy9tYWNoaW5lL2hvc3Qvb3ZlcnZpZXcvCgo+Cj4gPiBJ
IGdvdCBpdCBtb3N0bHkgd29ya2luZzoKPiA+IC0gbmV3IHNlcmlhbDogc2VyaWFsX3NiaS5jIGFu
ZAo+Cj4gS2VlcCBpbiBtaW5kIHRoYXQgbmV3ZXIgU0JJIHZlcnNpb25zIGRlcHJlY2F0ZQo+IHNi
aV9jb25zb2xlX2dldGNoYXIoKSBhbmQgc2JpX2NvbnNvbGVfcHV0Y2hhcigpIHdpdGggbm8gcmVw
bGFjZW1lbnQuCj4KPiBCdXQgaWYgeW91ciBib2FyZCdzIGZpcm13YXJlIHByb3ZpZGVzIGl0LCB0
aGVyZSBpcyBubyBpc3N1ZSB3aXRoCj4gYWRkaW5nIGEgZHJpdmVyIGZvciBpdC4KClRoYXQgaXMg
d2hhdCB0aGUgZW11bGF0b3IgaW1wbGVtZW50cyBmb3Igbm93LgpJIGhhdmUgdG8gYWRtaXQgdGhh
dCBhIHZpcnRpbyBzeXN0ZW0gd291bGQgYmUgY29vbCwgbWF5YmUgaW4gdGhlIGZ1dHVyZS4KCj4K
PiA+IC0gZXh0NCBmaWxlc3lzdGVtIHdpdGggbXRkcmFtCj4gPgo+ID4gMSkgV2hhdCBJIGFtIHN0
aWxsIHRyeWluZyB0byBmaWd1cmUgb3V0IGlzIGhvdyB0byBjdXN0b21pemUgYGVudmAgY29ycmVj
dGx5Lgo+ID4gSSBnb3QgaXQgdG8gYnVpbGQgYW5kIGFwcGVhciBiYXNlZCBvbiB0aGUgZG9jcyBb
MV0sIFsyXSwKPgo+IFRob3NlIGxvb2sgb2suIEkgYXNzdW1lIHlvdSBoYXZlCj4KPiBkZWZhdWx0
ZW52X2FwcGVuZF9kaXJlY3RvcnkoZGVmYXVsdGVudl9jYXJ0ZXNpKTsgaW4geW91ciBib2FyZCBj
b2RlPwoKeWVzCgo+Cj4gPiBob3dldmVyIHRoZSBvbmx5IHdheSBJIGZvdW5kIGFyb3VuZCBbM10g
d2FzIHRvIHJlcGxhY2UgYGJpbi9pbml0YCB3aXRoCj4gPiB0aGlzWzRdIGxheW91dC4KPgo+IEFm
dGVyIGRyaXZlcnMgcHJvYmUsIGJhcmVib3ggaW52b2tlcyBpbml0IHRvIHNvdXJjZSBpbml0IHNj
cmlwdHMgYW5kCj4gZG8gdGhlIGNvdW50ZG93biBhbmQgc3VjaC4gVGhpcyBpcyB3cml0dGVuIGlu
IEMsIGJ1dCB5b3UgY2FuIG92ZXJyaWRlCj4gaXQgd2l0aCBhbiAvZW52L2Jpbi9pbml0IHNoZWxs
IHNjcmlwdCwgd2hpY2ggaXMgd2hhdCB5b3UgZGlkIGhlcmUuCj4KPiBJIHdvdWxkIG5vdCByZWNv
bW1lbmQgdGhpcy4gRHJvcCAvZW52L2Jpbi9pbml0IGFuZCB1c2UgdGhlIHNhbWUgQyBpbml0Cj4g
bmVhcmx5IGV2ZXJ5b25lIGVsc2UgZG9lcy4gWW91IGNhbiBzdGlsbCBjdXN0b21pemUgaXQgdmlh
IHRoZQo+IC9lbnYvaW5pdC8gc2NyaXB0cwo+Cj4gPiBJcyB0aGVyZSBhIHJlY29tbWVuZGVkIHdh
eSB0byBnbyBhYm91dCB0aGlzPwo+Cj4gWW91IG5lZWQgdG8gc2V0IGJvb3QuZGVmYXVsdCwgZS5n
Lgo+Cj4gZWNobyAnY2FydGVzaSBuZXQnID4gZGVmYXVsdGVudi1jYXJ0ZXNpL252L2Jvb3QuZGVm
YXVsdAo+Cj4gV2hpY2ggd291bGQgdHJ5IGNhcnRlc2kgZmlyc3QgYW5kIHRoZW4gbmV0IGlmIHRo
ZSBmaXJzdCBvbmUgZmFpbGVkLgoKVGhhdCB3b3JrZWQgZ3JlYXQuCkxvb2tzIGEgbG90IGNsZWFu
ZXIgbm93LgoKPgo+ID4gMikgSSBhbHNvIHdvdWxkIGxpa2UgY2xhcmlmaWNhdGlvbiBvbiB0aGUg
dXBzdHJlYW1pbmcgcHJvY2VzcywgaXMgaXQKPiA+IFBSIGJhc2VkLCBwYXRjaGVzIG9uIHRoaXMg
bGlzdD8KPgo+IFBhdGNoZXMgdG8gdGhlIG1haWxpbmcgbGlzdCBhcmUgdGhlIHVzdWFsIHdheSBv
ZiBjb250cmlidXRpbmcuCgpPSywgSSdsbCBjbGVhbiB0aGlzIHVwIGFuZCBzZW5kIGl0IGFzIHR3
byBwYXRjaGVzOgotIHNlcmlhbF9zYmkKLSBjYXJ0ZXNpIChib2FyZCkKCj4KPiBDaGVlcnMsCj4g
QWhtYWQKPgo+ID4KPiA+IGJlc3QsCj4gPiBNYXJjZWxvCj4gPgo+ID4KPiA+IFsxXSBNYWtlZmls
ZToKPiA+IGBgYAo+ID4gYmJlbnYtJChDT05GSUdfQk9BUkRfQ0FSVEVTSSkgKz0gZGVmYXVsdGVu
di1jYXJ0ZXNpCj4gPiBgYGAKPiA+Cj4gPiBbMl0gYXJjaC9yaXNjdi9ib2FyZHMvY2FydGVzaToK
PiA+IGBgYAo+ID4gZGVmYXVsdGVudi1jYXJ0ZXNpCj4gPiDilJzilIDilIAgYm9vdAo+ID4g4pSC
ICAg4pSU4pSA4pSAIGNhcnRlc2kKPiA+IOKUnOKUgOKUgCBpbml0Cj4gPiDilIIgICDilJzilIDi
lIAgYXV0b21vdW50Cj4gPiDilIIgICDilJTilIDilIAgcHMxCj4gPiDilJTilIDilIAgbnYKPiA+
ICAgICDilJzilIDilIAgYWxsb3dfY29sb3IKPiA+ICAgICDilJzilIDilIAgYXV0b2Jvb3RfdGlt
ZW91dAo+ID4gICAgIOKUlOKUgOKUgCB1c2VyCj4gPiBgYGAKPiA+Cj4gPiBbM10KPiA+IGBgYAo+
ID4gSGl0IG0gZm9yIG1lbnUgb3IgYW55IHRvIHN0b3AgYXV0b2Jvb3Q6ICAgIDAKPiA+IEJvb3Rp
bmcgZW50cnkgJ25ldCcKPiA+IGBgYAo+ID4KPiA+IFs0XQo+ID4gYGBgCj4gPiBkZWZhdWx0ZW52
LWNhcnRlc2kKPiA+IOKUnOKUgOKUgCBiaW4KPiA+IOKUgiAgIOKUlOKUgOKUgCBpbml0Cj4gPiDi
lJTilIDilIAgYm9vdAo+ID4gICAgIOKUlOKUgOKUgCBjYXJ0ZXNpCj4gPiBgYGAKPiA+Cj4gPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gYmFyZWJv
eCBtYWlsaW5nIGxpc3QKPiA+IGJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwo+ID4gaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cj4gPgo+Cj4KPiAt
LQo+IFBlbmd1dHJvbml4IGUuSy4gICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICB8Cj4gU3RldWVyd2FsZGVyIFN0ci4gMjEgICAgICAgICAgICAg
ICAgICAgICAgIHwgaHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwKPiAzMTEzNyBIaWxkZXNo
ZWltLCBHZXJtYW55ICAgICAgICAgICAgICAgICAgfCBQaG9uZTogKzQ5LTUxMjEtMjA2OTE3LTAg
ICAgfAo+IEFtdHNnZXJpY2h0IEhpbGRlc2hlaW0sIEhSQSAyNjg2ICAgICAgICAgICB8IEZheDog
ICArNDktNTEyMS0yMDY5MTctNTU1NSB8CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJl
Ym94Cg==

