Delivery-date: Wed, 19 Oct 2022 09:50:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ol3qH-000Oiz-Nv
	for lore@lore.pengutronix.de; Wed, 19 Oct 2022 09:50:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ol3qF-0006jg-18
	for lore@pengutronix.de; Wed, 19 Oct 2022 09:50:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hD/XWB6JMANkCg7O8qDgC6gv0dHDot7GO156p1YLkPU=; b=WLlOFZiiNGcMTnSmHrQtSp5G4L
	9lxp3PNfZYmFQm+9kXCs0pwwz38q/T+4/YgiMurC3mccrbSeO+k2ZWRgHlHwjohrUrHsEzcwV4LGf
	tlP1oTZ/6KvksaUdLEwPIDCYNhHipk2I8/8Z3eYEvtlZ1sroZ9Wmhh1oCrHnhEVpFVq5pcjLG8BKo
	kedQhc13vyC4xYi03HjO11VfiFS+wIFgZSWyBZWF239PkUCuPvcw4wkSDVN8eH6tzBEb7+Hul5d9Q
	+R29Twfvu769cf/XKJeL5T7VGT9Yl/6wN3QuCzr4C/pKYM8A4xqD1HW5l68cCKIHGBmFwQw+owcsY
	/stuX05w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol3o6-00GGB8-Tb; Wed, 19 Oct 2022 07:48:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol3o2-00GGAY-B2
	for barebox@lists.infradead.org; Wed, 19 Oct 2022 07:48:03 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ol3o0-0006U7-O0; Wed, 19 Oct 2022 09:48:00 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ol3o0-0001xB-Ga; Wed, 19 Oct 2022 09:48:00 +0200
Date: Wed, 19 Oct 2022 09:48:00 +0200
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221019074800.GU6702@pengutronix.de>
References: <20221014163534.3812272-1-m.felsch@pengutronix.de>
 <20221014163534.3812272-3-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221014163534.3812272-3-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221019_004802_401652_503285A9 
X-CRM114-Status: GOOD (  22.34  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/8] state: select the STATE_DRV when STATE is selected
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Oct 14, 2022 at 06:35:28PM +0200, Marco Felsch wrote:
> As written in the state.rst documentation, state will silently fail if
> the STATE_DRV is not selected. So enabling state without the state
> driver is useless. Fix this by selecting the STATE_DRV if STATE is
> selected.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  common/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/common/Kconfig b/common/Kconfig
> index fb2bf49683..4654a5cfaf 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -1016,6 +1016,7 @@ config STATE
>  	select ENVIRONMENT_VARIABLES
>  	select OFTREE
>  	select PARAMETER
> +	select STATE_DRV

STATE_DRV depends on OFDEVICE, so that should be selected here as well.

I am thinking about moving the state driver and the common state stuff
together into a single directory like drivers/state/. That would make it
more obvious that these belong together for both developers and users.

What do you think?

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


