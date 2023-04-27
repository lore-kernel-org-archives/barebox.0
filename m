Delivery-date: Thu, 27 Apr 2023 20:48:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ps6fj-002bpl-JW
	for lore@lore.pengutronix.de; Thu, 27 Apr 2023 20:48:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ps6fj-0005WC-GI
	for lore@pengutronix.de; Thu, 27 Apr 2023 20:48:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bzZ4wBEYkMIVVi0LEcTFp1jCMeezFmiL4T/z6TXJ2iU=; b=s5xqgyCtMOqzfAXz8Ql7dFLE2K
	WnZdskIL2LJlQKIY8Sori51n1Da/C9K7gbk1b2X30ULalS/zIuxGnC1vy/xXZyMoz/TSTkN9iMFmo
	jba9whLwXCUS+SORbk2UEXiQzkhsrxlx0fXKa2FvDChMYgYeLVKWU6zX7RjWLv3AsTaUI0jTWYTwm
	FmgD4pkmA+zZxZ/ATFEXiuBxNBo/eYsSHMMLegAePOKgLz8eAyfnraXJ3NDUXMMQDUS4NI6qt52ce
	67ysYW4kT14ouAfHLGncbBxZQBJ1I3n2uXgQpn8TaeBD8C6jdrUCpXIiyIh0Zi9Dt52FasWStzstm
	2RY/+0HA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ps6eW-007FNP-1S;
	Thu, 27 Apr 2023 18:47:36 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ps6eT-007FMz-1C
	for barebox@lists.infradead.org;
	Thu, 27 Apr 2023 18:47:34 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id EAEE663F1D
	for <barebox@lists.infradead.org>; Thu, 27 Apr 2023 18:47:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E0F32C433EF;
	Thu, 27 Apr 2023 18:47:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682621252;
	bh=ZaDXGwdAGZygXu6m3Npo5L8tgtNva0bsC/VPY0yltAo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=AqGNxIdDRcQRqWbz26kT1DmZkOYMbZ+4+vZ/cOoui3w99lIqHWsxwUABmGJ4KpeOK
	 5R1R5/NCZSOwxdJash8DHNNOMUnksisYAEP1Ss1rkD1lK7mo5uB95RSd0QYYdeOZDS
	 amq7SvSbcTekZtm6MXJhAgbK+NxMG8vPADV+S0LnPVfnqLZBEEWU23K0jr0Y5Im7Kj
	 X8wv3wf7GBw/odik17FWG9a0H1D1LqpMzgZDyxu2VBhitNtLdnZqqMaZIMr299KKM8
	 wpPx6pCaoxSiG+snG5m/2ifuNyUzGfQavHD2sP0YY9ByAnDFT0jl1fsM5j4xJwos3g
	 Inuziid37xiiA==
From: Wolfram Sang <wsa@kernel.org>
To: barebox@lists.infradead.org
Cc: Wolfram Sang <wsa@kernel.org>
Date: Thu, 27 Apr 2023 20:47:17 +0200
Message-Id: <20230427184718.105393-2-wsa@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20230427184718.105393-1-wsa@kernel.org>
References: <20230427184718.105393-1-wsa@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230427_114733_445351_09F52B93 
X-CRM114-Status: UNSURE (   9.54  )
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
X-Spam-Status: No, score=-104.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] ARM: at91: usb-a926x: remove nand partitions from config
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We define partitions as well in the board file. Leading to:

New partition nand0.at91bootstrap (0x00000000-0x0001ffff) on nand0 overlaps with partition at91bootstrap_raw (0x00000000-0x0001ffff), not creating it
cannot create nand0.at91bootstrap: Invalid argument
addpart: Invalid argument

So, remove it from the config file.

Signed-off-by: Wolfram Sang <wsa@kernel.org>
---

Or shall I rather remove it from the board file?

 arch/arm/boards/usb-a926x/defaultenv-usb-a926x/config | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm/boards/usb-a926x/defaultenv-usb-a926x/config b/arch/arm/boards/usb-a926x/defaultenv-usb-a926x/config
index 49199ba391..f9159cb946 100644
--- a/arch/arm/boards/usb-a926x/defaultenv-usb-a926x/config
+++ b/arch/arm/boards/usb-a926x/defaultenv-usb-a926x/config
@@ -29,10 +29,6 @@ kernelimage=zImage
 #kernelimage=Image
 #kernelimage=Image.lzo
 
-nand_device=atmel_nand
-nand_parts="128k(at91bootstrap),256k(barebox)ro,128k(bareboxenv),128k(bareboxenv2),128k(oftree),4M(kernel),120M(rootfs),-(data)"
-rootfs_mtdblock_nand=6
-
 autoboot_timeout=3
 
 bootargs="console=ttyS0,115200"
-- 
2.35.1



