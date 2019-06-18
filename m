Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdD2v-0003DA-5l
 for barebox@lists.infradead.org; Tue, 18 Jun 2019 12:17:06 +0000
Received: by mail-wr1-x42f.google.com with SMTP id p11so13734062wre.7
 for <barebox@lists.infradead.org>; Tue, 18 Jun 2019 05:17:04 -0700 (PDT)
Received: from [192.168.106.167] (213.172.225.144.ipv4.telemach.net.
 [213.172.225.144])
 by smtp.gmail.com with ESMTPSA id s63sm1527847wme.17.2019.06.18.05.17.01
 for <barebox@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Jun 2019 05:17:02 -0700 (PDT)
References: <CAHBg2Ld_n600PKRkg1Ye+QviSYoguos5vheT6MWVQw3Nz4za4Q@mail.gmail.com>
 <20190618075723.hnc5uabshtrypfda@pengutronix.de>
From: =?UTF-8?B?VG9tYcW+IMWgb2xj?= <tomaz.solc@klevio.com>
Message-ID: <d878a601-c20e-9513-7311-8deb713a8ba1@klevio.com>
Date: Tue, 18 Jun 2019 14:17:01 +0200
MIME-Version: 1.0
In-Reply-To: <20190618075723.hnc5uabshtrypfda@pengutronix.de>
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
Subject: Re: Raspberry CM3 eMMC Boot
To: barebox@lists.infradead.org

T24gMTguIDA2LiAxOSAwOTo1NywgU2FzY2hhIEhhdWVyIHdyb3RlOgo+IEhpIFJpY28sCj4gCj4g
T24gTW9uLCBKdW4gMTcsIDIwMTkgYXQgMDM6NDQ6MTdQTSArMDIwMCwgUmljbyBQYWhsaXNjaCB3
cm90ZToKPj4gLWNvcmVkZXZpY2VfaW5pdGNhbGwoYmNtMjgzNV9ncGlvX2FkZCk7Cj4+ICtkZXZp
Y2VfaW5pdGNhbGwoYmNtMjgzNV9ncGlvX2FkZCk7Cj4gCj4gSSBoYXZlIG5vIGlkZWEgd2h5IHRo
aXMgaGVscHMuIERvIHlvdSBoYXZlIGFueSBsb2dzIHRoYXQgZXhwbGFpbiB0aGUKPiBpc3N1ZT8K
ClRoZSBwcm9ibGVtIGlzIHRoYXQgZ3BpbyBhbHQgZnVuY3Rpb25zIGFyZW4ndCBnZXR0aW5nIHNl
dHVwIGNvcnJlY3RseS4gClJpY28ncyBwYXRjaCBtYWtlcyBtY2kgaW5pdCB0YWtlIHBsYWNlIGJl
Zm9yZSBncGlvIGluaXQsIHdoaWNoIHNlZW1zIHRvIAp3b3JrIGFyb3VuZCB0aGUgcHJvYmxlbSwg
YnV0IGRvZXNuJ3QgYWN0dWFsbHkgZml4IHRoZSBjb3JlIGlzc3VlLgoKVGhlIHByb2JsZW0gaXMg
YWN0dWFsbHkgbXkgY29tbWl0IDllZWQ0NWM3LCB3aGljaCB3YXMgbWFkZSBiZWZvcmUgc2Rob3N0
IApkcml2ZXIgd2FzIGZ1bmN0aW9uYWwgaW4gYmFyZWJveC4gSXQgZW5hYmxlcyBzZGhjaSBpbiBk
ZXZpY2V0cmVlLCBidXQgCmRvZXNuJ3QgZGlzYWJsZSBzZGhvc3QuCgpUaGlzIG1ha2VzIGJvdGgg
c2Rob3N0IGFuZCBzZGhjaSBub2RlcyBhY3RpdmUuIElmIApDT05GSUdfTUNJX0JDTTI4M1hfU0RI
T1NUIGlzIGVuYWJsZWQgKHdoaWNoIGlzIGluIHJwaV9kZWZjb25maWcgc2luY2UgCmIwOTM0Njhj
KSwgYm90aCBkcml2ZXJzIHRyeSB0byBmZXRjaCB0aGUgYWx0IGZ1bmN0aW9uIGZvciB0aGUgc2Ft
ZSBzZXQgCm9mIEdQSU9zLCB3aGljaCBvYnZpb3VzbHkgZG9lc24ndCB3b3JrLgoKU28gYmFzaWNh
bGx5IHdoYXQgSSB0aGluayBuZWVkcyB0byBiZSBkb25lIGlzIGRpc2FibGUgc2RoY2kgb24gQ29t
cHV0ZSAKTW9kdWxlIG5vdyB0aGF0IHNkaG9zdCB3b3Jrcy4gU2FtZSB0aGluZyBhcyB3YXMgZG9u
ZSBmb3IgUi5QaSAzIGJ5IEx1Y2FzIAppbiA5MDM2ZDFkYi4KClJpY28sIGNhbiB5b3UgY2hlY2sg
aWYgdGhlIHBhdGNoIGJlbG93IHdvcmtzIGZvciB5b3U/CgpCZXN0IHJlZ2FyZHMKVG9tYcW+CgoK
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2R0cy9iY20yODM3LXJwaS1jbTMuZHRzIApiL2FyY2gvYXJt
L2R0cy9iY20yODM3LXJwaS1jbTMuZHRzCmluZGV4IGNmYmZmZTE3NS4uMDFjMWY5YTY3IDEwMDY0
NAotLS0gYS9hcmNoL2FybS9kdHMvYmNtMjgzNy1ycGktY20zLmR0cworKysgYi9hcmNoL2FybS9k
dHMvYmNtMjgzNy1ycGktY20zLmR0cwpAQCAtOSwxMCArOSwzIEBACiAgICAgICAgICAgICAgICAg
cmVnID0gPDB4MCAweDA+OwogICAgICAgICB9OwogIH07Ci0KLSZzZGhjaSB7Ci0gICAgICAgcGlu
Y3RybC0wID0gPCZlbW1jX2dwaW80OD47Ci0gICAgICAgbm8tc2Q7Ci0gICAgICAgbm9uLXJlbW92
YWJsZTsKLSAgICAgICBzdGF0dXMgPSAib2theSI7Ci19OwoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vYmFyZWJveAo=
