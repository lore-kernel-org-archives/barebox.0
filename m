Delivery-date: Mon, 30 Mar 2026 14:25:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w7Bg8-006n3q-1h
	for lore@lore.pengutronix.de;
	Mon, 30 Mar 2026 14:25:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w7Bg7-0005TA-PU
	for lore@pengutronix.de; Mon, 30 Mar 2026 14:25:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zRfUY64t1oSNGYZmQ8iwJkjqDVenMuVkRgemkGKAN+w=; b=N0+weglX/6JBjr
	zsT5gBl4Q/HovmKwruBPFf2gGwgIE3I68IHDHArsp39kUV+94hb1m5WUK48WP5abzmkVsf96KqLgZ
	Y3kvokdhjK66MdJoASor80qM/4AsHyUTJ56ygS5u+0TsPYTZKh5Q21Ys3mmZf8zPb6UVUhSWmWaot
	0zMNM7zt+u6XCRsgLELisomBmQR1K4QcFWSLjSWNeSd4d9nIWR2eniLKOfGa2EmeUVSyflW9tOp8j
	7epOD307aRyudk+jB4UBfqNdBLQe+n+5r6Zp38Utqe4foRrBMNIYIr1sgCGnhhgBwMtqwvAnwyrUf
	j6OlJGzCUSpKgJ2Jo3kQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7BfS-0000000BFRa-3FkW;
	Mon, 30 Mar 2026 12:24:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7BfP-0000000BFPb-40ET
	for barebox@lists.infradead.org;
	Mon, 30 Mar 2026 12:24:29 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1w7BfM-0005EW-Fa; Mon, 30 Mar 2026 14:24:24 +0200
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Mon, 30 Mar 2026 14:24:14 +0200
Message-Id: <20260330-v2026-03-0-topic-soc_bin_id-v1-0-11292f75b196@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAG5rymkC/x3MQQqEMAxA0atI1gbS1lHxKiJi24xm00orIoh3n
 467/zb/hsxJOMNQ3ZD4lCwxFKi6ArctYWUUXwyadEvGEJ7/QjJIeMRdHOboZithFo9e6aVvfGe
 V/UA57Im/cr33cXqeH+mQppltAAAA
X-Change-ID: 20260330-v2026-03-0-topic-soc_bin_id-d12a84d7b1b5
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260330_052428_034334_F2A3FB90 
X-CRM114-Status: UNSURE (   6.76  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/2] Add additional globalvar for soc_uid
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The binary representation was used to compare against, but never exposed
to userspace to query, as the exposed variables could correlate with the
value, but did not.

For example on i.MX8MP the byte order was reversed in comparing
the return value of barebox_get_soc_uid_bin and $global.soc_uid.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
Fabian Pflug (2):
      common: misc: add soc_uid_bin to globalvar
      i.MX: HAB: update text for HABV4_CSF_UNLOCK_UID

 arch/arm/mach-imx/Kconfig | 11 +++--------
 common/misc.c             |  8 ++++++--
 2 files changed, 9 insertions(+), 10 deletions(-)
---
base-commit: 1d386a53086d28a0c4eda138ae9408a418b97b7e
change-id: 20260330-v2026-03-0-topic-soc_bin_id-d12a84d7b1b5

Best regards,
-- 
Fabian Pflug <f.pflug@pengutronix.de>



