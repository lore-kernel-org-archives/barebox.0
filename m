Delivery-date: Tue, 26 Mar 2024 12:51:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rp5LF-005BWG-1d
	for lore@lore.pengutronix.de;
	Tue, 26 Mar 2024 12:51:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rp5LE-0004nx-Ud
	for lore@pengutronix.de; Tue, 26 Mar 2024 12:51:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Foh1z0XneBgJ1k7aGnoR0/1uc3kVM6oaBz3G0UO/1VI=; b=Imt189VsbtbA6xHjvdkw7oz6ME
	5G/D1dfuUBONo1wRG/dh5jg118YgM+8mjsyhwf+8rZyn5OBSldOK8uaC9UC7BnBUXLKjsiDzt0IJ7
	1ffFPjW+EhiwkAxlKziqcfaIdMuEloQfmjxhE6+YszSBSc1o1EEI/hTUOfr6pFqyckiAA5wTxzJUA
	iJbglLofVoMwFagFza3uErfW89W/OqbZ9KFVqKc/qQcXRHgZzdJBWLMu/RB53m/Vm8xRZwAIFJTVl
	y/shOCgxuyclIE/ekys4Qyj9q29tbegr3EQ3s6O3f5RwsqizDVl8tZqqz6bJ0DboxJK1n95kPttlo
	rPd1mJnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp5Kf-00000004L4D-16iN;
	Tue, 26 Mar 2024 11:51:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp5KX-00000004L19-3l8x
	for barebox@lists.infradead.org;
	Tue, 26 Mar 2024 11:51:05 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1rp5KT-0004KL-V7
	for barebox@lists.infradead.org; Tue, 26 Mar 2024 12:50:58 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue, 26 Mar 2024 12:50:40 +0100
Message-Id: <20240326-worktree-barebox-bosch-be-ppm4-v1-0-7ea75c487348@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJC2AmYC/x3NQQ6CMBBG4auQWTtJW6pRr2JcMPAjEyNtpkRIC
 He3cflt3tupwBSF7s1Ohq8WTXOFPzXUT938AutQTcGF6Npw4TXZezGApTNI2lhS6ScWcM6fyA4
 3GYez99FfqUayYdTtP3g8j+MHcucYDnAAAAA=
To: barebox@lists.infradead.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1444;
 i=s.trumtrar@pengutronix.de; h=from:subject:message-id;
 bh=u/ouzUzMCihuonHEM7Jr6eVz5UKvn9ow5iJALL7DSkQ=;
 b=owGbwMvMwCUmvd38QH3grB+Mp9WSGNKYtk0L+OKjOPWOjr+6mPpur40vFs3bs+L7mq1CV4+VP
 L0zLXTS4o5SFgYxLgZZMUWWyLWHNDYLf9b5cvw8A8wcViaQIQxcnAIwkY1LGRnOOPk5+VpvX5b+
 6V5Bpvj8GK6lUwQmL29zfrTR/Y0xw2MLRob9Ss9tV19h+x47pU7qsWRHxfOXvhMcbt/Ycjh+tZk
 VVysfAA==
X-Developer-Key: i=s.trumtrar@pengutronix.de; a=openpgp;
 fpr=59ADC228B313F32CF4C7CF001BB737C07F519AF8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_045102_102733_812D87E5 
X-CRM114-Status: UNSURE (   6.46  )
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
Subject: [PATCH 0/2] mci: fix warning and linker error
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series fixes the following warning in mci-core:

   drivers/mci/mci-core.c:1455:17: warning: the address of 'status' will always evaluate as 'true' [-Waddress]

And the following linker error:

   arm-v7a-linux-gnueabihf-ld: drivers/mci/arasan-sdhci.o: in function `arasan_zynqmp_sdcardclk_set_phase': drivers/mci/arasan-sdhci.c:467: undefined reference to `zynqmp_pm_set_sd_tapdelay'
   arm-v7a-linux-gnueabihf-ld: drivers/mci/arasan-sdhci.c:472: undefined reference to `zynqmp_pm_sd_dll_reset'
   arm-v7a-linux-gnueabihf-ld: drivers/mci/arasan-sdhci.o: in function `arasan_zynqmp_sampleclk_set_phase': drivers/mci/arasan-sdhci.c:372: undefined reference to `zynqmp_pm_sd_dll_reset'
   arm-v7a-linux-gnueabihf-ld: /home/str/work/customers/bosch.be.ppm2/worktree/barebox/bosch.be.ppm2/drivers/mci/arasan-sdhci.c:398: undefined reference to `zynqmp_pm_set_sd_tapdelay'
   make[1]: *** [Makefile:900: .tmp_barebox1] Error 1

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
Steffen Trumtrar (2):
      mci: mci-core: fix mci_switch_status call
      mci: arasan: fix build for non-ZynqMP

 drivers/mci/arasan-sdhci.c | 3 ++-
 drivers/mci/mci-core.c     | 4 +---
 2 files changed, 3 insertions(+), 4 deletions(-)
---
base-commit: bbda2f90b296e953bbef20d00c58447eb88ff84f
change-id: 20240326-worktree-barebox-bosch-be-ppm4-0e9bfd511418

Best regards,
-- 
Steffen Trumtrar <s.trumtrar@pengutronix.de>



