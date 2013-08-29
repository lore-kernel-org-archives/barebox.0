Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.tricorecenter.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VF1kJ-0002GD-6G
 for barebox@lists.infradead.org; Thu, 29 Aug 2013 12:54:44 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 713EDBF0EB
 for <barebox@lists.infradead.org>; Thu, 29 Aug 2013 14:45:32 +0200 (CEST)
From: =?UTF-8?q?Teresa=20G=C3=A1mez?= <t.gamez@phytec.de>
Date: Thu, 29 Aug 2013 14:54:15 +0200
Message-Id: <1377780855-23634-1-git-send-email-t.gamez@phytec.de>
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
Subject: [PATCH for next] PCM051: Fixup DDRPLL
To: barebox@lists.infradead.org

VGhlIGNvcnJlY3QgRERSUExMIGZvciBQQ00wNTEgaXMgMzAzTUh6LgoKU2lnbmVkLW9mZi1ieTog
VGVyZXNhIEfDoW1leiA8dC5nYW1lekBwaHl0ZWMuZGU+Ci0tLQogQXMgdGhlIGJvYXJkIHJ1bnMg
YWxzbyBmaW5lIHdpdGggMjY2TUh6LiBUaGVyZQogaXMgbm8gbmVlZCB0byBmaXggaXQgaW4gbWFz
dGVyLgoKIGFyY2gvYXJtL2JvYXJkcy9wY20wNTEvbG93bGV2ZWwuYyAgICAgICAgICAgICAgfCAg
ICAyICstCiBhcmNoL2FybS9tYWNoLW9tYXAvaW5jbHVkZS9tYWNoL2FtMzN4eC1jbG9jay5oIHwg
ICAgMSArCiAyIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib2FyZHMvcGNtMDUxL2xvd2xldmVsLmMgYi9hcmNoL2Fy
bS9ib2FyZHMvcGNtMDUxL2xvd2xldmVsLmMKaW5kZXggMDc4ZTgzYi4uNDg1NzhjZCAxMDA2NDQK
LS0tIGEvYXJjaC9hcm0vYm9hcmRzL3BjbTA1MS9sb3dsZXZlbC5jCisrKyBiL2FyY2gvYXJtL2Jv
YXJkcy9wY20wNTEvbG93bGV2ZWwuYwpAQCAtNjgsNyArNjgsNyBAQCBzdGF0aWMgaW50IHBjbTA1
MV9ib2FyZF9pbml0KHZvaWQpCiAJaWYgKHJ1bm5pbmdfaW5fc2RyYW0oKSkKIAkJcmV0dXJuIDA7
CiAKLQlwbGxfaW5pdChNUFVQTExfTV82MDAsIDI1LCBERFJQTExfTV8yNjYpOworCXBsbF9pbml0
KE1QVVBMTF9NXzYwMCwgMjUsIEREUlBMTF9NXzMwMyk7CiAKIAlhbTMzNXhfc2RyYW1faW5pdCgw
eDE4QiwgJk1UNDFKMjU2TThIWDE1RV8yeDI1Nk04X2NtZCwKIAkJCSZNVDQxSjI1Nk04SFgxNUVf
MngyNTZNOF9yZWdzLApkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vbWFjaC1vbWFwL2luY2x1ZGUvbWFj
aC9hbTMzeHgtY2xvY2suaCBiL2FyY2gvYXJtL21hY2gtb21hcC9pbmNsdWRlL21hY2gvYW0zM3h4
LWNsb2NrLmgKaW5kZXggYjNjNzUxOS4uZWNkOTBiMiAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vbWFj
aC1vbWFwL2luY2x1ZGUvbWFjaC9hbTMzeHgtY2xvY2suaAorKysgYi9hcmNoL2FybS9tYWNoLW9t
YXAvaW5jbHVkZS9tYWNoL2FtMzN4eC1jbG9jay5oCkBAIC00OSw2ICs0OSw3IEBACiAvKiBERFIg
RnJlcSBpcyAyNjYgTUhaIGZvciBub3cqLwogLyogU2V0IEZkbGwgPSA0MDAgTUhaICwgRmRsbCA9
IE0gKiAyICogQ0xLSU5QLyBOICsgMTsgY2xrb3V0ID0gRmRsbCAvKDIgKiBNMikgKi8KICNkZWZp
bmUgRERSUExMX01fMjY2CTI2NgorI2RlZmluZSBERFJQTExfTV8zMDMJMzAzCiAjZGVmaW5lIERE
UlBMTF9NXzQwMAk0MDAKICNkZWZpbmUgRERSUExMX04JKE9TQyAtIDEpCiAjZGVmaW5lIEREUlBM
TF9NMgkxCi0tIAoxLjcuMC40CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
