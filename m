Delivery-date: Wed, 14 Sep 2022 09:54:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oYNEJ-004ZLQ-RT
	for lore@lore.pengutronix.de; Wed, 14 Sep 2022 09:54:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oYNEH-0001Ok-V5
	for lore@pengutronix.de; Wed, 14 Sep 2022 09:54:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=reCS2Q5UTTzBsXbRm6gR7xcr+qc7etDMocwR8psDmdo=; b=HaVOPpqb4WDI+BuBSN3e2yQZ8I
	D3l5ZeYFXML4ARUVk7hirFbRmDlglD+WHUjkNYe0+iPgaHVqFrVx6f3gqpazieJa1V59vHldqupoE
	egdy5x+P9ViCrO8Lux8WpFwA2klNgkWNBKLR2IVugbh2w4zPQBjd5RdJCH3oqBRkuJYC4YtNPORmd
	sghH2o3uUDoKn1AyogZVIiFh1Q5gPBRAxjuKp6eIA4ArAnrMi6SRg2mA9033UQJZqrTxspngqpDgw
	ic8I2zyzwaI4smQ0yJALqcCtoWX9/bgALsSJJRjWrbfLymFtc4by1xmhDXpBiUxqNDhQKETt4Ax9f
	TOzH+0Ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYNCr-00BuoH-Dy; Wed, 14 Sep 2022 07:53:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYNCK-00Btt2-2O
	for barebox@lists.infradead.org; Wed, 14 Sep 2022 07:52:41 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1oYNCH-0001Br-Vi; Wed, 14 Sep 2022 09:52:37 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1oYNCH-00007N-L3; Wed, 14 Sep 2022 09:52:37 +0200
Date: Wed, 14 Sep 2022 09:52:37 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220914075237.5agd6glzozagxyda@pengutronix.de>
References: <20220913124954.1346533-1-m.felsch@pengutronix.de>
 <20220913124954.1346533-7-m.felsch@pengutronix.de>
 <20220914074332.GU6477@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220914074332.GU6477@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220914_005240_160469_5B08DB0C 
X-CRM114-Status: GOOD (  21.69  )
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

On 22-09-14, Sascha Hauer wrote:
> On Tue, Sep 13, 2022 at 02:49:54PM +0200, Marco Felsch wrote:
> > Add Allwinner sun20i SoC and D1-Nezha board support.
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >  Documentation/boards/riscv.rst            | 102 +++++++++++++++++
> >  arch/riscv/Kconfig.socs                   |  16 +++
> >  arch/riscv/boards/Makefile                |   1 +
> >  arch/riscv/boards/allwinner-d1/Makefile   |   3 +
> >  arch/riscv/boards/allwinner-d1/lowlevel.c |  12 ++
> >  arch/riscv/configs/sun20i_defconfig       | 130 ++++++++++++++++++++++
> >  arch/riscv/include/asm/debug_ll.h         |   5 +
> >  common/Kconfig                            |   5 +
> >  images/Makefile.riscv                     |   4 +
> >  9 files changed, 278 insertions(+)
> >  create mode 100644 arch/riscv/boards/allwinner-d1/Makefile
> >  create mode 100644 arch/riscv/boards/allwinner-d1/lowlevel.c
> >  create mode 100644 arch/riscv/configs/sun20i_defconfig
> > 
> 
> [...]
> 
> > diff --git a/arch/riscv/configs/sun20i_defconfig b/arch/riscv/configs/sun20i_defconfig
> > new file mode 100644
> > index 0000000000..157c430723
> > --- /dev/null
> > +++ b/arch/riscv/configs/sun20i_defconfig
> 
> I can select all machines built with sifive_defconfig, starfive_defconfig,
> sun20i_defconfig and virt64_defconfig in a single config and
> successfully build barebox with all these machines.
> 
> Instead of adding another defconfig we should go into the opposite
> direction and consolidate the defconfigs.
> 
> Maybe a rv32i_defconfig and a rv64i_defconfig would be it.

Good point. One question, do we even have support for rv32i?

Regards,
  Marco

> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 


