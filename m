Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22e.google.com ([2a00:1450:4010:c03::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UFRgY-0005Iu-AB
 for barebox@lists.infradead.org; Tue, 12 Mar 2013 16:04:19 +0000
Received: by mail-la0-f46.google.com with SMTP id fq12so5425118lab.33
 for <barebox@lists.infradead.org>; Tue, 12 Mar 2013 09:03:55 -0700 (PDT)
MIME-Version: 1.0
From: "Renaud C." <r.cerrato@til-technologies.fr>
Date: Tue, 12 Mar 2013 17:03:15 +0100
Message-ID: <CA+7xNQ=XbCFAFrr1z+4rpDBirNHv7w_r+RZwGk-0x=G7Y=TBMA@mail.gmail.com>
Content-Type: multipart/mixed; boundary=f46d04083f2dc546c804d7bc6f3e
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/7] AT91 UDC, fix recursive poll()
To: barebox <barebox@lists.infradead.org>

--f46d04083f2dc546c804d7bc6f3e
Content-Type: multipart/alternative; boundary=f46d04083f2dc546c404d7bc6f3c

--f46d04083f2dc546c404d7bc6f3c
Content-Type: text/plain; charset=ISO-8859-1

I noticed some weird behavior using DFU gadget on AT91SAM9260 which worked
1 of 10 times. The bug was due to the usb_gadget_poll() being called while
the previous call was still in progress : some USB calls may takes a lot of
time (ex : DFU erase-then-write), resulting in the poller to be triggered
again while still in the poll() function.

This patch adds a poll lock to the AT91 UDC driver.

--f46d04083f2dc546c404d7bc6f3c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I noticed some weird behavior using DFU gadget on AT91SAM9=
260 which worked 1 of 10 times. The bug was due to the usb_gadget_poll() be=
ing called while the previous call was still in progress : some USB calls m=
ay takes a lot of time (ex : DFU erase-then-write), resulting in the poller=
 to be triggered again while still in the poll() function.<div>

<br></div><div>This patch adds a poll lock to the AT91 UDC driver.</div></d=
iv>

--f46d04083f2dc546c404d7bc6f3c--

--f46d04083f2dc546c804d7bc6f3e
Content-Type: application/octet-stream; 
	name="at91udc-added-missing-lock-for-poll.patch"
Content-Disposition: attachment; 
	filename="at91udc-added-missing-lock-for-poll.patch"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_he78sgxs0

RnJvbSBjOWU3M2NiYjcwNGY4ZTRlM2MxM2E3MTI1ODdmMGI0ZmJiZGZjYWM3IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBDZXJyYXRvIFJlbmF1ZCA8ci5jZXJyYXRvQHRpbC10ZWNobm9s
b2dpZXMuZnI+CkRhdGU6IE1vbiwgMTEgTWFyIDIwMTMgMTE6MDY6MDYgKzAxMDAKU3ViamVjdDog
W1BBVENIXSBhZGRlZCBtaXNzaW5nIGxvY2sgZm9yIHBvbGwKCi0tLQogZHJpdmVycy91c2IvZ2Fk
Z2V0L2F0OTFfdWRjLmMgfCAgIDE0ICsrKysrKysrLS0tLS0tCiBkcml2ZXJzL3VzYi9nYWRnZXQv
YXQ5MV91ZGMuaCB8ICAgIDEgKwogMiBmaWxlcyBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDYg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy91c2IvZ2FkZ2V0L2F0OTFfdWRjLmMg
Yi9kcml2ZXJzL3VzYi9nYWRnZXQvYXQ5MV91ZGMuYwppbmRleCAwNjU0MDM4Li44YWU5MTE5IDEw
MDY0NAotLS0gYS9kcml2ZXJzL3VzYi9nYWRnZXQvYXQ5MV91ZGMuYworKysgYi9kcml2ZXJzL3Vz
Yi9nYWRnZXQvYXQ5MV91ZGMuYwpAQCAtMTM0MCwyMiArMTM0MCwyNCBAQCBpbnQgdXNiX2dhZGdl
dF9wb2xsKHZvaWQpCiAJc3RydWN0IGF0OTFfdWRjCSp1ZGMgPSAmY29udHJvbGxlcjsKIAl1MzIg
dmFsdWU7CiAKLQlpZiAoIXVkYy0+dWRwX2Jhc2VhZGRyKQorCWlmICghdWRjLT51ZHBfYmFzZWFk
ZHIgfHwgdWRjLT5wb2xsX2xvY2spCiAJCXJldHVybiAwOwogCisJdWRjLT5wb2xsX2xvY2sgPSAx
OworCiAJdmFsdWUgPSBncGlvX2dldF92YWx1ZSh1ZGMtPmJvYXJkLnZidXNfcGluKTsKIAl2YWx1
ZSBePSB1ZGMtPmJvYXJkLnZidXNfYWN0aXZlX2xvdzsKLQotCWlmICghdmFsdWUpIHsKLQkJYXQ5
MV91cGRhdGVfdmJ1cyh1ZGMsIHZhbHVlKTsKLQkJcmV0dXJuIDA7Ci0JfQogCWF0OTFfdXBkYXRl
X3ZidXModWRjLCB2YWx1ZSk7CiAKKwlpZiAoIXZhbHVlKQorCQlnb3RvIGV4aXQ7CisKIAl2YWx1
ZSA9IGF0OTFfdWRwX3JlYWQodWRjLCBBVDkxX1VEUF9JU1IpICYgKH4oQVQ5MV9VRFBfU09GSU5U
KSk7CiAJaWYgKHZhbHVlKQogCQlhdDkxX3VkY19pcnEodWRjKTsKIAorZXhpdDoKKwl1ZGMtPnBv
bGxfbG9jayA9IDA7CiAJcmV0dXJuIHZhbHVlOwogfQogCmRpZmYgLS1naXQgYS9kcml2ZXJzL3Vz
Yi9nYWRnZXQvYXQ5MV91ZGMuaCBiL2RyaXZlcnMvdXNiL2dhZGdldC9hdDkxX3VkYy5oCmluZGV4
IGU1OTJjYzUuLjUxMTQ1YTkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvdXNiL2dhZGdldC9hdDkxX3Vk
Yy5oCisrKyBiL2RyaXZlcnMvdXNiL2dhZGdldC9hdDkxX3VkYy5oCkBAIC0xMjcsNiArMTI3LDcg
QEAgc3RydWN0IGF0OTFfdWRjIHsKIAl1bnNpZ25lZAkJCXdhaXRfZm9yX2NvbmZpZ19hY2s6MTsK
IAl1bnNpZ25lZAkJCXNlbGZwb3dlcmVkOjE7CiAJdW5zaWduZWQJCQlhY3RpdmVfc3VzcGVuZDox
OworCXVuc2lnbmVkCQkJcG9sbF9sb2NrOjE7CiAJdTgJCQkJYWRkcjsKIAl1MzIJCQkJZ3Bpb192
YnVzX3ZhbDsKIAlzdHJ1Y3QgYXQ5MV91ZGNfZGF0YQkJYm9hcmQ7Ci0tIAoxLjcuMi41Cgo=
--f46d04083f2dc546c804d7bc6f3e
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--f46d04083f2dc546c804d7bc6f3e--
