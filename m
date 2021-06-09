Delivery-date: Wed, 09 Jun 2021 11:51:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqurn-00070b-4I
	for lore@lore.pengutronix.de; Wed, 09 Jun 2021 11:51:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqurl-0004z4-Je
	for lore@pengutronix.de; Wed, 09 Jun 2021 11:51:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xmz67yD0N3iGbLv1gavhsQaY8GyMrPzEuNAjuFTX80g=; b=gOCu0CDBQAH0Z0
	Ol1w/lYx156z6sxyKV4BGa5Xd9IZlMy93J5dC+c47spls+8g120YjNFUJyzQBlEx1Aa2N9HTM8jfd
	HjwilkmB3rCa7Ff6799vBmekmwC0cRy8qmYLffCLW7l8kxRM4kK6hPc5fLfsZkfe8GvtBcwF3VzS8
	5+gJFKD38MZOEP6BXbclU8gkIgz7zKIP4P+7ZFIG0o0hc2qz6CLUmUoNw7GqqsglOaQAJf6a+UaHF
	8ocFlmKzL3gLhxHw5yDEXiY91NqJi+3KVT995YvhG/JdSoywTnh2WQlVcBugTqtwzsElwGCXGQ2EH
	CGf1c3C4S8Ce0iNR1xag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lquqA-00Cn9X-1c; Wed, 09 Jun 2021 09:49:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lquiW-00Cl1U-Dj
 for barebox@lists.infradead.org; Wed, 09 Jun 2021 09:41:45 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lquiS-00041G-RR; Wed, 09 Jun 2021 11:41:40 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lquiS-0005KR-Hm; Wed, 09 Jun 2021 11:41:40 +0200
Date: Wed, 9 Jun 2021 11:41:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20210609094140.GE5267@pengutronix.de>
References: <20210608140545.30696-1-s.hauer@pengutronix.de>
 <20210608140545.30696-6-s.hauer@pengutronix.de>
 <54894f02-6d26-1f31-1879-76df081f3b6d@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <54894f02-6d26-1f31-1879-76df081f3b6d@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:39:24 up 111 days, 13:03, 125 users,  load average: 0.15, 0.14,
 0.10
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210609_024144_507275_1989CDB8 
X-CRM114-Status: GOOD (  22.27  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 5/5] pinctrl: Rockchip: Add RK3568 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

On Wed, Jun 09, 2021 at 10:01:12AM +0200, Ahmad Fatoum wrote:
> >  static struct rockchip_mux_route_data rk3188_mux_route_data[] = {
> >  	RK_MUXROUTE_SAME(0, RK_PD0, 1, 0xa0, BIT(16 + 11)), /* non-iomuxed emmc/flash pins on flash-dqs */
> >  	RK_MUXROUTE_SAME(0, RK_PD0, 2, 0xa0, BIT(16 + 11) | BIT(11)), /* non-iomuxed emmc/flash pins on emmc-clk */
> > @@ -458,6 +650,7 @@ static int rockchip_pinctrl_set_pull(struct rockchip_pin_bank *bank,
> >  		writel(data, reg);
> >  		break;
> >  	case RK3188:
> > +	case RK3568:
> >  		data = ((1 << RK3188_PULL_BITS_PER_PIN) - 1) << (bit + 16);
> >  		data |= pull << bit;
> 
> Linux does this for pull (== ret):
> 
>  /*
>   * In the TRM, pull-up being 1 for everything except the GPIO0_D0-D6,
>   * where that pull up value becomes 3.
>   */
>  if (ctrl->type == RK3568 && bank->bank_num == 0 && pin_num >= 27 && pin_num <= 30) {
>          if (ret == 1)
>                  ret = 3;
>  }
> 
> Should we do this too?
>

Yes. In our case this becomes:

	if (ctrl->type == RK3568 &&
	    bank->bank_num == 0 &&
	    pin_num >= 27 &&
	    pin_num <= 30 &&
	    pull == RK_BIAS_PULL_UP)
		pull = 3;
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

