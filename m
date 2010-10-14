Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 68.mail-out.ovh.net ([91.121.185.69])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P6OR8-0008Vi-24
	for barebox@lists.infradead.org; Thu, 14 Oct 2010 14:05:41 +0000
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Thu, 14 Oct 2010 16:05:27 +0200
Message-Id: <1287065132-20372-5-git-send-email-eric@eukrea.com>
In-Reply-To: <1287065132-20372-1-git-send-email-eric@eukrea.com>
References: <1287065132-20372-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH 05/10] epautoconf: fix compile error
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org

dGhpcyBwYXRjaCBmaXggdGhlIGZvbGxvd2luZyBlcnJvciA6CiAgQ0MgICAgICBkcml2ZXJzL3Vz
Yi9nYWRnZXQvZXBhdXRvY29uZi5vCmRyaXZlcnMvdXNiL2dhZGdldC9lcGF1dG9jb25mLmM6MzM6
IGVycm9yOiBleHBlY3RlZCAnPScsICcsJywgJzsnLCAnYXNtJyBvciAnX19hdHRyaWJ1dGVfXycg
YmVmb3JlICd1bnNpZ25lZCcKZHJpdmVycy91c2IvZ2FkZ2V0L2VwYXV0b2NvbmYuYzogSW4gZnVu
Y3Rpb24gJ2VwX21hdGNoZXMnOgpkcml2ZXJzL3VzYi9nYWRnZXQvZXBhdXRvY29uZi5jOjE2ODog
ZXJyb3I6ICdlcG51bScgdW5kZWNsYXJlZCAoZmlyc3QgdXNlIGluIHRoaXMgZnVuY3Rpb24pCmRy
aXZlcnMvdXNiL2dhZGdldC9lcGF1dG9jb25mLmM6MTY4OiBlcnJvcjogKEVhY2ggdW5kZWNsYXJl
ZCBpZGVudGlmaWVyIGlzIHJlcG9ydGVkIG9ubHkgb25jZQpkcml2ZXJzL3VzYi9nYWRnZXQvZXBh
dXRvY29uZi5jOjE2ODogZXJyb3I6IGZvciBlYWNoIGZ1bmN0aW9uIGl0IGFwcGVhcnMgaW4uKQpk
cml2ZXJzL3VzYi9nYWRnZXQvZXBhdXRvY29uZi5jOiBJbiBmdW5jdGlvbiAndXNiX2VwX2F1dG9j
b25maWdfcmVzZXQnOgpkcml2ZXJzL3VzYi9nYWRnZXQvZXBhdXRvY29uZi5jOjMwNDogZXJyb3I6
ICdlcG51bScgdW5kZWNsYXJlZCAoZmlyc3QgdXNlIGluIHRoaXMgZnVuY3Rpb24pCgpTaWduZWQt
b2ZmLWJ5OiBFcmljIELDqW5hcmQgPGVyaWNAZXVrcmVhLmNvbT4KLS0tCiBkcml2ZXJzL3VzYi9n
YWRnZXQvZXBhdXRvY29uZi5jIHwgICAgMSArCiAxIGZpbGVzIGNoYW5nZWQsIDEgaW5zZXJ0aW9u
cygrKSwgMCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3VzYi9nYWRnZXQvZXBh
dXRvY29uZi5jIGIvZHJpdmVycy91c2IvZ2FkZ2V0L2VwYXV0b2NvbmYuYwppbmRleCBlNTQ5Nzky
Li5mZTdlN2ZkIDEwMDY0NAotLS0gYS9kcml2ZXJzL3VzYi9nYWRnZXQvZXBhdXRvY29uZi5jCisr
KyBiL2RyaXZlcnMvdXNiL2dhZGdldC9lcGF1dG9jb25mLmMKQEAgLTE5LDYgKzE5LDcgQEAKICAq
CiAgKi8KIAorI2luY2x1ZGUgPGluaXQuaD4KICNpbmNsdWRlIDxjb21tb24uaD4KICNpbmNsdWRl
IDxsaW51eC9jdHlwZS5oPgogI2luY2x1ZGUgPGFzbS9ieXRlb3JkZXIuaD4KLS0gCjEuNy4wLjQK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94
IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
