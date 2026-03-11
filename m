Delivery-date: Wed, 11 Mar 2026 12:07:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0HPN-00AQPu-0d
	for lore@lore.pengutronix.de;
	Wed, 11 Mar 2026 12:07:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0HPN-00081A-Dn
	for lore@pengutronix.de; Wed, 11 Mar 2026 12:07:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qIFBklbvkFKa6b0GSvXq/UEx9sF2nYE5PV/i3M6AZDQ=; b=FEqlJpAdhq8nXjz+UN6xKvhoiQ
	mzqkv46iolLzEMzpjEV3TCQ3n5NaeUYoP/nGx1Sml9Wp/UAQYD04As+k0nFd4iftfTkfcTMWPCqIs
	szyqjPwO+71y3Xhjn620Y3UkjB1Kl4Zao3kNFnDB6YuI3c9wda115GIBdC5jlfEl3S5FqDyQm8Max
	7xgxRyXIyoXtIR4nPTGpOX3qsx9Ql4bfinnMec0r6EfF71pdAsugdaOciZ0VgtJdYehmU5DAEomSH
	xRO886JEMFOSibs308ISXQPgqdoGAD7BzarDCuyzEhIYUufxyViSXTG9u0xppKruqWI4bh/c4Xo2K
	VuwCgwkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0HOx-0000000BTCa-18Qq;
	Wed, 11 Mar 2026 11:06:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0HOv-0000000BTBG-0xW9
	for barebox@bombadil.infradead.org;
	Wed, 11 Mar 2026 11:06:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=qIFBklbvkFKa6b0GSvXq/UEx9sF2nYE5PV/i3M6AZDQ=; b=LNlIo8HhuipQwY/D/n06f5hJPA
	Iq6d/Wf0y5pDxcpDpLBKTbhciYAkUykvdZja0+Luv5g+li3jxaf2fW6H34zuYnf2Rh/BC/8aMPRAI
	un3JCOpfyI/opDU/3bYyHjqSXn4CwCgL8zjBkSbI6HPPUNpCeKcsddWwy/GtoeUnnx1mTcEPsCW7N
	rqEr27ibff/P2CpTgImY8FmgGn625AgPUcZPn5P4E8KC4Cr9WrLACsbj83hIHcHoLcm+Cx9yZlC3z
	XjJ4vAJoNo2QYD+ibUfZ9nxQKkirepCyDrDyfgfuFUvypV9OONprm5iik/UpQpW++ZYIFQc/2TbTt
	FI0f5JAw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0HOs-0000000Gmav-1iv4
	for barebox@lists.infradead.org;
	Wed, 11 Mar 2026 11:06:52 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1w0HOq-0007lL-Qg; Wed, 11 Mar 2026 12:06:48 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 11 Mar 2026 12:06:41 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260311-agilex5-qspi-v1-3-be8a8e1318e1@pengutronix.de>
References: <20260311-agilex5-qspi-v1-0-be8a8e1318e1@pengutronix.de>
In-Reply-To: <20260311-agilex5-qspi-v1-0-be8a8e1318e1@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260311_110650_656958_F90AF864 
X-CRM114-Status: GOOD (  10.40  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] arm: socfpga: mailbox_s10: add error messages for QSPI
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The mailbox commands may fail. For example, the SDM may prevent direct
access from the HPS to the QSPI.

Print error messages to help the developer in debugging these issues.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/mach-socfpga/mailbox_s10.c | 15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-socfpga/mailbox_s10.c b/arch/arm/mach-socfpga/mailbox_s10.c
index f6aacd5551f2..ff2f261014b2 100644
--- a/arch/arm/mach-socfpga/mailbox_s10.c
+++ b/arch/arm/mach-socfpga/mailbox_s10.c
@@ -311,22 +311,29 @@ int socfpga_mailbox_s10_qspi_open(void)
 		socfpga_mailbox_s10_qspi_close();
 		goto retry;
 	}
-	if (ret)
+	if (ret) {
+		pr_err("QSPI: QSPI_OPEN failed: 0x%x\n", ret);
 		return ret;
+	}
 
 	/* HPS will directly control the QSPI controller, no longer mailbox */
 	ret = mbox_send_cmd(MBOX_ID_BAREBOX, MBOX_QSPI_DIRECT, MBOX_CMD_DIRECT,
 			    0, NULL, 0, &resp_buf_len, resp_buf);
-	if (ret)
+	if (ret) {
+		pr_err("QSPI: QSPI_DIRECT failed: 0x%x\n", ret);
 		goto error;
+	}
 
 	/* Get the QSPI clock from SDM response and save for later use */
 	clk_khz = resp_buf[0];
-	if (clk_khz < 1000)
+	if (clk_khz < 1000) {
+		pr_err("QSPI: Unexpected reference clock rate: %d kHz\n",
+		       clk_khz);
 		return -EINVAL;
+	}
 
 	clk_khz /= 1000;
-	pr_info("QSPI: reference clock at %d kHZ\n", clk_khz);
+	pr_info("QSPI: reference clock at %d kHz\n", clk_khz);
 
 	reg = (readl(SOCFPGA_SYSMGR_ADDRESS + SYSMGR_SOC64_BOOT_SCRATCH_COLD0)) &
 			~(SYSMGR_SCRATCH_REG_0_QSPI_REFCLK_MASK);

-- 
2.47.3



