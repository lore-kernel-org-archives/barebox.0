Delivery-date: Mon, 17 Feb 2025 10:42:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tjxeO-003QkN-09
	for lore@lore.pengutronix.de;
	Mon, 17 Feb 2025 10:42:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tjxeM-0003zP-S3
	for lore@pengutronix.de; Mon, 17 Feb 2025 10:42:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/KQMGCyZHuBhRpBZnysIsrQIvGBywyphq/dIUmAc718=; b=J4o/rv0Uzej9JabZJVTtNaWzcl
	Q3aVbWjidYfxa/aPYtCTkSAxoRgiy8g2gjWVhvip9ie1Ip7IO5Vz2roVjO1MuZVn9kcpMx/IbD7ty
	u+M+LokDOy4BsVMdXRZPN+Tp1k2uLxzEQuX9WbcQrwGxLUGOXiRf8yip/GCPGz5a7OGU6U8CF68N0
	JKhz9VeIJXPNafmjMzjrDDPDytDnL0Jfz98rem/p31rumYVxNhrUqcrDRpJb1V9cwqOxHGfI44wni
	7wy9sIg2hubk2PYCBxaJupFVG6ySGRTHfn7mI+2wpJvgnRz1ea89jNuq6kuG0HoPahovOsQLjjS4v
	0zaL8OiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjxdz-00000003yGF-0KvP;
	Mon, 17 Feb 2025 09:42:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjxPQ-00000003vTX-1CMb
	for barebox@lists.infradead.org;
	Mon, 17 Feb 2025 09:27:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tjxPO-0001ZM-QA; Mon, 17 Feb 2025 10:27:22 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tjxPO-001NmU-20;
	Mon, 17 Feb 2025 10:27:22 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tjxPO-000fjv-1j;
	Mon, 17 Feb 2025 10:27:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250214104817.2975052-1-a.fatoum@pengutronix.de>
References: <20250214104817.2975052-1-a.fatoum@pengutronix.de>
Message-Id: <173978444252.160382.13997161609509522745.b4-ty@pengutronix.de>
Date: Mon, 17 Feb 2025 10:27:22 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_012724_328781_3E8BA35B 
X-CRM114-Status: GOOD (  10.05  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/7] commands: boot: add support for overriding boot
 artifacts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 14 Feb 2025 11:48:10 +0100, Ahmad Fatoum wrote:
> Replacing part of the boot artifacts is a common development use case,
> e.g. to load the kernel from the network, but otherwise boot the
> bootloader spec file as-is or to inject an initrd into an existing boot
> flow (e.g. rsinit to enable usb9pfs boot).
> 
> This series adds a simple to use way to achieve that.
> 
> [...]

Applied, thanks!

[1/7] bootm: add helper functions for checking if FIT image is used
      https://git.pengutronix.de/cgit/barebox/commit/?id=6244bcb9db80 (link may not be stable)
[2/7] boot: move global.linux.bootargs.dyn. to common code
      https://git.pengutronix.de/cgit/barebox/commit/?id=1072e8421458 (link may not be stable)
[3/7] blspec: don't clobber bootm.image on boot attempt
      https://git.pengutronix.de/cgit/barebox/commit/?id=f2c284fa14d6 (link may not be stable)
[4/7] fastboot: drop useless bootm.image clobber
      https://git.pengutronix.de/cgit/barebox/commit/?id=3a07779b01e6 (link may not be stable)
[5/7] bootm: don't clobber global.bootm. variables after script boot fails
      https://git.pengutronix.de/cgit/barebox/commit/?id=926985a74ee0 (link may not be stable)
[6/7] bootm: retire bootm_has_initrd
      https://git.pengutronix.de/cgit/barebox/commit/?id=e86606dd2065 (link may not be stable)
[7/7] commands: boot: add support for overriding boot artifacts
      https://git.pengutronix.de/cgit/barebox/commit/?id=a5e4c4340ef6 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



