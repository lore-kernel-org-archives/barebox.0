Delivery-date: Fri, 02 Dec 2022 10:03:35 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p11xG-008LUY-GD
	for lore@lore.pengutronix.de; Fri, 02 Dec 2022 10:03:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p11xF-0005Fo-O4
	for lore@pengutronix.de; Fri, 02 Dec 2022 10:03:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sz4ZFfjo7Krry0mFdmWmoFMqFHeVg1BGlDFJMTOBb68=; b=CKivoRFiCzqRfXnfta/tYFSaSZ
	FlDJHCBLUwLXB7jQ50+gBvWGBCcPgOcFT2hHeO7K3dTdHnQ6aqMBd5MHyCnf6nZ/MC1s4j0tG0H3m
	KFfjsqIUrRNjFPVvsGZpXLUWyBP6S2iMTg77sW3Y5j+CzEi8bWC7Lj9ISDg+ueu8zWVzCEyTJTYOk
	YsF1mBG7WRjimhE3puxJYIrZTDrl3G/JjYuTCZY4tsQJ9RrxRo3G4SF/RG3HUyWQbjyRVA9Q8Z52f
	rbNTtx+q1DNcgDLkPae44ETNnx8m1fq1MvX9uCcTuJ181/26IG2A76fZMlIfeg2nypIZKx7a8y/CZ
	WeduB61Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p11vy-00ElYi-6n; Fri, 02 Dec 2022 09:02:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p11vt-00ElWv-E4
	for barebox@lists.infradead.org; Fri, 02 Dec 2022 09:02:10 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p11vr-0004oP-Qu; Fri, 02 Dec 2022 10:02:07 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p11vr-0007Y7-Kl; Fri, 02 Dec 2022 10:02:07 +0100
Date: Fri, 2 Dec 2022 10:02:07 +0100
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221202090207.GR29728@pengutronix.de>
References: <20221202082954.3413605-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221202082954.3413605-1-u.kleine-koenig@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221202_010209_498772_36A83372 
X-CRM114-Status: GOOD (  18.63  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] kvx,openrisc,riscv,sandbox/dts: harmonize clean-files
 definition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Dec 02, 2022 at 09:29:54AM +0100, Uwe Kleine-König wrote:
> I noticed while playing around with the sandbox that the mrproper make
> target doesn't remove arch/sandbox/dts/sandbox.dtb.z.
> 
> Fix all dts clean-files defintion to match arm's defintion which seems
> to be the most complete one.
> 
> Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
> ---
>  arch/kvx/dts/Makefile      | 2 +-
>  arch/openrisc/dts/Makefile | 2 +-
>  arch/riscv/dts/Makefile    | 2 +-
>  arch/sandbox/dts/Makefile  | 2 +-
>  4 files changed, 4 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/kvx/dts/Makefile b/arch/kvx/dts/Makefile
> index 3f03192750bc..41613033ce81 100644
> --- a/arch/kvx/dts/Makefile
> +++ b/arch/kvx/dts/Makefile
> @@ -11,4 +11,4 @@ endif
>  
>  obj-$(CONFIG_BOARD_K200) += k200.dtb.o
>  
> -clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts
> +clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
> diff --git a/arch/openrisc/dts/Makefile b/arch/openrisc/dts/Makefile
> index f43a28d6b905..6778abe1b4fd 100644
> --- a/arch/openrisc/dts/Makefile
> +++ b/arch/openrisc/dts/Makefile
> @@ -3,4 +3,4 @@
>  BUILTIN_DTB := $(patsubst "%",%,$(CONFIG_BUILTIN_DTB_NAME))
>  obj-$(CONFIG_BUILTIN_DTB) += $(BUILTIN_DTB).dtb.o
>  
> -clean-files := *.dtb *.dtb.S
> +clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
> diff --git a/arch/riscv/dts/Makefile b/arch/riscv/dts/Makefile
> index 17d7d249e41a..a3c8fbd9d0d7 100644
> --- a/arch/riscv/dts/Makefile
> +++ b/arch/riscv/dts/Makefile
> @@ -10,4 +10,4 @@ pbl-$(CONFIG_BOARD_HIFIVE) += hifive-unmatched-a00.dtb.o \
>  pbl-$(CONFIG_BOARD_BEAGLEV) += jh7100-beaglev-starlight.dtb.o
>  pbl-$(CONFIG_BOARD_LITEX_LINUX) += litex-linux.dtb.o
>  
> -clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts
> +clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
> diff --git a/arch/sandbox/dts/Makefile b/arch/sandbox/dts/Makefile
> index 9af91cb72c03..79625b103eba 100644
> --- a/arch/sandbox/dts/Makefile
> +++ b/arch/sandbox/dts/Makefile
> @@ -7,4 +7,4 @@ obj-$(CONFIG_OFTREE) += \
>  # created.
>  obj- += dummy.o
>  
> -clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts
> +clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
> 
> base-commit: cbb5ef3d18ba7dfed9324985ea70b6bd9203622f
> -- 
> 2.38.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


