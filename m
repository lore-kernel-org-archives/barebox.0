Delivery-date: Wed, 15 Apr 2026 08:22:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCte3-00CK7g-1G
	for lore@lore.pengutronix.de;
	Wed, 15 Apr 2026 08:22:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCte2-0004Hu-Py
	for lore@pengutronix.de; Wed, 15 Apr 2026 08:22:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Date:References:In-Reply-To:Subject:Cc:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Z1M9eyn455IQ2UgkY4gVB8MrMD+pQ/uuYdE22ht0OyI=; b=Q8k3RFVr04v7sBmHJsz8Oj9WDm
	SrBZ+dABvRkX1bnQfsquNG5rIMmiRAbyWOHgK7hvYI9Hf0IDWfl9+aIrIMBZlhNLHsUXILs89tB2V
	mFjys3C4Ycj/XWgLsDz0/xeN+o3cZ7PToVIEQTIC6PgTkw9EarqNXoTOBFEF1T4zNL7u7PiWMpscr
	7bmK0venZcIqZzkx2BDYhbPkuKRD7z8YepGnfpNfe8PXD5WLsxJFRS8gcvDadltOKjbihE6DpxzQc
	M05o1m5dXHC/vB0ZqfcIfWBDgSOpCES7wPeDPotQtsXzynWxN4uECilACnoqTvdQIL2oGZ6RDSNr5
	whZQhNDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCtde-00000000dsv-33yf;
	Wed, 15 Apr 2026 06:22:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCtdc-00000000dsb-15QH
	for barebox@lists.infradead.org;
	Wed, 15 Apr 2026 06:22:13 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1wCtdZ-00049f-6M; Wed, 15 Apr 2026 08:22:09 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
In-Reply-To: <adyiO9qhmOjV_xzo@pengutronix.de> (Sascha Hauer's message of
	"Mon, 13 Apr 2026 09:58:51 +0200")
References: <20260407-v2026-03-1-topic-arkona-at300-v1-1-e06b73050326@pengutronix.de>
	<adyiO9qhmOjV_xzo@pengutronix.de>
User-Agent: mu4e 1.12.13; emacs 30.2
Date: Wed, 15 Apr 2026 08:22:08 +0200
Message-ID: <87y0io4ub3.fsf@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260414_232212_327089_A157F03D 
X-CRM114-Status: GOOD (  23.79  )
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
Subject: Re: [PATCH] ARM: tqmls1046a: Add Arkona AT300 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 2026-04-13 at 09:58 +02, Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Tue, Apr 07, 2026 at 01:01:17PM +0200, Steffen Trumtrar wrote:
> > diff --git a/arch/arm/boards/tqmls1046a/board.c b/arch/arm/boards/tqmls1046a/board.c
> > index bce1838dbc..3c09bcdbf7 100644
> > --- a/arch/arm/boards/tqmls1046a/board.c
> > +++ b/arch/arm/boards/tqmls1046a/board.c
> > @@ -81,7 +81,11 @@ static int tqmls1046a_postcore_init(void)
> >  	}
> >  
> >  	ls1046a_bbu_mmc_register_handler("sd", "/dev/mmc0.barebox", sd_bbu_flags);
> > -	ls1046a_bbu_qspi_register_handler("qspi", "/dev/qspiflash0.barebox", qspi_bbu_flags);
> > +	ls1046a_bbu_qspi_register_handler("qspi", "/dev/qspiflash0.barebox",
> > +					  qspi_bbu_flags);
> > +	ls1046a_bbu_qspi_register_handler("qspi-alternate",
> > +					  "/dev/qspiflash1.barebox-alternate",
> > +					  0);
> 
> Is this part of the TQ SoM or Arkona specific? If the latter can we
> avoid registering it for the other variants?
>

While reviewing the patches I researched this and am 100% sure, that I read that the tqmls1046a supports up to 2 QSPIs. Of course, now I can't find this info for reference :( So, I'll add a compatible check before registering this alternate qspi.

> 
> > diff --git a/arch/arm/boards/tqmls1046a/rcwtool-at300.c b/arch/arm/boards/tqmls1046a/rcwtool-at300.c
> > new file mode 100644
> > index 0000000000..a68023b612
> > --- /dev/null
> > +++ b/arch/arm/boards/tqmls1046a/rcwtool-at300.c
> 
> This is handy to have and ideally the rcw values would be automatically
> generated during compilation, but let's not put too much effort in this.
> Can you move the code to a include file in scripts/include/ so that the
> rcwtool-at300.c becomes:
> 
> #include <rcwtool.h>
> 
> int main(void)
> {
> 	printf("# RCW values:\n");
> 	printf("\n");
> 
> 	set_val(SYS_PLL_CFG              ,       0);
> 	...
> 
> 	print_rcw();
> }
> 
> That way we could reuse it for other boards. Also add some comment to
> the header what it is and how it's used.
>

Will do.

> > +/dts-v1/;
> > +
> > +#include <dt-bindings/input/input.h>
> > +#include <dt-bindings/gpio/gpio.h>
> > +
> > +#include <arm64/freescale/fsl-ls1046a-tqmls1046a.dtsi>
> > +#include "fsl-ls1046a.dtsi"
> > +
> > +/ {
> > +	model = "TQ TQMLS1046A SoM on Arkona AT300 board";
> > +	compatible = "arkona,at300", "tq,ls1046a-tqmls1046a", "fsl,ls1046a";
> > +
> > +	barebox,disable-deep-probe;
> 
> Is that needed? Why?

Good question. Maybe this is unneccessary meanwhile. I'll re-check.


Best regards,
Steffen

-- 
Pengutronix e.K.                | Dipl.-Inform. Steffen Trumtrar |
Steuerwalder Str. 21            | https://www.pengutronix.de/    |
31137 Hildesheim, Germany       | Phone: +49-5121-206917-0       |
Amtsgericht Hildesheim, HRA 2686| Fax:   +49-5121-206917-5555    |


