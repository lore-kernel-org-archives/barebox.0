Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfSpQ-0001ur-SG
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 10:00:45 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TfSpP-0006FK-9O
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 11:00:43 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TfSpP-0005Ci-7q
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 11:00:43 +0100
Date: Mon, 3 Dec 2012 11:00:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121203100043.GN10369@pengutronix.de>
References: <20121203095150.GA20812@greatfirst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121203095150.GA20812@greatfirst.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: kbuild can't build foo/xxx.o
To: barebox <barebox@lists.infradead.org>

T24gTW9uLCBEZWMgMDMsIDIwMTIgYXQgMDU6NTE6NTBQTSArMDgwMCwg5byg5b+g5bGxIHdyb3Rl
Ogo+IGtidWlsZCBpbiBiYXJlYm94IGNhbid0IGJ1aWx0IHdoZW4KPiAKPiBvYmoteSArPSBmb28v
eHh4Lm8KPiAKPiBCdXQgaW4ga2VybmVsLCBJdCdzIE9LCj4gCj4gTWF5YmUgaXQgc2hvdWxkOgo+
IAo+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0KPiBkaWZmIC0tZ2l0IGEvc2NyaXB0cy9NYWtlZmlsZS5saWIgYi9zY3JpcHRzL01ha2Vm
aWxlLmxpYgo+IGluZGV4IGNiNDZkYjIuLjE0ZTQ3MWQgMTAwNjQ0Cj4gLS0tIGEvc2NyaXB0cy9N
YWtlZmlsZS5saWIKPiArKysgYi9zY3JpcHRzL01ha2VmaWxlLmxpYgo+IEBAIC01NSwxMCArNTUs
MTAgQEAgbXVsdGktb2Jqcy15IDo9ICQoZm9yZWFjaCBtLCAkKG11bHRpLXVzZWQteSksICQoJCht
Oi5vPS1vYmpzKSkgJCgkKG06Lm89LXkpKSkKPiAgbXVsdGktb2Jqcy1tIDo9ICQoZm9yZWFjaCBt
LCAkKG11bHRpLXVzZWQtbSksICQoJChtOi5vPS1vYmpzKSkgJCgkKG06Lm89LXkpKSkKPiAgbXVs
dGktb2JqcyAgIDo9ICQobXVsdGktb2Jqcy15KSAkKG11bHRpLW9ianMtbSkKPiAKPiAtIyAkKHN1
YmRpci1vYmoteSkgaXMgdGhlIGxpc3Qgb2Ygb2JqZWN0cyBpbiAkKG9iai15KSB3aGljaCBkbyBu
b3QgbGl2ZQo+IC0jIGluIHRoZSBsb2NhbCBkaXJlY3RvcnkKPiAtX19zdWJkaXItb2JqLXkgOj0g
JChmb3JlYWNoIG8sJChwYmwteSksJChpZiAkKGZpbHRlci1vdXQgJChvKSwkKG5vdGRpciAkKG8p
KSksJChvKSkpCj4gLXN1YmRpci1vYmoteSA6PSAkKGZvcmVhY2ggbywkKG9iai15KSwkKGlmICQo
ZmlsdGVyLW91dCAkKG8pLCQobm90ZGlyICQobykpKSwkKG8pKSkKPiArIyAkKHN1YmRpci1vYmot
eSkgaXMgdGhlIGxpc3Qgb2Ygb2JqZWN0cyBpbiAkKG9iai15KSB3aGljaCB1c2VzIGRpci8gdG8K
PiArIyB0ZWxsIGtidWlsZCB0byBkZXNjZW5kCj4gK19fc3ViZGlyLW9iai15IDo9ICQoZmlsdGVy
ICUvYnVpbHQtaW4tcGJsLm8sICQocGJsLXkpKQo+ICtzdWJkaXItb2JqLXkgOj0gJChmaWx0ZXIg
JS9idWlsdC1pbi5vLCAkKG9iai15KSkKPiAgc3ViZGlyLW9iai15ICs9ICQoX19zdWJkaXItb2Jq
LXkpCj4gCj4gICMgJChvYmotZGlycykgaXMgYSBsaXN0IG9mIGRpcmVjdG9yaWVzIHRoYXQgY29u
dGFpbiBvYmplY3QgZmlsZXMKClNlZW1zIHlvdSBoYXZlIHRoYXQgZnJvbSB0aGUgS2VybmVsLiBM
b29rcyBmaW5lLiBDYW4geW91IHNlbmQgYSBmb3JtYWwKcGF0Y2ggd2l0aCB5b3UgU2lnbmVkLW9m
ZiBhbmQgYWxzbyBhbiBleHBsYW5hdGlvbiBvbiB3aGljaCBvcmlnaW5hbApLZXJuZWwgY29tbWl0
IHRoaXMgaXMgYmFzZWQgb24/CgpTYXNjaGEKCgotLSAKUGVuZ3V0cm9uaXggZS5LLiAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwKSW5kdXN0
cmlhbCBMaW51eCBTb2x1dGlvbnMgICAgICAgICAgICAgICAgIHwgaHR0cDovL3d3dy5wZW5ndXRy
b25peC5kZS8gIHwKUGVpbmVyIFN0ci4gNi04LCAzMTEzNyBIaWxkZXNoZWltLCBHZXJtYW55IHwg
UGhvbmU6ICs0OS01MTIxLTIwNjkxNy0wICAgIHwKQW10c2dlcmljaHQgSGlsZGVzaGVpbSwgSFJB
IDI2ODYgICAgICAgICAgIHwgRmF4OiAgICs0OS01MTIxLTIwNjkxNy01NTU1IHwKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBs
aXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
