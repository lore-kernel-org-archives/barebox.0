Delivery-date: Fri, 26 Jun 2026 19:44:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wdAbr-00A9ZI-0o
	for lore@lore.pengutronix.de;
	Fri, 26 Jun 2026 19:44:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wdAbq-0007Xm-M6
	for lore@pengutronix.de; Fri, 26 Jun 2026 19:44:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=jkTAS/O181nPJp0RKV0RTTurONniHPGp8NX+k2rziP4=; b=fxHRFekH8TOCCJ2rL0mTyaKgKG
	xABP0+PWDTV2Y03S+8Cnauf99Pr+Mw2akJSP3luwvQpQPvojn1k01hcPcbycdXbyrxqjBOQ5Po+9R
	6TwW1OAWDs6N+s959K5FMe9u9/v+JZTUz1dwQVm5A+DCQxW/Pgbd7tC/8rKV2oHBAmwBRTdJjOM1Y
	STYJkn84sCt7sg/j94nMpD89FEoIsZgPF/XLsxO67Lw/wvObTigKmz/cD/5uLzXt71VWrVC0KtGH1
	/Qa3ZJZlwU9m2eeQu3R+2tyxmlnzTcbs71ItInthXycOjsvUA+il1DOpOU9G5kJCinVGzigY0LRMb
	qRHJBtrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdAai-0000000BiWR-45yA;
	Fri, 26 Jun 2026 17:43:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdAag-0000000BiUw-1zGV
	for barebox@lists.infradead.org;
	Fri, 26 Jun 2026 17:43:47 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wdAae-0003ev-OF
	for barebox@lists.infradead.org; Fri, 26 Jun 2026 19:43:44 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Date: Fri, 26 Jun 2026 19:31:36 +0200
Message-ID: <20260626174342.1923132-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_104346_520701_C400C3D3 
X-CRM114-Status: UNSURE (   6.01  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/5] usb: port over some U-Boot fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

A user reported on IRC that the USB keyboard fails to enumerate on an
MNT Pocket Reform, unless the laptop's power cable is connected.

This series collects a number of potential fixes for this issue.

Ahmad Fatoum (5):
  usb: hub: wait after port reset recovery
  usb: wait after initial device descriptor read
  usb: wait after setting device configuration
  usb: separate descriptor and config requests
  usb: hub: tolerate transient disconnects during reset

 drivers/usb/core/hub.c | 26 +++++++++++++++++++++++---
 drivers/usb/core/usb.c | 28 ++++++++++++++++++++++++++++
 2 files changed, 51 insertions(+), 3 deletions(-)

-- 
2.47.3



