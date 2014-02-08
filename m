Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp5-g21.free.fr ([2a01:e0c:1:1599::14])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WC8kW-0004nh-Ug
 for barebox@lists.infradead.org; Sat, 08 Feb 2014 14:19:17 +0000
Received: from localhost.localdomain (unknown [82.233.81.124])
 by smtp5-g21.free.fr (Postfix) with ESMTP id 153D5D48031
 for <barebox@lists.infradead.org>; Sat,  8 Feb 2014 15:16:37 +0100 (CET)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Sat,  8 Feb 2014 15:16:11 +0100
Message-Id: <1391868972-31978-6-git-send-email-eric@eukrea.com>
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
Subject: [PATCH 6/7] ARM: mx53-qsrb: enable sata
To: barebox@lists.infradead.org

dGVzdGVkIG9uIGkuTVg1MyBTVEFSVC1SIDoKYmFyZWJveEBGcmVlc2NhbGUgaS5NWDUzIFF1aWNr
IFN0YXJ0LVIgQm9hcmQ6LyBhdGEwLnByb2JlPTEKaW14LXNhdGEgMTAwMDAwMDAuc2F0YTogcG9y
dCAwOiBTQVRBIGxpbmsgb2sKaW14LXNhdGEgMTAwMDAwMDAuc2F0YTogcG9ydCAwOiBTcGlubmlu
ZyB1cCBkZXZpY2UuLi4KaW14LXNhdGEgMTAwMDAwMDAuc2F0YTogcG9ydCAwOiBvay4KYXRhMDog
cmVnaXN0ZXJlZCAvZGV2L2F0YTAKClNpZ25lZC1vZmYtYnk6IEVyaWMgQsOpbmFyZCA8ZXJpY0Bl
dWtyZWEuY29tPgotLS0KIGFyY2gvYXJtL2R0cy9pbXg1My1xc2ItY29tbW9uLmR0c2kgfCAzICsr
KwogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJt
L2R0cy9pbXg1My1xc2ItY29tbW9uLmR0c2kgYi9hcmNoL2FybS9kdHMvaW14NTMtcXNiLWNvbW1v
bi5kdHNpCmluZGV4IDAxMmQ3NGMuLjI5NjhiNDAgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2R0cy9p
bXg1My1xc2ItY29tbW9uLmR0c2kKKysrIGIvYXJjaC9hcm0vZHRzL2lteDUzLXFzYi1jb21tb24u
ZHRzaQpAQCAtMjI4LDMgKzIyOCw2IEBACiAJc3RhdHVzID0gIm9rYXkiOwogfTsKIAorJnNhdGEg
eworCXN0YXR1cyA9ICJva2F5IjsKK307Ci0tIAoxLjguMy4xCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJv
eEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vYmFyZWJveAo=
