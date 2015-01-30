Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YH6Wz-0001Ed-DH
 for barebox@lists.infradead.org; Fri, 30 Jan 2015 08:02:22 +0000
Received: from mail629.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 8EE7CFFA4AC
 for <barebox@lists.infradead.org>; Fri, 30 Jan 2015 09:01:55 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 8.1 \(1993\))
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
In-Reply-To: <1422488254-18414-1-git-send-email-eric@eukrea.com>
Date: Fri, 30 Jan 2015 16:01:46 +0800
Message-Id: <C03A4704-67BB-4EA6-8643-D79F9D14064D@jcrosoft.com>
References: <1422488254-18414-1-git-send-email-eric@eukrea.com>
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
Subject: Re: [PATCH 1/3] dhcp: fix request packet's requested IP option
To: =?utf-8?Q?Eric_B=C3=A9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

Cj4gT24gSmFuIDI5LCAyMDE1LCBhdCA3OjM3IEFNLCBFcmljIELDqW5hcmQgPGVyaWNAZXVrcmVh
LmNvbT4gd3JvdGU6Cj4gCj4gSW4gdGhlIHJlcXVlc3QgcGFja2V0LCB3ZSBhcmUgc3VwcG9zZWQg
dG8gY29weSB0aGUgSVAgdGhhdCB0aGUgREhDUCBzZXJ2ZXIKPiBwcm92aWRlZCBpbiB0aGUgb2Zm
ZXIgcGFja2V0IHNvIHRoYXQgZGhjcF9leHRlbmRlZCBjYW4gZmlsbCB0aGUgb3B0aW9uIDUwLgo+
IFRoZXJlIGlzIGFjdHVhbGx5IGFuIGVycm9yIGluIGJhcmVib3ggYXMgdGhlIHBvaW50ZXIgdG8g
dGhlIHBhY2tldCBjdXJyZW50bHkKPiBidWlsdCBpcyB1c2VkIGFzIHRoZSBzb3VyY2UgaW5zdGVh
ZCBvZiB0aGUgcG9pbnRlciB0byB0aGUgb2ZmZXIgcGFja2V0Lgo+IFdpdGggdGhpcyBwYXRjaCwg
YmFyZWJveCBub3cgc2VuZHMgYSByZXF1ZXN0IHBhY2tldCB3aGljaCBpbmNsdWRlcyB0aGUgcmln
aHQKPiByZXF1ZXN0ZWQgSVAgaW4gb3B0aW9uIDUwLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEVyaWMg
QsOpbmFyZCA8ZXJpY0BldWtyZWEuY29tPgo+IC0tLQo+IG5ldC9kaGNwLmMgfCA0ICstLS0KPiAx
IGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAt
LWdpdCBhL25ldC9kaGNwLmMgYi9uZXQvZGhjcC5jCj4gaW5kZXggOTU1MWQ2MC4uNzg0NDBkZCAx
MDA2NDQKPiAtLS0gYS9uZXQvZGhjcC5jCj4gKysrIGIvbmV0L2RoY3AuYwo+IEBAIC01NzksNyAr
NTc5LDcgQEAgc3RhdGljIHZvaWQgZGhjcF9zZW5kX3JlcXVlc3RfcGFja2V0KHN0cnVjdCBib290
cCAqYnBfb2ZmZXIpCj4gCS8qCj4gCSAqIENvcHkgb3B0aW9ucyBmcm9tIE9GRkVSIHBhY2tldCBp
ZiBwcmVzZW50Cj4gCSAqLwo+IC0JbmV0X2NvcHlfaXAoJk9mZmVyZWRJUCwgJmJwLT5icF95aWFk
ZHIpOwo+ICsJbmV0X2NvcHlfaXAoJk9mZmVyZWRJUCwgJmJwX29mZmVyLT5icF95aWFkZHIpOwo+
IAlleHRsZW4gPSBkaGNwX2V4dGVuZGVkKCh1OCAqKWJwLT5icF92ZW5kLCBESENQX1JFUVVFU1Qs
IG5ldF9kaGNwX3NlcnZlcl9pcCwKPiAJCQkJT2ZmZXJlZElQKTsKPiAKPiBAQCAtNzQ1LDkgKzc0
NSw3IEBAIHN0YXRpYyBpbnQgZG9fZGhjcChpbnQgYXJnYywgY2hhciAqYXJndltdKQo+IAlyZXQg
PSBuZXRfdWRwX2JpbmQoZGhjcF9jb24sIFBPUlRfQk9PVFBDKTsKPiAJaWYgKHJldCkKPiAJCWdv
dG8gb3V0MTsKPiAtCj4gCW5ldF9zZXRfaXAoMCk7Cj4gLQoKb25lIGZpeCBhdCBhIHRpbWUKCkkg
ZG8gcHJlZmVyIHRoZSBlbXB0eSBpdCBtYWtlIHRoZSBjb2RlIG1vcmUgcmVhZGFibGUKCkJlc3Qg
UmVnYXJkcywKSi4KPiAJZGhjcF9zdGFydCA9IGdldF90aW1lX25zKCk7Cj4gCXJldCA9IGJvb3Rw
X3JlcXVlc3QoKTsgLyogQmFzaWNhbGx5IHNhbWUgYXMgQk9PVFAgKi8KPiAJaWYgKHJldCkKPiAt
LSAKPiAxLjkuMwo+IAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4gYmFyZWJveCBtYWlsaW5nIGxpc3QKPiBiYXJlYm94QGxpc3RzLmluZnJhZGVh
ZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVi
b3gKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJl
Ym94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
