Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b4lEJ-0000K7-6x
 for barebox@lists.infradead.org; Mon, 23 May 2016 08:28:54 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 764B0A00CC7
 for <barebox@lists.infradead.org>; Mon, 23 May 2016 10:28:23 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 23 May 2016 10:26:11 +0200
Message-Id: <1463992010-31537-24-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1463992010-31537-1-git-send-email-t.remmet@phytec.de>
References: <1463992010-31537-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 23/62] UBI: Fastmap: Fix memory leaks while closing the WL
 sub-system
To: barebox@lists.infradead.org

RnJvbTogUmljaGFyZCBXZWluYmVyZ2VyIDxyaWNoYXJkQG5vZC5hdD4KCkFkZCBhIHViaV9mYXN0
bWFwX2Nsb3NlKCkgdG8gZnJlZSBhbGwgcmVzb3VyY2VzIHVzZWQgYnkgZmFzdG1hcAphdCBXTCBz
aHV0ZG93bi4KClNpZ25lZC1vZmYtYnk6IFJpY2hhcmQgV2VpbmJlcmdlciA8cmljaGFyZEBub2Qu
YXQ+ClRlc3RlZC1ieTogR3VpZG8gTWFydMOtbmV6IDxndWlkb0B2YW5ndWFyZGlhc3VyLmNvbS5h
cj4KUmV2aWV3ZWQtYnk6IEd1aWRvIE1hcnTDrW5leiA8Z3VpZG9AdmFuZ3VhcmRpYXN1ci5jb20u
YXI+Ci0tLQogZHJpdmVycy9tdGQvdWJpL3dsLmMgfCAxNyArKysrKysrKysrKysrKysrKwogMSBm
aWxlIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL210ZC91
Ymkvd2wuYyBiL2RyaXZlcnMvbXRkL3ViaS93bC5jCmluZGV4IGZkMzg0YzYuLjg4NzVlYzcgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvbXRkL3ViaS93bC5jCisrKyBiL2RyaXZlcnMvbXRkL3ViaS93bC5j
CkBAIC0xODU3LDYgKzE4NTcsMjIgQEAgc3RhdGljIHZvaWQgcHJvdGVjdGlvbl9xdWV1ZV9kZXN0
cm95KHN0cnVjdCB1YmlfZGV2aWNlICp1YmkpCiAJfQogfQogCitzdGF0aWMgdm9pZCB1YmlfZmFz
dG1hcF9jbG9zZShzdHJ1Y3QgdWJpX2RldmljZSAqdWJpKQoreworI2lmZGVmIENPTkZJR19NVERf
VUJJX0ZBU1RNQVAKKwlpbnQgaTsKKworCXJldHVybl91bnVzZWRfcG9vbF9wZWJzKHViaSwgJnVi
aS0+Zm1fcG9vbCk7CisJcmV0dXJuX3VudXNlZF9wb29sX3BlYnModWJpLCAmdWJpLT5mbV93bF9w
b29sKTsKKworCWlmICh1YmktPmZtKSB7CisJCWZvciAoaSA9IDA7IGkgPCB1YmktPmZtLT51c2Vk
X2Jsb2NrczsgaSsrKQorCQkJa2ZyZWUodWJpLT5mbS0+ZVtpXSk7CisJfQorCWtmcmVlKHViaS0+
Zm0pOworI2VuZGlmCit9CisKIC8qKgogICogdWJpX3dsX2Nsb3NlIC0gY2xvc2UgdGhlIHdlYXIt
bGV2ZWxpbmcgc3ViLXN5c3RlbS4KICAqIEB1Ymk6IFVCSSBkZXZpY2UgZGVzY3JpcHRpb24gb2Jq
ZWN0CkBAIC0xODY0LDYgKzE4ODAsNyBAQCBzdGF0aWMgdm9pZCBwcm90ZWN0aW9uX3F1ZXVlX2Rl
c3Ryb3koc3RydWN0IHViaV9kZXZpY2UgKnViaSkKIHZvaWQgdWJpX3dsX2Nsb3NlKHN0cnVjdCB1
YmlfZGV2aWNlICp1YmkpCiB7CiAJZGJnX3dsKCJjbG9zZSB0aGUgV0wgc3ViLXN5c3RlbSIpOwor
CXViaV9mYXN0bWFwX2Nsb3NlKHViaSk7CiAJc2h1dGRvd25fd29yayh1YmkpOwogCXByb3RlY3Rp
b25fcXVldWVfZGVzdHJveSh1YmkpOwogCXRyZWVfZGVzdHJveSgmdWJpLT51c2VkKTsKLS0gCjEu
OS4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFy
ZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
