Delivery-date: Mon, 01 Dec 2025 15:10:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ4bM-006q79-1x
	for lore@lore.pengutronix.de;
	Mon, 01 Dec 2025 15:10:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ4bM-0007jW-2X
	for lore@pengutronix.de; Mon, 01 Dec 2025 15:10:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=W3I887KR/For2Alos+/d86k/MX+stlWz9+WU44HXM0c=; b=WHvrTB+Ti2OF4F
	XP5zWgvY7bKc9swFuYuIW8WU4F1NE1GGsCPagu3JV9wPVH6169NAFiwVFPQ4SytZ5XhS/CqCSH2nM
	TcBFT5qjB1gPq8sBuudHoB8T+lYXicbOSfgzf1VTRZ/0BaNXcpD0y/CmxOcUqL2KieHFB2weCqKWb
	Ac9xxus7aeARnpffujDdSDYDc91i5Gr0M353Xw+wNW7Zw3Gp9BVXDsPdBWNldnyidDiM+Bp2U33S/
	Yjzilj/XI53uWgFcR2GuF9tz8le+3XXgdK41AWVv6tL0WZe/GzKdpnw8s7Jy3df72lgL8LMbsZ//D
	scdMrsftxR7UEF92TTnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ4al-000000043UT-1mO3;
	Mon, 01 Dec 2025 14:09:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ4ai-000000043TK-0W4s
	for barebox@lists.infradead.org;
	Mon, 01 Dec 2025 14:09:25 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vQ4ae-0007a4-QF; Mon, 01 Dec 2025 15:09:20 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Mon, 01 Dec 2025 15:09:17 +0100
Message-Id: <20251201-base64-bounds-v1-0-3ae2b2e8b7cb@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAI2hLWkC/x3MQQqAIBBA0avErBPSSqmrRAvTsWaj4VAE0t2Tl
 m/xfwHGTMgwNwUy3sSUYoVsG3CHjTsK8tWgOjVK1UmxWUY9iC1d0bNA35vJKadDMFCbM2Og5/8
 t6/t+6DTRmV8AAAA=
X-Change-ID: 20251201-base64-bounds-ed379c2c6ff7
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=862; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=VUKOmQOAszC5BZVX0Pdcp1vs36SOULPy3c7m1IPQNhc=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsjUXdinNjdPcrLhvV+HFkqtepfr9+8d97Qy3vyCoD+/e
 jdcDJu+saOUhUGMi0FWTJElVk1OQcjY/7pZpV0szBxWJpAhDFycAjCR23wM/3RSd5reSC3+tyLz
 y+90L43qmgfLtsteTlOf9faRbtjycDtGhn39d2p8Vm0Ve2Oe/HfN4qdnU/5P0VY1cIv8eoi/rVn
 uLQ8A
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_060924_171970_1B866629 
X-CRM114-Status: UNSURE (   6.98  )
X-CRM114-Notice: Please train this message.
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/2] Fix out-of-bounds potential in decode_base64 and add
 regression tests
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

I took a closer look at decode_base64 while reviewing coverity report
584740 (Out-of-bounds access). 1/2 resolves the issue (although coverity
seems to suspect an out-of-bounds access for the wrong reason and might
keep doing so), 2/2 adds a selftest I used to debug the issue.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
Jonas Rebmann (2):
      lib: base64: Fix out-of-bounds potential by respecting dst_len
      test: self: add base64 selftests

 lib/base64.c       | 10 +++++-----
 test/self/Kconfig  |  7 +++++++
 test/self/Makefile |  1 +
 test/self/base64.c | 45 +++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 58 insertions(+), 5 deletions(-)
---
base-commit: ec00fef65d808f8bc9c5655262b0e4f8ce2c4e92
change-id: 20251201-base64-bounds-ed379c2c6ff7

Best regards,
--  
Jonas Rebmann <jre@pengutronix.de>



