Delivery-date: Tue, 22 Mar 2022 06:37:15 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nWXCi-002CtS-0v
	for lore@lore.pengutronix.de; Tue, 22 Mar 2022 06:37:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nWXCk-00034Q-EL
	for lore@pengutronix.de; Tue, 22 Mar 2022 06:37:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g9MQC5CpnLHrRt0ZIc3yqaFUtndZN2Lnka64zGaTRbk=; b=btZ0ouxy6kUfgc
	k+jB8L7/2N5LJZpW3fKdjv/sOMOp5TLJjauR7z0muESTwvQFYxyq+qCx0J9207zNyLBCshQcnnObw
	t/OR0uk+dod0VooozXClMDnOeNKMsrgLS5NXLXyONTUyqlxerS65+nF5llnIlS8PKzmQqAVgTvCX+
	5dcdhyWptLN4SP1Q9fd3Pj1gD+D3zga00khhVE8N1S/c3h4m2+g9Ulw2Jfa2RCBzyPdv2Gjs4a6kh
	6Bwsa32FSGgoRjTtzM4twK31JsZDmFilZfoTru9q9Lt8haiotntIjwRT/D7qkl+qbrUbUZZX+mPAD
	8Bl8oWuP30kBRHzHKiqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWXB6-00A3TM-RL; Tue, 22 Mar 2022 05:35:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWXB0-00A3SP-UK
 for barebox@lists.infradead.org; Tue, 22 Mar 2022 05:35:29 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1nWXAx-0002lj-3R; Tue, 22 Mar 2022 06:35:23 +0100
Message-ID: <4bbe2758-ff16-6694-8bad-b8df2c254a48@pengutronix.de>
Date: Tue, 22 Mar 2022 06:35:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Content-Language: en-US
To: Michael Grzeschik <mgr@pengutronix.de>, Ahmad Fatoum <ahmad@a3f.at>
Cc: Sascha Hauer <sha@pengutronix.de>, barebox@lists.infradead.org
References: <20201221003251.83042-1-ahmad@a3f.at>
 <20201221003251.83042-2-ahmad@a3f.at> <20210106100543.GO19063@pengutronix.de>
 <20220321221717.GJ11246@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220321221717.GJ11246@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220321_223527_007746_27ACED31 
X-CRM114-Status: GOOD (  27.46  )
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
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] fixup! usb: dwc2: Add support for optional usb phy
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGVsbG8gTWljaGFlbCwKCk9uIDIxLjAzLjIyIDIzOjE3LCBNaWNoYWVsIEdyemVzY2hpayB3cm90
ZToKPiBIaSBBaG1hZCEKPiAKPiBPbiBXZWQsIEphbiAwNiwgMjAyMSBhdCAxMTowNTo0M0FNICsw
MTAwLCBTYXNjaGEgSGF1ZXIgd3JvdGU6Cj4+IE9uIE1vbiwgRGVjIDIxLCAyMDIwIGF0IDAxOjMy
OjUwQU0gKzAxMDAsIEFobWFkIEZhdG91bSB3cm90ZToKPj4+IExpbnV4IGRvZXNuJ3Qgc2VlbSB0
byBlbmZvcmNlIGEgZml4ZWQgb3JkZXIgYmV0d2VlbiBwaHlfaW5pdCBhbmQKPj4+IHBoeV9wb3dl
cl9vbi4gVGhlIExpbnV4IGR3YzIgZHJpdmVyIGRvZXMgcG93ZXJfb24gYW5kIHRoZW4gcGh5X2lu
aXQsCj4+PiB3aGljaCBpcyB0aGUgaW52ZXJzZSBvZiB3aGF0IGJhcmVib3ggaXMgY3VycmVudGx5
IGRvaW5nLgo+Pj4KPj4+IFRoZSBQSFlzIG5vcm1hbGx5IHVzZWQgd2l0aCBkd2MyIGFyZSB3cml0
dGVuIHdpdGggdGhpcyBpbiBtaW5kLgo+Pj4gRm9yIGV4YW1wbGUsIG91ciBzdG0zMi11c2JwaHlj
IGRyaXZlciBmYWlscyB0byBkaXNhYmxlOgo+Pj4KPj4+IMKgIEVSUk9SOiBzdG0zMi11c2JwaHlj
IDVhMDA2MDAwLnVzYnBoeWNANWEwMDYwMDAub2Y6IFBMTCBub3QgcmVzZXQKPj4+IMKgIEVSUk9S
OiBwaHkxOiBwaHkgZXhpdCBmYWlsZWQgLS0+IC01Cj4+Pgo+Pj4gQmVjYXVzZSBMaW51eCBkb2Vz
IGV4aXQgLT4gcG93ZXJfb2ZmLCBidXQgYmFyZWJveCBkb2VzIHBvd2VyX29mZiAtPgo+Pj4gZXhp
dC4KPj4+Cj4+PiBJc3N1ZSB3YXMgcmFpc2VkIHVwc3RyZWFtOgo+Pj4gaHR0cHM6Ly9sb3JlLmtl
cm5lbC5vcmcvbGttbC82Y2QwMWU3OS1mZGMwLTNiZDQtMzJiNS1hODUxNDI1MzNmOGFAcGVuZ3V0
cm9uaXguZGUvVC8jdAo+Pj4KPj4+IFVudGlsIHRoaXMgaXMgc2V0dGxlZCwgc3dhcCB0aGUgb3Jk
ZXIgdG8gZm9sbG93IHdoYXQgTGludXggZG9lcy4KPj4+IFRoaXMgaXMgc3Vib3B0aW1hbCwgYmVj
YXVzZSBpdCBtZWFucyBjb250cm9sbGVyIGRyaXZlcnMgaGF2ZSBkaWZmZXJlbnQKPj4+IG9yZGVy
IG9mIHRoZSBvcGVyYXRpb25zIGFuZCB0aGF0IHlvdSBjYW4ndCBjb21iaW5lIGFyYml0cmFyeSBQ
SFlzIGFuZAo+Pj4gY29udHJvbGxlcnMsIGJ1dCBpdCBzZWVtcyB1bmxpa2VseSB3ZSB3aWxsIHN1
cHBvcnQgY29tYmluYXRpb25zIHRoYXQKPj4+IGFyZW4ndCBzdXBwb3J0ZWQgYnkgTGludXggaW4g
dGhlIGZpcnN0IHBsYWNlIGFueXdheS4KPj4KPj4gVGhpcyBpcyB2YWx1YWJsZSBpbmZvcm1hdGlv
biBhbmQgSSBkb24ndCB3YW50IGl0IHRvIGJlIGxvc3QsIHNvIGluc3RlYWQKPj4gb2YgYXBwbHlp
bmcgdGhpcyBhcyBhIGZpeHVwIEkgcmV3cm90ZSB0aGUgc3ViamVjdCB0bzoKPj4KPj4gdXNiOiBk
d2MyOiBzd2FwIG9yZGVyIG9mIHBoeV9pbml0IGFuZCBwaHlfcG93ZXJfb24gdG8gd2hhdCBMaW51
eCBkb2VzCj4+Cj4+IGFuZCBhcHBsaWVkIGl0IGFzIGEgc2VwYXJhdGUgcGF0Y2guCj4gCj4gV2l0
aCB0aGlzIHBhdGNoIGFwcGxpZWQsIHNvbWUgc3RtMzJtcDEgZG8gc2VlbSB0byB0aW1lb3V0IHdo
ZW4KPiBhZGRyZXNzaW5nIHRoZSBjb3JlLgo+IAo+IFdBUk5JTkc6IGR3YzIgNDkwMDAwMDAudXNi
LW90Z0A0OTAwMDAwMC5vZjogZHdjMl9jb3JlX3Jlc2V0OiBUaW1lb3V0ISBXYWl0aW5nIGZvciBD
b3JlIFNvZnQgUmVzZXQKPiBFUlJPUjogZHdjMiA0OTAwMDAwMC51c2Itb3RnQDQ5MDAwMDAwLm9m
OiBwcm9iZSBmYWlsZWQ6IENvbm5lY3Rpb24gdGltZWQgb3V0Cj4gCj4gV2hlbiBJIHJldmVydCB0
aGlzIHBhdGNoLiBFdmVyeXRoaW5nIHdvcmtzIGZpbmUgYWdhaW4uCj4gCj4gSXMgaXQgcG9zc2li
bGUgdGhhdCB3ZSBjYW4gcmV2ZXJ0IGl0IGluIG1haW5saW5lIG5vdz8KClNpbmNlIDBlMzdmOTRm
YmUxYiAoInBoeTogc3RtMzI6IHN5bmMgd2l0aCB1cHN0cmVhbSIpLCB0aGUgcGh5LXN0bTMyLXVz
YnBoeWMgbm93CmhhcyBubyBwb3dlcm9uL3Bvd2Vyb2ZmIGNhbGxiYWNrcywgc28gYSByZXZlcnQg
c2VlbXMgdG8gb25seSBzbGlnaHRseSBjaGFuZ2UKdGltaW5nLiBJJ2Qgc3VnZ2VzdCB5b3UgZGln
IHNvbWUgbW9yZS4KCj4gSG93IGNhbiBJIHJlcHJvZHVjZSB0aGUgY2FzZSB0aGlzIHdhcyBmaXhp
bmcgaW4gdGhlIGZpcnN0IHBsYWNlPwoKVGhlIGNhc2Ugd2FzIHRoYXQgYmFyZWJveCBjYWxscyBw
b3dlcm9uL2luaXQgaW4gYSBkaWZmZXJlbnQgb3JkZXIgdGhhbiBMaW51eC4KVGhpcyBwb2ludCBp
cyBtb290IG5vdyB0aG91Z2ggYmVjYXVzZSBwb3dlcm9uIGlzIG5vIGxvbmdlciBwcm92aWRlZCBi
eSB0aGUKZHJpdmVyLgoKQ2hlZXJzLApBaG1hZAoKPiAKPiBSZXJnYXJkcywKPiBNaWNoYWVsCj4g
Cj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBi
YXJlYm94IG1haWxpbmcgbGlzdAo+IGJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAoKCi0tIApQZW5n
dXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgfApTdGV1ZXJ3YWxkZXIgU3RyLiAyMSAgICAgICAgICAgICAgICAgICAgICAg
fCBodHRwOi8vd3d3LnBlbmd1dHJvbml4LmRlLyAgfAozMTEzNyBIaWxkZXNoZWltLCBHZXJtYW55
ICAgICAgICAgICAgICAgICAgfCBQaG9uZTogKzQ5LTUxMjEtMjA2OTE3LTAgICAgfApBbXRzZ2Vy
aWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAgICAgICAgICAgfCBGYXg6ICAgKzQ5LTUxMjEtMjA2
OTE3LTU1NTUgfAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=

