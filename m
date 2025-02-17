Delivery-date: Mon, 17 Feb 2025 12:14:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tjz5K-003SWX-1F
	for lore@lore.pengutronix.de;
	Mon, 17 Feb 2025 12:14:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tjz5J-0004XT-3U
	for lore@pengutronix.de; Mon, 17 Feb 2025 12:14:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MZQ+ByQkZupG1kYHyf3YeIfVDm1HzGnfSWmZBxpU/n0=; b=Oyhia+ZDcP8uDHRPZz08s7igp+
	8KnS3znPmHo/T1/8ZpX4Uu9w+Gx07Zqpw1o2pDwobmPnKMY7WSyJyn/ocFpuZSIFEcfp3l4r+U5Tr
	Nae13a73h3ak4VWSlO9gseV/JHFElJwJPcY6RMev065uAecHEo8GuWblUBMyu9m3lu204qp6Dtjc2
	/iIzCYMIJmoyLmdaUpySyBt7+3FmuLfVl2/KMJJ7e8BGB8yuAng0LtcfgIoS34O144TVmvrlfLHEo
	jOmiY97i8onp77MB4n6j2HnqHK3P0lK5PrAalcRprHZZap9dgxqW/TUS2/nW75KjLWYvKyKyeOxrk
	YzCstksg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjz4k-00000004H0h-3lxU;
	Mon, 17 Feb 2025 11:14:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjz4i-00000004H0L-03nR
	for barebox@lists.infradead.org;
	Mon, 17 Feb 2025 11:14:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tjz4g-0004Q0-NH; Mon, 17 Feb 2025 12:14:06 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tjz4g-001Oie-1i;
	Mon, 17 Feb 2025 12:14:06 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tjz4g-007qya-1W;
	Mon, 17 Feb 2025 12:14:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250212-k3-emmc-v2-0-8dd1bb0ce60a@pengutronix.de>
References: <20250212-k3-emmc-v2-0-8dd1bb0ce60a@pengutronix.de>
Message-Id: <173979084646.1871665.10273647272633691865.b4-ty@pengutronix.de>
Date: Mon, 17 Feb 2025 12:14:06 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_031408_056118_FE5D05E8 
X-CRM114-Status: GOOD (  14.04  )
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
Subject: Re: [PATCH v2 00/20] ARM: K3 updates
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 12 Feb 2025 15:09:13 +0100, Sascha Hauer wrote:
> This series has some updates for the TI K3 architecture.
> 
> We add support for bootstrapping boards via USB DFU. This has been sent
> earlier, this time booting from eMMC is added as well.
> 
> On K3 SoCs we need a bunch of images after the first stage has been
> loaded: OP-TEE, ti-dm firmware, TF-A binary and finally a barebox
> binary. Until now these are expected as distinct images on the SD cards
> FAT partition. This is impractical for booting from eMMC boot partitions
> and also DFU boot, so this series adds support for handling a FIP image
> containing these binaries.
> 
> [...]

Applied, thanks!

[01/20] ARM: k3: Add function to enable 32k crystal
        https://git.pengutronix.de/cgit/barebox/commit/?id=f8488603862b (link may not be stable)
[02/20] ARM: k3: add function to detect eMMC boot
        https://git.pengutronix.de/cgit/barebox/commit/?id=4a3eac7dbaa1 (link may not be stable)
[03/20] ARM: k3: do not mount /boot when booting from eMMC
        https://git.pengutronix.de/cgit/barebox/commit/?id=def806a40287 (link may not be stable)
[04/20] fip: drop typedefs
        https://git.pengutronix.de/cgit/barebox/commit/?id=30c35fedb7ba (link may not be stable)
[05/20] fip: use linux list implementation
        https://git.pengutronix.de/cgit/barebox/commit/?id=bc79141e65cc (link may not be stable)
[06/20] fip: use uuid_equal() and uuid_is_null()
        https://git.pengutronix.de/cgit/barebox/commit/?id=e8074b140a14 (link may not be stable)
[07/20] fiptool: do not typedef structs
        https://git.pengutronix.de/cgit/barebox/commit/?id=d58d0997b8b7 (link may not be stable)
[08/20] fip: add fip_ prefix
        https://git.pengutronix.de/cgit/barebox/commit/?id=33ac1e970bc0 (link may not be stable)
[09/20] fip: add fip_image_open()
        https://git.pengutronix.de/cgit/barebox/commit/?id=72d281a4711b (link may not be stable)
[10/20] ARM: k3: r5: add USB DFU and eMMC boot support
        https://git.pengutronix.de/cgit/barebox/commit/?id=9124e7c0b563 (link may not be stable)
[11/20] ARM: am625-sk: enable 32k crystal
        https://git.pengutronix.de/cgit/barebox/commit/?id=63a39df42e94 (link may not be stable)
[12/20] mci: am654: parse generic mmc node properties
        https://git.pengutronix.de/cgit/barebox/commit/?id=10870f73f2fe (link may not be stable)
[13/20] ARM: k3: limit eMMC frequency to 26MHz
        https://git.pengutronix.de/cgit/barebox/commit/?id=b6099d814075 (link may not be stable)
[14/20] ARM: k3: add eMMC barebox update handler
        https://git.pengutronix.de/cgit/barebox/commit/?id=e7fc40adf484 (link may not be stable)
[15/20] ARM: am625-sk: put environment on eMMC when booting from it
        https://git.pengutronix.de/cgit/barebox/commit/?id=4458a181046d (link may not be stable)
[16/20] serial: omap: Use ttyS as Linux console name
        https://git.pengutronix.de/cgit/barebox/commit/?id=6ed7c03d3fb3 (link may not be stable)
[17/20] ARM: k3: remove beagleplay FIT image
        https://git.pengutronix.de/cgit/barebox/commit/?id=874477b04d02 (link may not be stable)
[18/20] ARM: am625-sk: cleanup board entry
        https://git.pengutronix.de/cgit/barebox/commit/?id=57e67d421450 (link may not be stable)
[19/20] ARM: beagleplay: cleanup board entry
        https://git.pengutronix.de/cgit/barebox/commit/?id=b4f14eebf1ec (link may not be stable)
[20/20] ARM: k3: Add k3-r5_defconfig
        https://git.pengutronix.de/cgit/barebox/commit/?id=49556447bca7 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



