Delivery-date: Tue, 17 Jun 2025 08:57:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRQGB-008BXs-2C
	for lore@lore.pengutronix.de;
	Tue, 17 Jun 2025 08:57:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRQGA-0007Yz-PV
	for lore@pengutronix.de; Tue, 17 Jun 2025 08:57:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9WvuSBJgj2e+uY6YgMuwzOEwkA/E3ipuQ/7nXrRlo28=; b=oqSIEwL1oxbpJSlYiaBrv45LQT
	Fas8I0qmURKVweWgEjb1CLvMHw9+OvOjLFyYvynXIP5wz17NmBbncQ9t1O/uJniqi1Uw8paQ2BG46
	5vbg7639eSzszTCjheRRgSgeMKueVI9hdKHPSwklkNwrWtfJ1On3ISJnh3OasOSjHxg7vTVA/tXZQ
	Ml/s2dbe9onsLcivH2iS813tFsp9PWUieqvYfTs8dO6O2geg1EoBDtnzkG3OfE6WKHhbK5Daw9kZr
	fOKhNcVGc/WbRd3LMjsDjTg3KOQxESXPDX4z0jrz3mpzfjR7MprPEuIfYDLWQdmu6ymHGQMTR3t9x
	ydJPd9IQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRQFb-00000006P3q-38Ct;
	Tue, 17 Jun 2025 06:56:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRQDd-00000006Os1-0NaR
	for barebox@lists.infradead.org;
	Tue, 17 Jun 2025 06:54:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRQDa-0004BV-2J; Tue, 17 Jun 2025 08:54:50 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRQDZ-003vmP-2o;
	Tue, 17 Jun 2025 08:54:49 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRQDZ-00CHC9-2Z;
	Tue, 17 Jun 2025 08:54:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250605-arm-k3-am62l-v2-0-53257d4b2dd2@pengutronix.de>
References: <20250605-arm-k3-am62l-v2-0-53257d4b2dd2@pengutronix.de>
Message-Id: <175014328979.2925766.12172661095520932693.b4-ty@pengutronix.de>
Date: Tue, 17 Jun 2025 08:54:49 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250616_235453_175564_FA9E2EF3 
X-CRM114-Status: GOOD (  13.59  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 00/33] ARM: K3: add support for AM62L
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 05 Jun 2025 14:42:25 +0200, Sascha Hauer wrote:
> The AM62L is a new SoC from TI similar to the AM625, but still needs
> some work to support it.
> 
> While the peripherals are quite similar to AM625, TI restructured the
> startup process. Unlike the AM625 we no longer start on the Cortex-R5
> core, but instead directly on the first Cortex A53 core. The SDRAM setup
> is no longer part of barebox, but instead done in the TF-A. The initial
> image is composed of a BL1 and several binary-only blobs. The second
> stage is directly the BL31 image and our barebox image.
> 
> [...]

Applied, thanks!

[01/33] scripts/k3img: make more flexible
        https://git.pengutronix.de/cgit/barebox/commit/?id=89da6456d29f (link may not be stable)
[02/33] images: K3: rename %.k3img target to %.k3_am62x_img
        https://git.pengutronix.de/cgit/barebox/commit/?id=e4dd97f98893 (link may not be stable)
[03/33] ARM: K3: prepare support for other SoCs
        https://git.pengutronix.de/cgit/barebox/commit/?id=47febb75c22d (link may not be stable)
[04/33] ARM: dts: add k3-am62l dts(i) files
        https://git.pengutronix.de/cgit/barebox/commit/?id=3291d535d198 (link may not be stable)
[05/33] ARM: dts: am62l: Fix assigned-clock-parents
        https://git.pengutronix.de/cgit/barebox/commit/?id=12bbf79ea97b (link may not be stable)
[06/33] ARM: K3: add am62lx base support
        https://git.pengutronix.de/cgit/barebox/commit/?id=3757c831753b (link may not be stable)
[07/33] ARM: Makefile: descend into mach-* for cleaning
        https://git.pengutronix.de/cgit/barebox/commit/?id=8bbf54262dc4 (link may not be stable)
[08/33] ARM: k3: rename yaml files from am625 to am62x
        https://git.pengutronix.de/cgit/barebox/commit/?id=f539e306507d (link may not be stable)
[09/33] firmware: add ti-linux-firmware submodule
        https://git.pengutronix.de/cgit/barebox/commit/?id=ca1bf1d4a8b8 (link may not be stable)
[10/33] scripts/ti-board-config.py: fix length
        https://git.pengutronix.de/cgit/barebox/commit/?id=6c06ff394c3b (link may not be stable)
[11/33] ARM: k3: add yaml files for AM62l
        https://git.pengutronix.de/cgit/barebox/commit/?id=6445d1998bb7 (link may not be stable)
[12/33] k3: ringacc: pass ringrt address in struct k3_ringacc_init_data
        https://git.pengutronix.de/cgit/barebox/commit/?id=e2110cab32b2 (link may not be stable)
[13/33] drivers: soc: ti: k3-ringacc: handle absence of tisci
        https://git.pengutronix.de/cgit/barebox/commit/?id=3c23d037df80 (link may not be stable)
[14/33] drivers: soc: ti: k3-ringacc: fix k3_ringacc_ring_reset_sci
        https://git.pengutronix.de/cgit/barebox/commit/?id=a63dfb8deaad (link may not be stable)
[15/33] dma: ti: k3-psil: Add PSIL data for AM62L
        https://git.pengutronix.de/cgit/barebox/commit/?id=3da10b0560bd (link may not be stable)
[16/33] dma: ti: k3-udma: Refactor common bits for AM62L support
        https://git.pengutronix.de/cgit/barebox/commit/?id=8923e1a2c153 (link may not be stable)
[17/33] dma: ti: k3-udma-common: Update common code for AM62L DMAs
        https://git.pengutronix.de/cgit/barebox/commit/?id=a5421f1f4e22 (link may not be stable)
[18/33] dma: ti: k3-udma-am62l: Add AM62L support DMA drivers
        https://git.pengutronix.de/cgit/barebox/commit/?id=286c7a1a539c (link may not be stable)
[19/33] ARM: dts: am62l: Add ethernet ports
        https://git.pengutronix.de/cgit/barebox/commit/?id=528c50960a6c (link may not be stable)
[20/33] ARM: dts: am62l evm: Add ethernet ports
        https://git.pengutronix.de/cgit/barebox/commit/?id=81c18272b559 (link may not be stable)
[21/33] ARM: k3: am62l: add barebox specific am62l.dtsi
        https://git.pengutronix.de/cgit/barebox/commit/?id=6c101945a81b (link may not be stable)
[22/33] net: davinci_mdio: Use fallback clock rate
        https://git.pengutronix.de/cgit/barebox/commit/?id=4ad488b0228c (link may not be stable)
[23/33] firmware: arm_scmi: Add support for clock parents
        https://git.pengutronix.de/cgit/barebox/commit/?id=c39ca7957873 (link may not be stable)
[24/33] clk: add struct clk_parent_data
        https://git.pengutronix.de/cgit/barebox/commit/?id=c63df78042c5 (link may not be stable)
[25/33] clk: arm_scmi: implement clock parent setting
        https://git.pengutronix.de/cgit/barebox/commit/?id=eea5d0f678c0 (link may not be stable)
[26/33] ARM: dts: am62l3-evm: add MMC aliases
        https://git.pengutronix.de/cgit/barebox/commit/?id=47525b6bc19b (link may not be stable)
[27/33] dma: ti: k3-udma: limit asel to am625
        https://git.pengutronix.de/cgit/barebox/commit/?id=10d39c565ec5 (link may not be stable)
[28/33] gpio: increase ARCH_NR_GPIOS to 512
        https://git.pengutronix.de/cgit/barebox/commit/?id=70aab3a39784 (link may not be stable)
[29/33] ARM: dts: k3-am62l: reserve memory for TF-A and OP-TEE
        https://git.pengutronix.de/cgit/barebox/commit/?id=dbfb6b0ded68 (link may not be stable)
[30/33] ARM: k3: add AM62l3 EVM board support
        https://git.pengutronix.de/cgit/barebox/commit/?id=5ca800c41d58 (link may not be stable)
[31/33] ARM: K3: am62l: add serial aliases
        https://git.pengutronix.de/cgit/barebox/commit/?id=b3e1295ece8c (link may not be stable)
[32/33] Documentation: boards: k3: split generic and am62x specific documentation
        https://git.pengutronix.de/cgit/barebox/commit/?id=513dcc525d15 (link may not be stable)
[33/33] Documentation: boards: k3: add AM62lx documentation
        https://git.pengutronix.de/cgit/barebox/commit/?id=e36362f1c154 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



