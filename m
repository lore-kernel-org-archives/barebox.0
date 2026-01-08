Delivery-date: Thu, 08 Jan 2026 15:43:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdrE8-002eRK-22
	for lore@lore.pengutronix.de;
	Thu, 08 Jan 2026 15:43:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdrE8-0006Na-16
	for lore@pengutronix.de; Thu, 08 Jan 2026 15:43:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=876PYXIwpHcvnkTeePNJLd2tgsLuKnG66wjScRvJU4w=; b=nJb1aWsQXpIOBGm4TXPaiMe+Nm
	g7NZkFtKqk5huE9VnvFELDzj+yzR7sGoimNWGvx233tFrDCa7zkCKwCyyRPoH5pOukUkkm3KnMbEi
	GdVm78hyNjfkaUEWvI/3vY7ADVqQgsL/Btg66ZfpAfj4JaHR+c5vgGLyKQ0mbOP/XgvBglm/eCDtj
	KqeqhVe20Eyp6Ux1r7W4Wap+vDtXePTaFkxzziozu3wgrnXEgC+JuVak+LNHXL/sXQUKdj5p26goc
	ZWCw6/YbEwj/x1+MENcLpIEP8/vvHiE3DLZaYXqh6Ux13xMb/9ecAJws7NaXLIL0cAouZeRBzvGwQ
	bRs6i22Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdrDT-0000000HO6M-3puF;
	Thu, 08 Jan 2026 14:42:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdrDQ-0000000HO5b-2mRo
	for barebox@lists.infradead.org;
	Thu, 08 Jan 2026 14:42:22 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vdrDM-0006En-Oa; Thu, 08 Jan 2026 15:42:17 +0100
Message-ID: <4ca7bfa9-0df4-4223-90f5-22eea10a8fd2@pengutronix.de>
Date: Thu, 8 Jan 2026 15:42:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20260108100739.1731988-1-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260108100739.1731988-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_064220_703897_B25A20FA 
X-CRM114-Status: GOOD (  18.13  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] test/strategy.py: optionally don't activate BareboxDriver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 1/8/26 11:07 AM, Sascha Hauer wrote:
> When bootstrapping barebox on QEMU with my barebox-bringup utility it
> brings it to the 'barebox' state before opening a console. The
> BareboxDriver consumes all console messages in order to bring barebox
> to the prompt. This is bad for interactive use where one wants to
> see the console output right from the start.
> 
> Insert a 'on' state which brings up QEMU but doesn't activate the
> BareboxDriver.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  test/strategy.py | 15 +++++++++------
>  1 file changed, 9 insertions(+), 6 deletions(-)
> 
> diff --git a/test/strategy.py b/test/strategy.py
> index 0f1b761474..0ca08b0cdd 100644
> --- a/test/strategy.py
> +++ b/test/strategy.py
> @@ -21,11 +21,12 @@ if match is None or int(match.group(1)) < 25:
>  class Status(enum.Enum):
>      unknown = 0
>      off = 1
> -    barebox = 2
> -    qemu_dry_run = 3
> -    qemu_interactive = 4
> -    qemu_dump_dtb = 5
> -    shell = 6
> +    on = 2
> +    barebox = 3
> +    qemu_dry_run = 4
> +    qemu_interactive = 5
> +    qemu_dump_dtb = 6
> +    shell = 7
>  
>  
>  @target_factory.reg_driver
> @@ -63,11 +64,13 @@ class BareboxTestStrategy(Strategy):
>              self.target.deactivate(self.console)
>              self.target.activate(self.power)
>              self.power.off()
> -        elif status == Status.barebox:
> +        elif status == Status.on:
>              self.transition(Status.off)  # pylint: disable=missing-kwoa
>              self.target.activate(self.console)
>              # cycle power
>              self.power.cycle()
> +        elif status == Status.barebox:
> +            self.transition(Status.on)  # pylint: disable=missing-kwoa
>              # interrupt barebox
>              self.target.activate(self.barebox)
>          elif status == Status.shell:

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



