Delivery-date: Wed, 14 Sep 2022 09:45:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oYN5K-004Yy7-1g
	for lore@lore.pengutronix.de; Wed, 14 Sep 2022 09:45:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oYN5I-00009T-U2
	for lore@pengutronix.de; Wed, 14 Sep 2022 09:45:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Y2Dn+kLA7ptU2E03GF3Qe5WsH6/DMyjwRQIQxVOyrkk=; b=geFCfVdGu6UuNzOiMQA4duuMAk
	PN5NkOXaQnQZ24VoJQIL5Fa7vfTCoDAaA1tf4fA25AdcMLd0SVQTDMzcsy5DlV+sK4GjW61DGvwEt
	o+N6I5jRT/jeX4b+Z3Zvvdc2H0ii/Ga4j+FABi80JZkUa0KxtPtsKP/kICri/nvLkWJwiclYAUJrJ
	vRS3gzU/OzChZDKGm/SC0EOdSqG77iRs9eDszqTCKQQjBwqTz1g6Xps7PUDXfD0sULjIkhje5MHgp
	D9BOjD5lrySoSGcrugryao6KOjCFHlIFbnBP8OUpkSS/Y883DoCGF490sTRRqc8IKw3oab/JX6/Qh
	d3rYAnsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYN3b-00AuiT-PD; Wed, 14 Sep 2022 07:43:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYN3W-00AuLK-BW
	for barebox@lists.infradead.org; Wed, 14 Sep 2022 07:43:36 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oYN3U-0008Jl-Pw; Wed, 14 Sep 2022 09:43:32 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oYN3U-0008HW-HN; Wed, 14 Sep 2022 09:43:32 +0200
Date: Wed, 14 Sep 2022 09:43:32 +0200
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220914074332.GU6477@pengutronix.de>
References: <20220913124954.1346533-1-m.felsch@pengutronix.de>
 <20220913124954.1346533-7-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220913124954.1346533-7-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220914_004334_413293_F3A9675A 
X-CRM114-Status: GOOD (  18.90  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 6/6] RISC-V: add Allwinner Sun20i D1 Nezha support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Sep 13, 2022 at 02:49:54PM +0200, Marco Felsch wrote:
> Add Allwinner sun20i SoC and D1-Nezha board support.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  Documentation/boards/riscv.rst            | 102 +++++++++++++++++
>  arch/riscv/Kconfig.socs                   |  16 +++
>  arch/riscv/boards/Makefile                |   1 +
>  arch/riscv/boards/allwinner-d1/Makefile   |   3 +
>  arch/riscv/boards/allwinner-d1/lowlevel.c |  12 ++
>  arch/riscv/configs/sun20i_defconfig       | 130 ++++++++++++++++++++++
>  arch/riscv/include/asm/debug_ll.h         |   5 +
>  common/Kconfig                            |   5 +
>  images/Makefile.riscv                     |   4 +
>  9 files changed, 278 insertions(+)
>  create mode 100644 arch/riscv/boards/allwinner-d1/Makefile
>  create mode 100644 arch/riscv/boards/allwinner-d1/lowlevel.c
>  create mode 100644 arch/riscv/configs/sun20i_defconfig
> 

[...]

> diff --git a/arch/riscv/configs/sun20i_defconfig b/arch/riscv/configs/sun20i_defconfig
> new file mode 100644
> index 0000000000..157c430723
> --- /dev/null
> +++ b/arch/riscv/configs/sun20i_defconfig

I can select all machines built with sifive_defconfig, starfive_defconfig,
sun20i_defconfig and virt64_defconfig in a single config and
successfully build barebox with all these machines.

Instead of adding another defconfig we should go into the opposite
direction and consolidate the defconfigs.

Maybe a rv32i_defconfig and a rv64i_defconfig would be it.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


