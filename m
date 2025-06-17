Delivery-date: Tue, 17 Jun 2025 11:02:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRSDK-008DSG-28
	for lore@lore.pengutronix.de;
	Tue, 17 Jun 2025 11:02:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRSDI-0001eA-Sq
	for lore@pengutronix.de; Tue, 17 Jun 2025 11:02:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ULMuNvi4ngaqanUwk+pO/6JHfPSssRZ/EbMAa0Ip9t8=; b=Kz8q0WSzRPwFdFWxApVoX/MZRq
	W8kAf4DqjoJHC/q5uLTIcjlGlY0oUqFW/t1iOe+rmmovjfet13jo2XIv3H9JrrF5vIjnDUikjyVon
	EW/KJCK0l7TK+m1Nh7Ca/Mqg2N40hhJ644zr1Zy0Il1rQp5Hmi62WZOMPfevbD/AcydsRhu9f3kNL
	TTaLkaHSPyJkSsK5+GnSZuGP9J7kSoQJzOJcp5xoAw9Jdn0B8edr9jNnHN3Avwu6RfXlncGP8cPcA
	03EaNuEiWvCMJjqYWClmLMo0rXwF+oAFYbcEmBjvw6xZnQazN03mNC1ddFl/a8UhT+PJPQ7h2A71K
	PD0WO1dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRSCT-00000006gA1-0vj7;
	Tue, 17 Jun 2025 09:01:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRSCP-00000006g78-2E8C
	for barebox@lists.infradead.org;
	Tue, 17 Jun 2025 09:01:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRSCO-0008Tl-Bh; Tue, 17 Jun 2025 11:01:44 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRSCO-003wfO-0V;
	Tue, 17 Jun 2025 11:01:44 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRSCO-00Cb9A-09;
	Tue, 17 Jun 2025 11:01:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 17 Jun 2025 11:01:39 +0200
Message-Id: <20250617090142.3000882-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_020145_572869_4F38D7AD 
X-CRM114-Status: GOOD (  11.51  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/3] TF-A: AM62lx: Fixes for barebox support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The AM62lx ARM trusted firmware support is not yet merged upstream,
the downstream support is currently available at [1]
Unfortunately this contains some bugs in the SCMI clock implementation
which confuses both the barebox and the Linux SCMI clock driver. TI is
aware of this, see [2] and [3] for details.

I am posting these patches here for others be able to build a usable AM62lx
TF-A for barebox and to refer to these patches from the barebox documentation.

Patches are based on the 11.00.11 tag.

[1] https://github.com/TexasInstruments/arm-trusted-firmware.git.
[2] https://lore.kernel.org/all/aCcSG5ah12N0yOwi@pengutronix.de/
[3] https://review.trustedfirmware.org/c/TF-A/trusted-firmware-a/+/34834/1

Sascha Hauer (3):
  plat: ti: k3: fix SCMI parent clock ids
  plat: ti: k3: return 0 parents for clocks which only have a single
    parent
  HACK: drop COPY_NAME_IDENTIFIER string length check

 drivers/scmi-msg/common.h                   | 1 -
 plat/ti/k3/common/drivers/scmi/scmi_clock.c | 9 ++++++---
 2 files changed, 6 insertions(+), 4 deletions(-)

-- 
2.39.5



