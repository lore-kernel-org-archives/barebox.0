Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b6CTR-0004xy-5e
 for barebox@lists.infradead.org; Fri, 27 May 2016 07:46:28 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 614F4A00B16
 for <barebox@lists.infradead.org>; Fri, 27 May 2016 09:46:39 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Fri, 27 May 2016 09:44:16 +0200
Message-Id: <1464335095-35180-24-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1464335095-35180-1-git-send-email-t.remmet@phytec.de>
References: <1464335095-35180-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH v2 23/62] UBI: Fastmap: Fix memory leaks while closing the WL
 sub-system
To: barebox@lists.infradead.org

RnJvbTogUmljaGFyZCBXZWluYmVyZ2VyIDxyaWNoYXJkQG5vZC5hdD4KCkFkZCBhIHViaV9mYXN0
bWFwX2Nsb3NlKCkgdG8gZnJlZSBhbGwgcmVzb3VyY2VzIHVzZWQgYnkgZmFzdG1hcAphdCBXTCBz
aHV0ZG93bi4KClNpZ25lZC1vZmYtYnk6IFJpY2hhcmQgV2VpbmJlcmdlciA8cmljaGFyZEBub2Qu
YXQ+ClRlc3RlZC1ieTogR3VpZG8gTWFydMOtbmV6IDxndWlkb0B2YW5ndWFyZGlhc3VyLmNvbS5h
cj4KUmV2aWV3ZWQtYnk6IEd1aWRvIE1hcnTDrW5leiA8Z3VpZG9AdmFuZ3VhcmRpYXN1ci5jb20u
YXI+ClNpZ25lZC1vZmYtYnk6IFRlcmVzYSBSZW1tZXQgPHQucmVtbWV0QHBoeXRlYy5kZT4KLS0t
CiBkcml2ZXJzL210ZC91Ymkvd2wuYyB8IDE3ICsrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hh
bmdlZCwgMTcgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbXRkL3ViaS93bC5j
IGIvZHJpdmVycy9tdGQvdWJpL3dsLmMKaW5kZXggZmQzODRjNi4uODg3NWVjNyAxMDA2NDQKLS0t
IGEvZHJpdmVycy9tdGQvdWJpL3dsLmMKKysrIGIvZHJpdmVycy9tdGQvdWJpL3dsLmMKQEAgLTE4
NTcsNiArMTg1NywyMiBAQCBzdGF0aWMgdm9pZCBwcm90ZWN0aW9uX3F1ZXVlX2Rlc3Ryb3koc3Ry
dWN0IHViaV9kZXZpY2UgKnViaSkKIAl9CiB9CiAKK3N0YXRpYyB2b2lkIHViaV9mYXN0bWFwX2Ns
b3NlKHN0cnVjdCB1YmlfZGV2aWNlICp1YmkpCit7CisjaWZkZWYgQ09ORklHX01URF9VQklfRkFT
VE1BUAorCWludCBpOworCisJcmV0dXJuX3VudXNlZF9wb29sX3BlYnModWJpLCAmdWJpLT5mbV9w
b29sKTsKKwlyZXR1cm5fdW51c2VkX3Bvb2xfcGVicyh1YmksICZ1YmktPmZtX3dsX3Bvb2wpOwor
CisJaWYgKHViaS0+Zm0pIHsKKwkJZm9yIChpID0gMDsgaSA8IHViaS0+Zm0tPnVzZWRfYmxvY2tz
OyBpKyspCisJCQlrZnJlZSh1YmktPmZtLT5lW2ldKTsKKwl9CisJa2ZyZWUodWJpLT5mbSk7Cisj
ZW5kaWYKK30KKwogLyoqCiAgKiB1Ymlfd2xfY2xvc2UgLSBjbG9zZSB0aGUgd2Vhci1sZXZlbGlu
ZyBzdWItc3lzdGVtLgogICogQHViaTogVUJJIGRldmljZSBkZXNjcmlwdGlvbiBvYmplY3QKQEAg
LTE4NjQsNiArMTg4MCw3IEBAIHN0YXRpYyB2b2lkIHByb3RlY3Rpb25fcXVldWVfZGVzdHJveShz
dHJ1Y3QgdWJpX2RldmljZSAqdWJpKQogdm9pZCB1Ymlfd2xfY2xvc2Uoc3RydWN0IHViaV9kZXZp
Y2UgKnViaSkKIHsKIAlkYmdfd2woImNsb3NlIHRoZSBXTCBzdWItc3lzdGVtIik7CisJdWJpX2Zh
c3RtYXBfY2xvc2UodWJpKTsKIAlzaHV0ZG93bl93b3JrKHViaSk7CiAJcHJvdGVjdGlvbl9xdWV1
ZV9kZXN0cm95KHViaSk7CiAJdHJlZV9kZXN0cm95KCZ1YmktPnVzZWQpOwotLSAKMS45LjEKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1h
aWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
