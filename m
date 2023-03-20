Delivery-date: Mon, 20 Mar 2023 12:43:01 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1peDum-007l9A-BN
	for lore@lore.pengutronix.de; Mon, 20 Mar 2023 12:43:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1peDum-00077g-5S
	for lore@pengutronix.de; Mon, 20 Mar 2023 12:43:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=xdrvkJJZRcAfHQ3nQQ4MpjU1oltlIAlWp6540xbB/mc=; b=gIDTs7U0YoE4BBRZVU5HX0YTuc
	B2bH3OfgL6cDesq4DrUt23CbqJaqxQ/YTh94fO4GnSDpGWIhwEI/wneHKHx++03OIgop6YmvZPpoN
	Yd0Qfq8ejPsIMJhezIvVXAOPmpoupfjzjQ3MapzgwbgwMCkq7Ev0nzzBvERPrQjVFh6l1VmViO6gD
	4gHY4ZqHW2fRxwOk52oNP60f4oS5Bi4sQHwKgoP/srbsJOFmMsJUXtd/zbNWODaW9warDs3ZVgIgR
	X2RrJy02VuG8ExutKgw12jtSvMdODJJss4UmuItWnh+a4Xk0SAX5u6V95zkGcmbxjt8BmeduZH68W
	Wc9ChiWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peDtN-008qrv-1O;
	Mon, 20 Mar 2023 11:41:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peDtJ-008qqi-2c
	for barebox@lists.infradead.org;
	Mon, 20 Mar 2023 11:41:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <rhi@pengutronix.de>)
	id 1peDtG-0006pi-Ce; Mon, 20 Mar 2023 12:41:26 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <rhi@pengutronix.de>)
	id 1peDtF-005RkQ-OH; Mon, 20 Mar 2023 12:41:25 +0100
Received: from rhi by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <rhi@pengutronix.de>)
	id 1peDtF-009Ex0-4G; Mon, 20 Mar 2023 12:41:25 +0100
From: Roland Hieber <rhi@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Roland Hieber <rhi@pengutronix.de>
Date: Mon, 20 Mar 2023 12:41:23 +0100
Message-Id: <20230320114123.2202362-1-rhi@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230320_044129_848898_EAADDCA4 
X-CRM114-Status: UNSURE (   9.30  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] Documentation: imx: improve reboot mode section
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
 Documentation/boards/imx.rst | 15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/Documentation/boards/imx.rst b/Documentation/boards/imx.rst
index 6c16923340a8..6fbf1554d10e 100644
--- a/Documentation/boards/imx.rst
+++ b/Documentation/boards/imx.rst
@@ -86,8 +86,8 @@ The images can also always be started as second stage on the target:
 BootROM Reboot mode codes (bmode)
 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
 
-For select SoCs, barebox supports communicating an alternative boot medium
-that BootROM should select after a warm reset::
+For selected SoCs, barebox supports communicating an alternative boot medium
+that the BootROM should select after a warm reset::
 
   barebox@FSL i.MX8MM EVK board:/ devinfo gpr.reboot_mode
   Driver: syscon-reboot-mode
@@ -107,10 +107,17 @@ that BootROM should select after a warm reset::
 
   barebox@FSL i.MX8MM EVK board:/ gpr.reboot_mode.next=serial reset -w
 
-This will cause barebox to fall into serial download mode on an i.MX8MM.
+The example above will cause barebox to jump back into serial download mode on
+an i.MX8MM by writing 0x10 into the *SRC_GPR9* register (offset 0x30390094) and
+0x40000000 into the *SRC_GPR10* register (offset 0x30390098), and then issuing a
+warm :ref:`reset <command_reset>`.
 
 Different SoCs may have more possible reboot modes available.
-See the section on :ref:`Reboot modes<reboot_mode>` for more information.
+Look for documentation of the *SRC_SBMR* and *SRC_GPR* registers in the
+Reference Manual of your SoC; the values for the ``mode-*`` properties often
+correspond directly to the boot fusemap settings.
+
+See the section on :ref:`Reboot modes<reboot_mode>` for general information.
 
 High Assurance Boot
 ^^^^^^^^^^^^^^^^^^^
-- 
2.30.2



