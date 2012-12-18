Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TkxvF-0000GD-DC
 for barebox@lists.infradead.org; Tue, 18 Dec 2012 14:13:30 +0000
From: =?UTF-8?q?Teresa=20G=C3=A1mez?= <t.gamez@phytec.de>
Date: Tue, 18 Dec 2012 15:13:21 +0100
Message-Id: <1355840005-11408-4-git-send-email-t.gamez@phytec.de>
In-Reply-To: <1355840005-11408-1-git-send-email-t.gamez@phytec.de>
References: <1355840005-11408-1-git-send-email-t.gamez@phytec.de>
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
Subject: [PATCH 3/7] ARM AM33XX: Add MMC Bases
To: barebox@lists.infradead.org

ClNpZ25lZC1vZmYtYnk6IFRlcmVzYSBHw6FtZXogPHQuZ2FtZXpAcGh5dGVjLmRlPgotLS0KIGFy
Y2gvYXJtL21hY2gtb21hcC9pbmNsdWRlL21hY2gvYW0zM3h4LXNpbGljb24uaCB8ICAgIDIgKysK
IDEgZmlsZXMgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAwIGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2FyY2gvYXJtL21hY2gtb21hcC9pbmNsdWRlL21hY2gvYW0zM3h4LXNpbGljb24uaCBi
L2FyY2gvYXJtL21hY2gtb21hcC9pbmNsdWRlL21hY2gvYW0zM3h4LXNpbGljb24uaAppbmRleCBl
YTQ0ZDI1Li40YmZjZWJkIDEwMDY0NAotLS0gYS9hcmNoL2FybS9tYWNoLW9tYXAvaW5jbHVkZS9t
YWNoL2FtMzN4eC1zaWxpY29uLmgKKysrIGIvYXJjaC9hcm0vbWFjaC1vbWFwL2luY2x1ZGUvbWFj
aC9hbTMzeHgtc2lsaWNvbi5oCkBAIC0zOCw2ICszOCw4IEBACiAKIC8qIE1NQyAqLwogI2RlZmlu
ZSBBTTMzWFhfTU1DSFMwX0JBU0UJCShBTTMzWFhfTDRfUEVSX0JBU0UgKyAweDYwMDAwKQorI2Rl
ZmluZSBBTTMzWFhfTU1DMV9CQVNFCQkoQU0zM1hYX0w0X1BFUl9CQVNFICsgMHgxRDgwMDApCisj
ZGVmaW5lIEFNMzNYWF9NTUNIUzJfQkFTRQkJMHg0NzgxMDAwMAogCiAvKiBEVE1UaW1lcjAgKi8K
ICNkZWZpbmUgQU0zM1hYX0RNVElNRVIwX0JBU0UJCShBTTMzWFhfTDRfV0tVUF9CQVNFICsgMHgy
MDUwMDApCi0tIAoxLjcuMC40CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
