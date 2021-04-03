Delivery-date: Sat, 03 Apr 2021 09:10:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lSaQJ-00018K-ET
	for lore@lore.pengutronix.de; Sat, 03 Apr 2021 09:10:23 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lSaQI-0002Vx-Ii
	for lore@pengutronix.de; Sat, 03 Apr 2021 09:10:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GlfLdIBeL17G7CuiV/yKO1DnCL/mnqxUUNnxkGSA7C8=; b=fDsrx8IBB2LXNdWn9XMvZj3wW
	Kv2fvl4LQL2tn0RwWOoopLOLqEOP+/7BBGDPP4PO7vaLXKcA7qBpOudoUIzIZc/JaIoLUmXdNLUPm
	rUjRfzoqJ2aQO1rkJ3WkV2mTsokaScFbMKKeCqJJIaqtNwu4J6uvESegsiuNWtdglX3/SNEckGw1Q
	SSuxMF/wlYVY+TL0Ta1ZzwzAgIHJzBXjGosY/AKpt7WVuLGGIhAXcGi5LUEqBOYTA8mBALwjN7qGS
	z4VpYkJ4l4mQmujrly/18pHxbLX6hejColC3er09E1mf/1UCciBXllm634mHBusjKQIV8P+Smewrw
	uhkfkB1bw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lSaPN-00EOWg-P5; Sat, 03 Apr 2021 07:09:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lSaPI-00EOWI-56
 for barebox@lists.infradead.org; Sat, 03 Apr 2021 07:09:22 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lSaPD-0002QQ-Mm; Sat, 03 Apr 2021 09:09:15 +0200
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org
References: <20210324082304.30858-1-a.fatoum@pengutronix.de>
 <20210402085613.9a8dd5ecb960a47faa3eaa90@gmail.com>
 <c2a98aea-2220-38ca-34e5-78a2a585ce82@pengutronix.de>
 <20210402111348.fcc6384084512f23588aad8f@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <2cd63d9c-903d-3670-6417-65d1fa324410@pengutronix.de>
Date: Sat, 3 Apr 2021 09:09:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210402111348.fcc6384084512f23588aad8f@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210403_080920_284783_A630AE2A 
X-CRM114-Status: GOOD (  17.56  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 1/3] RISC-V: cpu: request stack memory region
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGVsbG8gQW50b255LAoKT24gMDIuMDQuMjEgMTA6MTMsIEFudG9ueSBQYXZsb3Ygd3JvdGU6Cj4+
IFRoaXMgaXMgc3RyYW5nZS4gQ291bGQgeW91IHByaW50IGdldF9ydW50aW1lX29mZnNldCgpIGF0
IHRoaXMgbG9jYXRpb24/Cj4+IEl0IHNob3VsZCBiZSB6ZXJvLCBiZWNhdXNlIHJlbG9jYXRlX3Rv
X2N1cnJlbnRfYWRyKCkgaGFkIHByZXZpb3VzbHkgcnVuLAo+PiBidXQgaXQgc2VlbXMgaXQncyBu
b3QgZm9yIHlvdT8gSSBkb24ndCBzZWUgaG93IGNvbXBpbGVyIHJlb3JkZXJpbmcgY291bGQgaGF2
ZQo+PiBvY2N1cnJlZCBnaXZlbiB0aGF0IHdlIGRvbid0IGRvIExUTyBhbmQgcmVsb2NhdGVfdG9f
Y3VycmVudF9hZHIgaXMgdGh1cwo+PiBhIGNvbXBpbGVyIGJhcnJpZXIuCgpbIE5hw692ZSBtZSB0
aGlua2luZyB0aGVyZSBhcmUgYW55IGd1YXJhbnRlZXMgZnJvbSBHQ0MgZm9yIHNlbGYtbW9kaWZ5
aW5nIGNvZGUgXQoKPiArICAgIGVtcHR5X3Nsb3RfaW5pdCgwLCAweGZmZmZmZmZmKTsKClRoYXQn
cyB0cmVtZW5kb3VzbHkgdXNlZnVsLiBUaGFua3MhIEkgZG9uJ3QgcXVpdGUgdW5kZXJzdGFuZCBo
b3cgaXQgd29ya3MKdGhvdWdoLiBJdCByZWdpc3RlcnMgYSAiZmFsbC1iYWNrIiBkZXZpY2UgZm9y
IGFsbCBvZiB0aGUgMzItYml0IGFkZHJlc3MKc3BhY2U/Cgo+IFRoZXJlIGFyZSBlbXB0eV9zbG90
IHJlYWQgd2FybmluZ3Mgb24gbWFzdGVyOgo+IAo+ICAgICBiYXJlYm94JCBxZW11LXN5c3RlbS1y
aXNjdjMyIC1ub2dyYXBoaWMgLU0gZXJpem8gLWJpb3MgLi9pbWFnZXMvYmFyZWJveC1lcml6by1n
ZW5lcmljLmltZyAtc2VyaWFsIHN0ZGlvIC1tb25pdG9yIG5vbmUgLXRyYWNlIGZpbGU9L2Rldi9u
dWxsIAo+ICAgICA+Z2V0X3J1bnRpbWVfb2Zmc2V0KCk9MHgwMDAwMDAwMAo+ICAgICBlbXB0eV9z
bG90OiByZWFkIGZyb20gMDAwMDAwMDAwMDAyMmNhZgo+ICAgICBlbXB0eV9zbG90OiByZWFkIGZy
b20gMDAwMDAwMDAwMDAyMmNhZQo+ICAgICBlbXB0eV9zbG90OiByZWFkIGZyb20gMDAwMDAwMDAw
MDAyMmNiMAo+ICAgICBlbXB0eV9zbG90OiByZWFkIGZyb20gMDAwMDAwMDAwMDAyMmNiMQo+ICAg
ICByaXNjdi10aW1lciByaXNjdi10aW1lcjogcnVubmluZyBhdCAyNDAwMDAwMCBIego+ICAgICBT
d2l0Y2ggdG8gY29uc29sZSBbY3MwXQo+IAo+ICAgICBiYXJlYm94IDIwMjEuMDMuMC0wMDEzNC1n
YzRhMTY4NGRhOS1kaXJ0eSAjMSBGcmkgQXByIDIgMTA6MzM6NDUgTVNLIDIwMjEKPiAKPiAgICAg
Qm9hcmQ6IGdlbmVyaWMgRXJpem8gU29DIGJvYXJkCj4gICAgIHJpc2N2LXRpbWVyIHJpc2N2LXRp
bWVyOiBydW5uaW5nIGF0IDI0MDAwMDAwIEh6Cj4gICAgIG1hbGxvYyBzcGFjZTogMHg4MDRmZmQ4
MCAtPiAweDgwNWZmZDdmIChzaXplIDEgTWlCKQo+IAo+ICAgICBIaXQgYW55IHRvIHN0b3AgYXV0
b2Jvb3Q6ICAgIDEKPiAgICAgYm9vdDogZXJyb3IgMgo+ICAgICBiYXJlYm94Oi8gCj4gCj4gCj4g
VGhlcmUgaXMgbm8gZW1wdHlfc2xvdCB3YXJuaW5nIHdpdGggZmVmMTllMTdmNjUxXiBiYXJlYm94
Ogo+IAo+ICAgICBiYXJlYm94JCBxZW11LXN5c3RlbS1yaXNjdjMyIC1ub2dyYXBoaWMgLU0gZXJp
em8gLWJpb3MgLi9pbWFnZXMvYmFyZWJveC1lcml6by1nZW5lcmljLmltZyAtc2VyaWFsIHN0ZGlv
IC1tb25pdG9yIG5vbmUgLXRyYWNlIGZpbGU9L2Rldi9udWxsIAo+ICAgICA+UklTQy1WIHN5c3Rl
bSB3aXRoIG5vICd0aW1lYmFzZS1mcmVxdWVuY3knIGluIERUUwo+ICAgICBTd2l0Y2ggdG8gY29u
c29sZSBbY3MwXQo+IAo+ICAgICBiYXJlYm94IDIwMjEuMDMuMC0wMDEyMi1nNjEwNzIwODU3MyAj
MSBGcmkgQXByIDIgMTE6MDk6MTYgTVNLIDIwMjEKPiAKPiAgICAgQm9hcmQ6IGdlbmVyaWMgRXJp
em8gU29DIGJvYXJkCj4gICAgIFJJU0MtViBzeXN0ZW0gd2l0aCBubyAndGltZWJhc2UtZnJlcXVl
bmN5JyBpbiBEVFMKPiAgICAgbWFsbG9jIHNwYWNlOiAweDgwMmZmZDgwIC0+IDB4ODAzZmZkN2Yg
KHNpemUgMSBNaUIpCj4gCj4gICAgIEhpdCBhbnkgdG8gc3RvcCBhdXRvYm9vdDogICAgMAo+ICAg
ICBib290OiBlcnJvciAyCj4gICAgIGJhcmVib3g6LyAKClRoYW5rcy4gSSBpZGVudGlmaWVkIHR3
byBpc3N1ZXMgYW5kIENDJ2QgeW91IG9uIGEgcGF0Y2ggZml4aW5nIHRoZW0uCkJyZWFraW5nIGVy
aXpvIGhhcyBiZWVuIGEgYmxlc3NpbmcgdG8gc29ydCBvdXQgdGhpcyBraW5kIG9mIGJ1Z3MgZWFy
bHkgOkQKCkNoZWVycywKQWhtYWQKCi0tIApQZW5ndXRyb25peCBlLksuICAgICAgICAgICAgICAg
ICAgICAgICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfApTdGV1ZXJ3YWxkZXIg
U3RyLiAyMSAgICAgICAgICAgICAgICAgICAgICAgfCBodHRwOi8vd3d3LnBlbmd1dHJvbml4LmRl
LyAgfAozMTEzNyBIaWxkZXNoZWltLCBHZXJtYW55ICAgICAgICAgICAgICAgICAgfCBQaG9uZTog
KzQ5LTUxMjEtMjA2OTE3LTAgICAgfApBbXRzZ2VyaWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAg
ICAgICAgICAgfCBGYXg6ICAgKzQ5LTUxMjEtMjA2OTE3LTU1NTUgfAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFy
ZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vYmFyZWJveAo=

