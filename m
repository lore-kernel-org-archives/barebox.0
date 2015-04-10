Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x234.google.com ([2a00:1450:400c:c05::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YgNKy-0002PI-SI
 for barebox@lists.infradead.org; Fri, 10 Apr 2015 01:02:26 +0000
Received: by wiaa2 with SMTP id a2so8456461wia.0
 for <barebox@lists.infradead.org>; Thu, 09 Apr 2015 18:02:02 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri, 10 Apr 2015 03:01:52 +0200
Message-Id: <1428627714-17077-3-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1428627714-17077-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1428627714-17077-1-git-send-email-sebastian.hesselbarth@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/4] net: mvneta: Fix transmit errors due to dirty txdesc
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>

TWFydmVsbCBOZXRhJ3MgdHJhbnNtaXQgZGVzY3JpcHRvciAodHhkZXNjKSBpcyBhbGxvY2F0ZWQg
YnkgZG1hX2FsbG9jX2NvaGVyZW50KCkKYnV0IG5vdCB6ZXJvZWQgYmVmb3JlIGNhbGxpbmcgbXZu
ZXRhX3NlbmQgdGhlIGZpcnN0IHRpbWUuIFRoaXMgY2FuIGNhdXNlIHNwdXJpb3VzCnRyYW5zbWl0
IGVycm9ycyBkdWUgdG8gaW1wcm9wZXJseSBzZXQgYml0cyBpbiB0eGRlc2MncyBjbWRfc3RzIGZp
ZWxkLgoKRml4IGluaXRpYWwgdHJhbnNtaXQgZXJyb3JzIGJ5IGFsd2F5cyB3cml0aW5nIHdob2xl
IGNtZF9zdHMgZmllbGQgaW5zdGVhZCBvZiBPUmluZwp0aGUgYml0cy4KClNpZ25lZC1vZmYtYnk6
IFNlYmFzdGlhbiBIZXNzZWxiYXJ0aCA8c2ViYXN0aWFuLmhlc3NlbGJhcnRoQGdtYWlsLmNvbT4K
LS0tCkNjOiBiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKQ2M6IFV3ZSBLbGVpbmUtS8O2bmln
IDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+CkNjOiBFemVxdWllbCBHYXJjaWEgPGV6
ZXF1aWVsLmdhcmNpYUBmcmVlLWVsZWN0cm9ucy5jb20+CkNjOiBUaG9tYXMgUGV0YXp6b25pIDx0
aG9tYXMucGV0YXp6b25pQGZyZWUtZWxlY3Ryb25zLmNvbT4KLS0tCiBkcml2ZXJzL25ldC9tdm5l
dGEuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L212bmV0YS5jIGIvZHJpdmVycy9uZXQvbXZuZXRh
LmMKaW5kZXggZDRjOGEyYzY4ZGQyLi4zYmUyZWM1MzFmYjEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
bmV0L212bmV0YS5jCisrKyBiL2RyaXZlcnMvbmV0L212bmV0YS5jCkBAIC0zOTYsNyArMzk2LDcg
QEAgc3RhdGljIGludCBtdm5ldGFfc2VuZChzdHJ1Y3QgZXRoX2RldmljZSAqZWRldiwgdm9pZCAq
ZGF0YSwgaW50IGxlbikKIAlkbWFfc3luY19zaW5nbGVfZm9yX2RldmljZSgodW5zaWduZWQgbG9u
ZylkYXRhLCBsZW4sIERNQV9UT19ERVZJQ0UpOwogCiAJLyogRmlsbCB0aGUgVHggZGVzY3JpcHRv
ciAqLwotCXR4ZGVzYy0+Y21kX3N0cyB8PSBNVk5FVEFfVFhfTDRfQ1NVTV9OT1QgfCBNVk5FVEFf
VFhEX0ZMWl9ERVNDOworCXR4ZGVzYy0+Y21kX3N0cyA9IE1WTkVUQV9UWF9MNF9DU1VNX05PVCB8
IE1WTkVUQV9UWERfRkxaX0RFU0M7CiAJdHhkZXNjLT5idWZfcHRyID0gKHUzMilkYXRhOwogCXR4
ZGVzYy0+Ynl0ZV9jbnQgPSBsZW47CiAKLS0gCjIuMS4wCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vYmFyZWJveAo=
