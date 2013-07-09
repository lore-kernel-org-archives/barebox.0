Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.co.uk ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UwU9C-0002va-Gj
 for barebox@lists.infradead.org; Tue, 09 Jul 2013 09:23:47 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 6F261BF0F6
 for <barebox@lists.infradead.org>; Tue,  9 Jul 2013 11:17:33 +0200 (CEST)
From: =?UTF-8?q?Teresa=20G=C3=A1mez?= <t.gamez@phytec.de>
Date: Tue, 9 Jul 2013 11:23:13 +0200
Message-Id: <1373361802-31080-3-git-send-email-t.gamez@phytec.de>
In-Reply-To: <1373361802-31080-1-git-send-email-t.gamez@phytec.de>
References: <1373361802-31080-1-git-send-email-t.gamez@phytec.de>
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
Subject: [PATCHv2 03/12] ARM: AM33xx: Add gpio support
To: barebox@lists.infradead.org

UmVnaXN0ZXIgR1BJTyBiYW5rcyBmb3IgQU0zM3h4IGJvYXJkcy4KClNpZ25lZC1vZmYtYnk6IFRl
cmVzYSBHw6FtZXogPHQuZ2FtZXpAcGh5dGVjLmRlPgotLS0KIGFyY2gvYXJtL21hY2gtb21hcC9h
bTMzeHhfZ2VuZXJpYy5jIHwgICAxNCArKysrKysrKysrKysrKwogMSBmaWxlcyBjaGFuZ2VkLCAx
NCBpbnNlcnRpb25zKCspLCAwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL21h
Y2gtb21hcC9hbTMzeHhfZ2VuZXJpYy5jIGIvYXJjaC9hcm0vbWFjaC1vbWFwL2FtMzN4eF9nZW5l
cmljLmMKaW5kZXggOTgwNmZiZS4uYWM5OTAzNSAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vbWFjaC1v
bWFwL2FtMzN4eF9nZW5lcmljLmMKKysrIGIvYXJjaC9hcm0vbWFjaC1vbWFwL2FtMzN4eF9nZW5l
cmljLmMKQEAgLTE0MSwzICsxNDEsMTcgQEAgY29uc3Qgc3RydWN0IGdwbWNfY29uZmlnIGFtMzN4
eF9uYW5kX2NmZyA9IHsKIAkuYmFzZSA9IDB4MDgwMDAwMDAsCiAJLnNpemUgPSBHUE1DX1NJWkVf
MTZNLAogfTsKKworc3RhdGljIGludCBhbTMzeHhfZ3Bpb19pbml0KHZvaWQpCit7CisJYWRkX2dl
bmVyaWNfZGV2aWNlKCJvbWFwLWdwaW8iLCAwLCBOVUxMLCBBTTMzWFhfR1BJTzBfQkFTRSwKKwkJ
CQkweGYwMCwgSU9SRVNPVVJDRV9NRU0sIE5VTEwpOworCWFkZF9nZW5lcmljX2RldmljZSgib21h
cC1ncGlvIiwgMSwgTlVMTCwgQU0zM1hYX0dQSU8xX0JBU0UsCisJCQkJMHhmMDAsIElPUkVTT1VS
Q0VfTUVNLCBOVUxMKTsKKwlhZGRfZ2VuZXJpY19kZXZpY2UoIm9tYXAtZ3BpbyIsIDIsIE5VTEws
IEFNMzNYWF9HUElPMl9CQVNFLAorCQkJCTB4ZjAwLCBJT1JFU09VUkNFX01FTSwgTlVMTCk7CisJ
YWRkX2dlbmVyaWNfZGV2aWNlKCJvbWFwLWdwaW8iLCAzLCBOVUxMLCBBTTMzWFhfR1BJTzNfQkFT
RSwKKwkJCQkweGYwMCwgSU9SRVNPVVJDRV9NRU0sIE5VTEwpOworCXJldHVybiAwOworfQorY29y
ZWRldmljZV9pbml0Y2FsbChhbTMzeHhfZ3Bpb19pbml0KTsKLS0gCjEuNy4wLjQKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcg
bGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
