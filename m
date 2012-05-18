Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([2a01:e0c:1:1599::11])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SVHow-0003Aa-HX
 for barebox@lists.infradead.org; Fri, 18 May 2012 07:41:55 +0000
Received: from localhost.localdomain (unknown [82.240.38.71])
 by smtp2-g21.free.fr (Postfix) with ESMTP id 4BE674B00A7
 for <barebox@lists.infradead.org>; Fri, 18 May 2012 09:41:49 +0200 (CEST)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Fri, 18 May 2012 09:41:37 +0200
Message-Id: <1337326905-555-2-git-send-email-eric@eukrea.com>
In-Reply-To: <1337326905-555-1-git-send-email-eric@eukrea.com>
References: <1337326905-555-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH v2 02/10] eukrea_cpuimx25: add display choice in environment
To: barebox@lists.infradead.org

U2lnbmVkLW9mZi1ieTogRXJpYyBCw6luYXJkIDxlcmljQGV1a3JlYS5jb20+Ci0tLQogYXJjaC9h
cm0vYm9hcmRzL2V1a3JlYV9jcHVpbXgyNS9lbnYvY29uZmlnIHwgICAgNCArKystCiAxIGZpbGVz
IGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9h
cmNoL2FybS9ib2FyZHMvZXVrcmVhX2NwdWlteDI1L2Vudi9jb25maWcgYi9hcmNoL2FybS9ib2Fy
ZHMvZXVrcmVhX2NwdWlteDI1L2Vudi9jb25maWcKaW5kZXggYmMxY2ZkNS4uNmI2NjFmZCAxMDA2
NDQKLS0tIGEvYXJjaC9hcm0vYm9hcmRzL2V1a3JlYV9jcHVpbXgyNS9lbnYvY29uZmlnCisrKyBi
L2FyY2gvYXJtL2JvYXJkcy9ldWtyZWFfY3B1aW14MjUvZW52L2NvbmZpZwpAQCAtMiw2ICsyLDgg
QEAKIAogIyBvdGcgcG9ydCBtb2RlIDogY2FuIGJlICdob3N0JyBvciAnZGV2aWNlJwogb3RnX21v
ZGU9ImRldmljZSIKKyMgdmlkZW8gOiBjYW4gYmUgQ01PLVFWR0EsIFVSVC1XVkdBLCBEVkktVkdB
IG9yIERWSS1TVkdBCit2aWRlbz0iQ01PLVFWR0EiCiAKIG1hY2hpbmU9ZXVrcmVhLWNwdWlteDI1
CiAKQEAgLTM1LDcgKzM3LDcgQEAgbmZzcm9vdD0iJGV0aDAuc2VydmVyaXA6L3Nydi9uZnMvJG1h
Y2hpbmUiCiAKIGF1dG9ib290X3RpbWVvdXQ9MQogCi1ib290YXJncz0iY29uc29sZT10dHlteGMw
LDExNTIwMCBvdGdfbW9kZT0kb3RnX21vZGUiCitib290YXJncz0iY29uc29sZT10dHlteGMwLDEx
NTIwMCBvdGdfbW9kZT0kb3RnX21vZGUgdmlkZW89aW14ZmI6JHZpZGVvIgogCiBuYW5kX3BhcnRz
PSIyNTZrKGJhcmVib3gpcm8sMTI4ayhiYXJlYm94ZW52KSwzTShrZXJuZWwpLC0ocm9vdCkiCiBy
b290ZnNfbXRkYmxvY2tfbmFuZD0zCi0tIAoxLjcuNy42CgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vYmFyZWJveAo=
