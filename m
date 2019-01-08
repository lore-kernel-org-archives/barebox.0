Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-eopbgr770094.outbound.protection.outlook.com
 ([40.107.77.94] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ggo06-0007wZ-SI
 for barebox@lists.infradead.org; Tue, 08 Jan 2019 09:48:48 +0000
From: "Baeuerle, Florian" <Florian.Baeuerle@allegion.com>
Date: Tue, 8 Jan 2019 09:48:45 +0000
Message-ID: <20190108094829.20913-1-florian.baeuerle@allegion.com>
References: <a86ae0154c6069405619d7752fcb227d5f2384b6.camel@allegion.com>
In-Reply-To: <a86ae0154c6069405619d7752fcb227d5f2384b6.camel@allegion.com>
Content-Language: en-US
Content-ID: <A9E19E1DA84525479E4A11445F6E4C36@prod.exchangelabs.com>
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
Subject: [PATCH 1/2] envfs: fix problem #1
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

U2lnbmVkLW9mZi1ieTogRmxvcmlhbiBCw6R1ZXJsZSA8Zmxvcmlhbi5iYWV1ZXJsZUBhbGxlZ2lv
bi5jb20+DQotLS0NCiBjb21tb24vZW52aXJvbm1lbnQuYyB8IDQgKystLQ0KIDEgZmlsZSBjaGFu
Z2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9jb21t
b24vZW52aXJvbm1lbnQuYyBiL2NvbW1vbi9lbnZpcm9ubWVudC5jDQppbmRleCAxOWRmNzQyOTAu
LmFiYTZkY2RlNCAxMDA2NDQNCi0tLSBhL2NvbW1vbi9lbnZpcm9ubWVudC5jDQorKysgYi9jb21t
b24vZW52aXJvbm1lbnQuYw0KQEAgLTI3Nyw5ICsyNzcsOSBAQCBpbnQgZW52ZnNfc2F2ZShjb25z
dCBjaGFyICpmaWxlbmFtZSwgY29uc3QgY2hhciAqZGlybmFtZSwgdW5zaWduZWQgZmxhZ3MpDQog
CQlzaXplID0gMDsgLyogZm9yY2Ugbm8gY29udGVudCAqLw0KIAl9IGVsc2Ugew0KIAkJLyogZmly
c3QgcGFzczogY2FsY3VsYXRlIHNpemUgKi8NCi0JCXJlY3Vyc2l2ZV9hY3Rpb24oZGlybmFtZSwg
QUNUSU9OX1NPUlQsIGZpbGVfYWN0aW9uLA0KKwkJcmVjdXJzaXZlX2FjdGlvbihkaXJuYW1lLCBB
Q1RJT05fUkVDVVJTRSB8IEFDVElPTl9TT1JULCBmaWxlX2FjdGlvbiwNCiAJCQkJTlVMTCwgJmRh
dGEsIDApOw0KLQkJcmVjdXJzaXZlX2FjdGlvbigiLy5kZWZhdWx0ZW52IiwgQUNUSU9OX1NPUlQs
DQorCQlyZWN1cnNpdmVfYWN0aW9uKCIvLmRlZmF1bHRlbnYiLCBBQ1RJT05fUkVDVVJTRSB8IEFD
VElPTl9TT1JULA0KIAkJCQlmaWxlX3JlbW92ZV9hY3Rpb24sIE5VTEwsICZkYXRhLCAwKTsNCiAJ
CXNpemUgPSAwOw0KIA0KLS0gDQoyLjE5LjINCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
YmFyZWJveAo=
