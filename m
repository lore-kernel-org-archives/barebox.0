Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jpwoq-0005Sk-Ra
 for barebox@lists.infradead.org; Mon, 29 Jun 2020 16:39:45 +0000
Received: by mail-lj1-x236.google.com with SMTP id e4so18777811ljn.4
 for <barebox@lists.infradead.org>; Mon, 29 Jun 2020 09:39:44 -0700 (PDT)
MIME-Version: 1.0
References: <925732743.424285.1592919941556@mail.vodafone.de>
 <CAOMZO5AeTg2afd+xVmNr=GxOM=s7qdzUhMqz2AHpTx_MPGWbPg@mail.gmail.com>
 <245646662.425432.1592925096458@mail.vodafone.de>
 <d999acb9-ed34-7b02-42cf-675a152ddee3@pengutronix.de>
 <517310923.70062.1593427992397@mail.vodafone.de>
 <595dc8c8-09c8-81ad-d730-23781e207cbd@pengutronix.de>
 <429834562.114102.1593444620511@mail.vodafone.de>
 <aac7feb5-604f-2914-bfbd-75f0271401ad@pengutronix.de>
 <1874617325.108865.1593446626706@mail.vodafone.de>
 <21c2fc40-e385-b05e-6392-55ad219597da@pengutronix.de>
 <1036676243.111725.1593448425601@mail.vodafone.de>
In-Reply-To: <1036676243.111725.1593448425601@mail.vodafone.de>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 29 Jun 2020 13:39:31 -0300
Message-ID: <CAOMZO5Cxa6Yk-uWUummRhNVQbLHvduCZQM9djxXNG683GQ4gRw@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: reset / watchdog on an imx7d soc
To: Giorgio Dal Molin <giorgio.nicole@arcor.de>
Cc: Barebox List <barebox@lists.infradead.org>, Ahmad Fatoum <a.fatoum@pengutronix.de>

Hi Giorgio,

On Mon, Jun 29, 2020 at 1:33 PM Giorgio Dal Molin
<giorgio.nicole@arcor.de> wrote:

> U-Boot configures the ddr3 with c code in its board code 'lowlevel.c'.
> Looking at the code I noticed this special treatment:
>
> static void spl_dram_init(void)
> {
> ...
>         /*
>          * Make sure that both aresetn/core_ddrc_rstn and preset/PHY reset
>          * bits are set after WDOG reset event. DDRC_PRST can only be
>          * released when DDRC clock inputs are stable for at least 30 cycles.
>          */
>         writel(SRC_DDRC_RCR_DDRC_CORE_RST_MASK | SRC_DDRC_RCR_DDRC_PRST_MASK, &src_regs->ddrc_rcr);
>         udelay(500);
> ...
>
> This writel() set both reset bits, the DDRC_CORE (0x2) and the DDRC_PRST (0x1) of the SRC
> register 0x30391000.
> Unfortunately, if I try also to set both bits in my DCD table then barebox doesn't boot anymore;
> I also tried to port the uboot spl_dram_init(void) to my barebox lowlevel.c and I could eventually
> boot barebox with an empty DCD but still adding the second bit (SRC_DDRC_RCR_DDRC_PRST_MASK)
> hangs the soc.

Does it help if you try to apply this U-Boot commit to Barebox?
https://gitlab.denx.de/u-boot/u-boot/-/commit/0e06d63d195670f5181958f43216d7106c05357f

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
