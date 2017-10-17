Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e4Rjn-0000O2-4I
 for barebox@lists.infradead.org; Tue, 17 Oct 2017 13:16:52 +0000
From: =?UTF-8?q?Ulrich=20=C3=96lmann?= <u.oelmann@pengutronix.de>
Date: Tue, 17 Oct 2017 15:16:23 +0200
Message-Id: <20171017131625.23837-1-u.oelmann@pengutronix.de>
MIME-Version: 1.0
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
Subject: [PATCH 0/2] Allow decimally formatted data for the commands
 "i2c_write" and "spi"
To: Barebox List <barebox@lists.infradead.org>

Q3VycmVudGx5IGJvdGggY29tbWFuZHMgc2V0IHRoZSBkZWZhdWx0IGJhc2UgZm9yIHBhcnNpbmcg
dXNlciBzdXBwbGllZCBkYXRhIHRvCjE2IHdoaWNoIG1ha2VzIGl0IGltcG9zc2libGUgYXQgYWxs
IHRvIHBhcnNlIGRlY2ltYWwgZGF0YS4KClByZXN1bWFibHkgdGhpcyBvcmlnaW5hdGVzIGZyb20g
aGF2aW5nIHRoZSBjb252ZW5pZW5jZSB0byBlYXNpbHkgY29weSduJ3Bhc3RlCmhleCBkdW1wZWQg
ZGF0YSBpbnRvIHRoZXNlIGNvbW1hbmRzIHdpdGhvdXQgZnVydGhlciBwcmVwcm9jZXNzaW5nIGl0
IGJlZm9yZS4KCkNoYW5nZSB0aGUgZGVmYXVsdCBiYXNlIHRvIDAgdG8gcGFydGljdWxhcmx5IGFs
bG93IGRlY2ltYWxseSBmb3JtYXR0ZWQgZGF0YS4KVGhpcyBpcyBpbiBhY2NvcmRhbmNlIHRvIHdo
YXQgdGhlICJtdyIgY29tbWFuZCBkb2VzLgoKVWxyaWNoIMOWbG1hbm4gKDIpOgogIGNvbW1hbmRz
OiBpMmM6IGRvIG5vdCByZXN0cmljdCBpMmNfd3JpdGUncyBkYXRhIHRvIGJlIGhleC1mb3JtYXR0
ZWQKICBjb21tYW5kczogc3BpOiBkbyBub3QgcmVzdHJpY3Qgc3BpJ3MgZGF0YSB0byBiZSBoZXgt
Zm9ybWF0dGVkCgogY29tbWFuZHMvaTJjLmMgfCAyICstCiBjb21tYW5kcy9zcGkuYyB8IDIgKy0K
IDIgZmlsZXMgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKLS0gCjIu
MTEuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJh
cmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
