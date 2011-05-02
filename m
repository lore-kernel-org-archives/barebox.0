Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1QGzBF-0000Lh-Bc
	for barebox@lists.infradead.org; Mon, 02 May 2011 19:53:18 +0000
Received: by wyb28 with SMTP id 28so5654763wyb.36
	for <barebox@lists.infradead.org>; Mon, 02 May 2011 12:53:15 -0700 (PDT)
From: Marek Belisko <marek.belisko@open-nandra.com>
Date: Mon,  2 May 2011 21:52:59 +0200
Message-Id: <1304365979-5546-3-git-send-email-marek.belisko@open-nandra.com>
In-Reply-To: <1304365979-5546-1-git-send-email-marek.belisko@open-nandra.com>
References: <1304365979-5546-1-git-send-email-marek.belisko@open-nandra.com>
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
Subject: [PATCH 3/3] scripts: Fix compilation warning.
To: barebox@lists.infradead.org
Cc: Marek Belisko <marek.belisko@open-nandra.com>

Rml4IGZvbGxvd2luZyB3YXJuaW5nOgpzY3JpcHRzL2thbGxzeW1zLmM6IEluIGZ1bmN0aW9uIOKA
mHJlYWRfc3ltYm9s4oCZOgpzY3JpcHRzL2thbGxzeW1zLmM6ODE6OTogd2FybmluZzogaWdub3Jp
bmcgcmV0dXJuIHZhbHVlIG9mIOKAmGZnZXRz4oCZLCBkZWNsYXJlZCB3aXRoIGF0dHJpYnV0ZSB3
YXJuX3VudXNlZF9yZXN1bHQKClNvbHV0aW9uIG92ZXJ0YWtlbiBmcm9tIGtlcm5lbCB0cmVlLgoK
U2lnbmVkLW9mZi1ieTogTWFyZWsgQmVsaXNrbyA8bWFyZWsuYmVsaXNrb0BvcGVuLW5hbmRyYS5j
b20+Ci0tLQogc2NyaXB0cy9rYWxsc3ltcy5jIHwgICAgNiArKy0tLS0KIDEgZmlsZXMgY2hhbmdl
ZCwgMiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NjcmlwdHMv
a2FsbHN5bXMuYyBiL3NjcmlwdHMva2FsbHN5bXMuYwppbmRleCAxZjExZDg0Li5iMzU5MWE5IDEw
MDY0NAotLS0gYS9zY3JpcHRzL2thbGxzeW1zLmMKKysrIGIvc2NyaXB0cy9rYWxsc3ltcy5jCkBA
IC03NiwxMCArNzYsOCBAQCBzdGF0aWMgaW50IHJlYWRfc3ltYm9sKEZJTEUgKmluLCBzdHJ1Y3Qg
c3ltX2VudHJ5ICpzKQogCiAJcmMgPSBmc2NhbmYoaW4sICIlbGx4ICVjICU0OTlzXG4iLCAmcy0+
YWRkciwgJnN0eXBlLCBzdHIpOwogCWlmIChyYyAhPSAzKSB7Ci0JCWlmIChyYyAhPSBFT0YpIHsK
LQkJCS8qIHNraXAgbGluZSAqLwotCQkJZmdldHMoc3RyLCA1MDAsIGluKTsKLQkJfQorCQlpZiAo
cmMgIT0gRU9GICYmIGZnZXRzKHN0ciwgNTAwLCBpbikgPT0gTlVMTCkKKwkJCWZwcmludGYoc3Rk
ZXJyLCAiUmVhZCBlcnJvciBvciBlbmQgb2YgZmlsZS5cbiIpOwogCQlyZXR1cm4gLTE7CiAJfQog
Ci0tIAoxLjcuNC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
