Delivery-date: Thu, 30 Oct 2025 14:13:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vESTQ-00DQdR-0N
	for lore@lore.pengutronix.de;
	Thu, 30 Oct 2025 14:13:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vESTP-00084g-Jl
	for lore@pengutronix.de; Thu, 30 Oct 2025 14:13:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dupUYWeesjHngCveVrQl+vmQDpJoeOUiShU5ISR2nsk=; b=A6h531lBp1/YqtdPOPO6FptxWX
	vW6mdXlqrQI9k3V6GY39LR3iHzMm4A6+J153em2UGWMdLzp/kVPsc0csveZAkRgZs69jbqbyWtB8L
	tNvrv5TXKohrpYvuHn3mf0BVkpKrdpKMWEm/qqM5V+GxnaM6E0B9oWbS3eToEdwLu0Yz/7LF2FmK0
	XbROx5cM0rwgBSHrRpem3CzFrfxffoUV+xTeXfhxL7a9sxR1Qfnu9Sf5SdBR2B7BxBj0j1a892qX5
	AelgCN8DqW6P0+SPLfbC4qO8SdMIrF4RKw2KXfAJ/RBJgxdhGvsjTWj8gqokx4wfGqzeoHZF/XRKf
	Cp5NMlYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vESSs-00000004BXU-0zPw;
	Thu, 30 Oct 2025 13:13:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vESSp-00000004BXA-384n
	for barebox@lists.infradead.org;
	Thu, 30 Oct 2025 13:13:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vESSm-0007x4-Sv; Thu, 30 Oct 2025 14:13:12 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vESSm-006DaT-2H;
	Thu, 30 Oct 2025 14:13:12 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vESSn-00000009dpH-0JV7;
	Thu, 30 Oct 2025 14:13:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <20251030-gitignore-build-v2-1-8f4fcd824921@pengutronix.de>
References: <20251030-gitignore-build-v2-1-8f4fcd824921@pengutronix.de>
Message-Id: <176182999262.2297613.14996962564252896621.b4-ty@pengutronix.de>
Date: Thu, 30 Oct 2025 14:13:12 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251030_061315_813918_1035B649 
X-CRM114-Status: UNSURE (   8.90  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] gitignore: ignore /build, /oe-logs, /oe-workdir
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 30 Oct 2025 09:41:00 +0100, Jonas Rebmann wrote:
> Documentation such as Documentation/boards/kvx.rst and tooling such as
> conftest.py suggests /build is a good choice for build output directory.
> The build system does set up a .gitignore in the build directory but
> this has no effect if /build is a symlink to outside the tree.
> 
> Similarly, YOCTOs "devtool" sets up the symlinks /oe-logs and
> /oe-workdir to point to the respective paths in yoctos build tree.
> 
> [...]

Applied, thanks!

[1/1] gitignore: ignore /build, /oe-logs, /oe-workdir
      https://git.pengutronix.de/cgit/barebox/commit/?id=542520c8db31 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



