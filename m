Delivery-date: Mon, 01 Nov 2021 20:06:24 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mhcdU-0007tU-Lr
	for lore@lore.pengutronix.de; Mon, 01 Nov 2021 20:06:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mhcdM-0006H4-PU
	for lore@pengutronix.de; Mon, 01 Nov 2021 20:06:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=biXF16ZNWnXpGRjZkMMiVreB9mpYU+T8ZDw2t+EgnaA=; b=ehv/Vku5tRd9WM
	4qCn9uIJ6yvhUsuHNF+QU+6jtZXR9RXeWEROea1gpRgynSiKFl6H1N+RQA4mHpnoY8SZlgPhSXGxW
	zUA9wTVmP5ff3y6EEPV+zEeqt4S+axW4WvRi80HCkTNwC5IZod7bH3mLLuxwkzhAapXcugaXSEx+M
	Mz8ha0EBCBbWX2jnuPMM/AxVT8TBOQAms4VQIStNphfEowR0QHPI5uuBUDrMjLlApeWG30YAJ/qPC
	5W7X3Abrp/SXYErZEKZMSbkt6Udyp/w7uRBO7oePhlPZRk1jcdR8SwSmOxUYWLMlJXKMrZ9DuIiW7
	opZ+zzb+x78ofcZuj++g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mhcc2-00H6Qu-Lj; Mon, 01 Nov 2021 19:04:54 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mhcbx-00H6Pv-IU
 for barebox@lists.infradead.org; Mon, 01 Nov 2021 19:04:50 +0000
Received: by mail-lf1-x129.google.com with SMTP id u21so38193768lff.8
 for <barebox@lists.infradead.org>; Mon, 01 Nov 2021 12:04:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=5p1efHuZucNaekpm08GU+qxb5Jz7GfiGkcu2aEy7gE4=;
 b=eG7CT2Hu8/L0cReFpfWAxMhFby/BKyTSWyHQZ/KU0U8XrA6rkTIuzpueRsi+oFGmTC
 5RrcZiKuZnR2F8/S+lwjok0toj2Pyv+We65Dhs6SEdYiWGzT/MZT0k4gOFMtOBkw0+tW
 vVwD5+DgMauINPYoyk3TwVn7l6HYlFGedUHklW3HT2xjpWr0jr944vS3y/78snvAapmL
 WHrsBVSLH8tY7zNYtPeGNfQb9wbrofhlaPuBzNcfpJB6wL0vD+jVzpcNR8jAYIvYoRWh
 hLYf9FC8Pgjl6i2YAIfhaKrD/XyVcrrsviqGgD2Zz+XG8BdXl3rvCpjYRmpVhBzUoZN7
 DOIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=5p1efHuZucNaekpm08GU+qxb5Jz7GfiGkcu2aEy7gE4=;
 b=ZoD8Ursfak5+b631OlT0MiugF66LDzivbhD2XS0pBvelNCGEKKfjizarPK5TliOPXw
 85TCRc06urhwyvbeiO8cEfBBoxni5gq5RoVJCq6U88HlhlwsripPXO96DxH6Wd3/b67H
 8jThFTAo2Ko1uByinWfGbxajJmIUIMfY0h2mgXYPBs+bRob3SulsZVEn91GGPhxEo6M+
 ajrCXlUMJa7aDHQnzvevDBIQSdkPZ3cPpOU/VEyPRdkQzUlL9HxOzQet1D45gJB0IyDG
 KrXZT+Y+Ys4oD5XWjDPgOMXl2jY0kSXZa4oY3U/KaOqFwG7w92Cykp7JWYQCzMZyWn8b
 LfnQ==
X-Gm-Message-State: AOAM530Z6LI4T9qm8mTdLf1kHM4pX/F/4c5gnw9TJEAGx8dn62GNcpOY
 0g2bsyAUnTByU+IyWrKLjfmgJA209+O4AzGQctP9GQ==
X-Google-Smtp-Source: ABdhPJyKNFoOLbDfkUWNwoo2EjRVcA1C2aMZj4hNoIXhEmrdBwOut09V4lwEJgGxDRjDTdbAxZswvGc5u3AVNgTIKfQ=
X-Received: by 2002:a05:6512:539:: with SMTP id
 o25mr2338533lfc.541.1635793487311; 
 Mon, 01 Nov 2021 12:04:47 -0700 (PDT)
MIME-Version: 1.0
References: <20211020083954.3787-1-danek.brat@gmail.com>
 <20211101090039.GM25698@pengutronix.de>
 <CAMHeXxMJYC2q4Hs7zd9A=5-KsXyFUtTshMVoZZC2nJUah=LtjA@mail.gmail.com>
In-Reply-To: <CAMHeXxMJYC2q4Hs7zd9A=5-KsXyFUtTshMVoZZC2nJUah=LtjA@mail.gmail.com>
From: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Mon, 1 Nov 2021 12:04:36 -0700
Message-ID: <CAMHeXxNwh9+bMqH2EmsKrnub5gyGCB=3tZQhOXyH1WFRwA-8Cg@mail.gmail.com>
To: Sascha Hauer <sha@pengutronix.de>
Cc: =?UTF-8?B?RGFuaWVsIEJyw6F0?= <danek.brat@gmail.com>, 
 barebox@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211101_120449_633788_6CA7ED5B 
X-CRM114-Status: GOOD (  21.34  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] phy: core: Make 'phy_optional_get' return NULL when not
 implemented
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

T24gTW9uLCBOb3YgMSwgMjAyMSBhdCAyOjAxIEFNIFNhc2NoYSBIYXVlciA8c2hhQHBlbmd1dHJv
bml4LmRlPiB3cm90ZToKPiBPbiBXZWQsIE9jdCAyMCwgMjAyMSBhdCAxMDozOTo1NEFNICswMjAw
LCBEYW5pZWwgQnLDoXQgd3JvdGU6Cj4gPiBNYWtlICdwaHlfb3B0aW9uYWxfZ2V0JyByZXR1cm4g
TlVMTCBpbnN0ZWFkIG9mIEVSUl9QVFIoLUVOT1NZUykgd2hlbiB0aGUKPiA+IENPTkZJR19HRU5F
UklDX1BIWSBpcyBub3QgZW5hYmxlZC4gSXQgbWFrZXMgbW9yZSBzZW5zZSB0byByZXR1cm4gTlVM
TCBpbnN0ZWFkCj4gPiBvZiBzdHJhaWdodCB1cCB0aHJvd2luZyBhIGVycm9yIHNpbmNlIHRoZSBm
dW5jdGlvbiBoYXMgJ29wdGlvbmFsJyBpbiBpdHMgbmFtZS4KPiA+IFRoaXMgYWxzbyBmaXhlcyBk
d2MyIHVzYiBkcml2ZXIgd2hpY2ggd291bGQgcHJldmlvdXNseSBmYWlsIGluc2lkZSBpdHMgcHJv
YmUKPiA+IGZ1bmN0aW9uIGRlc3BpdGUgYmVpbmcgYWJsZSB0byBmdW5jdGlvbiB3aXRob3V0IGEg
cGh5IGp1c3QgZmluZS4KPgo+IFRoZSBwaHkgaXMgb25seSBvcHRpb25hbCBhcyBsb25nIGFzIG5v
bmUgaXMgc3BlY2lmaWVkIGluIHRoZSBkZXZpY2UKPiB0cmVlLiBXaGVuIHRoZXJlIGlzIG9uZSBz
cGVjaWZpZWQgdGhlbiBpdCdzIG5vIGxvbmdlciBvcHRpb25hbC4gV2UgY2FuJ3QKPiBkbyB0aGUg
cmlnaHQgdGhpbmcgaGVyZSB3aXRob3V0IGNoZWNraW5nIHRoZSBkZXZpY2UgdHJlZS4gR2l2ZW4g
dGhhdAo+IGl0J3Mgc2ltcGxlIHRvIGVuYWJsZSBDT05GSUdfR0VORVJJQ19QSFkgSSB0aGluayB0
aGlzIGlzIHRoZSB3YXkgdG8gZ28uCgpCdXQgdGhpcyBmb3JjZSBlbmFibGVzIEdFTkVSSUNfUEhZ
IHdoZW4gaXQncyBub3QgbmVlZGVkLgoKVGhlcmUgYXJlIGNvbW1vbmx5IG1hbnkgZGV2aWNlIG5v
ZGVzIGluIExpbnV4IGR0cyBmaWxlcyB0aGF0IGFyZSBub3QKdXNlZCBieSBhbiBlbmFibGVkIEJh
cmVib3ggZHJpdmVyLiAgSXQncyBub3JtYWwgdG8gdHVybiBvZmYgYSBkcml2ZXIKdGhhdCBtaWdo
dCBiZSBvciBjb3VsZCBiZSB1c2VkLiAgSXMgaXQgbmVjZXNzYXJpbHkgYW4gZXJyb3IgaWYgYSBw
aHkKaXMgcHJlc2VudCBpbiB0aGUgZHRzIGJ1dCB3ZSBkb24ndCB3aXNoIHRvIGluY2x1ZGUgc3Vw
cG9ydCBmb3IgaXQ/CgpJbiB0aGlzIEJhcmVib3ggdmVyc2lvbiBvZiB0aGlzIGNvZGUsIEkgdGhp
bmsgcGh5X29wdGlvbmFsX2dldCgpIG9ubHkKcmV0dXJucyBOVUxMIGlmIHRoZXJlIGlzIHNvbWUg
ZXJyb3IgZmluZGluZyB0aGUgcGh5IE9GIG5vZGUsIHN1Y2ggYXMKdGhlcmUgYmVpbmcgbm9uZSBz
cGVjaWZpZWQgb3Igc29tZSBlcnJvciBpbiB0aGUgdmFsaWRpdHkgb2YgdGhlIGR0cwpkYXRhLiAg
T3RoZXJ3aXNlIGl0J3MgUFJPQkVfREVGRVIuCgpJbiB0aGUgTGludXggdmVyc2lvbiwgdGhlcmUg
YXJlIG90aGVyIHdheXMgdG8gZ2V0IE5VTEwsIHN1Y2ggYXMgdGhlCnBoeSBiZWluZyBkaXNhYmxl
ZDoKICAgICAgICBpZiAoIW9mX2RldmljZV9pc19hdmFpbGFibGUoYXJncy5ucCkpIHsKICAgICAg
ICAgICAgICAgZGV2X3dhcm4ocGh5X3Byb3ZpZGVyLT5kZXYsICJSZXF1ZXN0ZWQgUEhZIGlzIGRp
c2FibGVkXG4iKTsKICAgICAgICAgICAgICAgcGh5ID0gRVJSX1BUUigtRU5PREVWKTsgIC8vIHBo
eV9vcHRpb25hbF9nZXQgLT4gTlVMTAoKU28gaXQgc2VlbXMgbGlrZSB0aGUgcGh5IGJlaW5nIG9w
dGlvbmFsLCBldmVuIGlmIGRlZmluZWQgaW4gdGhpcyBkdHMsCm1pZ2h0IGJlIHRoZSBpbnRlbmRl
ZCBiZWhhdmlvci4KClRoZSBzdHViIHZlcnNpb24gY291bGQgY2hlY2sgaWYgYSBwaHkgaXMgaW4g
dGhlIGR0cyBhbmQgZ2VuZXJhdGUgYQp3YXJuaW5nLCBpZiB0aGUgZ29hbCBpcyB0byByZWR1Y2Ug
cHJvYmxlbXMgd2l0aCBwZW9wbGUgY3JlYXRpbmcgYnJva2VuCmNvbmZpZ3VyYXRpb25zIGFuZCB0
aGVuIG5vdCB1bmRlcnN0YW5kaW5nIHdoeSB0aGVpciBjb25maWd1cmF0aW9uIGRvZXMKbm90IHdv
cmsuCgpzdHJ1Y3QgcGh5ICpwaHlfb3B0aW9uYWxfZ2V0KHN0cnVjdCBkZXZpY2VfZCAqZGV2LCBj
b25zdCBjaGFyICpzdHJpbmcpCnsKICAgICAgICBpZiAoZGV2LT5kZXZpY2Vfbm9kZSAmJgogICAg
ICAgICAgICAhb2ZfcGFyc2VfcGhhbmRsZV93aXRoX2FyZ3MoZGV2LT5kZXZpY2Vfbm9kZSwgInBo
eXMiLAoiI3BoeS1jZWxscyIsIG9mX3Byb3BlcnR5X21hdGNoX3N0cmluZyhkZXYtPmRldmljZV9u
b2RlLCAicGh5LW5hbWVzIiwKc3RyaW5nKSwgTlVMTCkpCiAgICAgICAgICAgICAgICBkZXZfd2Fy
bihkZXYsICIlcyBwaHkgc3BlY2lmaWVkIGluIGRldmljZSB0cmVlIGJ1dApDT05GSUdfR0VORVJJ
Q19QSFkgc3VwcG9ydCBpcyBub3QgZW5hYmxlZCIsIHN0cmluZyk7CiAgICAgICAgcmV0dXJuIE5V
TEw7Cn0KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJh
cmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK

