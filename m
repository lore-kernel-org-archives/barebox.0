Delivery-date: Tue, 02 Dec 2025 10:23:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQMbk-0077Fl-0O
	for lore@lore.pengutronix.de;
	Tue, 02 Dec 2025 10:23:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQMbj-0004pn-JX
	for lore@pengutronix.de; Tue, 02 Dec 2025 10:23:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=364qY/msL3J+SFL6CAIrhqUJX5TmmkG6rTIGALwfOLg=; b=pURl3kmzy2WeBb
	ZMyBbcy5d6ZHjV4i5zjYQ7pqwqfXaE88J2qs3wKMW6cxMYaEIFSvwqMpyzYw0bBfuJwwk4JNO6U9W
	MKngBcsu++CTEXDXfKFg/jzhQJDLoweLH6wtgULUXQtmb4ddCfv08CEQTB12KNAUeaNrxouq3wyQG
	8vpH3DxeMp0/HJSVLMQsc6of0MWdYOdM42qOZG8jkrnHowj+FjJw+2Cd23g3k/zD5f9X2GlqmImUB
	m6MyRzS96S3z+Eciz4/ipg8m8/wO6fqcMOpMoSLbFjA7QAhNdzf4cuI9OnueItzCpxy+xQVbP5I++
	jJw3yxMgZEsOscfqiTLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQMbJ-0000000569e-2U0g;
	Tue, 02 Dec 2025 09:23:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQMay-0000000566v-1H8J
	for barebox@lists.infradead.org;
	Tue, 02 Dec 2025 09:23:12 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vQMaw-0004cr-N5; Tue, 02 Dec 2025 10:22:50 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Tue, 02 Dec 2025 10:22:43 +0100
Message-Id: <20251202-base64-bounds-v2-0-34d3716c3f55@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOSvLmkC/3XMyw6CMBCF4Vchs7aGDgrKyvcwLHqZwmxa0kKDI
 by7lb3L/yTn2yFRZErQVztEypw4+BJ4qcBMyo8k2JYGrPEusZZCq0TtTeiwepsE2aZ7GjStcx2
 UzxzJ8XZ676H0xGkJ8XPyWf7Wf1KWohaNItRID90Z/ZrJj+sSg+ftagmG4zi+N50CPa8AAAA=
X-Change-ID: 20251201-base64-bounds-ed379c2c6ff7
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=1070; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=A58Sz18iPisJEHT4RuyRIPQlc29FEWepBGB62essv3s=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsjUW/8s81hMam+d5zmt6zYC0QdK/s7l5u9lzj7x18lxx
 uwfeyvDOkpZGMS4GGTFFFli1eQUhIz9r5tV2sXCzGFlAhnCwMUpABP52MDIsEnkwImrJh1/gjSL
 IvXK763YP0crb8H+z29/vrepE++55MbwP885JGB3ldJU/Xrul3MCVBV3tluszgiUU66+sbjrFfs
 FZgA=
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251202_012252_347249_AB6B312E 
X-CRM114-Status: UNSURE (   7.89  )
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
Subject: [PATCH v2 0/2] Fix out-of-bounds potential in decode_base64 and
 add regression tests
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

I took a closer look at decode_base64 while reviewing coverity report
584740 (Out-of-bounds access). 1/2 resolves the issue (although coverity
seems to suspect an out-of-bounds access for the wrong reason and might
keep doing so), 2/2 adds a selftest I used to debug the issue.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
Changes in v2:
- correct name of helper function from __expect_streq() to
  __expect_base64()
- Link to v1: https://lore.barebox.org/barebox/20251201-base64-bounds-v1-0-3ae2b2e8b7cb@pengutronix.de

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



