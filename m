Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from m15-111.126.com ([220.181.15.111])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WIw78-0004k3-Ds
 for barebox@lists.infradead.org; Thu, 27 Feb 2014 08:14:45 +0000
From: =?UTF-8?q?=E5=BC=A0=E5=BF=A0=E5=B1=B1?= <zzs213@126.com>
Date: Thu, 27 Feb 2014 16:14:08 +0800
Message-Id: <1393488848-21278-1-git-send-email-zzs213@126.com>
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
Subject: [PATCH] bugfix: don't rely on lr in arm_cpu_lowlevel_init
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?=E5=BC=A0=E5=BF=A0=E5=B1=B1?= <zzs0213@gmail.com>

RnJvbTog5byg5b+g5bGxIDx6enMwMjEzQGdtYWlsLmNvbT4KClNpZ25lZC1vZmYtYnk6IOW8oOW/
oOWxsSA8enpzMjEzQDEyNi5jb20+Ci0tLQogYXJjaC9hcm0vY3B1L2xvd2xldmVsLlMgfCAgICAz
ICsrLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtL2NwdS9sb3dsZXZlbC5TIGIvYXJjaC9hcm0vY3B1L2xvd2xldmVs
LlMKaW5kZXggMzA3YjQ0Ny4uYzYxNWQ1YiAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vY3B1L2xvd2xl
dmVsLlMKKysrIGIvYXJjaC9hcm0vY3B1L2xvd2xldmVsLlMKQEAgLTQsNiArNCw3IEBACiAKIC5z
ZWN0aW9uICIudGV4dF9iYXJlX2luaXRfIiwiYXgiCiBFTlRSWShhcm1fY3B1X2xvd2xldmVsX2lu
aXQpCisJbW92CXIyLCBscgogCS8qIHNldCB0aGUgY3B1IHRvIFNWQzMyIG1vZGUgKi8KIAltcnMJ
cjEyLCBjcHNyCiAJYmljCXIxMiwgcjEyLCAjMHgxZgpAQCAtMzUsNSArMzYsNSBAQCBFTlRSWShh
cm1fY3B1X2xvd2xldmVsX2luaXQpCiAKIAltY3IJcDE1LCAwLCByMTIsIGMxLCBjMCwgMAogCi0J
bW92CXBjLCBscgorCW1vdglwYywgcjIKIEVORFBST0MoYXJtX2NwdV9sb3dsZXZlbF9pbml0KQot
LSAKMS43LjkuNQoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
