Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UXpUM-00042B-3v
 for barebox@lists.infradead.org; Thu, 02 May 2013 09:07:43 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Thu,  2 May 2013 11:07:10 +0200
Message-Id: <1367485632-10725-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH RFC 0/2] Fix uInitrd handling
To: barebox@lists.infradead.org

SGVsbG8sCgpVLUJvb3QgZG9lc24ndCBob25vciB0aGUgbG9hZCBhZGRyZXNzIG9mIHVJbml0cmQg
aW1hZ2VzIGJ1dCBqdXN0IHBsYWNlcyBpdApzb21ld2hlcmUgaW4gUkFNLiBTbyBpdCdzIHNlbnNp
YmxlIHRvIGxldCBiYXJlYm94IG5vdCBiZWluZyBtb3JlIHN0cmljdAp0aGFuIFUtQm9vdC4KClRo
aXMgbWFrZXMgaXQgcG9zc2libGUgdG8gYm9vdCBhIERlYmlhbiBzeXN0ZW0gb24gYW4gaS5NWDUz
IExvY28gYm9hcmQKd2l0aCB0aGUgc2V0dXAgcHJlcGFyZWQgYnkgZmxhc2gta2VybmVsLiBUaGF0
IHVJbml0cmQgdXNlcyBhIGxvYWQKYWRkcmVzcyBvZiAweDAgd2hlcmUgdGhlcmUgaXMgbm90aGlu
ZyBvbiBpLk1YNTMuCgpUaGlzIHNlcmllcyBjb250YWlucyBhbiBhZGRpdGlvbmFsIGNsZWFudXAu
IEknbSBub3QgMTAwJSBzdXJlIGl0J3Mgb2sKdGhvdWdoLiBJcyBpdCBpbnRlbmRlZCB0aGF0IFVJ
TUFHRV9TT01FX0FERFJFU1MgYmVpbmcgcGFzc2VkIHRvIGJvb3RtCm5vdCBiZWluZyB1c2VkIGxp
dGVyYWxseT8gU2hvdWxkIEkgc3F1YXNoIHRoZSBjbGVhbnVwIGluIHRoZSBvdGhlcgpjb21taXQ/
IEFsc28gYSBzaW1pbGFyIHNpbXBsaWZpY2F0aW9uIG1pZ2h0IGJlIHBvc3NpYmxlIGZvciB0aGUg
bG9hZAphZGRyZXNzIG9mIHRoZSB1SW1hZ2UuCgpTYXNjaGEgSGF1ZXIgKDEpOgogIERvbid0IGhv
bm9yIGluaXRyZCBsb2FkIGFkZHJlc3MKClV3ZSBLbGVpbmUtS8O2bmlnICgxKToKICBib290bTog
U2ltcGxpZnkgaW5pdHJkIGFkZHJlc3MgaGFuZGxpbmcKCiBjb21tYW5kcy9ib290bS5jIHwgNyAr
LS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDYgZGVsZXRpb25zKC0pCgot
LSAKMS44LjIucmMyCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
