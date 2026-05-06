Delivery-date: Wed, 06 May 2026 11:07:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKYEZ-001Xen-3C
	for lore@lore.pengutronix.de;
	Wed, 06 May 2026 11:07:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKYEU-00012E-UN
	for lore@pengutronix.de; Wed, 06 May 2026 11:07:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SPaDNq7ET9p/tZo2a5AmagE4FKp/SzaROVPqv8tE/yw=; b=VOScBM+f3AUo3I
	Mt+2b6J8Ds6wkxech1sVQLE//dBho8pski4yqW315lep5F6Z2EyQ3RnKd9YD3onZ6HhJEdGwTqbKJ
	NysB1mGVuKKKothNh7WdNpc1Se+5T74ifaNtmu8f1V7v9iu/hd0huIUQ+fy+HcaK/gY5I8UxvVLJV
	cBfoZylrdZMHPW8w6VsMB1lb2GarFJgP92Ptw9GQMCUFyLenNXAgE6CoY34RfN/eFtSi8AQlEtd3c
	x79DjHDl9TOuS5t46XBLcfaZQ03hDUc7dPHuvgdA5rUt5FqqnJiLGi9n2FG9FALsR7TLeEmxP2ici
	NkzaGK+dHzxUH0WxzeZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKYCx-00000000Htp-48Dl;
	Wed, 06 May 2026 09:06:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKYCv-00000000Hqe-3h2q
	for barebox@lists.infradead.org;
	Wed, 06 May 2026 09:06:18 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wKYCr-0008RK-WC; Wed, 06 May 2026 11:06:14 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 06 May 2026 11:06:06 +0200
Message-Id: <20260506-socfpga-agilex5-qspi-v1-0-94def85c1b80@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAH4E+2kC/x3MSwqFMAxA0a1IxgaqEH9bEQexxhoQrQ08BHHvr
 zg8g3sfMEkqBkPxQJKfmp5HRlUW4Dc+gqAu2VC7unHkCO30awyMHHSXm/CyqEh+7nleqpa4g5z
 GJKve33ac3vcPTyOOJGYAAAA=
X-Change-ID: 20260505-socfpga-agilex5-qspi-5cb9abd175a8
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260506_020617_960183_004810F9 
X-CRM114-Status: UNSURE (   7.58  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/6] arm: socfpga: agilex5: cleanup QSPI flash low level
 code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Agilex 5, barebox runs in the HPS (hard processor system) which needs
to explicitly request QSPI flash access from the SDM (secure device
manager). This request may be denied by the SDM. Furthermore, barebox
needs to store the clock rate reported by the SDM.

Cleanup and refactor the code that handles the QSPI flash request from
the SDM. This is a preparation for eventually reading a second stage
boot loader from QSPI flash.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Michael Tretter (6):
      arm: socfpga: agilex5: add missing include soc64-regs.h
      arm: socfgpa: agilex5: remove mailbox_s10 from barebox proper
      arm: socfpga: agilex5: extract function to request qspi access
      arm: socfpga: mailbox_s10: keep clock rate in Hz
      arm: socfpga: mailbox_s10: add write_qspi_refclk helper
      arm: socfpga: agilex5: extract write_qspi_refclk from mailbox

 arch/arm/mach-socfpga/Makefile              |  1 -
 arch/arm/mach-socfpga/atf.c                 | 27 +++++++++++++++++++++++++--
 arch/arm/mach-socfpga/mailbox_s10.c         | 23 ++++++++---------------
 include/mach/socfpga/mailbox_s10.h          |  2 +-
 include/mach/socfpga/soc64-firewall.h       |  2 ++
 include/mach/socfpga/soc64-system-manager.h | 21 +++++++++++++++++++++
 6 files changed, 57 insertions(+), 19 deletions(-)
---
base-commit: 7a178f01f6e25474a5eb6e071ca479076b8d4d92
change-id: 20260505-socfpga-agilex5-qspi-5cb9abd175a8

Best regards,
-- 
Michael Tretter <m.tretter@pengutronix.de>



