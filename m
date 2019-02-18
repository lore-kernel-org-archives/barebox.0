Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gvdmv-0005TY-MC
 for barebox@lists.infradead.org; Mon, 18 Feb 2019 07:56:31 +0000
Received: by mail-wm1-x341.google.com with SMTP id a62so16311869wmh.4
 for <barebox@lists.infradead.org>; Sun, 17 Feb 2019 23:56:28 -0800 (PST)
Received: from [192.168.106.167] (77-111-10-47.ipv4.tusmobil.si.
 [77.111.10.47])
 by smtp.gmail.com with ESMTPSA id l21sm8674387wme.38.2019.02.17.23.56.26
 for <barebox@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 17 Feb 2019 23:56:26 -0800 (PST)
References: <20190218071210.28062-1-o.rempel@pengutronix.de>
From: =?UTF-8?B?VG9tYcW+IMWgb2xj?= <tomaz.solc@klevio.com>
Message-ID: <d71ee75b-55e0-fd12-bbdf-647fd7fa57c1@klevio.com>
Date: Mon, 18 Feb 2019 08:56:25 +0100
MIME-Version: 1.0
In-Reply-To: <20190218071210.28062-1-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v3] Documentation: add watchdog documentation
To: barebox@lists.infradead.org

T24gMTguIDAyLiAxOSAwODoxMiwgT2xla3NpaiBSZW1wZWwgd3JvdGU6Cj4gK0Egd2F0Y2hkb2cg
aXMgdGhlIGxhc3QgbGluZSBvZiBkZWZlbnNlIG9uIG1pc2JlaGF2aW5nIHN5c3RlbXMuIFRodXMs
IHByb3Blcgo+ICtoYXJkd2FyZSBhbmQgd2F0Y2hkb2cgZGVzaWduIGNvbnNpZGVyYXRpb25zIHNo
b3VsZCBiZSBtYWRlIHRvIGJlIGFibGUgdG8gcmVkdWNlCj4gK3RoZSBpbXBhY3Qgb2YgZmFpbGlu
ZyBzeXN0ZW1zIGluIHRoZSBmaWVsZC4gSW4gdGhlIGJlc3QgY2FzZSwgdGhlIGJvb3Rsb2FkZXIK
PiArc2hvdWxkIG5vdCB0b3VjaCBpdCBhdCBhbGwuIE5vIHdhdGNoZG9nIGZlZWRpbmcgc2hvdWxk
IGJlIGRvbmUgdW50aWwKPiArYXBwbGljYXRpb24tY3JpdGljYWwgc29mdHdhcmUgKG9yIGEgdXNl
cnNwYWNlIHNlcnZpY2UgbWFuYWdlciBzdWNoIGFzCj4gKydzeXN0ZW1kJykgd2FzIHN0YXJ0ZWQu
Cj4gKwo+ICtJbiBjYXNlIHRoZSBib290bG9hZGVyIGlzIHJlc3BvbnNpYmxlIGZvciB3YXRjaGRv
ZyBhY3RpdmF0aW9uLCB0aGUgc3lzdGVtIGNhbgo+ICtiZSBjb25zaWRlcmVkIGFzIGZhaWxlZCBi
eSBkZXNpZ24uCgpJIHRoaW5rIHRoaXMgaXMgdG9vIHN0cm9uZ2x5IHdvcmRlZCBhbmQgSSB3b3Vs
ZCBsZWF2ZSBvdXQgdGhpcyBsYXN0IApzZW50ZW5jZS4gSXQgc2VlbXMgYXJyb2dhbnQgZm9yIGRv
Y3VtZW50YXRpb24gdG8ganVkZ2Ugd2hhdCBpcyAiZmFpbGVkIApieSBkZXNpZ24iIGxpa2UgdGhp
cywgd2l0aG91dCBjb25zaWRlcmluZyBhbnkgb3RoZXIgcmVxdWlyZW1lbnRzIGZvciBhIApzeXN0
ZW0uCgpTdWNoIGEgImZhaWxlZCIgd2F0Y2hkb2cgaXMgc3RpbGwgYmV0dGVyIHRoYW4gbm8gd2F0
Y2hkb2cgaW4gbWFueSBjYXNlcyAKYW5kIHNvbWV0aW1lcyBpdCdzIHRoZSBvbmx5IG9wdGlvbiwg
YXMgdGhlIHRleHQgaW4gbGF0ZXIgcGFyYWdyYXBocyAKZXhwbGFpbnMuIFRoZSBwYXJhZ3JhcGgg
YWJvdmUgYWxyZWFkeSByZWNvbW1lbmRzIHRoYXQgaW4gdGhlIGlkZWFsIGNhc2UgCnRoZSBib290
bG9hZGVyIHNob3VsZG4ndCB0b3VjaCB0aGUgd2F0Y2hkb2cuIEkgdGhpbmsgdGhhdCBpcyBlbm91
Z2guCgpBbHNvLCBhcyBmYXIgYXMgSSBrbm93LCB0aGUgTGludXgga2VybmVsIHdpbGwgZmVlZCB0
aGUgd2F0Y2hkb2cgb24gYSAKa2VybmVsIHRpbWVyIGR1cmluZyBib290IGFuZCB1bnRpbCBhIHVz
ZXJzcGFjZSBwcm9jZXNzIGdyYWJzIAovZGV2L3dhdGNoZG9nLiBTbyBiYXNlZCBvbiB0aGlzIGJh
c2ljYWxseSBhbGwgc3lzdGVtcyBiYXNlZCBvbiBMaW51eCBhcmUgCmFscmVhZHkgYSBmYWlsZWQg
ZGVzaWduLgoKQmVzdCByZWdhcmRzClRvbWHFvgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
YmFyZWJveAo=
