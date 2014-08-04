Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x22a.google.com ([2a00:1450:400c:c00::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XEDnH-0006i8-Bc
 for barebox@lists.infradead.org; Mon, 04 Aug 2014 08:38:59 +0000
Received: by mail-wg0-f42.google.com with SMTP id l18so7107600wgh.13
 for <barebox@lists.infradead.org>; Mon, 04 Aug 2014 01:38:37 -0700 (PDT)
Received: from eROCCA26.vpn2.erocca.com
 (LNantes-156-76-15-113.w82-127.abo.wanadoo.fr. [82.127.166.113])
 by mx.google.com with ESMTPSA id fc7sm41804056wjc.37.2014.08.04.01.30.51
 for <barebox@lists.infradead.org>
 (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
 Mon, 04 Aug 2014 01:30:52 -0700 (PDT)
From: =?UTF-8?q?Rapha=C3=ABl=20Poggi?= <poggi.raph@gmail.com>
Date: Mon,  4 Aug 2014 10:31:50 +0200
Message-Id: <1407141112-3868-1-git-send-email-poggi.raph@gmail.com>
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
Subject: [PATCH V2 0/2] Add device tree support of i2c Atmel driver
To: barebox@lists.infradead.org

Q2hhbmdlIHNpbmNlIHYxOgogICAgICAgICogU3F1YXNoIHRoZSBjb21taXQgWzFdIHdoaWNoIGFk
ZHMgdGhlIHNhbTl4NSBjb25maWcuCgpUaGlzIHBhdGNoZXNldCBhZGRzIHRoZSBkZXZpY2UgdHJl
ZSBzdXBwb3J0IGZvciBpMmMgQXRtZWwgZHJpdmVyIGFuZCB0aGUgY29ycmVzcGluZyBjbG9ja3MK
Zm9yIHRoZSBhdDkxc2FtOWc0NSBkZXZpY2UuCgpSYXBoYcOrbCBQb2dnaSAoMikgOgogICAgICAg
ICgxKSBpMmM6IGF0OTE6IGFkZCBzdXBwb3J0IG9mIGRldmljZSB0cmVlCiAgICAgICAgKDIpIGF0
OTFzYW05ZzQ1OiBjbG9jazogYWRkIGkyYyBjbG9ja3MKCmFyY2gvYXJtL21hY2gtYXQ5MS9hdDkx
c2FtOWc0NS5jIHwgICAgNCArKysKZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1hdDkxLmMgICAgfCAg
IDY2ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tCjIgZmlsZXMgY2hhbmdl
ZCwgNjIgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKClsxXTogaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvcGlwZXJtYWlsL2JhcmVib3gvMjAxNC1BdWd1c3QvMDIwNDkzLmh0bWwKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1h
aWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
