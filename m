Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22b.google.com ([2a00:1450:400c:c05::22b])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WFTxj-0001cd-79
 for barebox@lists.infradead.org; Mon, 17 Feb 2014 19:34:44 +0000
Received: by mail-wi0-f171.google.com with SMTP id cc10so2758186wib.4
 for <barebox@lists.infradead.org>; Mon, 17 Feb 2014 11:34:21 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1392663269.195942469@f359.i.mail.ru>
References: <1392589208-2802-1-git-send-email-poggi.raph@gmail.com>
 <1392624502.640750212@f35.i.mail.ru>
 <CACqcpZDbp2r8z0R4AjEwwkGkJ4+aBi6LcKjBWKyaa-36N+NaCg@mail.gmail.com>
 <1392663269.195942469@f359.i.mail.ru>
Date: Mon, 17 Feb 2014 20:34:20 +0100
Message-ID: <CACqcpZBvYh-HpXuk=mwmo0L7rJRwFRfP8VMkqKgQKT0KWQ6k4A@mail.gmail.com>
From: =?ISO-8859-1?Q?Rapha=EBl_Poggi?= <raphio98@gmail.com>
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
Subject: Re: [PATCH] Adding minimal support for the UDOO board.
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

SHVtIEkgdGhpbmsgSSBoYXZlIHVuZGVyc3RhbmQsIGluIGZhY3QgdGhlcmUgaXMgMiBkaWZmZXJl
bnRzIHR5cGUgb2YKVURPTyBib2FyZCwgb25lIHF1YWQgYW5kIG9uZSBkdWFsLiBTbyBJIHRoaW5r
IGl0IGlzIGEgZ29vZCBpZGVhIHRvIGFkZAppbiBpbXg2cWRsLXVkb28uZHRzaSBhIGNvbXBhdGli
bGUgc3RyaW5nIGxpa2UgInVkb28saW14NnFkbCIKYW5kIGluIHRoZSBpbXg2cS11ZG9vLmR0cyBh
IGNvbXBhdGlibGUgc3RyaW5nIGxpa2UgInVkb28saW14NnEiIGlzIHRoaXMgcmlnaHQgPwoKVGhh
bmtzLgoKUmFwaGHDq2wKCjIwMTQtMDItMTcgMTk6NTQgR01UKzAxOjAwIEFsZXhhbmRlciBTaGl5
YW4gPHNoY193b3JrQG1haWwucnU+Ogo+IEhlbGxvLgo+Cj4g0J/QvtC90LXQtNC10LvRjNC90LjQ
uiwgMTcg0YTQtdCy0YDQsNC70Y8gMjAxNCwgMTk6MzQgKzAxOjAwINC+0YIgUmFwaGHDq2wgUG9n
Z2kgPHJhcGhpbzk4QGdtYWlsLmNvbT46Cj4+Cj4+IEhpIEFsZXhhbmRlciwKPj4KPj4gSSBkbyBu
b3QgdW5kZXJzdGFuZCB0aGUgcHJvYmxlbSB3aXRoICJjb21wYXRpYmxlICIgOgo+Pgo+PiA+ID4g
KyNpbmNsdWRlICJpbXg2cWRsLXVkb28uZHRzaSIKPj4gPiA+ICsKPj4gPiA+ICsvIHsKPj4gPiA+
ICsgICAgICAgbW9kZWwgPSAiRnJlZXNjYWxlIGkuTVg2IFF1YWQgVURPTyBCb2FyZCI7Cj4+ID4g
PiArICAgICAgIGNvbXBhdGlibGUgPSAiZnNsLGlteDZxLXVkb28iLCAiZnNsLGlteDZxIjsKPj4g
PiA+ICt9Owo+PiA+ID4gKwo+Pgo+PiBDYW4geW91IGV4cGxhaW4gbWUgPwo+Cj4gUGxlYXNlIGFu
c3dlciB0aGUgcXVlc3Rpb246IFdoYXQgZGVzY3JpYmVzIGlteDZxZGwtdWRvby5kdHNpIGFuZAo+
IHdoYXQgZGVzY3JpYmVzIGlteDZxLXVkb28uZHRzID8KPiBJIHN1c3BlY3QgZm9yIGlteDZxZGwt
dWRvby5kdHNpIGlzIGEgbW9kdWxlIGFuZCBpbXg2cS11ZG9vLmR0cyBpcyBhIGJvYXJkCj4gdXNl
cyB0aGlzIG1vZHVsZS4KPiBLZXJuZWwgKGFzIGFuIG91ciBib290bG9hZGVyKSBtYXkgY29udGFp
biBzcGVjaWZpYyBjb2RlIHVzZWQgZm9yIHRoZQo+IG1vZHVsZSBhbmQvb3IgZm9yIGEgYm9hcmQu
IFRvIGZpbmQgb3V0IHNob3VsZCB0aGlzIGNvZGUgdG8gYmUgZXhlY3V0ZWQKPiBvciBub3QsIHNv
bWUgY29tcGF0aWJpbGl0eSB0ZXN0cyBpcyB1c2VkLgo+IFNvLCB5b3Ugc2hvdWxkIGFkZCBjb21w
YXRpYmxlIHN0cmluZyAiQUFBIiB0byB0aGUgbW9kdWxlIERUIGRlc2NyaXB0aW9uCj4gYW5kIHN0
cmluZ3MgIkJCQiIsICJBQUEiIHRvIHRoZSBib2FyZC4KPiBJIGhvcGUgSSBoYXZlIGV4cGxhaW5l
ZCBjbGVhcmx5LiA6KQo+Cj4gVGhhbmtzLgo+IC0tLQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vYmFyZWJveAo=
