Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b6CTc-0004ya-Tr
 for barebox@lists.infradead.org; Fri, 27 May 2016 07:46:39 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id BFB41A00B5A
 for <barebox@lists.infradead.org>; Fri, 27 May 2016 09:46:42 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Fri, 27 May 2016 09:44:49 +0200
Message-Id: <1464335095-35180-57-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH v2 56/62] UBI: Fastmap: Fix PEB array type
To: barebox@lists.infradead.org

RnJvbTogRXplcXVpZWwgR2FyY8OtYSA8ZXplcXVpZWxAdmFuZ3VhcmRpYXN1ci5jb20uYXI+CgpU
aGUgUEVCIGFycmF5IGlzIGFuIGFycmF5IG9mIF9fYmUzMiwgc28gbGV0J3MgZml4IHRoZQpzY2Fu
X3Bvb2woKSBwcm90b3R5cGUgYWNjb3JkaW5nbHkuCgpTaWduZWQtb2ZmLWJ5OiBFemVxdWllbCBH
YXJjaWEgPGV6ZXF1aWVsQHZhbmd1YXJkaWFzdXIuY29tLmFyPgpTaWduZWQtb2ZmLWJ5OiBSaWNo
YXJkIFdlaW5iZXJnZXIgPHJpY2hhcmRAbm9kLmF0PgoKQ29uZmxpY3RzOgoJZHJpdmVycy9tdGQv
dWJpL2Zhc3RtYXAuYwoKRml4ZWQgbWlub3IgY29uZmxpY3QuCgpTaWduZWQtb2ZmLWJ5OiBUZXJl
c2EgUmVtbWV0IDx0LnJlbW1ldEBwaHl0ZWMuZGU+Ci0tLQogZHJpdmVycy9tdGQvdWJpL2Zhc3Rt
YXAuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbXRkL3ViaS9mYXN0bWFwLmMgYi9kcml2ZXJzL210ZC91
YmkvZmFzdG1hcC5jCmluZGV4IDE3M2RhOWMuLmZmYTI4NTkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
bXRkL3ViaS9mYXN0bWFwLmMKKysrIGIvZHJpdmVycy9tdGQvdWJpL2Zhc3RtYXAuYwpAQCAtMzg1
LDcgKzM4NSw3IEBAIHN0YXRpYyB2b2lkIHVubWFwX3BlYihzdHJ1Y3QgdWJpX2F0dGFjaF9pbmZv
ICphaSwgaW50IHBudW0pCiAgKiA8IDAgaW5kaWNhdGVzIGFuIGludGVybmFsIGVycm9yLgogICov
CiBzdGF0aWMgaW50IHNjYW5fcG9vbChzdHJ1Y3QgdWJpX2RldmljZSAqdWJpLCBzdHJ1Y3QgdWJp
X2F0dGFjaF9pbmZvICphaSwKLQkJICAgICBpbnQgKnBlYnMsIGludCBwb29sX3NpemUsIHVuc2ln
bmVkIGxvbmcgbG9uZyAqbWF4X3NxbnVtLAorCQkgICAgIF9fYmUzMiAqcGVicywgaW50IHBvb2xf
c2l6ZSwgdW5zaWduZWQgbG9uZyBsb25nICptYXhfc3FudW0sCiAJCSAgICAgc3RydWN0IGxpc3Rf
aGVhZCAqbGZyZWUpCiB7CiAJc3RydWN0IHViaV92aWRfaGRyICp2aDsKLS0gCjEuOS4xCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWls
aW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
