Delivery-date: Fri, 20 Mar 2026 09:32:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w3VH5-002xtu-0L
	for lore@lore.pengutronix.de;
	Fri, 20 Mar 2026 09:32:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w3VH4-0003Qs-Ia
	for lore@pengutronix.de; Fri, 20 Mar 2026 09:32:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rqXgKCbzmwx5W7+72b7dAL+XfUDrXk+j2+kX11wTtV8=; b=UdExj6w0g1IzaNOvaujpEmomzv
	SAlkC/Yc3cXtuCoi28srWWkQaJy68y+iMJ1gxgFOPmlhZ+QGD5L5vQ41GWmNhH7KvO1NhhimDx0V3
	R9ACa/aT3mdAgiKT+JX17cA2yj/PRJIJhuOFKDBcBlvYcHP1S2YFRoEMaTjW9ocMIvXQ+VD5SaJso
	TxBRCzQwTKCykaqHn4/JAyNpDpmtXncJtR6qvmeWSVqXB4vPX40p6hvY3e2CIUnRFxOjY7Ztdg1wr
	X4kvQwXXwu5TL9GuP8ATLDilADyuGPPhN/iWswI4TiI7jDWzBZLYVLQlmO+wgm7QcH3PH1ro4E32v
	UuDVMGWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3VGd-0000000CLxs-2nEG;
	Fri, 20 Mar 2026 08:31:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3VGb-0000000CLw8-2LyD
	for barebox@lists.infradead.org;
	Fri, 20 Mar 2026 08:31:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3VGK-00031W-1a; Fri, 20 Mar 2026 09:31:20 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3VGJ-001DBP-27;
	Fri, 20 Mar 2026 09:31:19 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3VGJ-0000000DiE9-2JU9;
	Fri, 20 Mar 2026 09:31:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 20 Mar 2026 09:31:16 +0100
Message-Id: <20260320-compressed-firmware-rockchip-v1-0-7d03c7e39d2f@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANQFvWkC/x3MSwqAMAwA0atI1gZqxQ9eRVxom2oQrSSggnh3i
 8sHwzygJEwKXfaA0MnKcU8o8gzcMu4zIftksMbWprQGXdwOIVXyGFi2axRCiW51Cx9ofWiprOp
 maipIi1QGvv99P7zvB/mSrVBuAAAA
X-Change-ID: 20260320-compressed-firmware-rockchip-2df8e3567b75
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773995479; l=1299;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=sAlDsivNDQkzZiyCKZP4SdVGf+WMmUTkOWh9LhibhFQ=;
 b=sWsIY+03K3dJ6LU4AdOX00eLYdE0W8RiW/hX0XMNMZR6OwN1rBCACZmpFUVatmHOZ7Jwgw9O0
 gox10kZusE9A6WM1fbWIM/BmXKVUHR6aqJF13yeaVbwCDLDgbzhcaUs
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260320_013137_600953_EE9CF715 
X-CRM114-Status: UNSURE (   6.98  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/6] Rockchip: Enable MMU before uncompressing TF-A and
 OP-TEE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Having TF-A and OP-TEE compressed in the PBL is nice for reducing the
binary size, but comes with a penalty of increased startup time. This
series is based on the compressed-firmware series and reduces this
penalty significantly by enabling the MMU before uncompressing the
binaries. Most of the series is actually cleanup to have the necessary
DRAM resources available in atf.c

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (6):
      ARM: rockchip: dmc: rework DRAM functions
      ARM: rockchip: atf: make all memory banks available
      ARM: rockchip: atf: add OP-TEE fdt creation function for all SoCs
      ARM: Rockchip: Drop rk3xxx_atf_load_bl31()
      ARM: rockchip: separate physical DRAM start from usable start
      ARM: rockchip: atf: enable MMU in PBL

 arch/arm/mach-rockchip/atf.c | 151 +++++++++++++++++-----------------------
 arch/arm/mach-rockchip/dmc.c | 162 ++++++++++++++++++++++---------------------
 include/mach/rockchip/atf.h  |  38 ++++------
 include/mach/rockchip/dmc.h  |  10 +--
 4 files changed, 163 insertions(+), 198 deletions(-)
---
base-commit: 1e4120c320bd36e264d579289da400e6d1e44950
change-id: 20260320-compressed-firmware-rockchip-2df8e3567b75

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



