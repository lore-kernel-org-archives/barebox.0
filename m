Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([2a01:e0c:1:1599::11])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SFjGh-0001u5-5R
 for barebox@lists.infradead.org; Thu, 05 Apr 2012 09:46:15 +0000
Received: from localhost.localdomain (unknown [82.240.38.71])
 by smtp2-g21.free.fr (Postfix) with ESMTP id E94544B0152
 for <barebox@lists.infradead.org>; Thu,  5 Apr 2012 11:46:09 +0200 (CEST)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Thu,  5 Apr 2012 11:46:05 +0200
Message-Id: <1333619165-13740-2-git-send-email-eric@eukrea.com>
In-Reply-To: <1333619165-13740-1-git-send-email-eric@eukrea.com>
References: <1333619165-13740-1-git-send-email-eric@eukrea.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] at91sam9g20ek: fix build error
To: barebox@lists.infradead.org

YWN0dWFsIGRlZmNvbmZpZyB0cmlnZ2VyIDoKYmFyZWJveC5iaW4gc2l6ZSAyNjI3NjggPiBvZiB0
aGUgbWF4aW11bSBzaXplIDI2MjE0NAoKcmVtb3ZpbmcgdmVyYm9zZSBlcnJvciBtZXNzYWdlIGZp
eCB0aGlzIHByb2JsZW0gd2l0aG91dCBpbXBhY3RpbmcKdG8gbXVjaCB0aGUgdXNlcidzIGV4cGVy
aWVuY2UKClNpZ25lZC1vZmYtYnk6IEVyaWMgQsOpbmFyZCA8ZXJpY0BldWtyZWEuY29tPgotLS0K
IGFyY2gvYXJtL2NvbmZpZ3MvYXQ5MXNhbTlnMjBla19kZWZjb25maWcgfCAgICAxICsKIDEgZmls
ZXMgY2hhbmdlZCwgMSBpbnNlcnRpb25zKCspLCAwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2FyY2gvYXJtL2NvbmZpZ3MvYXQ5MXNhbTlnMjBla19kZWZjb25maWcgYi9hcmNoL2FybS9jb25m
aWdzL2F0OTFzYW05ZzIwZWtfZGVmY29uZmlnCmluZGV4IDk0NzM0ODguLjk3NDY3MDMgMTAwNjQ0
Ci0tLSBhL2FyY2gvYXJtL2NvbmZpZ3MvYXQ5MXNhbTlnMjBla19kZWZjb25maWcKKysrIGIvYXJj
aC9hcm0vY29uZmlncy9hdDkxc2FtOWcyMGVrX2RlZmNvbmZpZwpAQCAtMTMsNiArMTMsNyBAQCBD
T05GSUdfUFJPTVBUX0hVU0hfUFMyPSJ5IgogQ09ORklHX0hVU0hfRkFOQ1lfUFJPTVBUPXkKIENP
TkZJR19DTURMSU5FX0VESVRJTkc9eQogQ09ORklHX0FVVE9fQ09NUExFVEU9eQorIyBDT05GSUdf
RVJSTk9fTUVTU0FHRVMgaXMgbm90IHNldAogIyBDT05GSUdfQ09OU09MRV9BQ1RJVkFURV9GSVJT
VCBpcyBub3Qgc2V0CiBDT05GSUdfQ09OU09MRV9BQ1RJVkFURV9BTEw9eQogQ09ORklHX0RFRkFV
TFRfRU5WSVJPTk1FTlRfR0VORVJJQz15Ci0tIAoxLjcuNy42CgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJv
eEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vYmFyZWJveAo=
