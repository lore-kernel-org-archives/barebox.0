Delivery-date: Mon, 15 Nov 2021 18:07:20 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mmfRw-00038M-Ly
	for lore@lore.pengutronix.de; Mon, 15 Nov 2021 18:07:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mmfRv-0006hb-Sn
	for lore@pengutronix.de; Mon, 15 Nov 2021 18:07:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3G0hYFLNDvBhr1yFSNniJ9MWt2TOL1ep6kHsuTBLcd4=; b=Bsbwkp6EaOmdsR
	Q+SViFgq6vyWPJ7CP0ttED1ubSCifSnbjR5hGFrRbySL1sovxGOWsBhv4fmWFeHaGXTi2Pt92VnmO
	I/t7T4+INM4A58yxC81YFTsXQzdG8GoR5nyisF5O0bFtFFtQ2N0MU5+3bfqiqiNHnj6A1zjGIAnqd
	xy5Cz6fQjbUTY0foJSLLigDFDczCRe8MX6if4kcBQ7ICF9ltSAWM9hRPPnVih2GFBzZyZQgkvApu5
	z7WV7++yGzz3/yxgWcg2j3BDoO7YWIN9xkfm6oM+z+yOSOqBWRVl6lRbTtX3Hqy0CYgmMxsTndgbb
	G/pPN3rk24tXwNBqKHBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mmfQB-00GUui-6Q; Mon, 15 Nov 2021 17:05:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mmfQ5-00GUsu-Ey
 for barebox@lists.infradead.org; Mon, 15 Nov 2021 17:05:26 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <uol@pengutronix.de>)
 id 1mmfQ1-0006If-Ha; Mon, 15 Nov 2021 18:05:21 +0100
Received: from uol by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <uol@pengutronix.de>)
 id 1mmfQ1-006d61-2b; Mon, 15 Nov 2021 18:05:21 +0100
From: =?UTF-8?q?Ulrich=20=C3=96lmann?= <u.oelmann@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 15 Nov 2021 18:05:05 +0100
Message-Id: <20211115170505.1564052-1-u.oelmann@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211115_090525_525270_852CF10F 
X-CRM114-Status: GOOD (  10.95  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] scripts: Kconfig: fix typo
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

U2lnbmVkLW9mZi1ieTogVWxyaWNoIMOWbG1hbm4gPHUub2VsbWFubkBwZW5ndXRyb25peC5kZT4K
LS0tCiBzY3JpcHRzL0tjb25maWcgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9zY3JpcHRzL0tjb25maWcgYi9zY3JpcHRz
L0tjb25maWcKaW5kZXggYTQ5MGFhYTQ0ZWJiLi5hZThhOGIxOGRkM2YgMTAwNjQ0Ci0tLSBhL3Nj
cmlwdHMvS2NvbmZpZworKysgYi9zY3JpcHRzL0tjb25maWcKQEAgLTcsNyArNyw3IEBAIGNvbmZp
ZyBDT01QSUxFX0hPU1RfVE9PTFMKIAkgIG9uIHNvbWUgY29uZmlnIG9wdGlvbnMuIElmIHlvdSBz
YXkgeWVzIGhlcmUsIHRoZSBob3N0IHRvb2xzIHRoYXQgYXJlCiAJICBub3QgbmVlZGVkIGNhbiBi
ZSBzZWxlY3RlZCwgdG9vLgogCi0JICBUaGlzIGlzIHVzZWZ1bGwgZm9yIGNvbXBpbGUgY292ZXJh
Z2UgdGVzdGluZyBhbmQgZm9yIHBhY2thZ2luZyB0aGUKKwkgIFRoaXMgaXMgdXNlZnVsIGZvciBj
b21waWxlIGNvdmVyYWdlIHRlc3RpbmcgYW5kIGZvciBwYWNrYWdpbmcgdGhlCiAJICBob3N0IHRv
b2xzLgogCiBzb3VyY2UgInNjcmlwdHMvaW14L0tjb25maWciCi0tIAoyLjMwLjIKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcg
bGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==

