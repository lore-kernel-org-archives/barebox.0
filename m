Delivery-date: Tue, 15 Oct 2024 09:14:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0blG-004ZUA-1i
	for lore@lore.pengutronix.de;
	Tue, 15 Oct 2024 09:14:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0blF-0002qV-T1
	for lore@pengutronix.de; Tue, 15 Oct 2024 09:14:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0swvPOPh4smpaykiN9ZX2Z/AmYcMAFZDq5bmJHPgiAc=; b=GbHa14a60/EgKOmO8g5y/ofW5M
	6AXHjgZhbjZpDKeJTbKi85U/TJHiSsWGzWIfUzv7tSwuqjRHrvVVRMKlT3ef/3BfY2RRgcx/2PlLF
	j9VhXKbdVVISw/6yX5gMA9l5qc4iBTrTY4aT7aPq82QyBC+OPUVVL26tzAJUHeDv1iqXUPVeym/Y8
	Pv0DKFVS+UuxMi4tp6BwZ6saECHpbiFwCiRdVKqo/D6MyhNUnVcd5CbW8fTGB0gnEaQrfQ/8dsmFO
	wcEsTInZFwjFs17YVIBqaC5dnA+A9f1jMArLFo8A8OEcL2zBcrlUZLkn63XksLUwtaMQP903HKGqO
	JjHhJyLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0bkk-00000007Jdh-0z5W;
	Tue, 15 Oct 2024 07:13:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0bkg-00000007JdI-3CDJ
	for barebox@lists.infradead.org;
	Tue, 15 Oct 2024 07:13:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1t0bkf-0002nJ-5q; Tue, 15 Oct 2024 09:13:53 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1t0bke-001yXU-OX; Tue, 15 Oct 2024 09:13:52 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1t0bke-00CakA-2C;
	Tue, 15 Oct 2024 09:13:52 +0200
Date: Tue, 15 Oct 2024 09:13:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Zw4WMLWERHQHcqLK@pengutronix.de>
References: <20241014115040.2843121-1-a.fatoum@pengutronix.de>
 <20241014115040.2843121-10-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241014115040.2843121-10-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241015_001354_827918_1C7C2E13 
X-CRM114-Status: GOOD (  23.21  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 09/12] commands: reginfo: make command mpc5xxx-specific
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Oct 14, 2024 at 01:50:37PM +0200, Ahmad Fatoum wrote:
> The reginfo command sounds very generic, but it's actually only used on
> the PowerPC MPC5xxx. Move the command there using the new
> DEFINE_SIMPLE_COMMAND helper.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/powerpc/mach-mpc5xxx/Kconfig   |  4 ----
>  arch/powerpc/mach-mpc5xxx/Makefile  |  2 +-
>  arch/powerpc/mach-mpc5xxx/reginfo.c |  4 +++-
>  commands/Kconfig                    | 11 -----------
>  commands/Makefile                   |  1 -
>  commands/reginfo.c                  | 21 ---------------------
>  include/common.h                    |  5 -----
>  7 files changed, 4 insertions(+), 44 deletions(-)
>  delete mode 100644 commands/reginfo.c
> 
> diff --git a/arch/powerpc/mach-mpc5xxx/Kconfig b/arch/powerpc/mach-mpc5xxx/Kconfig
> index e78c2fa350b1..df6d8c187459 100644
> --- a/arch/powerpc/mach-mpc5xxx/Kconfig
> +++ b/arch/powerpc/mach-mpc5xxx/Kconfig
> @@ -7,10 +7,6 @@ config ARCH_TEXT_BASE
>  	default 0x00000000 if RELOCATABLE
>  	default 0x01000000 if MACH_PHYCORE_MPC5200B_TINY
>  
> -config HAS_REGINFO
> -	bool
> -	default y if ARCH_MPC5200
> -
>  choice
>  	prompt "Select your board"
>  
> diff --git a/arch/powerpc/mach-mpc5xxx/Makefile b/arch/powerpc/mach-mpc5xxx/Makefile
> index 9fc45c08bb31..b9b4cb8e434e 100644
> --- a/arch/powerpc/mach-mpc5xxx/Makefile
> +++ b/arch/powerpc/mach-mpc5xxx/Makefile
> @@ -8,4 +8,4 @@ obj-y				+= traps.o
>  obj-y				+= time.o
>  extra-y				+= start.o
>  obj-$(CONFIG_MPC5200)		+= firmware_sc_task_bestcomm.impl.o
> -obj-$(CONFIG_REGINFO)		+= reginfo.o
> +obj-$(CONFIG_COMMAND_SUPPORT)	+= reginfo.o
> diff --git a/arch/powerpc/mach-mpc5xxx/reginfo.c b/arch/powerpc/mach-mpc5xxx/reginfo.c
> index 64816faffc22..1a958b2cefbf 100644
> --- a/arch/powerpc/mach-mpc5xxx/reginfo.c
> +++ b/arch/powerpc/mach-mpc5xxx/reginfo.c
> @@ -4,9 +4,10 @@
>  #include <common.h>
>  #include <config.h>
>  #include <mach/mpc5xxx.h>
> +#include <command.h>
>  #include <asm/io.h>
>  
> -void reginfo(void)
> +static void reginfo(void)
>  {
>  	puts ("\nMPC5200 registers\n");
>  	printf ("MBAR=%08x\n", CFG_MBAR);
> @@ -61,3 +62,4 @@ void reginfo(void)
>  	printf ("\tSDRAMCS1: %08X\n",
>  		in_be32((void*)MPC5XXX_SDRAM_CS1CFG));
>  }
> +DEFINE_SIMPLE_COMMAND(reginfo);

This is great for development, but not so nice for a broader use in the
tree.

> -BAREBOX_CMD_START(reginfo)
> -	.cmd		= do_reginfo,
> -	BAREBOX_CMD_DESC("print register information")

We are losing the command description and get a "call func reginfo"
instead which is not really an improvement.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


