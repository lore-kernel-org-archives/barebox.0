Delivery-date: Mon, 15 Nov 2021 08:56:50 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mmWrC-00045R-O3
	for lore@lore.pengutronix.de; Mon, 15 Nov 2021 08:56:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mmWrB-0003mS-LQ
	for lore@pengutronix.de; Mon, 15 Nov 2021 08:56:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JegpwU3aHC5Jpqm5mFU+MPA12VfzxbMQp5Ou9PmlR1Y=; b=Dc0aOTaRWhNFrSnq/sG3mTW9MC
	QVyeSp8RR/BFcv+VqCmqjr9+8LyyYfDKocORiC01lD2AUEuqeXEAG1e8GIPH0x2Eq//WVzZDqzy0t
	PIddP/hx9bsCIMVVjRuTE4OYTk0FwwVeprr27jYhX13MoPvOKb0BCjKMa8Z9M5lL4klaPRwcFVTl7
	MmmkWy5KQSl/0U8T0+fOKoOAsHec8m3rihpBCCb1fvwItGNn6xzVtpmhhobVkyV/TZQZPfHAEuU6x
	oDCExFaetCnRxq3WgK0Vn+Xn3jsyLQkaUOqoPDLyhKIyh/iyy9p+ad/vTgQ3kIiEUuW8xLczugRxz
	nL+AhZbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mmWpv-00Eb5p-Pf; Mon, 15 Nov 2021 07:55:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mmWpK-00Eauo-W5
 for barebox@lists.infradead.org; Mon, 15 Nov 2021 07:54:56 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mmWpJ-0003MK-K2; Mon, 15 Nov 2021 08:54:53 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mmWpJ-0002lM-7z; Mon, 15 Nov 2021 08:54:53 +0100
Date: Mon, 15 Nov 2021 08:54:53 +0100
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: barebox@lists.infradead.org
Message-ID: <20211115075453.GD25698@pengutronix.de>
References: <20211111140316.1646962-1-michael.riesch@wolfvision.net>
 <20211111140316.1646962-4-michael.riesch@wolfvision.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211111140316.1646962-4-michael.riesch@wolfvision.net>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:54:07 up 270 days, 11:18, 127 users,  load average: 0.04, 0.10,
 0.14
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211114_235455_144306_3D8803BF 
X-CRM114-Status: GOOD (  24.45  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/3] pinctrl: rockchip: use alias rather than full of name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Nov 11, 2021 at 03:03:16PM +0100, Michael Riesch wrote:
> Do not rely on GPIO controllers being named "gpioX". Instead, use the
> alias to match the controllers to the GPIO banks.
> 
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> ---
>  drivers/pinctrl/pinctrl-rockchip.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
> index 1fdb9a913..0e706c51d 100644
> --- a/drivers/pinctrl/pinctrl-rockchip.c
> +++ b/drivers/pinctrl/pinctrl-rockchip.c
> @@ -888,7 +888,7 @@ static struct rockchip_pin_ctrl *rockchip_pinctrl_get_soc_data(
>  		bank = ctrl->pin_banks;
>  		for (i = 0; i < ctrl->nr_banks; ++i, ++bank) {
>  			name = bank->name;
> -			if (!strncmp(name, np->name, strlen(name))) {
> +			if (!strncmp(name, of_alias_get(np), strlen(name))) {

Please use of_alias_get_id(np, "gpio");

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

