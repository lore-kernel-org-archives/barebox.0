Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qc0-x230.google.com ([2607:f8b0:400d:c01::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VqHyj-0005Xj-0u
 for barebox@lists.infradead.org; Tue, 10 Dec 2013 07:43:37 +0000
Received: by mail-qc0-f176.google.com with SMTP id i8so3581370qcq.35
 for <barebox@lists.infradead.org>; Mon, 09 Dec 2013 23:43:15 -0800 (PST)
From: "Kevin Du Huanpeng" <u74147@gmail.com>
References: <1386581938-9663-1-git-send-email-u74147@gmail.com>
 <20131210074046.GS24559@pengutronix.de>
In-Reply-To: <20131210074046.GS24559@pengutronix.de>
Date: Tue, 10 Dec 2013 15:42:53 +0800
Message-ID: <000901cef57b$72081d40$561857c0$@gmail.com>
MIME-Version: 1.0
Content-Language: zh-cn
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: RE: [PATCH] scripts: add arch/x86/lib/barebox.lds to gitignore
To: 'Sascha Hauer' <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

SSB3YW50IHRvIHNheSAidGhhbmsgeW91IiB0byBBbGV4LCA6KQpJIGNvcGllZCBoaXMgY29tbWl0
IGxvZy4KIAoK4oCmCkR1IEh1YW5wZW5nCgoKLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KRnJv
bTogU2FzY2hhIEhhdWVyIFttYWlsdG86cy5oYXVlckBwZW5ndXRyb25peC5kZV0gClNlbnQ6IFR1
ZXNkYXksIERlY2VtYmVyIDEwLCAyMDEzIDM6NDEgUE0KVG86IER1IEh1YW5wZW5nCkNjOiBiYXJl
Ym94QGxpc3RzLmluZnJhZGVhZC5vcmcKU3ViamVjdDogUmU6IFtQQVRDSF0gc2NyaXB0czogYWRk
IGFyY2gveDg2L2xpYi9iYXJlYm94LmxkcyB0byBnaXRpZ25vcmUKCk9uIE1vbiwgRGVjIDA5LCAy
MDEzIGF0IDAxOjM4OjU4QU0gLTA4MDAsIER1IEh1YW5wZW5nIHdyb3RlOgo+IFNpZ25lZC1vZmYt
Ynk6IER1IEh1YW5wZW5nIDx1NzQxNDdAZ21haWwuY29tPgoKQXBwbGllZCwgdGhhbmtzCgpTYXNj
aGEKCj4gLS0tCj4gIGFyY2gveDg2L2xpYi8uZ2l0aWdub3JlIHwgICAgMiArKwo+ICAxIGZpbGUg
Y2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL3g4Ni9s
aWIvLmdpdGlnbm9yZQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL3g4Ni9saWIvLmdpdGlnbm9yZSBi
L2FyY2gveDg2L2xpYi8uZ2l0aWdub3JlIG5ldyAKPiBmaWxlIG1vZGUgMTAwNjQ0IGluZGV4IDAw
MDAwMDAuLjU0MjUyMmUKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvYXJjaC94ODYvbGliLy5naXRp
Z25vcmUKPiBAQCAtMCwwICsxLDIgQEAKPiArYmFyZWJveC5sZHMKPiArCj4gLS0KPiAxLjcuOS41
Cj4gCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
PiBiYXJlYm94IG1haWxpbmcgbGlzdAo+IGJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo+IAoKLS0g
ClBlbmd1dHJvbml4IGUuSy4gICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB8CkluZHVzdHJpYWwgTGludXggU29sdXRpb25zICAgICAgICAgICAg
ICAgICB8IGh0dHA6Ly93d3cucGVuZ3V0cm9uaXguZGUvICB8ClBlaW5lciBTdHIuIDYtOCwgMzEx
MzcgSGlsZGVzaGVpbSwgR2VybWFueSB8IFBob25lOiArNDktNTEyMS0yMDY5MTctMCAgICB8CkFt
dHNnZXJpY2h0IEhpbGRlc2hlaW0sIEhSQSAyNjg2ICAgICAgICAgICB8IEZheDogICArNDktNTEy
MS0yMDY5MTctNTU1NSB8CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
