Delivery-date: Wed, 25 Feb 2026 15:29:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vvFtD-005YPR-16
	for lore@lore.pengutronix.de;
	Wed, 25 Feb 2026 15:29:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vvFtD-0007Pi-Il
	for lore@pengutronix.de; Wed, 25 Feb 2026 15:29:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gYboRBZMmcZEsbmzMvK9ZdW9p78Jsf2cFhcxJ/mGPDI=; b=dUMDPwqknNVP0NKNByXQ1ACyKp
	YcJc9p40R3BxSIf5IcQ1EwLSl3tv+3EAKAvGHr3Iloo8FNbx1zKv5sUde49QZTOcvR4DN6VPkWLA8
	4XGsJ9+yFm2VTum/iIQ8zSUt6w8kUTZGtgK1UwflnvCwdgzEt//E/iwLarbfmoDDKIpZq9rK9kICE
	MW/GkbmtSCfRkNyPfYsR80Iir9mDtcBpfzrVA6rtaxKKsm9EAx6iW2P0OfbQB6xmjIzDkZyGL2QXE
	y9EExsxYx5Qt/M/vVL7ofjealt/BQgnlBr6xN9IGcI29yG6JvVik37roB2zULZt1NnNbhaCxEQ7HD
	5zFZMRxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvFsm-00000004DEt-3QnZ;
	Wed, 25 Feb 2026 14:28:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvFsk-00000004DE6-01KR
	for barebox@lists.infradead.org;
	Wed, 25 Feb 2026 14:28:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vvFsi-0007G7-54; Wed, 25 Feb 2026 15:28:52 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vvFsg-002Zs7-21;
	Wed, 25 Feb 2026 15:28:51 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vvFsh-0000000CoQr-3n8K;
	Wed, 25 Feb 2026 15:28:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260225140256.165703-1-a.fatoum@pengutronix.de>
References: <20260225140256.165703-1-a.fatoum@pengutronix.de>
Message-Id: <177202973189.3053674.1686913554304147024.b4-ty@pengutronix.de>
Date: Wed, 25 Feb 2026 15:28:51 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260225_062854_047007_42EFA8B5 
X-CRM114-Status: GOOD (  17.92  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] net: am65-cpsw-nuss: fix up PHY mode for fixed
 RGMII TX delay
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 25 Feb 2026 15:02:49 +0100, Ahmad Fatoum wrote:
> To restore compatibility with newer Linux device trees and fix network
> breakage on Beagleplay, import following U-Boot commit:
> 
> | commit 4b10bcfdef9cb544ca80988fe36d307a622bcd21
> | Author:     Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
> | AuthorDate: Tue Sep 30 10:05:11 2025 +0200
> | Commit:     Tom Rini <trini@konsulko.com>
> | CommitDate: Fri Oct 10 11:07:44 2025 -0600
> |
> |     net: ethernet: ti: am65-cpsw: fix up PHY mode for fixed RGMII TX delay
> |
> |     The am65-cpsw driver currently sets the SEL_RGMII_IDMODE flag in a MAC's
> |     mode register to enable or disable the TX delay. While this was supported
> |     for earlier generations of the CPSW controller, the datasheets of all
> |     modern TI SoCs using the am65-cpsw MAC state that the TX delay is fixed,
> |     and the SEL_RGMII_IDMODE bit is documented as reserved in most of them.
> |     Furthermore, while it was found that this bit does in fact disable the TX
> |     delay, [1] states that this setting is truly unsupported by TI and not
> |     just undocumented.
> |
> |     Following the clarification of the rgmii* phy-mode values in the Linux
> |     DT bindings in [2], the Linux am65-cpsw driver was changed in [3] to
> |     account for the fixed TX delay by fixing up the mode passed to the PHY
> |     driver; a similar fixup already existed in the TI icssg-prueth driver.
> |     [4] followed up on this by explicitly clearing the SEL_RGMII_IDMODE flag
> |     to handle the case where it is set by the bootloader or other firmware
> |     before Linux.
> |
> |     With the above changes, Device Trees that set the recommended "rgmii-id"
> |     mode are now appearing in Linux 6.17+. Avoid setting the unsupported
> |     SEL_RGMII_IDMODE flag for such Device Trees, and instead fix up the PHY
> |     interface mode, thus aligning the U-Boot driver with the Linux kernel.
> |
> |     [1] https://www.spinics.net/lists/netdev/msg1112647.html
> |     [2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=c360eb0c3ccb95306704fd221442283ee82f1f58
> |     [3] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=ca13b249f291f4920466638d1adbfb3f9c8db6e9
> |     [4] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=a22d3b0d49d411e64ed07e30c2095035ecb30ed2
> |
> |     Signed-off-by: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
> 
> [...]

Applied, thanks!

[1/1] net: am65-cpsw-nuss: fix up PHY mode for fixed RGMII TX delay
      https://git.pengutronix.de/cgit/barebox/commit/?id=810120e81a95 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



