Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gvfdQ-0004hm-F3
 for barebox@lists.infradead.org; Mon, 18 Feb 2019 09:54:50 +0000
Received: by mail-wm1-x341.google.com with SMTP id x10so16250677wmg.2
 for <barebox@lists.infradead.org>; Mon, 18 Feb 2019 01:54:46 -0800 (PST)
Received: from [192.168.106.167] (77-111-10-47.ipv4.tusmobil.si.
 [77.111.10.47])
 by smtp.gmail.com with ESMTPSA id s8sm26752405wrn.44.2019.02.18.01.54.43
 for <barebox@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 18 Feb 2019 01:54:44 -0800 (PST)
Subject: Re: [PATCH 5/7] mci: move after pinctrl in link order.
References: <20190214132429.7463-1-tomaz.solc@tablix.org>
 <20190214132429.7463-6-tomaz.solc@tablix.org>
 <20190218084244.j5eoggrgfgedsuuo@pengutronix.de>
From: =?UTF-8?B?VG9tYcW+IMWgb2xj?= <tomaz.solc@klevio.com>
Message-ID: <a0535f65-c8e3-4e01-9be7-fb9b1a896ee5@klevio.com>
Date: Mon, 18 Feb 2019 10:54:43 +0100
MIME-Version: 1.0
In-Reply-To: <20190218084244.j5eoggrgfgedsuuo@pengutronix.de>
Content-Language: en-US
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
To: barebox@lists.infradead.org

T24gMTguIDAyLiAxOSAwOTo0MiwgU2FzY2hhIEhhdWVyIHdyb3RlOgo+IE9uIFRodSwgRmViIDE0
LCAyMDE5IGF0IDAyOjI0OjI3UE0gKzAxMDAsIFRvbWF6IFNvbGMgd3JvdGU6Cj4+IHBpbmN0cmwg
ZHJpdmVyIG5lZWRzIHRvIGJlIGluaXRpYWxpemVkIGJlZm9yZSBtY2kgZHJpdmVyIG9yIHRoZSBw
aW5jdHJsCj4+IGRldmljZSB0cmVlIHByb3BlcnRpZXMgaW4gdGhlIG1jaSBub2RlIGFyZSBpZ25v
cmVkLiBTaW5jZSBtY2kgaXMgYWxyZWFkeQo+PiBpbml0aWFsaXplZCBieSB0aGUgY29yZWRldmlj
ZV9pbml0Y2FsbCgpLCBjaGFuZ2luZyB0aGUgbGluayBvcmRlciBpcyBjdXJyZW50bHkKPj4gdGhl
IG9ubHkgd2F5IHRvIGVuc3VyZSB0aGF0Lgo+IAo+IFRoZSBzYW1lIGFwcGxpZXMgbW9zdCBvdGhl
ciBzdWJzeXN0ZW1zLCBzbyBpbnN0ZWFkIG9mIG1vdmluZyBtY2kgZG93biBJCj4gd291bGQgcmF0
aGVyIHN1Z2dlc3QgdG8gbW92ZSBwaW5jdHJsIHVwLgo+IAo+IFRoZSBvdGhlciB0aGluZyBpczog
V2h5IGRvZXMgdGhlIGJjbTI4MzUgbWNpIGRyaXZlciB1c2UgY29yZWRldmljZV9pbml0Y2FsbCgp
Cj4gYXQgYWxsPyBOb3JtYWxseSBpdCBzaG91bGQgYmUgYSBkZXZpY2VfaW5pdGNhbGwoKS4gU2lu
Y2UgdGhlCj4gY29yZWRldmljZV9pbml0Y2FsbCgpIGdvZXMgYmFjayB0byB0aGUgaW5pdGlhbCBj
b21taXQgb2YgdGhlIGRyaXZlciBJCj4gc3VzcGVjdCB0aGVyZSBpcyBubyBzcGVjaWFsIHJlYXNv
biBmb3IgdGhhdCBkZWNpc2lvbiBhbmQgc28gSSB0aGluayB3ZQo+IHNob3VsZCBqdXN0IGNoYW5n
ZSB0byBkZXZpY2VfaW5pdGNhbGwoKS4KCkdvb2QgcG9pbnQuIEkgY2hlY2tlZCBvdGhlciBkcml2
ZXJzIHVuZGVyIG1jaS8gYW5kIGl0IHNlZW1zIHRoZXkgYWxsIHVzZSAKZGV2aWNlX2luaXRjYWxs
KCkuIEkgdGhvdWdodCB0aGF0IHN0b3JhZ2UgbXVzdCBjb21lIGJlZm9yZSAKZnNfaW5pdGNhbGwo
KSwgYnV0IHRoYXQgaXMgbm90IGFjdHVhbGx5IHRoZSBjYXNlLiBBcyBmYXIgYXMgSSBjYW4gc2Vl
LCAKbm90aGluZyBicmVha3MgYnkgbW92aW5nIG1jaS1iY20yODM1IHRvIGRldmljZV9pbml0Y2Fs
bCgpLiBJJ2xsIHVwZGF0ZSAKdGhlIHBhdGNoLgoKQmVzdCByZWdhcmRzClRvbWHFvgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5n
IGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
