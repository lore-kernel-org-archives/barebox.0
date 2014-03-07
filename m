Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([2a01:e0c:1:1599::11])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WLsCn-0002qz-56
 for barebox@lists.infradead.org; Fri, 07 Mar 2014 10:40:42 +0000
Received: from e6520eb.local.eukrea.com (unknown [88.170.243.169])
 by smtp2-g21.free.fr (Postfix) with ESMTP id 26AE94B00D5
 for <barebox@lists.infradead.org>; Fri,  7 Mar 2014 11:40:17 +0100 (CET)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Fri,  7 Mar 2014 11:40:01 +0100
Message-Id: <1394188803-13456-5-git-send-email-eric@eukrea.com>
In-Reply-To: <1394188803-13456-1-git-send-email-eric@eukrea.com>
References: <20140210091152.GM17250@pengutronix.de>
 <1394188803-13456-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH v2 5/7] ARM: mx53-qsrb: enable USB OTG in host mode
To: barebox@lists.infradead.org

dGVzdGVkIG9uIGkuTVg1MyBTVEFSVC1SIDoKYmFyZWJveEBGcmVlc2NhbGUgaS5NWDUzIFF1aWNr
IFN0YXJ0LVIgQm9hcmQ6LyB1c2IgLWYKVVNCOiBzY2FubmluZyBidXMgZm9yIGRldmljZXMuLi4K
VXNpbmcgaW5kZXggMCBmb3IgdGhlIG5ldyBkaXNrCkJ1cyAwMDEgRGV2aWNlIDAwMjogSUQgMDk1
MToxNjU0IERUIFI1MDAKQnVzIDAwMSBEZXZpY2UgMDAxOiBJRCAwMDAwOjAwMDAgRUhDSSBIb3N0
IENvbnRyb2xsZXIKQnVzIDAwMiBEZXZpY2UgMDAzOiBJRCAwMDAwOjAwMDAgRUhDSSBIb3N0IENv
bnRyb2xsZXIKMyBVU0IgRGV2aWNlKHMpIGZvdW5kCgpTaWduZWQtb2ZmLWJ5OiBFcmljIELDqW5h
cmQgPGVyaWNAZXVrcmVhLmNvbT4KLS0tCnYyIDogUmVtb3ZlIHRoZSBkcl9tb2RlID0gImhvc3Qi
IGxpbmUKCiBhcmNoL2FybS9kdHMvaW14NTMtcXNiLWNvbW1vbi5kdHNpIHwgMyArKy0KIDEgZmls
ZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9h
cmNoL2FybS9kdHMvaW14NTMtcXNiLWNvbW1vbi5kdHNpIGIvYXJjaC9hcm0vZHRzL2lteDUzLXFz
Yi1jb21tb24uZHRzaQppbmRleCA0YWUxZjQ5Li4zYTlkNTVlIDEwMDY0NAotLS0gYS9hcmNoL2Fy
bS9kdHMvaW14NTMtcXNiLWNvbW1vbi5kdHNpCisrKyBiL2FyY2gvYXJtL2R0cy9pbXg1My1xc2It
Y29tbW9uLmR0c2kKQEAgLTIyMyw2ICsyMjMsNyBAQAogfTsKIAogJnVzYm90ZyB7Ci0gICAgICAg
c3RhdHVzID0gIm9rYXkiOworCXBoeV90eXBlID0gInV0bWkiOworCXN0YXR1cyA9ICJva2F5IjsK
IH07CiAKLS0gCjEuOC4zLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
