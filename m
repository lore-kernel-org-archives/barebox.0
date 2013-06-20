Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.rapiddevelopmentkit.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpeKH-0005py-LW
 for barebox@lists.infradead.org; Thu, 20 Jun 2013 12:50:58 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 5A5D6BF0F7
 for <barebox@lists.infradead.org>; Thu, 20 Jun 2013 14:45:45 +0200 (CEST)
From: =?UTF-8?q?Teresa=20G=C3=A1mez?= <t.gamez@phytec.de>
Date: Thu, 20 Jun 2013 14:50:27 +0200
Message-Id: <1371732630-27966-1-git-send-email-t.gamez@phytec.de>
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
Subject: [PATCH 0/3] I2C support for AM33xx
To: barebox@lists.infradead.org

VGhpcyBzZXJpZXMsIGRvZXMgc29tZSBjbGVhbnVwIGluIHRoZSBpMmMtb21hcApkcml2ZXIgYW5k
IGFkZHMgaTJjIHN1cHBvcnQgZm9yIEFNMzN4eC4KClRoaXMgc2hvdWxkIGJlIGFwcGxpZWQgb24g
dG9wIG9mIHRoZSAKCWNvbW1pdCA5NzM4MzYxZTMyZjkwOGU0MzNjYjRhNWE0MmFkYTEzYjgzZmVk
ZmNiCgoJQVJNOiBBTTMzeHg6IHBjbTA1MTogQWRkIG5ldHdvcmsgc3VwcG9ydApwYXRjaC4KClRl
cmVzYSBHw6FtZXogKDMpOgogIGkyYy1vbWFwOiBjbGVhbnVwIGNwdV9pcyBmdW5jdGlvbnMKICBB
Uk06IEFNMzN4eDogQWRkIGkyYyBzdXBwb3J0IGZvciBBTTMzeHgKICBBUk06IE9NQVA6IHBjbTA1
MTogQWRkIGkyYzAgYW5kIGF0MjQgZWVwcm9tIHN1cHBvcnQKCiBhcmNoL2FybS9ib2FyZHMvcGNt
MDUxL2JvYXJkLmMgICAgICAgICAgICAgICAgICAgfCAgIDE4ICsrKwogYXJjaC9hcm0vY29uZmln
cy9wY20wNTFfZGVmY29uZmlnICAgICAgICAgICAgICAgIHwgICAgNCArCiBhcmNoL2FybS9tYWNo
LW9tYXAvaW5jbHVkZS9tYWNoL2FtMzN4eC1kZXZpY2VzLmggfCAgIDE1ICsrCiBhcmNoL2FybS9t
YWNoLW9tYXAvaW5jbHVkZS9tYWNoL2FtMzN4eC1zaWxpY29uLmggfCAgICA1ICsKIGFyY2gvYXJt
L21hY2gtb21hcC9pbmNsdWRlL21hY2gvZ2VuZXJpYy5oICAgICAgICB8ICAgIDYgKwogZHJpdmVy
cy9pMmMvYnVzc2VzL2kyYy1vbWFwLmMgICAgICAgICAgICAgICAgICAgIHwgIDE2OSArKysrKysr
Ky0tLS0tLS0tLS0tLS0tCiA2IGZpbGVzIGNoYW5nZWQsIDExMiBpbnNlcnRpb25zKCspLCAxMDUg
ZGVsZXRpb25zKC0pCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
