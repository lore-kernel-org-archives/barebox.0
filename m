Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp5-g21.free.fr ([212.27.42.5])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WC8n8-0004rd-V2
 for barebox@lists.infradead.org; Sat, 08 Feb 2014 14:21:59 +0000
Received: from localhost.localdomain (unknown [82.233.81.124])
 by smtp5-g21.free.fr (Postfix) with ESMTP id 9F74FD480CF
 for <barebox@lists.infradead.org>; Sat,  8 Feb 2014 15:16:34 +0100 (CET)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Sat,  8 Feb 2014 15:16:10 +0100
Message-Id: <1391868972-31978-5-git-send-email-eric@eukrea.com>
In-Reply-To: <1391868972-31978-1-git-send-email-eric@eukrea.com>
References: <1391868972-31978-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH 5/7] ARM: mx53-qsrb: enable USB OTG in host mode
To: barebox@lists.infradead.org

dGVzdGVkIG9uIGkuTVg1MyBTVEFSVC1SIDoKYmFyZWJveEBGcmVlc2NhbGUgaS5NWDUzIFF1aWNr
IFN0YXJ0LVIgQm9hcmQ6LyB1c2IgLWYKVVNCOiBzY2FubmluZyBidXMgZm9yIGRldmljZXMuLi4K
VXNpbmcgaW5kZXggMCBmb3IgdGhlIG5ldyBkaXNrCkJ1cyAwMDEgRGV2aWNlIDAwMjogSUQgMDk1
MToxNjU0IERUIFI1MDAKQnVzIDAwMSBEZXZpY2UgMDAxOiBJRCAwMDAwOjAwMDAgRUhDSSBIb3N0
IENvbnRyb2xsZXIKQnVzIDAwMiBEZXZpY2UgMDAzOiBJRCAwMDAwOjAwMDAgRUhDSSBIb3N0IENv
bnRyb2xsZXIKMyBVU0IgRGV2aWNlKHMpIGZvdW5kCgpTaWduZWQtb2ZmLWJ5OiBFcmljIELDqW5h
cmQgPGVyaWNAZXVrcmVhLmNvbT4KLS0tCiBhcmNoL2FybS9kdHMvaW14NTMtcXNiLWNvbW1vbi5k
dHNpIHwgNCArKystCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9u
KC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vZHRzL2lteDUzLXFzYi1jb21tb24uZHRzaSBiL2Fy
Y2gvYXJtL2R0cy9pbXg1My1xc2ItY29tbW9uLmR0c2kKaW5kZXggNGFlMWY0OS4uMDEyZDc0YyAx
MDA2NDQKLS0tIGEvYXJjaC9hcm0vZHRzL2lteDUzLXFzYi1jb21tb24uZHRzaQorKysgYi9hcmNo
L2FybS9kdHMvaW14NTMtcXNiLWNvbW1vbi5kdHNpCkBAIC0yMjMsNiArMjIzLDggQEAKIH07CiAK
ICZ1c2JvdGcgewotICAgICAgIHN0YXR1cyA9ICJva2F5IjsKKwlwaHlfdHlwZSA9ICJ1dG1pIjsK
Kwlkcl9tb2RlID0gImhvc3QiOworCXN0YXR1cyA9ICJva2F5IjsKIH07CiAKLS0gCjEuOC4zLjEK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94
IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
