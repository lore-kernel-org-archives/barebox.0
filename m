Delivery-date: Mon, 07 Mar 2022 12:35:55 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRBed-003NUF-Fk
	for lore@lore.pengutronix.de; Mon, 07 Mar 2022 12:35:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRBeb-0002I4-TL
	for lore@pengutronix.de; Mon, 07 Mar 2022 12:35:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gb5PG/2PFz4ckokHiDa8wSISz7vWMo4mgBvvTSJlJKo=; b=DgE16Gnc6MrSQT
	dCAu4HsydytS9U5NwJH9AgTRYF4lUZ3AIlDmn3d8lSSPjuOaVx0AcrksEfgbFZQAIN4kDSXUFEj3P
	riKgFgcdCdVNWcLnBJbZ1UqjvWOHQcQO6tH+/myvn1irXqT8sZYI7pbsrlwsQtPfq6fMmY4mN5iYi
	JcbW8J18tb9IfPAX46m3Xo23vDZXKH1i5xZzNLAhG57YM/hAGU/4aPxRt40g5XeuP3WD1sRYAP2Ce
	1coV7SY1XOXEptARkUMee+nkEkPHFTVFJQe4zGfdFQ4DFGyyMvCNzKrtAPa3E9yCUF1P/LIWRS0Yr
	fIrSvIsgqASyoIHeRFnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRBdD-00HJpU-CF; Mon, 07 Mar 2022 11:34:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRBd7-00HJoU-Me
 for barebox@lists.infradead.org; Mon, 07 Mar 2022 11:34:23 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1nRBd5-0001lZ-R0; Mon, 07 Mar 2022 12:34:19 +0100
Message-ID: <733095b9-554e-a667-47f0-6c03722bbb90@pengutronix.de>
Date: Mon, 7 Mar 2022 12:34:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Content-Language: en-US
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 barebox@lists.infradead.org
References: <20220307112331.449741-1-u.kleine-koenig@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220307112331.449741-1-u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220307_033421_765988_907D6498 
X-CRM114-Status: GOOD (  24.47  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] arm: stm32mp15x: Move mmc aliases to board files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGksCgpPbiAwNy4wMy4yMiAxMjoyMywgVXdlIEtsZWluZS1Lw7ZuaWcgd3JvdGU6Cj4gSGF2aW5n
IHRoZSBtbWMgYWxpYXNlcyBpbiBzdG0zMm1wMTUxLmR0c2kgaXMgc3VycHJpc2luZyBhcyBkZXBl
bmRpbmcgb24KPiB0aGUgb3JkZXIgb2YgaW5jbHVkZXMgdGhlc2Ugb3ZlcnJpZGUgdGhlIG1tYyBv
cmRlcmluZyBpbgo+IDxhcm0vc3RtMzJtcDE1N2MtbXlib2FyZC5kdHM+LiBBbHNvIHRoZSBvcmRl
cmluZyBvZiBtbWMgZGV2aWNlcyBpcyBhY3R1YWxseQo+IGJvYXJkIHNwZWNpZmljLCBzbyBpdCdz
IGFsc28gcmlnaHQgdG8gaGF2ZSB0aGlzIGluIHRoZSBib2FyZC5kdHMgZmlsZXMuCgpOQUNLLiBN
TUMgSVBzIGhhdmUgZml4ZWQgbnVtYmVyaW5nLCBiZWNhdXNlIFRGLUEgKGFuZCBCb290Uk9NIGJl
Zm9yZSBpdCkKcmVwb3J0IHRvIGJhcmVib3ggdGhlIG51bWJlciBvZiB0aGUgTU1DIGRldmljZSB0
aGF0IGl0IHN1Y2Nlc2Z1bGx5IGJvb3RlZCBmcm9tLgoKVGhlIGFsaWFzZXMgbWFwIHRoZXNlIElE
cyB0byBkZXZpY2UgdHJlZSBub2Rlcywgc28gYmFyZWJveCBjYW4gZml4IHVwIGEgY29ycmVjdAov
Y2hvc2VuL2Jvb3Rzb3VyY2UuIEFkZGl0aW9uYWxseSBoYXZpbmcgYW55IGFsaWFzIGF0IGFsbCBl
bnN1cmVzIGZpeGVkIG5hbWluZyB0aGF0J3MKbm90IGRlcGVuZGVudCBvbiBwcm9iZSBvcmRlci4g
SSBrbm93IHRoYXQgTGludXggbWFpbnRhaW5lcnMgc2VlbSB0byBkaXNhZ3JlZSB3aXRoIHRoaXMs
CmJ1dCBhcyBmYXIgYXMgYmFyZWJveCBpcyBjb25jZXJuZWQsIGFsaWFzZXMgYXJlIFNvQy1zcGVj
aWZpYywgbm90IGJvYXJkLXNwZWNpZmljCmluIGdlbmVyYWwuIFlvdSBjYW4gb3ZlcnJpZGUgdGhp
cyBib2FyZC1sZXZlbCBpZiB5b3UgbGlrZSwgYnV0IHRoZSBkZWZhdWx0IHNob3VsZApyZW1haW4u
Cgo+IFRoZXJlIGlzIG5vIChyZWxldmFudCkgY2hhbmdlIGludGVuZGVkIGJ5IHRoaXMgcGF0Y2gu
CgpJIGhhdmUgbm9uLXVwc3RyZWFtIGJvYXJkcyB0aGF0IHdvdWxkIGJlIGJyb2tlbiBieSB0aGlz
LiBUaGVyZSdzIGFsc28gYSBQaHl0ZWMKYm9hcmQgaW4gbmV4dCB0aGF0IHdvdWxkIGJlIGJyb2tl
biBieSB0aGlzLiBXaGVyZWFzIHRoZXkgaGFkIGEgZml4ZWQgbW1jWApiZWZvcmUsIHRoZXkgd291
bGQgbm93IGhhdmUgZGlzazAsIGRpc2sxIG9yIGRpc2syIGRlcGVuZGluZyBvbiBwcm9iZSBvcmRl
ciB3aXRoCnRoaXMgcGF0Y2ggYXBwbGllZC4KCkNoZWVycywKQWhtYWQKCj4gCj4gU2lnbmVkLW9m
Zi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4K
PiAtLS0KPiAgYXJjaC9hcm0vZHRzL3N0bTMybXAxNTEtcHJ0dDFsLmR0c2kgIHwgMyArKy0KPiAg
YXJjaC9hcm0vZHRzL3N0bTMybXAxNTEuZHRzaSAgICAgICAgIHwgMyAtLS0KPiAgYXJjaC9hcm0v
ZHRzL3N0bTMybXAxNTdjLWV2MS5kdHMgICAgIHwgNiArKysrKysKPiAgYXJjaC9hcm0vZHRzL3N0
bTMybXAxNTdjLW9keXNzZXkuZHRzIHwgNSArKysrKwo+ICBhcmNoL2FybS9kdHMvc3RtMzJtcDE1
eHgtZGt4LmR0c2kgICAgfCA1ICsrKysrCj4gIDUgZmlsZXMgY2hhbmdlZCwgMTggaW5zZXJ0aW9u
cygrKSwgNCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vZHRzL3N0bTMy
bXAxNTEtcHJ0dDFsLmR0c2kgYi9hcmNoL2FybS9kdHMvc3RtMzJtcDE1MS1wcnR0MWwuZHRzaQo+
IGluZGV4IDgwYWU3MmRlZTIyYS4uNjgxM2NiMTc2N2YyIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJt
L2R0cy9zdG0zMm1wMTUxLXBydHQxbC5kdHNpCj4gKysrIGIvYXJjaC9hcm0vZHRzL3N0bTMybXAx
NTEtcHJ0dDFsLmR0c2kKPiBAQCAtMTYsOCArMTYsOSBAQAo+ICAJfTsKPiAgCj4gIAlhbGlhc2Vz
IHsKPiAtCQlzZXJpYWwwID0gJnVhcnQ0Owo+ICAJCWV0aGVybmV0MCA9ICZldGhlcm5ldDA7Cj4g
KwkJbW1jMCA9ICZzZG1tYzE7Cj4gKwkJc2VyaWFsMCA9ICZ1YXJ0NDsKPiAgCX07Cj4gIAo+ICAJ
djN2MzogZml4ZWQtcmVndWxhdG9yLXYzdjMgewo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9kdHMv
c3RtMzJtcDE1MS5kdHNpIGIvYXJjaC9hcm0vZHRzL3N0bTMybXAxNTEuZHRzaQo+IGluZGV4IGYx
ZmQ4ODhmYTFjNi4uNjFiMDIyYzZjYWJhIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtL2R0cy9zdG0z
Mm1wMTUxLmR0c2kKPiArKysgYi9hcmNoL2FybS9kdHMvc3RtMzJtcDE1MS5kdHNpCj4gQEAgLTEz
LDkgKzEzLDYgQEAKPiAgCQlncGlvOSA9ICZncGlvajsKPiAgCQlncGlvMTAgPSAmZ3Bpb2s7Cj4g
IAkJZ3BpbzI1ID0gJmdwaW96Owo+IC0JCW1tYzAgPSAmc2RtbWMxOwo+IC0JCW1tYzEgPSAmc2Rt
bWMyOwo+IC0JCW1tYzIgPSAmc2RtbWMzOwo+ICAJCXB3bTEgPSAmey9zb2MvdGltZXJANDQwMDAw
MDAvcHdtfTsKPiAgCQlwd20yID0gJnsvc29jL3RpbWVyQDQwMDAwMDAwL3B3bX07Cj4gIAkJcHdt
MyA9ICZ7L3NvYy90aW1lckA0MDAwMTAwMC9wd219Owo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9k
dHMvc3RtMzJtcDE1N2MtZXYxLmR0cyBiL2FyY2gvYXJtL2R0cy9zdG0zMm1wMTU3Yy1ldjEuZHRz
Cj4gaW5kZXggNzQyZWNhN2EzM2M5Li4xNzE4ZTg0N2ExZjQgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9h
cm0vZHRzL3N0bTMybXAxNTdjLWV2MS5kdHMKPiArKysgYi9hcmNoL2FybS9kdHMvc3RtMzJtcDE1
N2MtZXYxLmR0cwo+IEBAIC00LDYgKzQsMTIgQEAKPiAgI2luY2x1ZGUgInN0bTMybXAxNTEuZHRz
aSIKPiAgCj4gIC8gewo+ICsJYWxpYXNlcyB7Cj4gKwkJbW1jMCA9ICZzZG1tYzE7Cj4gKwkJbW1j
MSA9ICZzZG1tYzI7Cj4gKwkJbW1jMiA9ICZzZG1tYzM7Cj4gKwl9Owo+ICsKPiAgCWNob3NlbiB7
Cj4gIAkJZW52aXJvbm1lbnQtc2Qgewo+ICAJCQljb21wYXRpYmxlID0gImJhcmVib3gsZW52aXJv
bm1lbnQiOwo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9kdHMvc3RtMzJtcDE1N2Mtb2R5c3NleS5k
dHMgYi9hcmNoL2FybS9kdHMvc3RtMzJtcDE1N2Mtb2R5c3NleS5kdHMKPiBpbmRleCAwZTM5NWJk
ZWM5NjEuLjhhOTE1NzViNDcyYiAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybS9kdHMvc3RtMzJtcDE1
N2Mtb2R5c3NleS5kdHMKPiArKysgYi9hcmNoL2FybS9kdHMvc3RtMzJtcDE1N2Mtb2R5c3NleS5k
dHMKPiBAQCAtNyw2ICs3LDExIEBACj4gICNpbmNsdWRlICJzdG0zMm1wMTUxLmR0c2kiCj4gIAo+
ICAvIHsKPiArCWFsaWFzZXMgewo+ICsJCW1tYzAgPSAmc2RtbWMxOwo+ICsJCW1tYzEgPSAmc2Rt
bWMyOwo+ICsJfTsKPiArCj4gIAljaG9zZW4gewo+ICAJCWVudmlyb25tZW50LXNkIHsKPiAgCQkJ
Y29tcGF0aWJsZSA9ICJiYXJlYm94LGVudmlyb25tZW50IjsKPiBkaWZmIC0tZ2l0IGEvYXJjaC9h
cm0vZHRzL3N0bTMybXAxNXh4LWRreC5kdHNpIGIvYXJjaC9hcm0vZHRzL3N0bTMybXAxNXh4LWRr
eC5kdHNpCj4gaW5kZXggMTczZTY0ZTA0YzFiLi5lZGIzNzk3MDMzMWEgMTAwNjQ0Cj4gLS0tIGEv
YXJjaC9hcm0vZHRzL3N0bTMybXAxNXh4LWRreC5kdHNpCj4gKysrIGIvYXJjaC9hcm0vZHRzL3N0
bTMybXAxNXh4LWRreC5kdHNpCj4gQEAgLTgsNiArOCwxMSBAQAo+ICAjaW5jbHVkZSA8ZHQtYmlu
ZGluZ3MvZ3Bpby9ncGlvLmg+Cj4gIAo+ICAvIHsKPiArCWFsaWFzZXMgewo+ICsJCW1tYzAgPSAm
c2RtbWMxOwo+ICsJCW1tYzIgPSAmc2RtbWMzOwo+ICsJfTsKPiArCj4gIAljaG9zZW4gewo+ICAJ
CWVudmlyb25tZW50IHsKPiAgCQkJY29tcGF0aWJsZSA9ICJiYXJlYm94LGVudmlyb25tZW50IjsK
PiAKPiBiYXNlLWNvbW1pdDogMzgzZjlmMmQ1ZDhkYjE5ZGNlMDVjOTgyZmE3ZmJmYjQ0OTg5ZWY1
MwoKCi0tIApQZW5ndXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgfApTdGV1ZXJ3YWxkZXIgU3RyLiAyMSAgICAgICAgICAg
ICAgICAgICAgICAgfCBodHRwOi8vd3d3LnBlbmd1dHJvbml4LmRlLyAgfAozMTEzNyBIaWxkZXNo
ZWltLCBHZXJtYW55ICAgICAgICAgICAgICAgICAgfCBQaG9uZTogKzQ5LTUxMjEtMjA2OTE3LTAg
ICAgfApBbXRzZ2VyaWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAgICAgICAgICAgfCBGYXg6ICAg
KzQ5LTUxMjEtMjA2OTE3LTU1NTUgfAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJv
eAo=

