Delivery-date: Thu, 18 Sep 2025 16:20:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uzFUx-004Uz0-2Y
	for lore@lore.pengutronix.de;
	Thu, 18 Sep 2025 16:20:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uzFUx-0008Tx-92
	for lore@pengutronix.de; Thu, 18 Sep 2025 16:20:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vDwCcXw1NkZ1rhhGAV6yUDFVkKxYSec3VxxUOAvqHHY=; b=ion9M7MDTrLA3jUYHscyKLWAzV
	JCS2xMS7g5kNhZYpMWbPxhg95KgIuI0Rplc10O2V5T/uzYPo3xrvyXqOILKY/qqfle+mjYIEHj7QW
	JzHvNhUeUafjGTRpvt7Vocfy4ArGB8naZvmB2m3frTbSqQH9kaU4ARNMy+7GeCxwI+Xe3G3E7imHk
	sOECsG6nAK4TuevPmZsapIMIxlUuVP8mNtdz4sVgW4i5dqdqfYKPfclJFOpwvB2xSnc4Zl3aSshv1
	E00aoTnwaB6xglMLoDtl6bcgU+GQ3pGDJ/C7j4Q5hMRPJmivfmpJ+LTGv2JAIVqkibdk0gejogyPu
	//ItY+Ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzFUX-000000006a3-2sFl;
	Thu, 18 Sep 2025 14:20:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzFUV-000000006XP-1Tjr
	for barebox@lists.infradead.org;
	Thu, 18 Sep 2025 14:20:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uzFUS-0008Lh-8g; Thu, 18 Sep 2025 16:20:04 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uzFUS-001xDe-0H;
	Thu, 18 Sep 2025 16:20:04 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uzFUS-0000000EPES-033N;
	Thu, 18 Sep 2025 16:20:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Michael Tretter <m.tretter@pengutronix.de>
In-Reply-To: <20250916-rock5-bbu-default-target-v1-1-aba344fa5c50@pengutronix.de>
References: <20250916-rock5-bbu-default-target-v1-1-aba344fa5c50@pengutronix.de>
Message-Id: <175820520400.3433565.4649117137447102040.b4-ty@pengutronix.de>
Date: Thu, 18 Sep 2025 16:20:04 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250918_072007_421002_FC866885 
X-CRM114-Status: GOOD (  10.12  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: rockchip: select bbu default target using
 bootsource
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 16 Sep 2025 10:04:18 +0200, Michael Tretter wrote:
> The ROCK 5 boards may be booted from SD card and eMMC. The BootROM
> prefers the eMMC unless disabled explicitly.
> 
> As a user, I'd expect barebox_update to update the SD card if I booted a
> board from SD card.
> 
> Use the bootsource to set the default target for the bbu default
> handler. If booted from SD card, by default update barebox on the SD
> card.
> 
> [...]

Applied, thanks!

[1/1] ARM: rockchip: select bbu default target using bootsource
      https://git.pengutronix.de/cgit/barebox/commit/?id=86be3af602ba (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



