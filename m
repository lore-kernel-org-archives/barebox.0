Delivery-date: Wed, 20 May 2026 10:34:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPcO3-001nuc-34
	for lore@lore.pengutronix.de;
	Wed, 20 May 2026 10:34:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPcO3-0003B5-6O
	for lore@pengutronix.de; Wed, 20 May 2026 10:34:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RWkw5QpHCS6Hh/fN8/A3QtCxpyRU6D6taqbyuLEL+KE=; b=QjVMaidprKrnE4
	wyb1Iav6J4TXgmRym7Lipo7vW3Nfqi5TKORYo60UP6cBuh1eXuaTqC1Frz7Zm3Y5SuJY7EXiadDrs
	jwQeQTvzOFBYFuB9Tlb2UeEk+H5y4hq/kZf4oZGwspBYNq1NexhKrBc8cxohWa8uhBQ3zVtGPmKKs
	VoJD+ytfAhANm4c0Yda3CadkW5Y0SFrR5sTIexib9ypddRSBQXrJ/CjQmzSIxuefRMlla5fHppcxg
	NKIe0yHn5WFUs+14gz/1c3y9vF0W1HDizXZBydiDGlFYeUM1+RIj5Zxqrz+aVs/TGtf5njkKDPdf1
	z1GbY8+hSRgXmLo3rwEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPcMd-00000003y1K-3E0R;
	Wed, 20 May 2026 08:33:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPcMa-00000003xyU-3nR0
	for barebox@lists.infradead.org;
	Wed, 20 May 2026 08:33:14 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pfitzner@pengutronix.de>)
	id 1wPcMY-0002uz-4s; Wed, 20 May 2026 10:33:10 +0200
From: Fabian Pfitzner <f.pfitzner@pengutronix.de>
Date: Wed, 20 May 2026 10:32:58 +0200
Message-Id: <20260520-fpf-bootsource-instance-index-v1-0-29942f0e8f2f@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALpxDWoC/x2MywqAIBAAfyX2nKBGz1+JDj7W2ouGWxFE/550m
 2FgHmDMhAxT9UDGi5hSLKLqCtxm4oqCfHHQUneyVYMIexA2pYPTmV2pkQ8Tf/B4C9Nbq+TQjNo
 0UB57xkD3/5+X9/0Ad2MpBW8AAAA=
X-Change-ID: 20260518-fpf-bootsource-instance-index-a7bb108392a3
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Fabian Pfitzner <f.pfitzner@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_013312_953395_7D7F795F 
X-CRM114-Status: UNSURE (   8.71  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/2] Implement recovery boot detection for SPI flash
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

As of now, there is only the boot rom log on i.MX processors that give us
information on whether we have booted from the primary or recovery image.

Extract this information into a Barebox variable in order to pass this
information to user space. This is useful for tools such as RAUC, that
rely on that information when updating the bootloader atomically.

The variable is called `bootsource_instance_index`.
The intention behind the name is, that for an instance we can have
multiple boot images, where the primary is depicted as zero, and the
recovery/secondary is depicted as a 1.

There is no implementation on how to pass this information to user
space. This could be implemented by a boot script that interprets
the content of that variable into a human readable format.

Successfully tested on the congatec-qmx8p.

Signed-off-by: Fabian Pfitzner <f.pfitzner@pengutronix.de>
---
Fabian Pfitzner (2):
      bootsource: add bootsource instance index variable
      arch: arm: imx: detect secondary boot

 Documentation/user/variables.rst |  1 +
 arch/arm/mach-imx/boot.c         | 52 ++++++++++++++++++++++++++++++++++++++++
 common/bootsource.c              | 20 ++++++++++++++++
 include/bootsource.h             | 11 +++++++++
 4 files changed, 84 insertions(+)
---
base-commit: 1806d0f4835a1217a298f82fa2fc88b2694380f2
change-id: 20260518-fpf-bootsource-instance-index-a7bb108392a3

Best regards,
-- 
Fabian Pfitzner <f.pfitzner@pengutronix.de>



