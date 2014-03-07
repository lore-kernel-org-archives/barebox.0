Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([2a01:e0c:1:1599::11])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WLsD2-0002tW-53
 for barebox@lists.infradead.org; Fri, 07 Mar 2014 10:40:57 +0000
Received: from e6520eb.local.eukrea.com (unknown [88.170.243.169])
 by smtp2-g21.free.fr (Postfix) with ESMTP id 9501B4B0165
 for <barebox@lists.infradead.org>; Fri,  7 Mar 2014 11:40:21 +0100 (CET)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Fri,  7 Mar 2014 11:40:02 +0100
Message-Id: <1394188803-13456-6-git-send-email-eric@eukrea.com>
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
Subject: [PATCH v2 6/7] ARM: mx53-qsrb: enable sata
To: barebox@lists.infradead.org

dGVzdGVkIG9uIGkuTVg1MyBTVEFSVC1SIDoKYmFyZWJveEBGcmVlc2NhbGUgaS5NWDUzIFF1aWNr
IFN0YXJ0LVIgQm9hcmQ6LyBhdGEwLnByb2JlPTEKaW14LXNhdGEgMTAwMDAwMDAuc2F0YTogcG9y
dCAwOiBTQVRBIGxpbmsgb2sKaW14LXNhdGEgMTAwMDAwMDAuc2F0YTogcG9ydCAwOiBTcGlubmlu
ZyB1cCBkZXZpY2UuLi4KaW14LXNhdGEgMTAwMDAwMDAuc2F0YTogcG9ydCAwOiBvay4KYXRhMDog
cmVnaXN0ZXJlZCAvZGV2L2F0YTAKClNpZ25lZC1vZmYtYnk6IEVyaWMgQsOpbmFyZCA8ZXJpY0Bl
dWtyZWEuY29tPgotLS0KIGFyY2gvYXJtL2R0cy9pbXg1My1xc2ItY29tbW9uLmR0c2kgfCAzICsr
KwogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJt
L2R0cy9pbXg1My1xc2ItY29tbW9uLmR0c2kgYi9hcmNoL2FybS9kdHMvaW14NTMtcXNiLWNvbW1v
bi5kdHNpCmluZGV4IDNhOWQ1NWUuLjU3MWRhOTIgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2R0cy9p
bXg1My1xc2ItY29tbW9uLmR0c2kKKysrIGIvYXJjaC9hcm0vZHRzL2lteDUzLXFzYi1jb21tb24u
ZHRzaQpAQCAtMjI3LDMgKzIyNyw2IEBACiAJc3RhdHVzID0gIm9rYXkiOwogfTsKIAorJnNhdGEg
eworCXN0YXR1cyA9ICJva2F5IjsKK307Ci0tIAoxLjguMy4xCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJv
eEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vYmFyZWJveAo=
