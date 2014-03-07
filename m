Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from slb-mail4.epfl.ch ([2001:620:618:1e0:1:80b2:e059:1]
 helo=smtp4.epfl.ch)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WLzIz-0001k8-E7
 for barebox@lists.infradead.org; Fri, 07 Mar 2014 18:15:35 +0000
From: =?UTF-8?q?Philippe=20R=C3=A9tornaz?= <philippe.retornaz@epfl.ch>
Date: Fri,  7 Mar 2014 19:14:55 +0100
Message-Id: <1394216095-20377-1-git-send-email-philippe.retornaz@epfl.ch>
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
Subject: [PATCH 1/1] ARM: mx31moboard: Fix UPLL and SPLL initialisation
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org, =?UTF-8?q?Philippe=20R=C3=A9tornaz?= <philippe.retornaz@epfl.ch>

VGhpcyBjb3B5IHdoYXQgdGhlIHByZXZpb3VzIGJvb3Rsb2FkZXIgd2FzIGRvaW5nIG9uIHRoaXMg
Ym9hcmQuCkl0IGZpeGVzIFVTQiBob3N0IDEgY2xvY2sgZXJyb3IgYXMgaXRzIFBIWSBjbG9jayBp
cyBwcm92aWRlZApieSB0aGUgaS5NWDMxLgoKU2lnbmVkLW9mZi1ieTogUGhpbGlwcGUgUsOpdG9y
bmF6IDxwaGlsaXBwZS5yZXRvcm5hekBlcGZsLmNoPgotLS0KIGFyY2gvYXJtL2JvYXJkcy9teDMx
bW9ib2FyZC9sb3dsZXZlbC5jIHwgICAgNSArKysrLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0
aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2JvYXJkcy9teDMx
bW9ib2FyZC9sb3dsZXZlbC5jIGIvYXJjaC9hcm0vYm9hcmRzL214MzFtb2JvYXJkL2xvd2xldmVs
LmMKaW5kZXggZTlmZmI3NC4uMjI5NGM1YSAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9hcmRzL214
MzFtb2JvYXJkL2xvd2xldmVsLmMKKysrIGIvYXJjaC9hcm0vYm9hcmRzL214MzFtb2JvYXJkL2xv
d2xldmVsLmMKQEAgLTU5LDkgKzU5LDEyIEBAIHN0YXRpYyBub2lubGluZSBfX25vcmV0dXJuIHZv
aWQgbXgzMW1vYm9hcmRfc3RhcnR1cCh2b2lkKQogCXdyaXRlbChJTVhfUExMX1BEKDApIHwgSU1Y
X1BMTF9NRkQoMHgzMykgfAogCQkJSU1YX1BMTF9NRkkoMHhhKSB8IElNWF9QTExfTUZOKDB4MEMp
LAogCQkJTVgzMV9DQ01fQkFTRV9BRERSICsgTVgzMV9DQ01fTVBDVEwpOwotCXdyaXRlbChJTVhf
UExMX1BEKDEpIHwgSU1YX1BMTF9NRkQoMHg0MykgfCBJTVhfUExMX01GSSgxMikgfAorCXdyaXRl
bChJTVhfUExMX1BEKDApIHwgSU1YX1BMTF9NRkQoOSkgfCBJTVhfUExMX01GSSg2KSB8CiAJCQlJ
TVhfUExMX01GTigxKSwgTVgzMV9DQ01fQkFTRV9BRERSICsKIAkJCU1YMzFfQ0NNX1NQQ1RMKTsK
Kwl3cml0ZWwoSU1YX1BMTF9QRCgxKSB8IElNWF9QTExfTUZEKDEyKSB8IElNWF9QTExfTUZJKDkp
IHwKKwkJCUlNWF9QTExfTUZOKDMpLCBNWDMxX0NDTV9CQVNFX0FERFIgKworCQkJTVgzMV9DQ01f
VVBDVEwpOwogCiAJLyoKIAkgKiBDb25maWd1cmUgSU9NVVhDCi0tIAoxLjcuOS41CgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5n
IGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
