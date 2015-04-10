Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22e.google.com ([2a00:1450:400c:c05::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YgNKy-0002PG-Pq
 for barebox@lists.infradead.org; Fri, 10 Apr 2015 01:02:26 +0000
Received: by widdi4 with SMTP id di4so111253418wid.0
 for <barebox@lists.infradead.org>; Thu, 09 Apr 2015 18:02:02 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri, 10 Apr 2015 03:01:50 +0200
Message-Id: <1428627714-17077-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 0/4] Some fixes for PCI, mvneta, xHCI
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>

QmVmb3JlIGFkZGluZyBzdXBwb3J0IGZvciB0aGUgQXJtYWRhIFhQIGJhc2VkIExlbm92byBpeDQg
TkFTLCBJCnNwbGl0IG9mZiBzb21lIGZpeGVzL2NsZWFudXBzIHRoYXQgSSBzdHVtYmxlZCB1cG9u
LgoKUGF0Y2ggMSBmaXhlcyBQQ0kgZGV2aWNlIHJlZ2lzdHJhdGlvbiBmb3Igbm9uLWJyaWRnZSBk
ZXZpY2VzLgoKUGF0Y2ggMiBmaXhlcyBhbiBvdXRzdGFuZGluZyB0cmFuc21pdCBpc3N1ZSB3aXRo
IG12bmV0YSB0aGF0IHdhcwpyZXBvcnRlZCBieSBVd2UuIEl0IGZpeGVzIG12bmV0YSBvbiBpeDQs
IHNvIEkgZ3Vlc3MgaXQgc2hvdWxkIGFsc28KZml4IGl0IGZvciBoaXMgUk4xMDQuCgpQYXRjaCAz
IHJlbW92ZXMgc29tZSB1bmVjZXNzYXJ5IERNQSBvcHMgdGhhdCB3aGVyZSBpbnRyb2R1Y2VkCmR1
cmluZyBETUEgb3AgY29udmVyc2lvbi4KClBhdGNoIDQgYWRkcyBETUEgb3BzIGZvciB0aGUgZGF0
YSBidWZmZXJzIHVzZWQgaW4geEhDSSBIQ0QgY29kZS4KClNlYmFzdGlhbiBIZXNzZWxiYXJ0aCAo
NCk6CiAgcGNpOiBmaXggZGV2aWNlIHJlZ2lzdHJhdGlvbiBmb3IgZGlyZWN0bHkgYXR0YWNoZWQg
ZGV2aWNlcwogIG5ldDogbXZuZXRhOiBGaXggdHJhbnNtaXQgZXJyb3JzIGR1ZSB0byBkaXJ0eSB0
eGRlc2MKICBuZXQ6IG12bmV0YTogUmVtb3ZlIHVubmVjZXNzYXJ5IERNQSBvcHMKICBVU0I6IHhI
Q0k6IFN5bmMgbm9uLWNvaGVyZW50IERNQSBidWZmZXJzCgogZHJpdmVycy9uZXQvbXZuZXRhLmMg
ICAgICAgIHwgNiArLS0tLS0KIGRyaXZlcnMvcGNpL3BjaS5jICAgICAgICAgICB8IDEgKwogZHJp
dmVycy91c2IvaG9zdC94aGNpLWhjZC5jIHwgNiArKysrKysKIDMgZmlsZXMgY2hhbmdlZCwgOCBp
bnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoKLS0tCkNjOiBiYXJlYm94QGxpc3RzLmluZnJh
ZGVhZC5vcmcKQ2M6IEx1Y2FzIFN0YWNoIDxkZXZAbHlueGV5ZS5kZT4KQ2M6IFV3ZSBLbGVpbmUt
S8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+CkNjOiBFemVxdWllbCBHYXJj
aWEgPGV6ZXF1aWVsLmdhcmNpYUBmcmVlLWVsZWN0cm9ucy5jb20+CkNjOiBUaG9tYXMgUGV0YXp6
b25pIDx0aG9tYXMucGV0YXp6b25pQGZyZWUtZWxlY3Ryb25zLmNvbT4KLS0gCjIuMS4wCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWls
aW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
