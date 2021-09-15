Delivery-date: Wed, 15 Sep 2021 23:19:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQcJX-0003L1-N3
	for lore@lore.pengutronix.de; Wed, 15 Sep 2021 23:19:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQcJW-0002x8-Pr
	for lore@pengutronix.de; Wed, 15 Sep 2021 23:19:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jvrZN2N72VCka0K8Xusg9CROcn5I/FO6hK6jOqS70OI=; b=h9j9Yd2PVJ9d86HlPf+W0wwJTA
	L1xU0/zRSFP+3DyCnGM48prV25Xu5YKkh0e6pC6eT7iZUULlP2/231brrj3Vhip5NLtWfg9rWTlOc
	FE2jvgV7+o+cAi7osZWfmrasvBdE04Kpw+b9XtGEAPU4O+VK2HTq0v9NCN9Ugjps8B5lfEhTQYi9d
	5/1BNn5g2UScEAA1CKmFlbqAt4ZXRktEYuVr42Gp42DFUk13fA3YfZsmvdjmUbH1qNaChtKEywqTe
	tBLYgx/icEdc8JGieIIRrWddv24wCq3JbLNTZD8LBMSIAOAc4ArsFqZbIOyAKYKjaY8CaTeIqm3ZQ
	PxqTFhTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQcI1-009wvy-Fd; Wed, 15 Sep 2021 21:17:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQcHw-009wvf-Rc
 for barebox@lists.infradead.org; Wed, 15 Sep 2021 21:17:54 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mQcHu-0002mT-Qu; Wed, 15 Sep 2021 23:17:50 +0200
To: Marcelo Politzer <marcelo.politzer@cartesi.io>, barebox@lists.infradead.org
References: <CA+cd6D476jyxKGWZUqLbFizW_TvGCpfqvS6-vC8T3sX=nzS5kg@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <129de0c3-64d9-c2f7-18e0-b3764446b875@pengutronix.de>
Date: Wed, 15 Sep 2021 23:17:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CA+cd6D476jyxKGWZUqLbFizW_TvGCpfqvS6-vC8T3sX=nzS5kg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210915_141752_942011_E6771FF3 
X-CRM114-Status: GOOD (  23.60  )
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

SGVsbG8gTWFyY2VsbywKCk9uIDE1LjA5LjIxIDIyOjMwLCBNYXJjZWxvIFBvbGl0emVyIHdyb3Rl
Ogo+IEhpLCBJJ20gbmV3IHRvIGJhcmVib3gKPiAKPiBJJ20gY3VycmVudGx5IHBvcnRpbmcgYmFy
ZWJveCB0byBhIHJpc2N2IGJvYXJkIChjYXJ0ZXNpLW1hY2hpbmUpLgoKT2gsIGxvb2tzIGludGVy
ZXN0aW5nISBXaGF0IFNvQyBkb2VzIGl0IHVzZT8KCj4gSSBnb3QgaXQgbW9zdGx5IHdvcmtpbmc6
Cj4gLSBuZXcgc2VyaWFsOiBzZXJpYWxfc2JpLmMgYW5kCgpLZWVwIGluIG1pbmQgdGhhdCBuZXdl
ciBTQkkgdmVyc2lvbnMgZGVwcmVjYXRlCnNiaV9jb25zb2xlX2dldGNoYXIoKSBhbmQgc2JpX2Nv
bnNvbGVfcHV0Y2hhcigpIHdpdGggbm8gcmVwbGFjZW1lbnQuCgpCdXQgaWYgeW91ciBib2FyZCdz
IGZpcm13YXJlIHByb3ZpZGVzIGl0LCB0aGVyZSBpcyBubyBpc3N1ZSB3aXRoCmFkZGluZyBhIGRy
aXZlciBmb3IgaXQuCgo+IC0gZXh0NCBmaWxlc3lzdGVtIHdpdGggbXRkcmFtCj4gCj4gMSkgV2hh
dCBJIGFtIHN0aWxsIHRyeWluZyB0byBmaWd1cmUgb3V0IGlzIGhvdyB0byBjdXN0b21pemUgYGVu
dmAgY29ycmVjdGx5Lgo+IEkgZ290IGl0IHRvIGJ1aWxkIGFuZCBhcHBlYXIgYmFzZWQgb24gdGhl
IGRvY3MgWzFdLCBbMl0sCgpUaG9zZSBsb29rIG9rLiBJIGFzc3VtZSB5b3UgaGF2ZQoKZGVmYXVs
dGVudl9hcHBlbmRfZGlyZWN0b3J5KGRlZmF1bHRlbnZfY2FydGVzaSk7IGluIHlvdXIgYm9hcmQg
Y29kZT8KCj4gaG93ZXZlciB0aGUgb25seSB3YXkgSSBmb3VuZCBhcm91bmQgWzNdIHdhcyB0byBy
ZXBsYWNlIGBiaW4vaW5pdGAgd2l0aAo+IHRoaXNbNF0gbGF5b3V0LgoKQWZ0ZXIgZHJpdmVycyBw
cm9iZSwgYmFyZWJveCBpbnZva2VzIGluaXQgdG8gc291cmNlIGluaXQgc2NyaXB0cyBhbmQKZG8g
dGhlIGNvdW50ZG93biBhbmQgc3VjaC4gVGhpcyBpcyB3cml0dGVuIGluIEMsIGJ1dCB5b3UgY2Fu
IG92ZXJyaWRlCml0IHdpdGggYW4gL2Vudi9iaW4vaW5pdCBzaGVsbCBzY3JpcHQsIHdoaWNoIGlz
IHdoYXQgeW91IGRpZCBoZXJlLgoKSSB3b3VsZCBub3QgcmVjb21tZW5kIHRoaXMuIERyb3AgL2Vu
di9iaW4vaW5pdCBhbmQgdXNlIHRoZSBzYW1lIEMgaW5pdApuZWFybHkgZXZlcnlvbmUgZWxzZSBk
b2VzLiBZb3UgY2FuIHN0aWxsIGN1c3RvbWl6ZSBpdCB2aWEgdGhlCi9lbnYvaW5pdC8gc2NyaXB0
cwoKPiBJcyB0aGVyZSBhIHJlY29tbWVuZGVkIHdheSB0byBnbyBhYm91dCB0aGlzPwoKWW91IG5l
ZWQgdG8gc2V0IGJvb3QuZGVmYXVsdCwgZS5nLgoKZWNobyAnY2FydGVzaSBuZXQnID4gZGVmYXVs
dGVudi1jYXJ0ZXNpL252L2Jvb3QuZGVmYXVsdAoKV2hpY2ggd291bGQgdHJ5IGNhcnRlc2kgZmly
c3QgYW5kIHRoZW4gbmV0IGlmIHRoZSBmaXJzdCBvbmUgZmFpbGVkLgoKPiAyKSBJIGFsc28gd291
bGQgbGlrZSBjbGFyaWZpY2F0aW9uIG9uIHRoZSB1cHN0cmVhbWluZyBwcm9jZXNzLCBpcyBpdAo+
IFBSIGJhc2VkLCBwYXRjaGVzIG9uIHRoaXMgbGlzdD8KClBhdGNoZXMgdG8gdGhlIG1haWxpbmcg
bGlzdCBhcmUgdGhlIHVzdWFsIHdheSBvZiBjb250cmlidXRpbmcuCgpDaGVlcnMsCkFobWFkCgo+
IAo+IGJlc3QsCj4gTWFyY2Vsbwo+IAo+IAo+IFsxXSBNYWtlZmlsZToKPiBgYGAKPiBiYmVudi0k
KENPTkZJR19CT0FSRF9DQVJURVNJKSArPSBkZWZhdWx0ZW52LWNhcnRlc2kKPiBgYGAKPiAKPiBb
Ml0gYXJjaC9yaXNjdi9ib2FyZHMvY2FydGVzaToKPiBgYGAKPiBkZWZhdWx0ZW52LWNhcnRlc2kK
PiDilJzilIDilIAgYm9vdAo+IOKUgiAgIOKUlOKUgOKUgCBjYXJ0ZXNpCj4g4pSc4pSA4pSAIGlu
aXQKPiDilIIgICDilJzilIDilIAgYXV0b21vdW50Cj4g4pSCICAg4pSU4pSA4pSAIHBzMQo+IOKU
lOKUgOKUgCBudgo+ICAgICDilJzilIDilIAgYWxsb3dfY29sb3IKPiAgICAg4pSc4pSA4pSAIGF1
dG9ib290X3RpbWVvdXQKPiAgICAg4pSU4pSA4pSAIHVzZXIKPiBgYGAKPiAKPiBbM10KPiBgYGAK
PiBIaXQgbSBmb3IgbWVudSBvciBhbnkgdG8gc3RvcCBhdXRvYm9vdDogICAgMAo+IEJvb3Rpbmcg
ZW50cnkgJ25ldCcKPiBgYGAKPiAKPiBbNF0KPiBgYGAKPiBkZWZhdWx0ZW52LWNhcnRlc2kKPiDi
lJzilIDilIAgYmluCj4g4pSCICAg4pSU4pSA4pSAIGluaXQKPiDilJTilIDilIAgYm9vdAo+ICAg
ICDilJTilIDilIAgY2FydGVzaQo+IGBgYAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4gYmFyZWJveCBtYWlsaW5nIGxpc3QKPiBiYXJlYm94QGxp
c3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2JhcmVib3gKPiAKCgotLSAKUGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwKU3RldWVyd2FsZGVyIFN0
ci4gMjEgICAgICAgICAgICAgICAgICAgICAgIHwgaHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8g
IHwKMzExMzcgSGlsZGVzaGVpbSwgR2VybWFueSAgICAgICAgICAgICAgICAgIHwgUGhvbmU6ICs0
OS01MTIxLTIwNjkxNy0wICAgIHwKQW10c2dlcmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAg
ICAgICAgIHwgRmF4OiAgICs0OS01MTIxLTIwNjkxNy01NTU1IHwKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVi
b3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2JhcmVib3gK

