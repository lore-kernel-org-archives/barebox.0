Delivery-date: Fri, 04 Mar 2022 07:26:09 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nQ1OD-00HHfe-Jc
	for lore@lore.pengutronix.de; Fri, 04 Mar 2022 07:26:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nQ1OB-00064Z-Kz
	for lore@pengutronix.de; Fri, 04 Mar 2022 07:26:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8+MWbwWbg7EOgecNCRyZmT4pP+C7C3oSMnGaDTQPXJY=; b=SNy1uJWGYYjcFH
	p7iSBOFgpDMVnB/zscThjEr9q5j+nW45VXzNDsMsAD43WMWvvgstF+AokSFz5zhq6Qnk/lOGgNedn
	wpMs4bxh6cT6iMsrwRmfAS3ijPWeDPN+n/8VSea8sObTkfPKDfmHVQJKo1NkUxN3F8cX1FtrZRiaK
	tDv1eWxVXmoYlXArkvT93fmp/PkrdyrcfeU0foSn18M1rBbCpRcl/wB8qJ9aknhw9ETfG7gMs938m
	L3F2wXOK9m95JzIb7qgPk6rs/UeKRA0vzZNeiPvRi9F6xd0DWryZ0aYhTO0NnL6ZRiL/N7Qswvrce
	tY0QKJxgui5YXox8UPtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nQ1Mh-008cdW-Rk; Fri, 04 Mar 2022 06:24:35 +0000
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nQ1Md-008ccP-3u
 for barebox@lists.infradead.org; Fri, 04 Mar 2022 06:24:32 +0000
Received: by magratgarlick.emantor.de (Postfix, from userid 114)
 id 20BDD926C7; Fri,  4 Mar 2022 07:24:26 +0100 (CET)
Received: from localhost (unknown
 [IPv6:2001:9e8:216d:8301:c0d3:dbff:fefe:ff70])
 by magratgarlick.emantor.de (Postfix) with ESMTPSA id 99DCE926C7;
 Fri,  4 Mar 2022 07:24:24 +0100 (CET)
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Fri,  4 Mar 2022 07:24:10 +0100
Message-Id: <20220304062412.1248657-1-r.czerwinski@pengutronix.de>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220303_222431_375280_AE2A3B55 
X-CRM114-Status: GOOD (  11.43  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [RFC Patch 0/3] BLSpec device-tree fallback handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

QmFyZWJveCBjb250YWlucyBjb2RlIHRvIHNlbGVjdCB0aGUgY29ycmVjdCBib290bG9hZGVyIHNw
ZWNpZmljYXRpb24KZW50cnkgYnkgbG9va2luZyBhdCB0aGUgZGV2aWNldHJlZSBvcHRpb24sIGxv
YWRpbmcgdGhlIHRyZWUgYW5kCmNvbXBhcmluZyB0aGF0IHRyZWVzIGZpcnN0IGNvbXBhdGlibGUg
d2l0aCB0aGUgY29tcGF0aWJsZSBvZiB0aGUKaW50ZXJuYWwgZGV2aWNlIHRyZWUuCgpUaGlzIHNl
cmllcyBpbXBsZW1lbnRzIHRoZSBjb21wYXJpc29uIHRvIG5vdCBvbmx5IHVzZSB0aGUgZmlyc3QK
Y29tcGF0aWJsZSBkZWZpbmVkIGluIHRoZSB0cmVlLCBidXQgbGF0dGVyIGNvbXBhdGlibGVzIGFz
IHdlbGwuClRoaXMgaXMgdXNlZnVsIGlmIGNvbXBhdGlibGVzIGFyZSBhZGp1c3RlZCwgYnV0IG5l
dyBib290bG9hZGVycyBuZWVkIHRvCmJlIGFibGUgdG8gYm9vdCBib290bG9hZGVyIHNwZWMgZW50
cmllcyB3aXRoIHRoZSBvbGQgY29tcGF0aWJsZSBzZXQuCkluIHRoaXMgY2FzZSB0aGUgYmFyZWJv
eCBib2FyZCBjYW4gc2V0IHRoZSBmb2xsb3dpbmcgY29tcGF0aWJsZXM6CgogIGNvbXBhdGlibGUg
PSAibmV3Y29tcCIsICJvbGRjb21wIizigKYgOwoKQW5kIGNhbGwgYmxzcGVjX3NldF9jb21wYXRp
YmxlX2RlcHRoKDIpIGluIHRoZSBib2FyZCBjb2RlIHRvIGluZGljYXRlCnRoYXQgbm90IG9ubHkg
dGhlIGZpcnN0IGNvbXBhdGlibGUgc2hvdWxkIGJlIGNvbXBhcmVkLCBidXQgb2xkY29tcApzaG91
bGQgYmUgY29tcGFyZWQgYXMgd2VsbC4KClJvdXZlbiBDemVyd2luc2tpICgzKToKICBibHNwZWM6
IGNyZWF0ZSBsaXN0IG9mIGVudHJpZXMsIGl0ZXJhdGUgb3ZlciBsaXN0CiAgYmxzcGVjOiB0YWtl
IGNvbXBhdGlibGUgbmFtZSBhcyBhcmd1bWVudAogIGJsc3BlYzogYWxsb3cgc2V0dGluZyBjb21w
YXRpYmxlIGRlcHRoCgogY29tbW9uL2Jsc3BlYy5jICB8IDEyNSArKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLQogaW5jbHVkZS9ibHNwZWMuaCB8ICAgMiArLQog
MiBmaWxlcyBjaGFuZ2VkLCA5NCBpbnNlcnRpb25zKCspLCAzMyBkZWxldGlvbnMoLSkKCi0tIAoy
LjM1LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpi
YXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==

