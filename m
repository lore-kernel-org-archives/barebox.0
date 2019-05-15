Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQqsI-0006C0-MT
 for barebox@lists.infradead.org; Wed, 15 May 2019 10:11:04 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1hQqsG-0007Pj-QM
 for barebox@lists.infradead.org; Wed, 15 May 2019 12:11:00 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92-RC6)
 (envelope-from <afa@pengutronix.de>) id 1hQqsG-00040A-Iu
 for barebox@lists.infradead.org; Wed, 15 May 2019 12:11:00 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 15 May 2019 12:10:58 +0200
Message-Id: <20190515101058.13106-2-a.fatoum@pengutronix.de>
In-Reply-To: <20190515101058.13106-1-a.fatoum@pengutronix.de>
References: <20190515101058.13106-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/2] mtd: spi-nor: Add support for IS25LP032/064
To: barebox@lists.infradead.org

RnJvbTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4K
ClRoZSBkYXRhc2hlZXQgaXMgcHVibGljYWxseSBhdmFpbGFibGUgYXQKaHR0cDovL3d3dy5pc3Np
LmNvbS9XVy9wZGYvSVMyNUxQMDMyLTA2NC0xMjgucGRmLiBUaGUgcGFyYW1ldGVycyBmaXQgdG8K
d2hhdCBpcyBhbHJlYWR5IGF2YWlsYWJsZSBmb3IgSVMyNUxQMTI4LzI1Ni4KClNpZ25lZC1vZmYt
Ynk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+ClJl
dmlld2VkLWJ5OiBUdWRvciBBbWJhcnVzIDx0dWRvci5hbWJhcnVzQG1pY3JvY2hpcC5jb20+ClNp
Z25lZC1vZmYtYnk6IEJvcmlzIEJyZXppbGxvbiA8Ym9yaXMuYnJlemlsbG9uQGJvb3RsaW4uY29t
PgpPcmlnaW46IExpbnV4IHY1LjAtcmMxLCBjb21taXQ6NGNjMTA2ZjhmMjQ1YmFlMGM0NTgyMjQ4
MDQ3MzMyNDBjYjIyMzk0ZApTaWduZWQtb2ZmLWJ5OiBBaG1hZCBGYXRvdW0gPGEuZmF0b3VtQHBl
bmd1dHJvbml4LmRlPgotLS0KIGRyaXZlcnMvbXRkL3NwaS1ub3Ivc3BpLW5vci5jIHwgMiArKwog
MSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbXRk
L3NwaS1ub3Ivc3BpLW5vci5jIGIvZHJpdmVycy9tdGQvc3BpLW5vci9zcGktbm9yLmMKaW5kZXgg
YjE0MjE5N2I2NWI2Li5kOTVjMWIxNTZjOWYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbXRkL3NwaS1u
b3Ivc3BpLW5vci5jCisrKyBiL2RyaXZlcnMvbXRkL3NwaS1ub3Ivc3BpLW5vci5jCkBAIC02NzEs
NiArNjcxLDggQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBzcGlfZGV2aWNlX2lkIHNwaV9ub3JfaWRz
W10gPSB7CiAJeyAiNjQwczMzYiIsICBJTkZPKDB4ODk4OTEzLCAwLCA2NCAqIDEwMjQsIDEyOCwg
MCkgfSwKIAogCS8qIElTU0kgKi8KKwl7ICJpczI1bHAwMzIiLCBJTkZPKDB4OWQ2MDE2LCAgMCwg
IDY0ICogMTAyNCwgIDY0LCBTRUNUXzRLIHwgU1BJX05PUl9EVUFMX1JFQUQpIH0sCisJeyAiaXMy
NWxwMDY0IiwgSU5GTygweDlkNjAxNywgIDAsICA2NCAqIDEwMjQsIDEyOCwgU0VDVF80SyB8IFNQ
SV9OT1JfRFVBTF9SRUFEKSB9LAogCXsgImlzMjVscDEyOCIsIElORk8oMHg5ZDYwMTgsICAwLCAg
NjQgKiAxMDI0LCAyNTYsIDApIH0sCiAKIAkvKiBNYWNyb25peCAqLwotLSAKMi4yMC4xCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWls
aW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
