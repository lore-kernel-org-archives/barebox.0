Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.megiteam.pl ([31.186.83.105])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fwnfO-0005QW-S2
 for barebox@lists.infradead.org; Mon, 03 Sep 2018 12:09:16 +0000
From: Marcin Niestroj <m.niestroj@grinn-global.com>
Date: Mon,  3 Sep 2018 13:44:45 +0200
Message-Id: <20180903114452.4611-21-m.niestroj@grinn-global.com>
In-Reply-To: <20180903114452.4611-1-m.niestroj@grinn-global.com>
References: <20180903112408.2086-1-m.niestroj@grinn-global.com>
 <20180903114452.4611-1-m.niestroj@grinn-global.com>
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
Subject: [PATCH 11/18] crypto: caam - clean-up in caam_init_rng()
To: barebox@lists.infradead.org
Cc: Marcin Niestroj <m.niestroj@grinn-global.com>

UGljayBjb21taXQgZjM2NmFmNDYyYWVmMWRjYWVhYjBmNjhiMDMxZTVjNGM0ZWI4NjBlMSBmcm9t
IExpbnV4CnVwc3RyZWFtLgoKICAgIGNyeXB0bzogY2FhbSAtIGNsZWFuLXVwIGluIGNhYW1faW5p
dF9ybmcoKQoKICAgIENsZWFuIHVwIHRoZSBjb2RlLCBhcyBpbmRpY2F0ZWQgYnkgQ29jY2luZWxs
ZS4KCiAgICBDYzogSnVsaWEgTGF3YWxsIDxqdWxpYS5sYXdhbGxAbGlwNi5mcj4KICAgIFNpZ25l
ZC1vZmYtYnk6IEhvcmlhIEdlYW50xIMgPGhvcmlhLmdlYW50YUBueHAuY29tPgogICAgU2lnbmVk
LW9mZi1ieTogSGVyYmVydCBYdSA8aGVyYmVydEBnb25kb3IuYXBhbmEub3JnLmF1PgoKU2lnbmVk
LW9mZi1ieTogTWFyY2luIE5pZXN0cm9qIDxtLm5pZXN0cm9qQGdyaW5uLWdsb2JhbC5jb20+Ci0t
LQogZHJpdmVycy9jcnlwdG8vY2FhbS9jYWFtcm5nLmMgfCA2ICstLS0tLQogMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Y3J5cHRvL2NhYW0vY2FhbXJuZy5jIGIvZHJpdmVycy9jcnlwdG8vY2FhbS9jYWFtcm5nLmMKaW5k
ZXggYjYyZTNlYjc3Li4zOWE5MDU2OGQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvY3J5cHRvL2NhYW0v
Y2FhbXJuZy5jCisrKyBiL2RyaXZlcnMvY3J5cHRvL2NhYW0vY2FhbXJuZy5jCkBAIC0yNDIsMTEg
KzI0Miw3IEBAIHN0YXRpYyBpbnQgY2FhbV9pbml0X3JuZyhzdHJ1Y3QgY2FhbV9ybmdfY3R4ICpj
dHgsIHN0cnVjdCBkZXZpY2VfZCAqanJkZXYpCiAJaWYgKGVycikKIAkJcmV0dXJuIGVycjsKIAot
CWVyciA9IGNhYW1faW5pdF9idWYoY3R4LCAxKTsKLQlpZiAoZXJyKQotCQlyZXR1cm4gZXJyOwot
Ci0JcmV0dXJuIDA7CisJcmV0dXJuIGNhYW1faW5pdF9idWYoY3R4LCAxKTsKIH0KIAogaW50IGNh
YW1fcm5nX3Byb2JlKHN0cnVjdCBkZXZpY2VfZCAqZGV2LCBzdHJ1Y3QgZGV2aWNlX2QgKmpyZGV2
KQotLSAKMi4xOC4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
