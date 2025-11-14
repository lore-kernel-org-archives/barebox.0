Delivery-date: Fri, 14 Nov 2025 08:24:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJoAA-000p8a-2q
	for lore@lore.pengutronix.de;
	Fri, 14 Nov 2025 08:24:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJoAA-0000aS-BV
	for lore@pengutronix.de; Fri, 14 Nov 2025 08:24:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CZoh/W46BBLuGmNzyAH2ugSgUa9txckW4J8S84n4Bsc=; b=DnpdcrQVrOxMbo
	HJloWPNfnaws9arfbQq3u1BV6TN2AsVc32B+i8BU/8Srnh9eE8pliIPQp/d3vdIoCI+qZgvIdKc7W
	ZevTxcz/BN8A0VaRWIJZ1mAyAZNSmk+LAqd3fsJc6YRGAb/azuC3PYaygHlQToKeY3Jy9hekWI3R7
	3+UKZi1ggIPUd6pg92Fa3H+VPgRJymKFtXqwSY31OfJyeHbIWl1RjtmdntistX+D6ZLR8EXg4fYco
	T9o4lkth3fWkzs/UiOajPrOEsjrg/o4DYIEP0OPk2tNHc/a8GMS+Np9WXLnemm6M97nUSwYLnEf9N
	TF3Z52lberFJt6qdb6UQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJo9e-0000000BkUZ-1HF8;
	Fri, 14 Nov 2025 07:23:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJo9b-0000000BkTT-2FxV
	for barebox@lists.infradead.org;
	Fri, 14 Nov 2025 07:23:32 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1vJo9Y-0000Ng-1w; Fri, 14 Nov 2025 08:23:28 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri, 14 Nov 2025 08:23:14 +0100
Message-Id: <20251114-v2025-11-0-topic-socfpga-arria10-v1-0-e091cddacea5@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOLYFmkC/x2NQQqEMAwAvyI5b6ApWmS/snioMdVcbElFFsS/2
 93bzGXmgiqmUuHdXWByatW8N6FXB7zFfRXUpTl45wci6vH8ERKhwyMXZayZU1kjRjON5JCHIGk
 Oyxg8Q8sUk6Tf/+Iz3fcDPUDlkXIAAAA=
X-Change-ID: 20251114-v2025-11-0-topic-socfpga-arria10-c56efb6d862c
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Bruno Knittel <bruno.knittel@bruker.com>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_232331_583579_EA33CA69 
X-CRM114-Status: UNSURE (   6.45  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/2] ARM: socfpga: arria10: earlier debug output
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The UART is a dedicated peripheral on Arria10 and therefore can be used
without the FPGA bitstream loaded. Move the lowlevel UART init to an
earlier stage to get debugging output for the DDR and FPGA setup .

Tested on the Reflex Achilles.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
Bruno Knittel (2):
      ARM: socfpga: arria10-reset-manager: release UART0
      ARM: socfpga: arria10-init: setup uart earlier

 arch/arm/mach-socfpga/arria10-init.c          | 8 ++++----
 arch/arm/mach-socfpga/arria10-reset-manager.c | 1 +
 2 files changed, 5 insertions(+), 4 deletions(-)
---
base-commit: d6f0974673c0e3da00f8d0789d6302a43f3e478d
change-id: 20251114-v2025-11-0-topic-socfpga-arria10-c56efb6d862c

Best regards,
-- 
Steffen Trumtrar <s.trumtrar@pengutronix.de>



