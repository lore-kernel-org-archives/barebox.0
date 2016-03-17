Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1agSPU-0006mg-U2
 for barebox@lists.infradead.org; Thu, 17 Mar 2016 07:31:57 +0000
Date: Thu, 17 Mar 2016 08:31:28 +0100
From: Stefan Christ <s.christ@phytec.de>
Message-ID: <20160317073127.GA2329@lws-christ>
References: <1458099232-9050-1-git-send-email-andrew.smirnov@gmail.com>
 <1458099232-9050-12-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1458099232-9050-12-git-send-email-andrew.smirnov@gmail.com>
Content-Disposition: inline
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
Subject: Re: [PATCH 12/16] i.MX6: Apply errata 845369 workaround
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

SGksCgo+IEBAIC0zMSw0ICszMSw1IEBAIHZvaWQgaW14Nl9jcHVfbG93bGV2ZWxfaW5pdCh2b2lk
KQo+ICAJZW5hYmxlX2FybV9lcnJhdGFfNzUxNDcyX3dhcigpOwo+ICAJZW5hYmxlX2FybV9lcnJh
dGFfNzYxMzIwX3dhcigpOwo+ICAJZW5hYmxlX2FybV9lcnJhdGFfNzk0MDcyX3dhcigpOwo+ICsJ
ZW5hYmxlX2FybV9lcnJhdGFfODQ1MzY5X3dhcigpOwoKVGhlIGVycmF0YSA4NDUzNjkgc2VlbXMg
dG8gYmUgYSBnZW5lcmFsIGVycmF0YSBmb3IgYWxsIEFSTSBDb3J0ZXgtQTkgY29yZXMuIFdoeQpp
cyB0aGlzIGZpeCBvbmx5IGFwcGx5IGZvciB0aGUgaS5NWDYgU29DIGFuZCBub3QgZm9yIG90aGVy
IENvcnRleC1BOSBkZXZpY2VzIGluCnRoZSBiYXJlYm94PwoKTWl0IGZyZXVuZGxpY2hlbiBHcsO8
w59lbiAvIEtpbmQgcmVnYXJkcywKCVN0ZWZhbiBDaHJpc3QKCk9uIFR1ZSwgTWFyIDE1LCAyMDE2
IGF0IDA4OjMzOjQ3UE0gLTA3MDAsIEFuZHJleSBTbWlybm92IHdyb3RlOgo+IFNpZ25lZC1vZmYt
Ynk6IEFuZHJleSBTbWlybm92IDxhbmRyZXcuc21pcm5vdkBnbWFpbC5jb20+Cj4gLS0tCj4gIGFy
Y2gvYXJtL21hY2gtaW14L2NwdV9pbml0LmMgfCAxICsKPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9uKCspCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL21hY2gtaW14L2NwdV9pbml0LmMg
Yi9hcmNoL2FybS9tYWNoLWlteC9jcHVfaW5pdC5jCj4gaW5kZXggOGIxMGU2My4uNzYwMzg4MyAx
MDA2NDQKPiAtLS0gYS9hcmNoL2FybS9tYWNoLWlteC9jcHVfaW5pdC5jCj4gKysrIGIvYXJjaC9h
cm0vbWFjaC1pbXgvY3B1X2luaXQuYwo+IEBAIC0zMSw0ICszMSw1IEBAIHZvaWQgaW14Nl9jcHVf
bG93bGV2ZWxfaW5pdCh2b2lkKQo+ICAJZW5hYmxlX2FybV9lcnJhdGFfNzUxNDcyX3dhcigpOwo+
ICAJZW5hYmxlX2FybV9lcnJhdGFfNzYxMzIwX3dhcigpOwo+ICAJZW5hYmxlX2FybV9lcnJhdGFf
Nzk0MDcyX3dhcigpOwo+ICsJZW5hYmxlX2FybV9lcnJhdGFfODQ1MzY5X3dhcigpOwo+ICB9Cj4g
LS0gCj4gMi41LjAKPiAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+IGJhcmVib3ggbWFpbGluZyBsaXN0Cj4gYmFyZWJveEBsaXN0cy5pbmZyYWRl
YWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJl
Ym94CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJl
Ym94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
