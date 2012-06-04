Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f171.google.com ([209.85.212.171])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sbe4q-0007Ak-3f
 for barebox@lists.infradead.org; Mon, 04 Jun 2012 20:40:36 +0000
Received: by wibhm14 with SMTP id hm14so2508438wib.0
 for <barebox@lists.infradead.org>; Mon, 04 Jun 2012 13:40:32 -0700 (PDT)
From: =?UTF-8?q?Dirk=20H=C3=B6rner?= <dirker@gmail.com>
Date: Mon,  4 Jun 2012 22:40:13 +0200
Message-Id: <1338842419-27037-1-git-send-email-dirker@gmail.com>
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
Subject: [PATCH 0/6] Support cross-compiling on Mac OS X
To: barebox@lists.infradead.org

SGkgYWxsLAoKdGhpcyBwYXRjaCBzZXJpZXMgYWRkcyBzdXBwb3J0IHRvIGNyb3NzLWNvbXBpbGUg
YmFyZWJveCBvbiBNYWMgT1MgWC4gUGxlYXNlCnJldmlldyBhcyBJIGFtIHF1aXRlIHVuc3VyZSBh
cyB0byB3aGV0aGVyIEkgaGF2ZSBmb3VuZCB0aGUgYmVzdCBzb2x1dGlvbnMKdG8gc29tZSBvZiB0
aGUgcHJvYmxlbXMsIGVzcGVjaWFsbHkgcGF0Y2ggdHdvIGFuZCB0aHJlZS4KClRoZSBmaXJzdCBw
YXRjaCB3YXMgY2hlcnJ5LXBpY2tlZCBmcm9tIExpbnV4LgoKSSB0ZXN0ZWQgdGhpcyBzZXJpZXMg
b24gTWF4IE9TIFggMTAuNi44IHVzaW5nIHRoZSB5YWdhcnRvIEFSTSB0b29sY2hhaW5bMV0uCgpD
aWFvLApEaXJrCgpbMV06IGh0dHA6Ly93d3cueWFnYXJ0by5kZS8KCkRpcmsgSMO2cm5lciAoNSk6
CiAgbWFrZTogdXNlIHdjIC1jIGluc3RlYWQgb2Ygc3RhdCAtYyVzIHRvIGdldCBmaWxlIHNpemVz
CiAgbWFrZTogY2hlY2sgZm9yIGdyZWFkbGluayBmaXJzdCwgZmFsbCBiYWNrIHRvIHJlYWRsaW5r
CiAgaG9zdGNjIHRvb2xzOiBpbmNsdWRlICJjb21waWxlci5oIiwgZml4IGluY2x1ZGVkIGhlYWRl
cnMKICBzY3JpcHRzL2NvbXBpbGVyLmg6IGZpeHVwIGVuZGlhbmVzcyBkZWZpbmVzIG9uIE9TIFgK
ICBzY3JpcHRzL2dlbmVudjogYWx3YXlzIHBhc3MgdGVtcGxhdGUgdG8gbWt0ZW1wCgpTYW0gUmF2
bmJvcmcgKDEpOgogIGtidWlsZDogVXNlIEVsZm5uX0hhbGYgYXMgcmVwbGFjZW1lbnQgZm9yIEVs
Zm5uX1NlY3Rpb24KCiBNYWtlZmlsZSAgICAgICAgICAgICAgfCAgICAyICstCiBjb21tb24vTWFr
ZWZpbGUgICAgICAgfCAgICA2ICsrKystLQogaW5jbHVkZS9lbnZmcy5oICAgICAgIHwgICAgMiAr
KwogaW5jbHVkZS9pbWFnZS5oICAgICAgIHwgICAgMiArLQogc2NyaXB0cy9NYWtlZmlsZS5saWIg
IHwgICAgMiArLQogc2NyaXB0cy9iYXJlYm94ZW52LmMgIHwgICAgMiArKwogc2NyaXB0cy9jb21w
aWxlci5oICAgIHwgICAgMyArKysKIHNjcmlwdHMvZ2VuZW52ICAgICAgICB8ICAgIDIgKy0KIHNj
cmlwdHMvbW9kL21vZHBvc3QuaCB8ICAgIDQgKystLQogOSBmaWxlcyBjaGFuZ2VkLCAxNyBpbnNl
cnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQoKLS0gCjEuNy4xMC4zCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFy
ZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vYmFyZWJveAo=
