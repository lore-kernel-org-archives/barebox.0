Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x236.google.com ([2a00:1450:4010:c03::236])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UFRXG-0003bf-Vr
 for barebox@lists.infradead.org; Tue, 12 Mar 2013 15:54:43 +0000
Received: by mail-la0-f54.google.com with SMTP id gw10so5429293lab.27
 for <barebox@lists.infradead.org>; Tue, 12 Mar 2013 08:54:40 -0700 (PDT)
MIME-Version: 1.0
From: "Renaud C." <r.cerrato@til-technologies.fr>
Date: Tue, 12 Mar 2013 16:54:00 +0100
Message-ID: <CA+7xNQmZDdJohjR=JLwiBnXFAE4U+JMptX9LXwuUzSTr1B+JAQ@mail.gmail.com>
Content-Type: multipart/mixed; boundary=001a11c366b2a9ef8004d7bc4eb6
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
Subject: [PATCH 3/7] AT91 UDC startup fix
To: barebox@lists.infradead.org

--001a11c366b2a9ef8004d7bc4eb6
Content-Type: multipart/alternative; boundary=001a11c366b2a9ef7c04d7bc4eb4

--001a11c366b2a9ef7c04d7bc4eb4
Content-Type: text/plain; charset=ISO-8859-1

I noticed that depending on boot timings, the USB gadget weren't detected
at all by hosts. After few hours of debugging and using the at91clk output,
I found that the UDP clock wasn't enabled from time to time.

This patch fix the startup of UDC by adding a check into the
at91_update_vbus().

--001a11c366b2a9ef7c04d7bc4eb4
Content-Type: text/html; charset=ISO-8859-1

<div dir="ltr">I noticed that depending on boot timings, the USB gadget weren&#39;t detected at all by hosts. After few hours of debugging and using the at91clk output, I found that the UDP clock wasn&#39;t enabled from time to time.<div>

<br></div><div>This patch fix the startup of UDC by adding a check into the at91_update_vbus().<br><div><br></div><div><br></div></div></div>

--001a11c366b2a9ef7c04d7bc4eb4--

--001a11c366b2a9ef8004d7bc4eb6
Content-Type: application/octet-stream; 
	name="at91udc-initial-vbus-detection.patch"
Content-Disposition: attachment; 
	filename="at91udc-initial-vbus-detection.patch"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_he78hv7p0

RnJvbSAwY2Q3NDVkNDUxMTA5NTIyODkxMTk0Yjk1NDk4MjcxMGM2YmQ3MzZkIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBDZXJyYXRvIFJlbmF1ZCA8ci5jZXJyYXRvQHRpbC10ZWNobm9s
b2dpZXMuZnI+CkRhdGU6IFRodSwgNyBNYXIgMjAxMyAwOTowMjo1NSArMDEwMApTdWJqZWN0OiBb
UEFUQ0ggNC80XSBjb3JyZWN0ZWQgaW5pdGlhbCB2YnVzIGRldGVjdGlvbgoKLS0tCiBkcml2ZXJz
L3VzYi9nYWRnZXQvYXQ5MV91ZGMuYyB8ICAgMTAgKysrKysrKystLQogMSBmaWxlcyBjaGFuZ2Vk
LCA4IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy91
c2IvZ2FkZ2V0L2F0OTFfdWRjLmMgYi9kcml2ZXJzL3VzYi9nYWRnZXQvYXQ5MV91ZGMuYwppbmRl
eCAzODk5ZGIyLi4wNjU0MDM4IDEwMDY0NAotLS0gYS9kcml2ZXJzL3VzYi9nYWRnZXQvYXQ5MV91
ZGMuYworKysgYi9kcml2ZXJzL3VzYi9nYWRnZXQvYXQ5MV91ZGMuYwpAQCAtMTMyNyw2ICsxMzI3
LDEyIEBAIHN0YXRpYyB2b2lkIGF0OTFfdXBkYXRlX3ZidXMoc3RydWN0IGF0OTFfdWRjICp1ZGMs
IHUzMiB2YWx1ZSkKIAkJZGV2X3NldF9wYXJhbSh1ZGMtPmRldiwgInZidXMiLCAiMCIpOwogCiAJ
dWRjLT5ncGlvX3ZidXNfdmFsID0gdmFsdWU7CisJdWRjLT52YnVzID0gdmFsdWUgIT0gMDsKKwor
CWlmKHVkYy0+ZHJpdmVyKQorCQlwdWxsdXAodWRjLCB1ZGMtPnZidXMpOworCWVsc2UKKwkJcHVs
bHVwKHVkYywgMCk7CiB9CiAKIGludCB1c2JfZ2FkZ2V0X3BvbGwodm9pZCkKQEAgLTE1MDgsNyAr
MTUxNCw3IEBAIHN0YXRpYyBpbnQgX19pbml0IGF0OTF1ZGNfcHJvYmUoc3RydWN0IGRldmljZV9k
ICpkZXYpCiAJCSAqIEdldCB0aGUgaW5pdGlhbCBzdGF0ZSBvZiBWQlVTIC0gd2UgY2Fubm90IGV4
cGVjdAogCQkgKiBhIHBlbmRpbmcgaW50ZXJydXB0LgogCQkgKi8KLQkJdWRjLT52YnVzID0gZ3Bp
b19nZXRfdmFsdWUodWRjLT5ib2FyZC52YnVzX3Bpbik7CisJCXVkYy0+dmJ1cyA9IGdwaW9fZ2V0
X3ZhbHVlKHVkYy0+Ym9hcmQudmJ1c19waW4pIF4gdWRjLT5ib2FyZC52YnVzX2FjdGl2ZV9sb3c7
CiAJCURCRyh1ZGMsICJWQlVTIGRldGVjdGlvbjogaG9zdDolcyBcbiIsCiAJCQl1ZGMtPnZidXMg
PyAicHJlc2VudCI6ImFic2VudCIpOwogCX0gZWxzZSB7CkBAIC0xNTE3LDcgKzE1MjMsNyBAQCBz
dGF0aWMgaW50IF9faW5pdCBhdDkxdWRjX3Byb2JlKHN0cnVjdCBkZXZpY2VfZCAqZGV2KQogCX0K
IAogCWRldl9hZGRfcGFyYW0oZGV2LCAidmJ1cyIsIE5VTEwsIE5VTEwsIDApOwotCWRldl9zZXRf
cGFyYW0oZGV2LCAidmJ1cyIsICIwIik7CisJZGV2X3NldF9wYXJhbShkZXYsICJ2YnVzIiwgdWRj
LT52YnVzID8gIjEiIDogIjAiKTsKIAogCXBvbGxlcl9yZWdpc3RlcigmcG9sbGVyKTsKIAotLSAK
MS43LjIuNQoK
--001a11c366b2a9ef8004d7bc4eb6
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--001a11c366b2a9ef8004d7bc4eb6--
