Delivery-date: Thu, 16 Sep 2021 00:00:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQcxN-0004gK-H6
	for lore@lore.pengutronix.de; Thu, 16 Sep 2021 00:00:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQcxM-0006TZ-FQ
	for lore@pengutronix.de; Thu, 16 Sep 2021 00:00:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=iFHPONXcyfz1kF7vFwj624PsY7il5Alhz/598/Al/80=; b=RWqv0aJG+E9ckQY4xM2eXXIDPQ
	eYq2Ml0kbYd0gNzbOgol39mCQjB4/MYWWdjJwDU9OHVSq/W6dwG/NDXb19RdK35R0tjYFqOXTPFdJ
	7rHTlePYveZepxNdvj+mbS7AGnmrochQ24NBXeURV9/xVY3A2uBvDHd0LFy5fzdvwKDeq+V67GhpR
	OM17OzMLVfbs1k7KlwdIW1CL0mePwsbF3pADLs7YVbPLSGeWB4lM3bLFtr2t+n/tTyEHCYlEi7sJL
	fiz07b7SqRC7kz3lJNcY88+x1QKD9pHBJoKTUwkXEZKjDLDVlhYwwyirK/Q/yFeM7T9Ddb7KIrvFD
	1LcGviXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQcvp-009ypF-8J; Wed, 15 Sep 2021 21:59:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQcvk-009yoh-ER
 for barebox@lists.infradead.org; Wed, 15 Sep 2021 21:59:02 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mQcvi-0006H8-Oc; Wed, 15 Sep 2021 23:58:58 +0200
To: Marcelo Politzer <marcelo.politzer@cartesi.io>
Cc: barebox@lists.infradead.org
References: <CA+cd6D476jyxKGWZUqLbFizW_TvGCpfqvS6-vC8T3sX=nzS5kg@mail.gmail.com>
 <129de0c3-64d9-c2f7-18e0-b3764446b875@pengutronix.de>
 <CA+cd6D6pqMn=DhjPgDGske9u+t3P1zSS0PvK5L2TdAtRfi8FTw@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <38f21108-d380-d299-e9cd-311b2ef4c3c8@pengutronix.de>
Date: Wed, 15 Sep 2021 23:58:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CA+cd6D6pqMn=DhjPgDGske9u+t3P1zSS0PvK5L2TdAtRfi8FTw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210915_145900_537721_1FF49008 
X-CRM114-Status: GOOD (  30.63  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: New RISCV board (cartesi-machine)
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGVsbG8gTWFyY2VsbywKCk9uIDE1LjA5LjIxIDIzOjQzLCBNYXJjZWxvIFBvbGl0emVyIHdyb3Rl
Ogo+IE9uIFdlZCwgU2VwIDE1LCAyMDIxIGF0IDY6MTcgUE0gQWhtYWQgRmF0b3VtIDxhLmZhdG91
bUBwZW5ndXRyb25peC5kZT4gd3JvdGU6Cj4+Cj4+IEhlbGxvIE1hcmNlbG8sCj4+Cj4+IE9uIDE1
LjA5LjIxIDIyOjMwLCBNYXJjZWxvIFBvbGl0emVyIHdyb3RlOgo+Pj4gSGksIEknbSBuZXcgdG8g
YmFyZWJveAo+Pj4KPj4+IEknbSBjdXJyZW50bHkgcG9ydGluZyBiYXJlYm94IHRvIGEgcmlzY3Yg
Ym9hcmQgKGNhcnRlc2ktbWFjaGluZSkuCj4+Cj4+IE9oLCBsb29rcyBpbnRlcmVzdGluZyEgV2hh
dCBTb0MgZG9lcyBpdCB1c2U/Cj4gCj4gSXQgdXNlcyBTT0NfVklSVC4gSXQgaXMgYW4gZW11bGF0
b3IgdG8gYmUgcHJlY2lzZSwgd2UgdXNlIGl0IGZvcgo+IHZlcmlmaWFibGUgY29tcHV0YXRpb25z
Lgo+IEl0IGlzIHByZXR0eSBlYXN5IHRvIHRyeSBpdCBvdXQgKHRoZXJlIGlzIGEgZG9ja2VyIGlt
YWdlIGZvciBpdCk6Cj4gaHR0cHM6Ly93d3cuY2FydGVzaS5pby9lbi9kb2NzL21hY2hpbmUvaG9z
dC9vdmVydmlldy8KClRoYW5rcywgd2lsbCBjaGVjayBpdCBvdXQuCgo+Pj4gSSBnb3QgaXQgbW9z
dGx5IHdvcmtpbmc6Cj4+PiAtIG5ldyBzZXJpYWw6IHNlcmlhbF9zYmkuYyBhbmQKPj4KPj4gS2Vl
cCBpbiBtaW5kIHRoYXQgbmV3ZXIgU0JJIHZlcnNpb25zIGRlcHJlY2F0ZQo+PiBzYmlfY29uc29s
ZV9nZXRjaGFyKCkgYW5kIHNiaV9jb25zb2xlX3B1dGNoYXIoKSB3aXRoIG5vIHJlcGxhY2VtZW50
Lgo+Pgo+PiBCdXQgaWYgeW91ciBib2FyZCdzIGZpcm13YXJlIHByb3ZpZGVzIGl0LCB0aGVyZSBp
cyBubyBpc3N1ZSB3aXRoCj4+IGFkZGluZyBhIGRyaXZlciBmb3IgaXQuCj4gCj4gVGhhdCBpcyB3
aGF0IHRoZSBlbXVsYXRvciBpbXBsZW1lbnRzIGZvciBub3cuCj4gSSBoYXZlIHRvIGFkbWl0IHRo
YXQgYSB2aXJ0aW8gc3lzdGVtIHdvdWxkIGJlIGNvb2wsIG1heWJlIGluIHRoZSBmdXR1cmUuCgpM
aWtlIHRoaXM/IDotKQoKaHR0cHM6Ly93d3cuYmFyZWJveC5vcmcvanNiYXJlYm94LwoKPj4+IC0g
ZXh0NCBmaWxlc3lzdGVtIHdpdGggbXRkcmFtCj4+Pgo+Pj4gMSkgV2hhdCBJIGFtIHN0aWxsIHRy
eWluZyB0byBmaWd1cmUgb3V0IGlzIGhvdyB0byBjdXN0b21pemUgYGVudmAgY29ycmVjdGx5Lgo+
Pj4gSSBnb3QgaXQgdG8gYnVpbGQgYW5kIGFwcGVhciBiYXNlZCBvbiB0aGUgZG9jcyBbMV0sIFsy
XSwKPj4KPj4gVGhvc2UgbG9vayBvay4gSSBhc3N1bWUgeW91IGhhdmUKPj4KPj4gZGVmYXVsdGVu
dl9hcHBlbmRfZGlyZWN0b3J5KGRlZmF1bHRlbnZfY2FydGVzaSk7IGluIHlvdXIgYm9hcmQgY29k
ZT8KPiAKPiB5ZXMKPiAKPj4KPj4+IGhvd2V2ZXIgdGhlIG9ubHkgd2F5IEkgZm91bmQgYXJvdW5k
IFszXSB3YXMgdG8gcmVwbGFjZSBgYmluL2luaXRgIHdpdGgKPj4+IHRoaXNbNF0gbGF5b3V0Lgo+
Pgo+PiBBZnRlciBkcml2ZXJzIHByb2JlLCBiYXJlYm94IGludm9rZXMgaW5pdCB0byBzb3VyY2Ug
aW5pdCBzY3JpcHRzIGFuZAo+PiBkbyB0aGUgY291bnRkb3duIGFuZCBzdWNoLiBUaGlzIGlzIHdy
aXR0ZW4gaW4gQywgYnV0IHlvdSBjYW4gb3ZlcnJpZGUKPj4gaXQgd2l0aCBhbiAvZW52L2Jpbi9p
bml0IHNoZWxsIHNjcmlwdCwgd2hpY2ggaXMgd2hhdCB5b3UgZGlkIGhlcmUuCj4+Cj4+IEkgd291
bGQgbm90IHJlY29tbWVuZCB0aGlzLiBEcm9wIC9lbnYvYmluL2luaXQgYW5kIHVzZSB0aGUgc2Ft
ZSBDIGluaXQKPj4gbmVhcmx5IGV2ZXJ5b25lIGVsc2UgZG9lcy4gWW91IGNhbiBzdGlsbCBjdXN0
b21pemUgaXQgdmlhIHRoZQo+PiAvZW52L2luaXQvIHNjcmlwdHMKPj4KPj4+IElzIHRoZXJlIGEg
cmVjb21tZW5kZWQgd2F5IHRvIGdvIGFib3V0IHRoaXM/Cj4+Cj4+IFlvdSBuZWVkIHRvIHNldCBi
b290LmRlZmF1bHQsIGUuZy4KPj4KPj4gZWNobyAnY2FydGVzaSBuZXQnID4gZGVmYXVsdGVudi1j
YXJ0ZXNpL252L2Jvb3QuZGVmYXVsdAo+Pgo+PiBXaGljaCB3b3VsZCB0cnkgY2FydGVzaSBmaXJz
dCBhbmQgdGhlbiBuZXQgaWYgdGhlIGZpcnN0IG9uZSBmYWlsZWQuCj4gCj4gVGhhdCB3b3JrZWQg
Z3JlYXQuCj4gTG9va3MgYSBsb3QgY2xlYW5lciBub3cuCj4gCj4+Cj4+PiAyKSBJIGFsc28gd291
bGQgbGlrZSBjbGFyaWZpY2F0aW9uIG9uIHRoZSB1cHN0cmVhbWluZyBwcm9jZXNzLCBpcyBpdAo+
Pj4gUFIgYmFzZWQsIHBhdGNoZXMgb24gdGhpcyBsaXN0Pwo+Pgo+PiBQYXRjaGVzIHRvIHRoZSBt
YWlsaW5nIGxpc3QgYXJlIHRoZSB1c3VhbCB3YXkgb2YgY29udHJpYnV0aW5nLgo+IAo+IE9LLCBJ
J2xsIGNsZWFuIHRoaXMgdXAgYW5kIHNlbmQgaXQgYXMgdHdvIHBhdGNoZXM6Cj4gLSBzZXJpYWxf
c2JpCj4gLSBjYXJ0ZXNpIChib2FyZCkKClNvdW5kcyBnb29kLgoKQ2hlZXJzLApBaG1hZAoKPiAK
Pj4KPj4gQ2hlZXJzLAo+PiBBaG1hZAo+Pgo+Pj4KPj4+IGJlc3QsCj4+PiBNYXJjZWxvCj4+Pgo+
Pj4KPj4+IFsxXSBNYWtlZmlsZToKPj4+IGBgYAo+Pj4gYmJlbnYtJChDT05GSUdfQk9BUkRfQ0FS
VEVTSSkgKz0gZGVmYXVsdGVudi1jYXJ0ZXNpCj4+PiBgYGAKPj4+Cj4+PiBbMl0gYXJjaC9yaXNj
di9ib2FyZHMvY2FydGVzaToKPj4+IGBgYAo+Pj4gZGVmYXVsdGVudi1jYXJ0ZXNpCj4+PiDilJzi
lIDilIAgYm9vdAo+Pj4g4pSCICAg4pSU4pSA4pSAIGNhcnRlc2kKPj4+IOKUnOKUgOKUgCBpbml0
Cj4+PiDilIIgICDilJzilIDilIAgYXV0b21vdW50Cj4+PiDilIIgICDilJTilIDilIAgcHMxCj4+
PiDilJTilIDilIAgbnYKPj4+ICAgICDilJzilIDilIAgYWxsb3dfY29sb3IKPj4+ICAgICDilJzi
lIDilIAgYXV0b2Jvb3RfdGltZW91dAo+Pj4gICAgIOKUlOKUgOKUgCB1c2VyCj4+PiBgYGAKPj4+
Cj4+PiBbM10KPj4+IGBgYAo+Pj4gSGl0IG0gZm9yIG1lbnUgb3IgYW55IHRvIHN0b3AgYXV0b2Jv
b3Q6ICAgIDAKPj4+IEJvb3RpbmcgZW50cnkgJ25ldCcKPj4+IGBgYAo+Pj4KPj4+IFs0XQo+Pj4g
YGBgCj4+PiBkZWZhdWx0ZW52LWNhcnRlc2kKPj4+IOKUnOKUgOKUgCBiaW4KPj4+IOKUgiAgIOKU
lOKUgOKUgCBpbml0Cj4+PiDilJTilIDilIAgYm9vdAo+Pj4gICAgIOKUlOKUgOKUgCBjYXJ0ZXNp
Cj4+PiBgYGAKPj4+Cj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+Pj4gYmFyZWJveCBtYWlsaW5nIGxpc3QKPj4+IGJhcmVib3hAbGlzdHMuaW5mcmFk
ZWFkLm9yZwo+Pj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9i
YXJlYm94Cj4+Pgo+Pgo+Pgo+PiAtLQo+PiBQZW5ndXRyb25peCBlLksuICAgICAgICAgICAgICAg
ICAgICAgICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfAo+PiBTdGV1ZXJ3YWxk
ZXIgU3RyLiAyMSAgICAgICAgICAgICAgICAgICAgICAgfCBodHRwOi8vd3d3LnBlbmd1dHJvbml4
LmRlLyAgfAo+PiAzMTEzNyBIaWxkZXNoZWltLCBHZXJtYW55ICAgICAgICAgICAgICAgICAgfCBQ
aG9uZTogKzQ5LTUxMjEtMjA2OTE3LTAgICAgfAo+PiBBbXRzZ2VyaWNodCBIaWxkZXNoZWltLCBI
UkEgMjY4NiAgICAgICAgICAgfCBGYXg6ICAgKzQ5LTUxMjEtMjA2OTE3LTU1NTUgfAo+IAoKCi0t
IApQZW5ndXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgfApTdGV1ZXJ3YWxkZXIgU3RyLiAyMSAgICAgICAgICAgICAgICAg
ICAgICAgfCBodHRwOi8vd3d3LnBlbmd1dHJvbml4LmRlLyAgfAozMTEzNyBIaWxkZXNoZWltLCBH
ZXJtYW55ICAgICAgICAgICAgICAgICAgfCBQaG9uZTogKzQ5LTUxMjEtMjA2OTE3LTAgICAgfApB
bXRzZ2VyaWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAgICAgICAgICAgfCBGYXg6ICAgKzQ5LTUx
MjEtMjA2OTE3LTU1NTUgfAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=

