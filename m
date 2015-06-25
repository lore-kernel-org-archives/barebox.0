Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z86Z7-0006vp-N2
 for barebox@lists.infradead.org; Thu, 25 Jun 2015 12:47:38 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Thu, 25 Jun 2015 14:47:10 +0200
Message-Id: <1435236431-11021-2-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1435236431-11021-1-git-send-email-mkl@pengutronix.de>
References: <1435236431-11021-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 2/3] fixup! state: add support for fixed length strings
To: barebox@lists.infradead.org

RnJvbTogVWxyaWNoIMOWbG1hbm4gPHUub2VsbWFubkBwZW5ndXRyb25peC5kZT4KClNpZ25lZC1v
ZmYtYnk6IFVscmljaCDDlmxtYW5uIDx1Lm9lbG1hbm5AcGVuZ3V0cm9uaXguZGU+ClNpZ25lZC1v
ZmYtYnk6IE1hcmMgS2xlaW5lLUJ1ZGRlIDxta2xAcGVuZ3V0cm9uaXguZGU+Ci0tLQogRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2JhcmVib3gvYmFyZWJveCxzdGF0ZS5yc3QgfCAy
ICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYg
LS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYmFyZWJveC9iYXJlYm94
LHN0YXRlLnJzdCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9iYXJlYm94L2Jh
cmVib3gsc3RhdGUucnN0CmluZGV4IDZkZWQxNjFlNjE4ZC4uNGM1YjA2ZGI0N2Y2IDEwMDY0NAot
LS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYmFyZWJveC9iYXJlYm94LHN0
YXRlLnJzdAorKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYmFyZWJveC9i
YXJlYm94LHN0YXRlLnJzdApAQCAtODcsNyArODcsNyBAQCBWYXJpYWJsZSBUeXBlcwogCiAqIGBg
dWludDhgYDoKICogYGB1aW50MzJgYDoKLSogYGBlbnVtMzJgYDogVGhlIGBgZGVmYXVsdGBgIHZh
bHVlIGl0IGlzIGFuIGludGVnZXIgcmVwcmVzZW50aW5nIGFuCisqIGBgZW51bTMyYGA6IFRoZSBg
YGRlZmF1bHRgYCB2YWx1ZSBpcyBhbiBpbnRlZ2VyIHJlcHJlc2VudGluZyBhbgogICBvZmZzZXQg
aW50byB0aGUgbmFtZXMgYXJyYXkuCiAqIGBgbWFjYGA6CiAqIGBgc3RyaW5nYGA6IFRoZSBsZW5n
dGggb2YgdGhlIHN0cmluZyBleGNsdWRpbmcgdGhlIHRyYWlsaW5nIDAgaXMKLS0gCjIuMS40CgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBt
YWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
