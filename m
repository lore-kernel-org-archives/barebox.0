Delivery-date: Wed, 02 Nov 2022 12:10:31 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oqBdf-00CFfO-QE
	for lore@lore.pengutronix.de; Wed, 02 Nov 2022 12:10:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oqBde-00045g-Fn
	for lore@pengutronix.de; Wed, 02 Nov 2022 12:10:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=47AJs7G14vXRK+9WVptIyA/kI8trRMKoSHnOfej6lUI=; b=bIJxYmJjYA6AHLkbUAAFvZtKD1
	NokN10+WUPYgf9VrmbvYhoUnlbtq31M1AH5t9A700xBLCpehJLrrT5gAIAkcOaEaMtNIYlSbhJs9N
	g3G+/C/0i6dkI1/j0uWiJdcMIctlhpTvsgTqxSY/HnCKFS52Tz3VrdP0Kh3wxPzcG9BX73s5p/ZbI
	+TZFsXLO0ZCfWRYQHVSGKuvb0EAEDqVk4yCdZKda6GxVxoodU8RsJNMLOD36tUGEN1lNcex+191/j
	tqxRKBv2rwUrAMYqzpgWzqFQWksLMVDsXUMfkBeC3Myx2qXeLhUg0P7U5Wen9GQ8kEOMSzI79MFtN
	bLNvD2Aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqBcE-00AgYe-Ry; Wed, 02 Nov 2022 11:09:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqBcA-00AgXl-5Y
	for barebox@lists.infradead.org; Wed, 02 Nov 2022 11:08:59 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oqBc5-0003xW-P3; Wed, 02 Nov 2022 12:08:53 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oqBc5-000353-I3; Wed, 02 Nov 2022 12:08:53 +0100
Date: Wed, 2 Nov 2022 12:08:53 +0100
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221102110853.GL3143@pengutronix.de>
References: <20221102100744.1949741-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221102100744.1949741-1-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221102_040858_228949_D0EDD4C7 
X-CRM114-Status: GOOD (  21.72  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 1/4] drivers: net: fec_imx: fix receive issue with
 external switch
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Nov 02, 2022 at 11:07:41AM +0100, Oleksij Rempel wrote:
> Enable poromisc mode by default to allow using multiple MAC address on
> same FEC interfaces.

s/poromisc/promiscuous/

> 
> We already use poromisc mode on designware stmmac, so it will make
> behavior more consistent on different systems.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/net/fec_imx.c | 3 +++
>  drivers/net/fec_imx.h | 1 +
>  2 files changed, 4 insertions(+)
> 
> diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
> index 673555a48a..9aa4b4f595 100644
> --- a/drivers/net/fec_imx.c
> +++ b/drivers/net/fec_imx.c
> @@ -262,6 +262,9 @@ static int fec_init(struct eth_device *dev)
>  	 */
>  	rcntl = FEC_R_CNTRL_MAX_FL(1518);
>  
> +	/* Set promisc mode to make switches with different ethaddr work */
> +	rcntl |= FEC_R_CNTRL_PROMISC;
> +

Shouldn't we rather enable promiscuous mode in an extra callback?
In the end we want promiscuous mode only in specific cases, not
generally.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


