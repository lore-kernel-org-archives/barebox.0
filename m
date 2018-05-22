Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x241.google.com ([2607:f8b0:400e:c00::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fLFkS-0005XF-0I
 for barebox@lists.infradead.org; Tue, 22 May 2018 22:27:17 +0000
Received: by mail-pf0-x241.google.com with SMTP id a22-v6so9441024pfn.6
 for <barebox@lists.infradead.org>; Tue, 22 May 2018 15:27:02 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 22 May 2018 15:26:44 -0700
Message-Id: <20180522222644.26425-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] scripts/mkimage: Fix strncpy usage
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

T3JpZ2luYWwgY29kZSBwcm9kdWNlcyB0aGUgZm9sbG93aW5nIHdhcm5pbmcgd2hlbiBjb21waWxl
ZCB3aXRoIEdDQzg6CgogIEhPU1RDQyAgc2NyaXB0cy9ta2ltYWdlCkluIGZ1bmN0aW9uIOKAmGlt
YWdlX3NldF9uYW1l4oCZLAogICAgaW5saW5lZCBmcm9tIOKAmG1haW7igJkgYXQgc2NyaXB0cy9t
a2ltYWdlLmM6NjE0OjI6CnNjcmlwdHMvbWtpbWFnZS5jOjE1MzoyOiB3YXJuaW5nOiDigJhzdHJu
Y3B54oCZIHNwZWNpZmllZCBib3VuZCAzMiBlcXVhbHMgZGVzdGluYXRpb24gc2l6ZSBbLVdzdHJp
bmdvcC10cnVuY2F0aW9uXQogIHN0cm5jcHkoaW1hZ2VfZ2V0X25hbWUoaGRyKSwgbmFtZSwgSUhf
Tk1MRU4pOwogIF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+Cgpy
ZWR1Y2Ugc3BlY2lmaWVkIGJvdW5kIGJ5IG9uZSB0byBtYWtlIHN1cmUgdGhhdCBOVUxMLXRlcm1p
bmF0b3IgaXMKbmV2ZXIgb3ZlcndyaXR0ZW4uCgpTaWduZWQtb2ZmLWJ5OiBBbmRyZXkgU21pcm5v
diA8YW5kcmV3LnNtaXJub3ZAZ21haWwuY29tPgotLS0KIHNjcmlwdHMvbWtpbWFnZS5jIHwgMiAr
LQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0t
Z2l0IGEvc2NyaXB0cy9ta2ltYWdlLmMgYi9zY3JpcHRzL21raW1hZ2UuYwppbmRleCBjNzI2N2Ey
ZDEuLjg5MWQ3YjZkZSAxMDA2NDQKLS0tIGEvc2NyaXB0cy9ta2ltYWdlLmMKKysrIGIvc2NyaXB0
cy9ta2ltYWdlLmMKQEAgLTE1MCw3ICsxNTAsNyBAQCBpbWFnZV9zZXRfaGRyX3U4KGNvbXApOwkJ
LyogaW1hZ2Vfc2V0X2NvbXAgKi8KIAogc3RhdGljIGlubGluZSB2b2lkIGltYWdlX3NldF9uYW1l
KGltYWdlX2hlYWRlcl90ICpoZHIsIGNvbnN0IGNoYXIgKm5hbWUpCiB7Ci0Jc3RybmNweShpbWFn
ZV9nZXRfbmFtZShoZHIpLCBuYW1lLCBJSF9OTUxFTik7CisJc3RybmNweShpbWFnZV9nZXRfbmFt
ZShoZHIpLCBuYW1lLCBJSF9OTUxFTiAtIDEpOwogfQogCiAvKioKLS0gCjIuMTcuMAoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGlu
ZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
