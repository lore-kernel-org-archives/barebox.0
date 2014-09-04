Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22e.google.com ([2a00:1450:400c:c05::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XPTYj-0004Vf-A8
 for barebox@lists.infradead.org; Thu, 04 Sep 2014 09:42:29 +0000
Received: by mail-wi0-f174.google.com with SMTP id d1so717235wiv.7
 for <barebox@lists.infradead.org>; Thu, 04 Sep 2014 02:41:58 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140904092609.GO5352@pengutronix.de>
References: <1409656080-19280-1-git-send-email-poggi.raph@gmail.com>
 <1409656080-19280-3-git-send-email-poggi.raph@gmail.com>
 <20140903065649.GD5352@pengutronix.de>
 <CACqcpZDjqOVD3NuRBj7910TWhEO2XVLsBPx9wecCuyDVgsHdTA@mail.gmail.com>
 <20140903135256.GK5352@pengutronix.de>
 <CACqcpZACLkaPExXuhEgn0CER_sTvj8_6Lws06=oKZm-RJNZLtQ@mail.gmail.com>
 <20140904092609.GO5352@pengutronix.de>
From: =?UTF-8?Q?Rapha=C3=ABl_Poggi?= <raphio98@gmail.com>
Date: Thu, 4 Sep 2014 11:41:18 +0200
Message-ID: <CACqcpZAD6PpC4=VNBZSYTHgaUQnJDLSUpia0y8q7Pqn4wnueNw@mail.gmail.com>
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
Subject: Re: [PATCH v3 2/3] pinctrl: at91: add pinctrl driver
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

UGVyZmVjdCB0aGFuayB5b3UsIHNvIEkganVzdCBoYXZlIHRvIHNlbmQgb25lIHBhdGNoIGZvciB0
aGUgZ3BpbyBjbG9jawpyZWdpc3RyYXRpb24uCgoyMDE0LTA5LTA0IDExOjI2IEdNVCswMjowMCBT
YXNjaGEgSGF1ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU+Ogo+IE9uIFdlZCwgU2VwIDAzLCAy
MDE0IGF0IDA1OjEwOjMzUE0gKzAyMDAsIFJhcGhhw6tsIFBvZ2dpIHdyb3RlOgo+PiBUaGlzIHBh
dGNoIGlzIHBlcmZlY3QgOi0pLiBZb3UganVzdCBtaXNzIHRvIGNoZWNrIHRoZSByZXR1cm4gdmFs
dWUgaW4KPj4gYXQ5MV9ncGlvX3Byb2JlLgo+Pgo+PiBEbyBJIGhhdmUgdG8gaW50ZWdyYXRlIHRo
aXMgcGF0Y2ggaW4gbWluZSA/IG9yIHlvdSB3aWxsIGFwcGx5IGl0IHlvdXJzZWxmID8KPgo+IEkg
anVzdCBhZGRlZCB0aGUgcmV0dXJuIHZhbHVlIGNoZWNrLCBzcXVhc2hlZCB0aGUgcGF0Y2ggaW50
byB5b3VyCj4gcGluY3RybCBkcml2ZXIgcGF0Y2ggYW5kIGFwcGxpZWQgdG8gLW5leHQuCj4KPiBT
YXNjaGEKPgo+Cj4gLS0KPiBQZW5ndXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgICAgICAg
ICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfAo+IEluZHVzdHJpYWwgTGludXggU29s
dXRpb25zICAgICAgICAgICAgICAgICB8IGh0dHA6Ly93d3cucGVuZ3V0cm9uaXguZGUvICB8Cj4g
UGVpbmVyIFN0ci4gNi04LCAzMTEzNyBIaWxkZXNoZWltLCBHZXJtYW55IHwgUGhvbmU6ICs0OS01
MTIxLTIwNjkxNy0wICAgIHwKPiBBbXRzZ2VyaWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAgICAg
ICAgICAgfCBGYXg6ICAgKzQ5LTUxMjEtMjA2OTE3LTU1NTUgfAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJv
eEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vYmFyZWJveAo=
