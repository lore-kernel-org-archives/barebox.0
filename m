Delivery-date: Mon, 13 Apr 2026 09:59:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCCCZ-00Be2w-1e
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 09:59:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCCCY-0000KK-Sx
	for lore@pengutronix.de; Mon, 13 Apr 2026 09:59:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2KYWFeLb/DHtpoIzabesAdqCkxLxJ9i4NMfquTE5dZg=; b=Yf4Fc4EP5unEX1ld5SW6qPfkEW
	ZJhZGxw2QanHQ6u1lOoP7Wm1r9b6Y+Qwh+HWACIY6tynU4eJISSFxqvVI46cNs9gchQsBMlMA7Ekq
	rzKQZJTCiGvQye8aBGyyOKYlTCcRQAE+LF6gBgIojGFyzR+Xj7YYN0yfgSYAgeRCr3I7O/dObpS+K
	Ka6zMzzcJLeNZHePndip1LZbX0T/a5fM4EwkzsL9hbdcugX6cSPkEkFSuLeY1Kw2TR3STq6IK8BLa
	EQG+SU1dS+FFpAD0Ana/qRghspeKmNjX9LvPzTqR8i2dHe5J/uanjIG/hiZN6UoUBr4uRNN1GdL14
	A3ILjVwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCCC8-0000000FCdy-2jDU;
	Mon, 13 Apr 2026 07:58:56 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCCC7-0000000FCdq-3MMf
	for barebox@bombadil.infradead.org;
	Mon, 13 Apr 2026 07:58:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=2KYWFeLb/DHtpoIzabesAdqCkxLxJ9i4NMfquTE5dZg=; b=N9PDL+1BLoHkIiUVZw0GflWBHB
	Ja8orxq66cuMAkIk+Ra6XWD141J3tzAvSDYz4unTNP0EI+oX4dffPV55K6l6dj5zt9P6/4rdLQvRS
	QCdL9exXoUhECtl5etpxRn732JXuOCkffOFcuQX3hF7L/Zg9ei5Pw55tdaRSu/pIbZ+SbIe8tXP1x
	7L6oDkPYH93ceA75Z8xHeMT1xg/0O6eqj5d/CWwLZfDynM56iakMyE9pWkzpH1Yqj6ydXMH6BSj8v
	fzOkew8Zmolc1LQcWT6EQ3cl6aVGPnuoxgVxiIQNoDn0d0oRGyfMAZ6V575oeYRLggPXPTMHiZXDS
	WPCIl2KQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCCC4-0000000DWrM-2m83
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 07:58:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wCCC3-0000Du-LG; Mon, 13 Apr 2026 09:58:51 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wCCC3-0058MY-1W;
	Mon, 13 Apr 2026 09:58:51 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wCCC3-00000007Qn3-1a5Y;
	Mon, 13 Apr 2026 09:58:51 +0200
Date: Mon, 13 Apr 2026 09:58:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <adyiO9qhmOjV_xzo@pengutronix.de>
References: <20260407-v2026-03-1-topic-arkona-at300-v1-1-e06b73050326@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260407-v2026-03-1-topic-arkona-at300-v1-1-e06b73050326@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_085852_715736_3D4DC12D 
X-CRM114-Status: GOOD (  14.84  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: tqmls1046a: Add Arkona AT300 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Apr 07, 2026 at 01:01:17PM +0200, Steffen Trumtrar wrote:
> diff --git a/arch/arm/boards/tqmls1046a/board.c b/arch/arm/boards/tqmls1046a/board.c
> index bce1838dbc..3c09bcdbf7 100644
> --- a/arch/arm/boards/tqmls1046a/board.c
> +++ b/arch/arm/boards/tqmls1046a/board.c
> @@ -81,7 +81,11 @@ static int tqmls1046a_postcore_init(void)
>  	}
>  
>  	ls1046a_bbu_mmc_register_handler("sd", "/dev/mmc0.barebox", sd_bbu_flags);
> -	ls1046a_bbu_qspi_register_handler("qspi", "/dev/qspiflash0.barebox", qspi_bbu_flags);
> +	ls1046a_bbu_qspi_register_handler("qspi", "/dev/qspiflash0.barebox",
> +					  qspi_bbu_flags);
> +	ls1046a_bbu_qspi_register_handler("qspi-alternate",
> +					  "/dev/qspiflash1.barebox-alternate",
> +					  0);

Is this part of the TQ SoM or Arkona specific? If the latter can we
avoid registering it for the other variants?


> diff --git a/arch/arm/boards/tqmls1046a/rcwtool-at300.c b/arch/arm/boards/tqmls1046a/rcwtool-at300.c
> new file mode 100644
> index 0000000000..a68023b612
> --- /dev/null
> +++ b/arch/arm/boards/tqmls1046a/rcwtool-at300.c

This is handy to have and ideally the rcw values would be automatically
generated during compilation, but let's not put too much effort in this.
Can you move the code to a include file in scripts/include/ so that the
rcwtool-at300.c becomes:

#include <rcwtool.h>

int main(void)
{
	printf("# RCW values:\n");
	printf("\n");

	set_val(SYS_PLL_CFG              ,       0);
	...

	print_rcw();
}

That way we could reuse it for other boards. Also add some comment to
the header what it is and how it's used.

> +/dts-v1/;
> +
> +#include <dt-bindings/input/input.h>
> +#include <dt-bindings/gpio/gpio.h>
> +
> +#include <arm64/freescale/fsl-ls1046a-tqmls1046a.dtsi>
> +#include "fsl-ls1046a.dtsi"
> +
> +/ {
> +	model = "TQ TQMLS1046A SoM on Arkona AT300 board";
> +	compatible = "arkona,at300", "tq,ls1046a-tqmls1046a", "fsl,ls1046a";
> +
> +	barebox,disable-deep-probe;

Is that needed? Why?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


