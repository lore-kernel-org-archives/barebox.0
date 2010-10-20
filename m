Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 30.mail-out.ovh.net ([213.186.62.213])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P8Yu2-0003bf-40
	for barebox@lists.infradead.org; Wed, 20 Oct 2010 13:40:27 +0000
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Wed, 20 Oct 2010 15:40:16 +0200
Message-Id: <1287582017-12999-2-git-send-email-eric@eukrea.com>
In-Reply-To: <1287582017-12999-1-git-send-email-eric@eukrea.com>
References: <1287582017-12999-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH 2/3] cpuimx35: fix warning
To: barebox@lists.infradead.org

dGhpcyBwYXRjaCBmaXggdGhlIGZvbGxvd2luZyB3YXJuaW5nIDoKYXJjaC9hcm0vYm9hcmRzL2V1
a3JlYV9jcHVpbXgzNS9mbGFzaF9oZWFkZXIuYzozMDogd2FybmluZzogIkRFU1RfQkFTRSIgcmVk
ZWZpbmVkCmFyY2gvYXJtL21hY2gtaW14L2luY2x1ZGUvbWFjaC9pbXgtZmxhc2gtaGVhZGVyLmg6
Mjk6IG5vdGU6IHRoaXMgaXMgdGhlIGxvY2F0aW9uIG9mIHRoZSBwcmV2aW91cyBkZWZpbml0aW9u
CgpTaWduZWQtb2ZmLWJ5OiBFcmljIELDqW5hcmQgPGVyaWNAZXVrcmVhLmNvbT4KLS0tCiBhcmNo
L2FybS9ib2FyZHMvZXVrcmVhX2NwdWlteDM1L2ZsYXNoX2hlYWRlci5jIHwgICAgMSArCiAxIGZp
bGVzIGNoYW5nZWQsIDEgaW5zZXJ0aW9ucygrKSwgMCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9hcmNoL2FybS9ib2FyZHMvZXVrcmVhX2NwdWlteDM1L2ZsYXNoX2hlYWRlci5jIGIvYXJjaC9h
cm0vYm9hcmRzL2V1a3JlYV9jcHVpbXgzNS9mbGFzaF9oZWFkZXIuYwppbmRleCA0MTYzY2FmLi4z
MTMzOTk1IDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib2FyZHMvZXVrcmVhX2NwdWlteDM1L2ZsYXNo
X2hlYWRlci5jCisrKyBiL2FyY2gvYXJtL2JvYXJkcy9ldWtyZWFfY3B1aW14MzUvZmxhc2hfaGVh
ZGVyLmMKQEAgLTI3LDYgKzI3LDcgQEAgc3RydWN0IGlteF9kY2RfZW50cnkgX19kY2RfZW50cnlf
c2VjdGlvbiBkY2RfZW50cnlbXSA9IHsKIAl7IC5wdHJfdHlwZSA9IDQsIC5hZGRyID0gMHhiODAw
MTAxMCwgLnZhbCA9IDB4MDAwMDAwMDQsIH0sCiB9OwogCisjdW5kZWYgREVTVF9CQVNFCiAjZGVm
aW5lIERFU1RfQkFTRSAweDgwMDAwMDAwCiBzdHJ1Y3QgaW14X2ZsYXNoX2hlYWRlciBfX2ZsYXNo
X2hlYWRlcl9zZWN0aW9uIGZsYXNoX2hlYWRlciA9IHsKIAkuYXBwX2NvZGVfanVtcF92ZWN0b3IJ
PSBERVNUX0JBU0UgKyAweDEwMDAsCi0tIAoxLjcuMC40CgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vYmFyZWJveAo=
