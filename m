Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x234.google.com ([2a00:1450:400c:c00::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XEyHM-0008HR-AZ
 for barebox@lists.infradead.org; Wed, 06 Aug 2014 10:17:08 +0000
Received: by mail-wg0-f52.google.com with SMTP id a1so2326415wgh.35
 for <barebox@lists.infradead.org>; Wed, 06 Aug 2014 03:16:46 -0700 (PDT)
Received: from eROCCA26.vpn2.erocca.com
 (LNantes-156-76-15-113.w82-127.abo.wanadoo.fr. [82.127.166.113])
 by mx.google.com with ESMTPSA id kw1sm1375273wjb.19.2014.08.06.03.16.44
 for <barebox@lists.infradead.org>
 (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
 Wed, 06 Aug 2014 03:16:45 -0700 (PDT)
From: =?UTF-8?q?Rapha=C3=ABl=20Poggi?= <poggi.raph@gmail.com>
Date: Wed,  6 Aug 2014 12:17:46 +0200
Message-Id: <1407320269-32368-1-git-send-email-poggi.raph@gmail.com>
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
Subject: [PATCH v3 0/2] Add device tree support of i2c Atmel driver
To: barebox@lists.infradead.org

Q2hhbmdlIHNpbmNlIHYyOgoJKiBSZWdpc3RlciBpMmMgY2xvY2tzIHdpdGggQ0xLREVWX0RFVl9J
RCBpbnN0ZWFkIG9mIENMS0RFVl9DT05fREVWX0lELgoJKiBGaXggc29tZSBjb2Rpbmcgc3R5bGUg
aXNzdWUuCgkqIEFkZCBCbyBTaGVuIHBhdGNoLCB3aGljaCBmaXggdGhlIGludGVycnVwdCBtb2Rl
LgoJKiBSZW5hbWUgdGhlIG5hbWUgb2YgaWRzIHRhYmxlLiAoZnJvbSBpMmMtYXQ5MXNhbTl4eHgg
dG8gYXQ5MXNhbTl4eHgtaTJjKQoKQ2hhbmdlIHNpbmNlIHYxOgogICAgICAgICogU3F1YXNoIHRo
ZSBjb21taXQgWzFdIHdoaWNoIGFkZHMgdGhlIHNhbTl4NSBjb25maWcuCgpUaGlzIHBhdGNoZXNl
dCBhZGRzIHRoZSBkZXZpY2UgdHJlZSBzdXBwb3J0IGZvciBpMmMgQXRtZWwgZHJpdmVyIGFuZCB0
aGUgY29ycmVzcGluZyBjbG9ja3MKZm9yIHRoZSBhdDkxc2FtOWc0NSBkZXZpY2UuCgpSYXBoYcOr
bCBQb2dnaSAoMikgOgogICAgICAgICgxKSBpMmM6IGF0OTE6IGFkZCBzdXBwb3J0IG9mIGRldmlj
ZSB0cmVlCiAgICAgICAgKDIpIGF0OTFzYW05ZzQ1OiBjbG9jazogYWRkIGkyYyBjbG9ja3MKCkJv
IFNoZW4gKDEpOgoJKDEpIEkyQzogYXQ5MTogZml4IHRoZSBtZXRob2QgZm9yIGludGVycnVwdAoK
IGFyY2gvYXJtL21hY2gtYXQ5MS9hdDkxc2FtOWc0NS5jIHwgICAgNCArKwogZHJpdmVycy9pMmMv
YnVzc2VzL2kyYy1hdDkxLmMgICAgfCAgMTI2ICsrKysrKysrKysrKysrKysrKysrKysrKysrKyst
LS0tLS0tLS0tCiAyIGZpbGVzIGNoYW5nZWQsIDk4IGluc2VydGlvbnMoKyksIDMyIGRlbGV0aW9u
cygtKQoKWzFdOiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9waXBlcm1haWwvYmFyZWJveC8y
MDE0LUF1Z3VzdC8wMjA0OTMuaHRtbAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVi
b3gK
