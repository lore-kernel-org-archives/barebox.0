Delivery-date: Thu, 17 Jun 2021 19:02:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltvPS-00081K-IC
	for lore@lore.pengutronix.de; Thu, 17 Jun 2021 19:02:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltvPR-0000jM-OM
	for lore@pengutronix.de; Thu, 17 Jun 2021 19:02:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YrqSR6EidudpUPNKrkbO9s8eC/oyCqXmewKGcqMHymA=; b=oBHvRRUs8v27Lb
	x8wpB/Bjs+LfCRyXXSRLuCPDn5gFhGsTBWT17WDBbwamQ1cWCxQzrZ6Nwc/s3ir+nFcxi89E0NZt2
	of7r1gBEH1dqnpTRySBcVVabKgmpQsVJW4w7FaL8CIsQ4wnBgsiS3ypYYTiodxVea0RAPC5L9WLHC
	ESHOWVHx95TNq4Num56r4aBnIbUw8vnXJ1SKJHDfTXk0bLcDT/hADLwMf16IVPGHzlKCHJMDhtFO7
	SA3OZGIbetVgKE7UwzjT/3qiAwAC5sHilagYKwMTIS/02ucbg0AiJkhiRLY3t0dmiww26n8NSWt5H
	t+wS1LZBoSfG/zz1n5Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltvNk-00BB9h-69; Thu, 17 Jun 2021 17:00:44 +0000
Received: from magratgarlick.emantor.de ([2a01:4f8:c17:c88::2])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltvNd-00BB91-Uc
 for barebox@lists.infradead.org; Thu, 17 Jun 2021 17:00:39 +0000
Received: by magratgarlick.emantor.de (Postfix, from userid 114)
 id DC2178613A; Thu, 17 Jun 2021 19:00:31 +0200 (CEST)
Received: from localhost (unknown
 [IPv6:2001:9e8:214f:5b02:c0d3:dbff:fefe:ff70])
 by magratgarlick.emantor.de (Postfix) with ESMTPSA id 8AFDA86135;
 Thu, 17 Jun 2021 19:00:30 +0200 (CEST)
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Thu, 17 Jun 2021 19:00:19 +0200
Message-Id: <20210617170018.42823-1-r.czerwinski@pengutronix.de>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210617_100038_188549_320FB37A 
X-CRM114-Status: GOOD (  10.20  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] usb: usb251xb: remove >=0 check for u32 port
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

VGhlIGNvbXBpbGVyIHJpZ2h0ZnVsbHkgY29tcGxhaW5zOgoKICBkcml2ZXJzL3VzYi9taXNjL3Vz
YjI1MXhiLmM6IEluIGZ1bmN0aW9uIOKAmHVzYjI1MXhiX2dldF9vZmRhdGHigJk6CiAgZHJpdmVy
cy91c2IvbWlzYy91c2IyNTF4Yi5jOjU2MzoxMzogd2FybmluZzogY29tcGFyaXNvbiBvZiB1bnNp
Z25lZCBleHByZXNzaW9uIGluIOKAmD49IDDigJkgaXMgYWx3YXlzIHRydWUgWy1XdHlwZS1saW1p
dHNdCiAgICA1NjMgfCAgIGlmICgocG9ydCA+PSAwKSAmJiAocG9ydCA8PSBkYXRhLT5wb3J0X2Nu
dCkpCgpzbyBkcm9wIHRoZSBjaGVjay4KClNpZ25lZC1vZmYtYnk6IFJvdXZlbiBDemVyd2luc2tp
IDxyLmN6ZXJ3aW5za2lAcGVuZ3V0cm9uaXguZGU+Ci0tLQogZHJpdmVycy91c2IvbWlzYy91c2Iy
NTF4Yi5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9u
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy91c2IvbWlzYy91c2IyNTF4Yi5jIGIvZHJpdmVycy91
c2IvbWlzYy91c2IyNTF4Yi5jCmluZGV4IDEwZDVhYTMxMGIuLmUyODI5ODhmYjQgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvdXNiL21pc2MvdXNiMjUxeGIuYworKysgYi9kcml2ZXJzL3VzYi9taXNjL3Vz
YjI1MXhiLmMKQEAgLTU2MCw3ICs1NjAsNyBAQCBzdGF0aWMgaW50IHVzYjI1MXhiX2dldF9vZmRh
dGEoc3RydWN0IHVzYjI1MXhiICpodWIsCiAJICovCiAJaHViLT5wb3J0X3N3YXAgPSBVU0IyNTFY
Ql9ERUZfUE9SVF9TV0FQOwogCW9mX3Byb3BlcnR5X2Zvcl9lYWNoX3UzMihucCwgInN3YXAtZHgt
bGFuZXMiLCBwcm9wLCBwLCBwb3J0KSB7Ci0JCWlmICgocG9ydCA+PSAwKSAmJiAocG9ydCA8PSBk
YXRhLT5wb3J0X2NudCkpCisJCWlmIChwb3J0IDw9IGRhdGEtPnBvcnRfY250KQogCQkJaHViLT5w
b3J0X3N3YXAgfD0gQklUKHBvcnQpOwogCX0KIAotLSAKMi4zMS4xCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFy
ZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vYmFyZWJveAo=

