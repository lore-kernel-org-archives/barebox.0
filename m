Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from pig2.dooz.org ([88.191.118.219])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RETQZ-0003Om-1t
	for barebox@lists.infradead.org; Thu, 13 Oct 2011 22:07:00 +0000
From: =?UTF-8?q?Lo=C3=AFc=20Minier?= <loic.minier@linaro.org>
Date: Fri, 14 Oct 2011 00:06:40 +0200
Message-Id: <1318543601-20819-5-git-send-email-loic.minier@linaro.org>
In-Reply-To: <1318543601-20819-1-git-send-email-loic.minier@linaro.org>
References: <1318543601-20819-1-git-send-email-loic.minier@linaro.org>
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
Subject: [PATCH 4/5] Use %p in format for pointers
To: barebox@lists.infradead.org

cmVzLT5zdGFydCBhbmQgcmVzLT5zaXplIGFyZSByZXNvdXJjZV90eXBlX3Qgd2hpY2ggaXMgYSBw
aHlzX2FkZHJfdAp3aGljaCBpdHNlbGYgY291bGQgc29tZWRheSBiZSBhIDY0LWJpdHMgcG9pbnRl
ciAoZm9yIGluc3RhbmNlIHdoZW4KYnVpbGRpbmcgc2FuZGJveCBvbiBhIDY0LWJpdHMgaG9zdCku
ICBJbnN0ZWFkIG9mIGhhcmRjb2RpbmcgJTA4eCBhcyBhCmZvcm1hdCBmb3IgcG9pbnRlcnMsIHVz
ZSB0aGUgJXAgZm9ybWF0LgoKU2lnbmVkLW9mZi1ieTogTG/Dr2MgTWluaWVyIDxsb2ljLm1pbmll
ckBsaW5hcm8ub3JnPgotLS0KIGRyaXZlcnMvYmFzZS9kcml2ZXIuYyB8ICAgIDQgKystLQogMSBm
aWxlcyBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9iYXNlL2RyaXZlci5jIGIvZHJpdmVycy9iYXNlL2RyaXZlci5jCmluZGV4IDBi
ODAxMDMuLjUxNWZmOGQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvYmFzZS9kcml2ZXIuYworKysgYi9k
cml2ZXJzL2Jhc2UvZHJpdmVyLmMKQEAgLTM0OSw4ICszNDksOCBAQCBzdGF0aWMgaW50IGRvX2Rl
dmluZm8oc3RydWN0IGNvbW1hbmQgKmNtZHRwLCBpbnQgYXJnYywgY2hhciAqYXJndltdKQogCQkJ
cHJpbnRmKCJudW0gICA6ICVkXG4iLCBpKTsKIAkJCWlmIChyZXMtPm5hbWUpCiAJCQkJcHJpbnRm
KCJuYW1lICA6ICVzXG4iLCByZXMtPm5hbWUpOwotCQkJcHJpbnRmKCJzdGFydCA6IDB4JTA4eFxu
c2l6ZSAgOiAweCUwOHhcbiIsCi0JCQkgICAgICAgcmVzLT5zdGFydCwgcmVzLT5zaXplKTsKKwkJ
CXByaW50Zigic3RhcnQgOiAweCVwXG5zaXplICA6IDB4JXBcbiIsCisJCQkgICAgICAgKHZvaWQg
KilyZXMtPnN0YXJ0LCAodm9pZCAqKXJlcy0+c2l6ZSk7CiAJCX0KIAogCQlwcmludGYoImRyaXZl
cjogJXNcblxuIiwgZGV2LT5kcml2ZXIgPwotLSAKMS43LjUuNAoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVi
b3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2JhcmVib3gK
