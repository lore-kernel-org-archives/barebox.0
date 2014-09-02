Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x22f.google.com ([2a00:1450:400c:c00::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XOlww-0006D1-LA
 for barebox@lists.infradead.org; Tue, 02 Sep 2014 11:08:35 +0000
Received: by mail-wg0-f47.google.com with SMTP id z12so6586798wgg.6
 for <barebox@lists.infradead.org>; Tue, 02 Sep 2014 04:08:12 -0700 (PDT)
Received: from eROCCA26.VPN13.com
 (LNantes-156-76-15-113.w82-127.abo.wanadoo.fr. [82.127.166.113])
 by mx.google.com with ESMTPSA id ga9sm8696556wjb.45.2014.09.02.04.08.10
 for <barebox@lists.infradead.org>
 (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
 Tue, 02 Sep 2014 04:08:11 -0700 (PDT)
From: =?UTF-8?q?Rapha=C3=ABl=20Poggi?= <poggi.raph@gmail.com>
Date: Tue,  2 Sep 2014 13:07:57 +0200
Message-Id: <1409656080-19280-1-git-send-email-poggi.raph@gmail.com>
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
Subject: [PATCH v3 0/3] Add atmel pinctrl driver
To: barebox@lists.infradead.org

Q2hhbmdlIHNpbmNlIHYyOgogICAgICAgICogTW92ZSBhbGwgZnVuY3Rpb25zIGZyb20gbWFjaC1h
dDkxL2dwaW8uaCB0byBtYXRjaC1hdDkxL2luY2x1ZGUvZ3Bpby5oCiAgICAgICAgKiBSZW1vdmUg
cGluY3RybC1hdDkxLmggZmlsZSBpbiBwYXRjaAoKQ2hhbmdlIHNpbmNlIHYxOgogICAgICAgICog
Rml4IGNvZGluZyBzdHlsZSBpc3N1ZQogICAgICAgICogUmVnaXN0ZXIgZ3BpbyBjbG9ja3Mgd2l0
aCBDTEtERVZfREVWX0lEIGluc3RlYWQgb2YgQ0xLREVWX0NPTl9ERVZfSUQKClRoaXMgcGF0Y2hz
ZXQgYWRkIGF0bWVsIHBpbmN0cmwvZ3BpbyBkcml2ZXIgYW5kIHRoZSBjb3JyZXNwb25kaW5nIGNs
b2NrcyBmb3IKdGhlIGF0OTFzYW05ZzQ1IGRldmljZS4KClRoZSBwaW5jdHJsIGRyaXZlciBhbHNv
IGluY2x1ZGUgdGhlIGdwaW8gZHJpdmVyIChsaWtlIGluIGxpbnV4KSBiZWNhdXNlIHRoZSBncGlv
IGFuZCBwaW5jdHJsIHBhcnRzIHNoYXJlIHNhbWUgc3RydWN0dXJlcy4KClJhcGhhw6tsIFBvZ2dp
ICgzKToKICAgICAgICAoMSkgYXJtOiBtYWNoLWF0OTE6IG1vdmUgZ3Bpby5oIHRvIGluY2x1ZGUg
Zm9sZGVyCiAgICAgICAgKDIpIHBpbmN0cmw6IGF0OTE6IGFkZCBwaW5jdHJsIGRyaXZlcgogICAg
ICAgICgzKSBhdDkxc2FtOWc0NTogYWRkIGRldmljZSB0cmVlIGdwaW8gY2xvY2tzCgogYXJjaC9h
cm0vbWFjaC1hdDkxL2F0OTFzYW05ZzQ1LmMgICAgICAgfCAgICA1ICsKIGFyY2gvYXJtL21hY2gt
YXQ5MS9ncGlvLmMgICAgICAgICAgICAgIHwgICAgMiArLQogYXJjaC9hcm0vbWFjaC1hdDkxL2dw
aW8uaCAgICAgICAgICAgICAgfCAgMTQ4IC0tLS0tLS0tLQogYXJjaC9hcm0vbWFjaC1hdDkxL2lu
Y2x1ZGUvbWFjaC9ncGlvLmggfCAgMTQ5ICsrKysrKysrKwogZHJpdmVycy9waW5jdHJsL0tjb25m
aWcgICAgICAgICAgICAgICAgfCAgICA2ICsKIGRyaXZlcnMvcGluY3RybC9NYWtlZmlsZSAgICAg
ICAgICAgICAgIHwgICAgMSArCiBkcml2ZXJzL3BpbmN0cmwvcGluY3RybC1hdDkxLmMgICAgICAg
ICB8ICA1MjcgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKIDcgZmlsZXMgY2hhbmdl
ZCwgNjg5IGluc2VydGlvbnMoKyksIDE0OSBkZWxldGlvbnMoLSkKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJl
Ym94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9iYXJlYm94Cg==
