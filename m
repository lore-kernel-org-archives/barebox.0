Delivery-date: Fri, 03 Jun 2022 09:24:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nx1ff-001Yiz-0c
	for lore@lore.pengutronix.de; Fri, 03 Jun 2022 09:24:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nx1fd-0007n6-QP
	for lore@pengutronix.de; Fri, 03 Jun 2022 09:24:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GVWoCyGSECp1fbUiu/0fcRNhXZBcI17EuecN3rLBSco=; b=M+kfd2IL3yAjIa
	Tt+MOrY9B5R0gKghKB+zn8yF/3A5k1daUgSoAHtjU6KPgCGKs9zwauZvgbWTeVgMKxptB29lZyhHe
	Tlw8vD5u8+WHiNmE0f8R+57YpR3Mbib+slFGr9wjUQMMOKv96KeQpKcXVJUKB9YuYa/mRH1p+yJ9D
	ymSBadeoBbhzHntBNbKCvZB9ny5+qX4tXFBvb6HwIF3sE3sjGLqtrqpuaOlzN69EgYsoe5PyrSSgr
	4QfkzKxfyS2VToWr25b7h6zh+rYF95gocfkLcuYtEHKCZ3fy2w3mdy8Qxt5JBHiC7uIcjebtnOjgZ
	Ftm0dayo0U9P2BDpOrYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nx1eO-006Hbx-Fe; Fri, 03 Jun 2022 07:23:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nx1eJ-006Haa-Cb
	for barebox@lists.infradead.org; Fri, 03 Jun 2022 07:23:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1nx1eH-0007hN-FC; Fri, 03 Jun 2022 09:23:09 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nx1eI-006B6w-4L; Fri, 03 Jun 2022 09:23:08 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nx1eG-006cj4-3m; Fri, 03 Jun 2022 09:23:08 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  3 Jun 2022 09:23:07 +0200
Message-Id: <20220603072307.1578650-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220603_002311_514628_091E24F9 
X-CRM114-Status: GOOD (  10.05  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH RESEND] of: address: fix printing of OF node name in error message
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

RnJvbTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4K
CmJhcmVib3ggaGFzIG5vICVwT0YuIE9wZW4gY29kZSB0aGlzIGluc3RhbmNlIHRvIHlpZWxkIGEg
YmV0dGVyIGVycm9yCm1lc3NhZ2UuCgpTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8
dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgpTaWduZWQtb2ZmLWJ5OiBBaG1hZCBGYXRv
dW0gPGEuZmF0b3VtQHBlbmd1dHJvbml4LmRlPgotLS0KdjEgLT4gUkVTRU5EOiBEZWNvdXBsaW5n
IGZyb20gcnBpNCBzZXJpZXMsIG5vIG90aGVyIGNoYW5nZXMKLS0tCiBkcml2ZXJzL29mL2FkZHJl
c3MuYyB8IDQgKystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL29mL2FkZHJlc3MuYyBiL2RyaXZlcnMvb2YvYWRk
cmVzcy5jCmluZGV4IDRlYWZjZTM3NmQzNi4uNjVlNjc5NzNhZDYyIDEwMDY0NAotLS0gYS9kcml2
ZXJzL29mL2FkZHJlc3MuYworKysgYi9kcml2ZXJzL29mL2FkZHJlc3MuYwpAQCAtNjczLDggKzY3
Myw4IEBAIGludCBvZl9kbWFfZ2V0X3JhbmdlKHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAsIHU2NCAq
ZG1hX2FkZHIsIHU2NCAqcGFkZHIsIHU2NCAqc2l6CiAJZG1hYWRkciA9IG9mX3JlYWRfbnVtYmVy
KHJhbmdlcywgbmFkZHIpOwogCSpwYWRkciA9IG9mX3RyYW5zbGF0ZV9kbWFfYWRkcmVzcyhub2Rl
LCByYW5nZXMgKyBuYWRkcik7CiAJaWYgKCpwYWRkciA9PSBPRl9CQURfQUREUikgewotCQlwcl9l
cnIoInRyYW5zbGF0aW9uIG9mIERNQSBhZGRyZXNzKCVsbHgpIHRvIENQVSBhZGRyZXNzIGZhaWxl
ZCBub2RlKCVwT0YpXG4iLAotCQkgICAgICAgZG1hYWRkciwgbnApOworCQlwcl9lcnIoInRyYW5z
bGF0aW9uIG9mIERNQSBhZGRyZXNzKCVsbHgpIHRvIENQVSBhZGRyZXNzIGZhaWxlZCBub2RlKCVz
KVxuIiwKKwkJICAgICAgIGRtYWFkZHIsIG5wLT5uYW1lKTsKIAkJcmV0ID0gLUVJTlZBTDsKIAkJ
Z290byBvdXQ7CiAJfQotLSAKMi4zMC4yCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFy
ZWJveAo=

