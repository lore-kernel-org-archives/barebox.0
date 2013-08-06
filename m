Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycore.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V6dxR-0000Mx-FQ
 for barebox@lists.infradead.org; Tue, 06 Aug 2013 09:53:38 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id CB20DBF0ED
 for <barebox@lists.infradead.org>; Tue,  6 Aug 2013 11:45:46 +0200 (CEST)
From: =?UTF-8?q?Teresa=20G=C3=A1mez?= <t.gamez@phytec.de>
Date: Tue, 6 Aug 2013 11:53:04 +0200
Message-Id: <1375782787-494-1-git-send-email-t.gamez@phytec.de>
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
Subject: [PATCH 1/4] ARM: OMAP: Pass TEXT_BASE address to mk-am35xx-spi-image
To: barebox@lists.infradead.org

UGFzcyB0aGUgVEVYVF9CQVNFIHRvIHRoZSBtay1hbTM1eHgtc3BpLWltYWdlIGFzIHRoZQpkZWZh
dWx0IGFkZHJlc3MgZG9lcyBub3QgZml0IGZvciBBTTMzeHguCgpTaWduZWQtb2ZmLWJ5OiBUZXJl
c2EgR8OhbWV6IDx0LmdhbWV6QHBoeXRlYy5kZT4KLS0tCiBhcmNoL2FybS9NYWtlZmlsZSB8ICAg
IDIgKy0KIDEgZmlsZXMgY2hhbmdlZCwgMSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtL01ha2VmaWxlIGIvYXJjaC9hcm0vTWFrZWZpbGUKaW5kZXgg
ZDgwYzEyYy4uNGVjZWQ3OCAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vTWFrZWZpbGUKKysrIGIvYXJj
aC9hcm0vTWFrZWZpbGUKQEAgLTE2MCw3ICsxNjAsNyBAQCBLQlVJTERfSU1BR0UgOj0gYmFyZWJv
eC51YmwKIGVuZGlmCiAKIHF1aWV0X2NtZF9hbTM1eHhfc3BpX2ltYWdlID0gU1BJLUlNRyAkQAot
ICAgICAgY21kX2FtMzV4eF9zcGlfaW1hZ2UgPSBzY3JpcHRzL21rLWFtMzV4eC1zcGktaW1hZ2Ug
JDwgPiAkQAorICAgICAgY21kX2FtMzV4eF9zcGlfaW1hZ2UgPSBzY3JpcHRzL21rLWFtMzV4eC1z
cGktaW1hZ2UgLWEgJChURVhUX0JBU0UpICQ8ID4gJEAKIAogYmFyZWJveC5zcGk6ICQoS0JVSUxE
X0JJTkFSWSkgRk9SQ0UKIAkkKGNhbGwgaWZfY2hhbmdlZCxhbTM1eHhfc3BpX2ltYWdlKQotLSAK
MS43LjAuNAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
