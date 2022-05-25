Delivery-date: Wed, 25 May 2022 10:34:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ntmTc-008Roc-O4
	for lore@lore.pengutronix.de; Wed, 25 May 2022 10:34:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ntmTb-0006Ry-3p
	for lore@pengutronix.de; Wed, 25 May 2022 10:34:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qs0PA+4ykB1KOq3SBMn30w5vbm0kY94uL7FtmYU9oYA=; b=hHS7ReKDg7sLs8
	vl0W1d4qRE74sPwdt6BricEsIkVXTM2M1Z7M8W10pgQiIIt9Sd6y5VOASJakk42W3F5QJgEY/lCmD
	B1gXlrlK54AlGDsChogimy9FKKZEK4poH+pBD9YeEw0ADMeraiywSvWzZqCXar/PTR0zV9md3uHTH
	Gr7p4hJSzhjJobkEajk7gtysRDQUZZIoLfnh6JlmdwgUJoR64k5CS5+5He9Jd+ATaQj+0py1ER8bQ
	tiyo7qifkmkrEt4TTMsGXMOiwOOYcn8QTAIWH0/4J92K3go2+VO0N1ve4+pfBBRZUTZttKcowQ/ik
	RqXJccO1+zz6eR68mz5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ntmSI-00ARGA-Mw; Wed, 25 May 2022 08:33:22 +0000
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ntmSE-00ARFI-6j
 for barebox@lists.infradead.org; Wed, 25 May 2022 08:33:19 +0000
Received: by mail-pf1-x42a.google.com with SMTP id y199so18606796pfb.9
 for <barebox@lists.infradead.org>; Wed, 25 May 2022 01:33:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=JjyBPKC9KDN1zaY0HJ+10khqJGB81hsku1AL1iSxync=;
 b=o1kOdKN3S1MHKNqlflWSBvMrWvLNiNSlLDz7CZwvQStxQPCZrTck+a28PDZIa9R+j9
 +q5qsjYJ4pTnSVtdUp/GwZewoeZodKsg1sf+iFwsDJJMuMPuGzGANUH9fIePW4Q3L2dd
 8hIKEUWPfJQAdTzuyi8HSzvIytWoLu74lG+Kh2M/lYVvutXTaTy3/0+MUVmHKN/b8v42
 rGBIzzF2sBuF9c2JzmpSxz+hER4uDQRA160BbJrQlKVxalmzQA4ujU9+ozm6fw39celV
 gsWb9lmzt0mpzdrpFz93OmhFcD2mT3Qc24pdyNI0IRRnXvTBnxucLHgd2NERag2vtb05
 A+VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=JjyBPKC9KDN1zaY0HJ+10khqJGB81hsku1AL1iSxync=;
 b=cVebGfDN1GwOU+vHqpO3jVn5Dht8nvHUvf+/nIrRJwjSZfOsusMYey1A96BNRRByZ+
 OweMrHAgUg5RhyDhaxNiYK+tTVWuc23d4GEDSU4Tc+x3XaqsWVmXVmSyNsEn9brJbhDn
 VMtyck4DNOs40f1pCX8SEgtWENR8VC04I2fYicJgbWD6rgmwlmyYSVsie3/pOgkbmhCq
 a4pgIEpfVKcnk3sUrm65ofUxCLsPASIDf7fgv/TSVOVL54QY9MDlfxaG9MgQRbF3+r/M
 Xmer38OP/hFszHmJmxHiob0vFEx0zvRYiEhFnb5umtOr9escKnMWjJgx46GJZZ5ln4HP
 Ti5w==
X-Gm-Message-State: AOAM531qJGV+hdfNx2cR4Y8lzxiubf0Sjy3I4J3gOWawYxWQCPIBr+FA
 9C5VgScW49BfucpQcepT0bsCTVWVzmtjY2wGRc+KvRepnkk=
X-Google-Smtp-Source: ABdhPJzj20gfTXl8aXj5byRMszmZ9lPLdMah8MTO3t6xW186LvyxvBWDCMmMapn6AygMt1JdS/rvEiQHBy/F9E4/OHY=
X-Received: by 2002:a65:6bd6:0:b0:39d:4f85:9ecf with SMTP id
 e22-20020a656bd6000000b0039d4f859ecfmr28054548pgw.336.1653467595263; Wed, 25
 May 2022 01:33:15 -0700 (PDT)
MIME-Version: 1.0
References: <20220524073048.18467-1-eagle.alexander923@gmail.com>
 <76dbfceb-1651-2659-7209-2c37c3f8f7d5@pengutronix.de>
 <CAP1tNvQVWjG1=jsJRh-eCpHzUPOct1BysgXQy-MxDvYkHFY6wg@mail.gmail.com>
 <1db17488-d759-712a-6014-8d2cde412474@pengutronix.de>
In-Reply-To: <1db17488-d759-712a-6014-8d2cde412474@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed, 25 May 2022 11:33:03 +0300
Message-ID: <CAP1tNvTqa-qVTBCR1QQptsfvgTWsWNCEGSFG+ZnvNrBT62cabg@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220525_013318_285978_07945B9F 
X-CRM114-Status: GOOD (  15.05  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: DTS: myir-x335x: Add GPIO aliases
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

0YHRgCwgMjUg0LzQsNGPIDIwMjIg0LMuINCyIDExOjE2LCBBaG1hZCBGYXRvdW0gPGEuZmF0b3Vt
QHBlbmd1dHJvbml4LmRlPjoKPiBPbiAyNS4wNS4yMiAwODoyNywgQWxleGFuZGVyIFNoaXlhbiB3
cm90ZToKPiA+INCy0YIsIDI0INC80LDRjyAyMDIyINCzLiDQsiAxNToyOCwgQWhtYWQgRmF0b3Vt
IDxhLmZhdG91bUBwZW5ndXRyb25peC5kZT46Cj4gPj4gT24gMjQuMDUuMjIgMDk6MzAsIEFsZXhh
bmRlciBTaGl5YW4gd3JvdGU6Cj4gPj4+IEZvciB0aGUgY29ycmVjdCB3b3JrIG9mIEdQSU8gZHJp
dmVyLCB3ZSBuZWVkIHRvIGRlZmluZSBhbGlhc2VzLgo+ID4+PiBMZXQncyBhZGQgdGhlbSB0byB0
aGUgZGV2aWNldHJlZS4KPiA+IC4uLgo+ID4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vZHRzL2Ft
MzM1eC1teWlydGVjaC1teWQuZHRzIGIvYXJjaC9hcm0vZHRzL2FtMzM1eC1teWlydGVjaC1teWQu
ZHRzCj4gPj4+IGluZGV4IDZlYzY1ZTUzM2QuLjFlYTBmMmE0NDAgMTAwNjQ0Cj4gPj4+IC0tLSBh
L2FyY2gvYXJtL2R0cy9hbTMzNXgtbXlpcnRlY2gtbXlkLmR0cwo+ID4+PiArKysgYi9hcmNoL2Fy
bS9kdHMvYW0zMzV4LW15aXJ0ZWNoLW15ZC5kdHMKPiA+Pj4gQEAgLTYsNiArNiwxMyBAQAo+ID4+
PiAgI2luY2x1ZGUgPGFybS9hbTMzNXgtbXlpcnRlY2gtbXlkLmR0cz4KPiA+Pgo+ID4+IE90aGVy
IGJvYXJkcyBkbyAjaW5jbHVkZSAiYW0zM3h4LmR0c2kiLCB3aGljaCB0YWtlcyBjYXJlIG9mIHRo
ZXNlCj4gPj4gYWxpYXNlcy4gSXQncyBwcm9iYWJseSBiZXR0ZXIgeW91IGluY2x1ZGUgdGhhdCB0
b28uCj4gPgo+ID4gSW5jbHVkaW5nIHRoaXMgZmlsZSByZXN1bHRzIGluIGFuIGVycm9yLgo+ID4K
PiA+IENoYW5nZWQgdG86Cj4gPiAjaW5jbHVkZSAiYW0zM3h4LmR0c2kiCj4gPiAjaW5jbHVkZSA8
YXJtL2FtMzM1eC1teWlydGVjaC1teWQuZHRzPgo+ID4KPiA+IE91dHB1dDoKPiA+IERUQyAgICAg
YXJjaC9hcm0vZHRzL2FtMzM1eC1teWlydGVjaC1teWQuZHRiCj4gPiBFcnJvcjogL2hvbWUvQVJN
L2JhcmVib3gvZHRzL3NyYy9hcm0vYW0zMzV4LW15aXJ0ZWNoLW15ZC5kdHM6Ni4xLTkgc3ludGF4
IGVycm9yCj4gPiBGQVRBTCBFUlJPUjogVW5hYmxlIHRvIHBhcnNlIGlucHV0IHRyZWUKPiA+Cj4g
PiBNb3N0IGxpa2VseSB0aGlzIGlzIHRoZSByZXN1bHQgb2YgZG91YmxlIGluY2x1c2lvbiBvZiB0
aGUgZmlsZSBhcm0vYW0zM3h4LmR0c2ksCj4gPiBmaXJzdCB0aW1lIGZyb20gImFtMzN4eC5kdHNp
IiBhbmQgc2Vjb25kIGZyb20gYXJtL2FtMzM1eC1teWlydGVjaC1teWQuZHRzLgo+Cj4gSGksIHlv
dSBuZWVkIHRvIGluY2x1ZGUgaWYgYWZ0ZXIgdGhlIHVwc3RyZWFtIERULiBUaGF0J3Mgd2h5IGl0
IGRvZXNuJ3QgaGF2ZQo+IGEgL2R0cy12MS87CgpZZXMsIGlmICJhbTMzeHguZHRzaSIgaXMgYWZ0
ZXIgPGFybS9hbTMzNXgtbXlpcnRlY2gtbXlkLmR0cz4sIGl0IGNvbXBpbGVzIGZpbmUuCkJ1dCBp
biB0aGlzIGNhc2UsIHVwc3RyZWFtaW5nIDxhcm0vYW0zM3h4LmR0c2k+IChmcm9tIGxvY2FsCmFt
MzN4eC5kdHNpKSBvdmVyd3JpdGVzCmFueSBiaW5kaW5nIGNoYW5nZXMgZnJvbSB0aGUgYm9hcmQg
ZmlsZS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJh
cmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK

