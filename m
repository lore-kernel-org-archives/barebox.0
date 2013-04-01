Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UMj64-0003i3-Au
 for barebox@lists.infradead.org; Mon, 01 Apr 2013 18:04:45 +0000
Date: Mon, 1 Apr 2013 20:04:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130401180438.GZ1906@pengutronix.de>
References: <m3r4ixgmok.fsf@intrepid.localdomain>
 <m3ip49gmds.fsf@intrepid.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <m3ip49gmds.fsf@intrepid.localdomain>
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
Subject: Re: [PATCH] Implement ALTERNATE memory layout.
To: Krzysztof Halasa <khc@pm.waw.pl>
Cc: barebox@lists.infradead.org

T24gU2F0LCBNYXIgMzAsIDIwMTMgYXQgMTI6MjU6MzVQTSArMDEwMCwgS3J6eXN6dG9mIEhhbGFz
YSB3cm90ZToKPiBTaWduZWQtb2ZmLWJ5OiBLcnp5c3p0b2YgSGHFgmFzYSA8a2hjQHBtLndhdy5w
bD4KPiAKPiAtLS0gYS9hcmNoL2FybS9jcHUvc3RhcnQuYwo+ICsrKyBiL2FyY2gvYXJtL2NwdS9z
dGFydC5jCj4gQEAgLTU4LDcgKzU4LDYgQEAgc3RhdGljIG5vaW5saW5lIF9fbm9yZXR1cm4gdm9p
ZCBfX3N0YXJ0KHVpbnQzMl90IG1lbWJhc2UsIHVpbnQzMl90IG1lbXNpemUsCj4gIAllbmRtZW0g
LT0gU1RBQ0tfU0laRTsgLyogU3RhY2sgKi8KPiAgCj4gIAlpZiAoSVNfRU5BQkxFRChDT05GSUdf
TU1VX0VBUkxZKSkgewo+IC0KPiAgCQllbmRtZW0gJj0gfjB4M2ZmZjsKPiAgCQllbmRtZW0gLT0g
U1pfMTZLOyAvKiB0dGIgKi8KPiAgCj4gQEAgLTY2LDYgKzY1LDkgQEAgc3RhdGljIG5vaW5saW5l
IF9fbm9yZXR1cm4gdm9pZCBfX3N0YXJ0KHVpbnQzMl90IG1lbWJhc2UsIHVpbnQzMl90IG1lbXNp
emUsCj4gIAkJCW1tdV9lYXJseV9lbmFibGUobWVtYmFzZSwgbWVtc2l6ZSwgZW5kbWVtKTsKPiAg
CX0KPiAgCj4gKyNpZmRlZiBDT05GSUdfTUVNT1JZX0xBWU9VVF9BTFRFUk5BVEUKPiArCQltYWxs
b2NfZW5kID0gZW5kbWVtOwo+ICsjZWxzZQoKV2Ugc2hvdWxkIG5vdCBuZWVkIGEga2NvbmZpZyBv
cHRpb24gZm9yIHRoaXMuIFdoeSBub3QganVzdCB1c2UgdGhlCmJpZ2dlc3QgbWVtb3J5IHJlZ2lv
biB3ZSBmaW5kPyBXaGV0aGVyIHRoaXMgaXMgYmVsb3cgb3IgYWJvdmUgdGhlCmJhcmVib3ggYmlu
YXJ5IGRvZXNuJ3QgbmVlZCB0byBiZSBrbm93biBhdCBjb21waWxlIHRpbWUuCgpTYXNjaGEKCi0t
IApQZW5ndXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgfApJbmR1c3RyaWFsIExpbnV4IFNvbHV0aW9ucyAgICAgICAgICAg
ICAgICAgfCBodHRwOi8vd3d3LnBlbmd1dHJvbml4LmRlLyAgfApQZWluZXIgU3RyLiA2LTgsIDMx
MTM3IEhpbGRlc2hlaW0sIEdlcm1hbnkgfCBQaG9uZTogKzQ5LTUxMjEtMjA2OTE3LTAgICAgfApB
bXRzZ2VyaWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAgICAgICAgICAgfCBGYXg6ICAgKzQ5LTUx
MjEtMjA2OTE3LTU1NTUgfAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
