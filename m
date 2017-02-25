Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1chj94-0005pQ-Bj
 for barebox@lists.infradead.org; Sat, 25 Feb 2017 20:40:48 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Sat, 25 Feb 2017 21:40:19 +0100
Message-Id: <20170225204022.12815-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH v2 3+0/3] retry on simplification of init code flow
To: barebox@lists.infradead.org

SGVsbG8sCgp0aGlzIHNlcmllcyBpcyB2MiBvZiBbNC02XS8zIGZyb20gRmViIDE1IGFuZCBpcyBz
dXBwb3NlZCB0byBzdXBlcnNlZWQKKGltcGxpY2l0KSB2MSB3aGljaCBpcyBhbHJlYWR5IGluIG5l
eHQuCgpUaGUgZGlmZmVyZW5jZSBpcyB0aGF0IHBhdGNoICJtdmVidTogRml4IGZpeHVwIG9mIG1i
dXMgZGV2aWNlLXRyZWUKcmFuZ2VzIiBpcyBzcXVhc2hlZCBpbnRvIHRoZW0gYW5kIHRoZSBjb21t
aXQgbG9nIGFkYXB0ZWQgYWNjb3JkaW5nbHkuCgpCZXN0IHJlZ2FyZHMKVXdlCgpVd2UgS2xlaW5l
LUvDtm5pZyAoMyk6CiAgbXZlYnU6IGFybWFkYS0zNzAteHA6IHNpbXBsaWZ5IHNvYyBpbml0IGNv
ZGUgZmxvdwogIG12ZWJ1OiBkb3ZlOiBzaW1wbGlmeSBzb2MgaW5pdCBjb2RlIGZsb3cKICBtdmVi
dToga2lya3dvb2Q6IHNpbXBsaWZ5IHNvYyBpbml0IGNvZGUgZmxvdwoKIGFyY2gvYXJtL21hY2gt
bXZlYnUvYXJtYWRhLTM3MC14cC5jIHwgMzEgKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LQogYXJjaC9hcm0vbWFjaC1tdmVidS9kb3ZlLmMgICAgICAgICAgfCAxMyArKy0tLS0tLS0tLS0t
CiBhcmNoL2FybS9tYWNoLW12ZWJ1L2tpcmt3b29kLmMgICAgICB8IDExICsrLS0tLS0tLS0tCiBk
cml2ZXJzL2J1cy9tdmVidS1tYnVzLmMgICAgICAgICAgICB8IDIyICsrKysrKysrKysrKysrKysr
KysrKy0KIDQgZmlsZXMgY2hhbmdlZCwgMzMgaW5zZXJ0aW9ucygrKSwgNDQgZGVsZXRpb25zKC0p
CgotLSAKMi4xMS4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
