Delivery-date: Thu, 25 Apr 2024 09:40:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rztiS-00GIMu-0c
	for lore@lore.pengutronix.de;
	Thu, 25 Apr 2024 09:40:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rztiQ-0000fv-5x
	for lore@pengutronix.de; Thu, 25 Apr 2024 09:40:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Xn1S82vYKUwG+esIj1clholHJ/29NPbSQOBSp4NEJuI=; b=4X+YhCaa6VLjxyJi5ivg6u0HuG
	yk0Rk2sAgJ6nwvUs22ZWLQqR3p0KWaqlh2kvRe0JssDJ8jGh9taSaQdjCYZocuXMGF0zppPsEiF40
	2AN6kdL/FtV2IZ+A5JOfcaFtjpnadlbLVT2fHn8NxEOzdLzYG4oFkvwdjfe0SNn5bQ5tNZuCiqHk2
	JohJuZcCztTv0+Jpw2uJl/c6JvdJMy/vXU8eUTNjLkl3x8mhpZp0RN6Jtl96QftO/wahC+bl79Sn8
	DeujnJZZZI//2skW92vih+O2JydiEymFJSjmftF4M1aIsQ47zLwShG36sJ36lvV/jUpbMunTu8Oo5
	+FORbm4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzths-00000007IxL-3XPx;
	Thu, 25 Apr 2024 07:39:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzthq-00000007IvZ-0vG6
	for barebox@lists.infradead.org;
	Thu, 25 Apr 2024 07:39:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rzthn-0000NM-Al; Thu, 25 Apr 2024 09:39:43 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rzthm-00EDon-MQ; Thu, 25 Apr 2024 09:39:42 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rzthm-006tYv-21;
	Thu, 25 Apr 2024 09:39:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
In-Reply-To: <20240424064058.3608016-1-a.fatoum@pengutronix.de>
References: <20240424064058.3608016-1-a.fatoum@pengutronix.de>
Message-Id: <171403078262.1643486.14678284681701917877.b4-ty@pengutronix.de>
Date: Thu, 25 Apr 2024 09:39:42 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240425_003946_303758_F5519F3D 
X-CRM114-Status: GOOD (  14.36  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 00/23] treewide: fix bugs using DMA API
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 24 Apr 2024 08:40:35 +0200, Ahmad Fatoum wrote:
> As described in commi b986aad24ab8 ("mci: core: allocate memory used
> for DMA with dma_alloc"), the recent fix to ARMv8 cache operations in
> commit 65ef5d885263 ("ARM64: let 'end' point after the range in cache
> functions") may lead to unearthing some of the alignment bugs we have:
> 
> These bugs were already there: If a DMA buffer is misaligned and you do
> cache maintenance on it, you will corrupt memory that's unlucky to share
> the cache line. This has been the case for many years though, which I
> think is because that corruption was limited to the driver itself:
> If a driver invalidates only part of its buffer, then that is its
> problem and that of its consumers (e.g. TFTP failing for some file
> names, because network driver only invalidated part of the packet).
> 
> [...]

Applied, thanks!

[01/23] habv4: use DMA-capable memory for getting event from BootROM
        https://git.pengutronix.de/cgit/barebox/commit/?id=72b50532f7d9 (link may not be stable)
[02/23] dma: give inline dma_alloc a single external definition
        https://git.pengutronix.de/cgit/barebox/commit/?id=f77b139c4d74 (link may not be stable)
[03/23] dma: add definition for dma_zalloc
        https://git.pengutronix.de/cgit/barebox/commit/?id=d2d9eb85597c (link may not be stable)
[04/23] include: linux/kernel.h: factor out alignment macros
        https://git.pengutronix.de/cgit/barebox/commit/?id=04fbbf21e502 (link may not be stable)
[05/23] driver: move out struct device definition into its own header
        https://git.pengutronix.de/cgit/barebox/commit/?id=58e2ba922bea (link may not be stable)
[06/23] dma: remove common.h include from asm/dma.h
        https://git.pengutronix.de/cgit/barebox/commit/?id=d0124e06ab06 (link may not be stable)
[07/23] RISC-V: dma: fix dma.h inclusion
        https://git.pengutronix.de/cgit/barebox/commit/?id=a9e636c1b9d9 (link may not be stable)
[08/23] sandbox: dma: drop unused driver.h include
        https://git.pengutronix.de/cgit/barebox/commit/?id=d256efaaff68 (link may not be stable)
[09/23] dma: remove linux/kernel.h dependency from dma.h
        https://git.pengutronix.de/cgit/barebox/commit/?id=27490e48068c (link may not be stable)
[10/23] include: linux/slab: fix possible overflow in kmalloc_array
        https://git.pengutronix.de/cgit/barebox/commit/?id=f82819fb748a (link may not be stable)
[11/23] include: linux/slab: use dma_alloc for kmalloc
        https://git.pengutronix.de/cgit/barebox/commit/?id=9b12861830e0 (link may not be stable)
[12/23] include: linux/slab: retire krealloc
        https://git.pengutronix.de/cgit/barebox/commit/?id=3afbd2693d2f (link may not be stable)
[13/23] commands: mmc_extcsd: use DMA capable memory where needed
        https://git.pengutronix.de/cgit/barebox/commit/?id=9d320afb3df3 (link may not be stable)
[14/23] net: macb: use DMA-capable memory for receive buffer
        https://git.pengutronix.de/cgit/barebox/commit/?id=9ce5a4a7792b (link may not be stable)
[15/23] firmware: qemu_fw_cfg: use bounce buffer for write
        https://git.pengutronix.de/cgit/barebox/commit/?id=cf6a5d4321c9 (link may not be stable)
[16/23] net: usb: asix: use dma_alloc for buffers in USB control messages
        https://git.pengutronix.de/cgit/barebox/commit/?id=25826dced0d1 (link may not be stable)
[17/23] net: usb: smsc95xx: use DMA memory for usb_control_msg
        https://git.pengutronix.de/cgit/barebox/commit/?id=c7ce7c992ccd (link may not be stable)
[18/23] usb: hub: use DMA memory in usb_get_port_status
        https://git.pengutronix.de/cgit/barebox/commit/?id=3a678386fe77 (link may not be stable)
[19/23] usb: hub: use DMA-capable memory in usb_hub_configure
        https://git.pengutronix.de/cgit/barebox/commit/?id=7cffd374fbc3 (link may not be stable)
[20/23] treewide: use new dma_zalloc instead of opencoding
        https://git.pengutronix.de/cgit/barebox/commit/?id=f607c950a05e (link may not be stable)
[21/23] usb: dwc2: host: fix mismatch between dma_map_single and unmap
        https://git.pengutronix.de/cgit/barebox/commit/?id=a0ae1c2c67d7 (link may not be stable)
[22/23] net: bcmgenet: map DMA buffers with dma_map_single
        https://git.pengutronix.de/cgit/barebox/commit/?id=ecf47be780ce (link may not be stable)
[23/23] dma: debug: add alignment check when mapping buffers
        https://git.pengutronix.de/cgit/barebox/commit/?id=699194dd2a4f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



