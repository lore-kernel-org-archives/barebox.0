Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x236.google.com ([2a00:1450:4010:c03::236])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UFRiQ-0005na-7d
 for barebox@lists.infradead.org; Tue, 12 Mar 2013 16:06:14 +0000
Received: by mail-la0-f54.google.com with SMTP id gw10so1469lab.13
 for <barebox@lists.infradead.org>; Tue, 12 Mar 2013 09:05:52 -0700 (PDT)
MIME-Version: 1.0
From: "Renaud C." <r.cerrato@til-technologies.fr>
Date: Tue, 12 Mar 2013 17:05:11 +0100
Message-ID: <CA+7xNQmARo+pXakUUW=8YqBKF2mq9j-00ybSzQ4r9wCe4rPSyA@mail.gmail.com>
Content-Type: multipart/mixed; boundary=f46d04083877b2af4804d7bc76c1
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
Subject: [PATCH 5/7] gadget: possible null pointer dereference fix
To: barebox <barebox@lists.infradead.org>

--f46d04083877b2af4804d7bc76c1
Content-Type: multipart/alternative; boundary=f46d04083877b2af4504d7bc76bf

--f46d04083877b2af4504d7bc76bf
Content-Type: text/plain; charset=ISO-8859-1

This patch fix a possible null pointer dereference exception because of a
missing null check on cdev->config

--f46d04083877b2af4504d7bc76bf
Content-Type: text/html; charset=ISO-8859-1

<div dir="ltr">This patch fix a possible null pointer dereference exception because of a missing null check on cdev-&gt;config<div><br></div><div><br></div></div>

--f46d04083877b2af4504d7bc76bf--

--f46d04083877b2af4804d7bc76c1
Content-Type: application/octet-stream; 
	name="gadget-null-pointer-dereference-fix.patch"
Content-Disposition: attachment; 
	filename="gadget-null-pointer-dereference-fix.patch"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_he794erk0

RnJvbSAzN2I3ZGM3ZjIyMzJiNTRmOGZjOGE1NTkwMjQ1YWYzN2ZlN2Q4Mjk5IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBDZXJyYXRvIFJlbmF1ZCA8ci5jZXJyYXRvQHRpbC10ZWNobm9s
b2dpZXMuZnI+CkRhdGU6IFRodSwgMjggRmViIDIwMTMgMTU6MDQ6NTMgKzAxMDAKU3ViamVjdDog
W1BBVENIIDMvM10gbnVsbCBwb2ludGVyIGRlcmVmZXJlbmNlIGZpeAoKLS0tCiBkcml2ZXJzL3Vz
Yi9nYWRnZXQvY29tcG9zaXRlLmMgfCAgIDIzICsrKysrKysrKysrKystLS0tLS0tLS0tCiAxIGZp
bGVzIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvdXNiL2dhZGdldC9jb21wb3NpdGUuYyBiL2RyaXZlcnMvdXNiL2dhZGdldC9j
b21wb3NpdGUuYwppbmRleCA5YWYxMTVlLi4xZjZjNWIyIDEwMDY0NAotLS0gYS9kcml2ZXJzL3Vz
Yi9nYWRnZXQvY29tcG9zaXRlLmMKKysrIGIvZHJpdmVycy91c2IvZ2FkZ2V0L2NvbXBvc2l0ZS5j
CkBAIC03NzcsMTggKzc3NywyMSBAQCB1bmtub3duOgogCQkgKiByZWNpcGllbnRzIChlbmRwb2lu
dCwgb3RoZXIsIFdVU0IsIC4uLikgdG8gdGhlIGN1cnJlbnQKIAkJICogY29uZmlndXJhdGlvbiBj
b2RlLgogCQkgKi8KLQkJZiA9IGNkZXYtPmNvbmZpZy0+aW50ZXJmYWNlW2ludGZdOwotCQlpZiAo
ZiAmJiBmLT5zZXR1cCkKLQkJCXZhbHVlID0gZi0+c2V0dXAoZiwgY3RybCk7Ci0JCWVsc2UKLQkJ
CWYgPSBOVUxMOworCQlpZihjZGV2LT5jb25maWcpIHsKIAotCQlpZiAodmFsdWUgPCAwICYmICFm
KSB7Ci0JCQlzdHJ1Y3QgdXNiX2NvbmZpZ3VyYXRpb24JKmM7CisJCQlmID0gY2Rldi0+Y29uZmln
LT5pbnRlcmZhY2VbaW50Zl07CisJCQlpZiAoZiAmJiBmLT5zZXR1cCkKKwkJCQl2YWx1ZSA9IGYt
PnNldHVwKGYsIGN0cmwpOworCQkJZWxzZQorCQkJCWYgPSBOVUxMOwogCi0JCQljID0gY2Rldi0+
Y29uZmlnOwotCQkJaWYgKGMgJiYgYy0+c2V0dXApCi0JCQkJdmFsdWUgPSBjLT5zZXR1cChjLCBj
dHJsKTsKKwkJCWlmICh2YWx1ZSA8IDAgJiYgIWYpIHsKKwkJCQlzdHJ1Y3QgdXNiX2NvbmZpZ3Vy
YXRpb24JKmM7CisKKwkJCQljID0gY2Rldi0+Y29uZmlnOworCQkJCWlmIChjICYmIGMtPnNldHVw
KQorCQkJCQl2YWx1ZSA9IGMtPnNldHVwKGMsIGN0cmwpOworCQkJfQogCQl9CiAKIAkJZ290byBk
b25lOwotLSAKMS43LjIuNQoK
--f46d04083877b2af4804d7bc76c1
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--f46d04083877b2af4804d7bc76c1--
