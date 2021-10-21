Delivery-date: Thu, 21 Oct 2021 16:38:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mdZDW-0000P1-H8
	for lore@lore.pengutronix.de; Thu, 21 Oct 2021 16:38:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mdZDV-00019G-JX
	for lore@pengutronix.de; Thu, 21 Oct 2021 16:38:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5t7OqoicE/dEp9YfAzypuJB3W3wIbUNKyspCzpMAFsc=; b=Mlmohkbo1l245t
	bxscLq6efTud3IEZ79jjMYtruRFBPyb/A/aMJlsF9eDbZ/3K7tt8coXqNGYZcJjagy6Y13lokM4iQ
	gBqGnBLKZ1J/hWhJnc2CUl0nXMGgnis581xx1CcvblJs0qbprS0q5qPbvMqUqVoWon+j1M/tEXWfx
	zhD5qly2v8T+2avVceLhwxWbwN4FtRYxaybJy27af9xivlVTbGYKBGnOWTPnkzqY7FLgiQCQFf0oe
	JNuueJCUY4d9s6St8lG3qHZHGztUfv4jKD9Kz6FwCxFfJOyD6s70Ao9RM7upixp4n2iqem0qSYFKi
	XELJOotTC73sG3etDFRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mdZBr-007rcy-3X; Thu, 21 Oct 2021 14:37:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mdZBm-007rcP-64
 for barebox@lists.infradead.org; Thu, 21 Oct 2021 14:37:03 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <uol@pengutronix.de>)
 id 1mdZBg-0000t7-TQ; Thu, 21 Oct 2021 16:36:56 +0200
Received: from uol by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <uol@pengutronix.de>)
 id 1mdZBg-0003bk-L4; Thu, 21 Oct 2021 16:36:56 +0200
From: =?UTF-8?q?Ulrich=20=C3=96lmann?= <u.oelmann@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 21 Oct 2021 16:36:54 +0200
Message-Id: <20211021143654.13824-1-u.oelmann@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211021_073702_251661_55E0BD5A 
X-CRM114-Status: GOOD (  11.28  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] Documentation: reboot-mode: fix typos
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

U2lnbmVkLW9mZi1ieTogVWxyaWNoIMOWbG1hbm4gPHUub2VsbWFubkBwZW5ndXRyb25peC5kZT4K
LS0tCiBEb2N1bWVudGF0aW9uL3VzZXIvcmVib290LW1vZGUucnN0IHwgOCArKysrLS0tLQogMSBm
aWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9Eb2N1bWVudGF0aW9uL3VzZXIvcmVib290LW1vZGUucnN0IGIvRG9jdW1lbnRhdGlvbi91c2Vy
L3JlYm9vdC1tb2RlLnJzdAppbmRleCA1MDdkNmZlYjAxNDEuLjY4MTQzOGQ5NDQ5OCAxMDA2NDQK
LS0tIGEvRG9jdW1lbnRhdGlvbi91c2VyL3JlYm9vdC1tb2RlLnJzdAorKysgYi9Eb2N1bWVudGF0
aW9uL3VzZXIvcmVib290LW1vZGUucnN0CkBAIC0xMCw3ICsxMCw3IEBAIHRoYXQgYm9vdCBzaG91
bGQgaGFwcGVuIGZyb20gYSBkaWZmZXJlbnQgYm9vdCBtZWRpdW0uCiAKIExpa2V3aXNlLCBtYW55
IGJvb3Rsb2FkZXJzIHJldXNlIHN1Y2ggcmVnaXN0ZXJzLCBvciBpZiB1bmF2YWlsYWJsZSwKIG5v
bi12b2xhdGlsZSBtZW1vcnkgdG8gZGV0ZXJtaW5lIHdoZXRoZXIgdGhlIE9TIHJlcXVlc3RlZCBh
IHNwZWNpYWwKLXJlYm9vdCBtb2RlLCBlLmcuIHJlYm9vdGluZyBpbnRvIGFuIFVTQiByZWNvdmVy
eSBtb2RlLiBUaGlzIGlzCityZWJvb3QgbW9kZSwgZS5nLiByZWJvb3RpbmcgaW50byBhIFVTQiBy
ZWNvdmVyeSBtb2RlLiBUaGlzIGlzCiBjb21tb24gb24gQW5kcm9pZCBzeXN0ZW1zLgogCiBiYXJl
Ym94IGltcGxlbWVudHMgdGhlIHVwc3RyZWFtIGRldmljZSB0cmVlIGJpbmRpbmdzIGZvcgpAQCAt
NTIsMTEgKzUyLDExIEBAIFJlc2V0CiA9PT09PQogCiBSZWJvb3QgbW9kZXMgY2FuIGJlIHN0b3Jl
ZCBvbiBhIHN5c2NvbiB3cmFwcGluZyBnZW5lcmFsIHB1cnBvc2UgcmVnaXN0ZXJzCi10aGF0IHN1
cnZpdmVzIHdhcm0gcmVzZXRzLiBJZiB0aGUgc3lzdGVtIGluc3RlYWQgZGlkIHJlc2V0IHZpYSBh
biBleHRlcm5hbAordGhhdCBzdXJ2aXZlIHdhcm0gcmVzZXRzLiBJZiB0aGUgc3lzdGVtIGluc3Rl
YWQgZGlkIHJlc2V0IHZpYSBhbiBleHRlcm5hbAogcG93ZXIgbWFuYWdlbWVudCBJQywgdGhlIHJl
Z2lzdGVycyBtYXkgbG9zZSB0aGVpciB2YWx1ZS4KIAogSWYgc3VjaCByZWJvb3QgbW9kZSBzdG9y
YWdlIGlzIHVzZWQsIHVzZXJzIG11c3QgdGFrZSBjYXJlIHRvIHVzZSB0aGUgY29ycmVjdAotcmVz
ZXQgcHJvdmlkZXIuIEluIGJhcmVib3gsIG11bHRpcGxlIHJlc2V0IHByb3ZpZGVycyBtYXkgY28t
ZXhpc3QuIFRoZXkKK3Jlc2V0IHByb3ZpZGVyLiBJbiBiYXJlYm94LCBtdWx0aXBsZSByZXNldCBw
cm92aWRlcnMgbWF5IGNvLWV4aXN0LiBUaGUKIGBgcmVzZXRgYCBjb21tYW5kIGFsbG93cyBsaXN0
aW5nIGFuZCBjaG9vc2luZyBhIHNwZWNpZmljIHJlYm9vdCBtb2RlLgogCiBEaXNhbWJpZ3VhdGlv
bgpAQCAtODYsNyArODYsNyBAQCBhcyB0aGUgcmVib290IG1vZGUuCiBGb3IgY2FzZXMsIHdoZXJl
IHRoZSBjb21tdW5pY2F0aW9uIGluc3RlYWQgaGFwcGVucyBiZXR3ZWVuIGJhcmVib3ggYW5kIGFu
IE9TLAogdGhleSBjYW4gYmUgY29tcGxldGVseSBkaWZmZXJlbnQsIGUuZy4gYGAkYm9vdHNvdXJj
ZWBgIG1heSBzYXkgYmFyZWJveCB3YXMKIGJvb3RlZCBmcm9tIGBgc3BpLW5vcmBgLCB3aGlsZSB0
aGUgcmVib290IG1vZGUgZGVzY3JpYmVzIHRoYXQgYmFyZWJveCBzaG91bGQKLWJvb3QgdGhlIEtl
cm5lbCBvZmYgYW4gVVNCIGZsYXNoIGRyaXZlLgorYm9vdCB0aGUgS2VybmVsIG9mZiBhIFVTQiBm
bGFzaCBkcml2ZS4KIAogQ29tcGFyaXNvbiB0byBiYXJlYm94IHN0YXRlCiAtLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0KLS0gCjIuMzAuMgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2Jh
cmVib3gK

