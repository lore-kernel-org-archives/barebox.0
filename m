Delivery-date: Mon, 30 May 2022 13:42:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nvdn1-00FE2S-Nb
	for lore@lore.pengutronix.de; Mon, 30 May 2022 13:42:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nvdn0-0005bV-I1
	for lore@pengutronix.de; Mon, 30 May 2022 13:42:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4c7GjMQQKvQQcwf1AfVzfLTJg0ClMFECY1EfsPnodvs=; b=tKWk7UojKrO/sJ
	MwtIpaSqp80P0Cd/v9tByiGTfgWnDcicXupXeLo4dWM4owlZNF7aN8R0lgmBJLSt/TZvpon/8pfjG
	MBFQh5hqwx6qE4Hz3ImVTTcBqsI/wDNnDa7m7FHxVtPT7l4X13tbaWDB88iru9QbPzGdwCYFtLr/i
	Z1bMYXpneLJXvny7T1IMNwAWnzCYhNPVSVzxAcFqg4CfCdPmdEqwktjVVYV5QsaNWxXA0BLlD9gjF
	ivDW+tONYwQQvquhVeLhVf/nfw4iNISamkfk8N0vnChNE2OJIFNefA2FpwUPN5DZGiPPYF2QkblaH
	1Vb+XH5IuHnEcZOxYeMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvdlI-006OH4-JL; Mon, 30 May 2022 11:40:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvdlC-006OFL-96
	for barebox@lists.infradead.org; Mon, 30 May 2022 11:40:38 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nvdl8-00058e-Sd; Mon, 30 May 2022 13:40:30 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nvdl8-0005hJ-J5; Mon, 30 May 2022 13:40:30 +0200
Date: Mon, 30 May 2022 13:40:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20220530114030.GK1615@pengutronix.de>
References: <20200513114636.811-1-l.stach@pengutronix.de>
 <20200518070848.GP11869@pengutronix.de>
 <8b432b1c-401b-bc87-7285-95fc9142141d@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8b432b1c-401b-bc87-7285-95fc9142141d@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220530_044034_360845_A54601D7 
X-CRM114-Status: GOOD (  34.00  )
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
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mci: core: add device parameter for eMMC boot ack
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, May 20, 2022 at 06:34:43AM +0200, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 18.05.20 09:08, Sascha Hauer wrote:
> > On Wed, May 13, 2020 at 01:46:36PM +0200, Lucas Stach wrote:
> >> This adds an easy way to enable the boot acknowledge function of
> >> a eMMC device, without the need to frob the EXT_CSD setting via
> >> the mmc_extcsd command.
> >> A boot ack is required whenever the boot partitions are read via
> >> the fast initialization boot protocol.
> >>
> >> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> >> ---
> >>  drivers/mci/mci-core.c | 33 +++++++++++++++++++++++++++------
> >>  include/mci.h          |  2 ++
> >>  2 files changed, 29 insertions(+), 6 deletions(-)
> >>
> >> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> >> index f3718327f18d..d33bc0c1a41e 100644
> >> --- a/drivers/mci/mci-core.c
> >> +++ b/drivers/mci/mci-core.c
> >> @@ -516,6 +516,7 @@ static int mmc_change_freq(struct mci *mci)
> >>  
> >>  		mci->ext_csd_part_config = mci->ext_csd[EXT_CSD_PARTITION_CONFIG];
> >>  		mci->bootpart = (mci->ext_csd_part_config >> 3) & 0x7;
> >> +		mci->boot_ack_enable = (mci->ext_csd_part_config >> 6) & 0x1;
> >>  	}
> >>  
> >>  	return 0;
> >> @@ -1592,6 +1593,17 @@ static int mci_set_boot(struct param_d *param, void *priv)
> >>  			  EXT_CSD_PARTITION_CONFIG, mci->ext_csd_part_config);
> >>  }
> >>  
> >> +static int mci_set_boot_ack(struct param_d *param, void *priv)
> >> +{
> >> +	struct mci *mci = priv;
> >> +
> >> +	mci->ext_csd_part_config &= ~(0x1 << 6);
> >> +	mci->ext_csd_part_config |= mci->boot_ack_enable << 6;
> >> +
> >> +	return mci_switch(mci,
> >> +			  EXT_CSD_PARTITION_CONFIG, mci->ext_csd_part_config);
> >> +}
> > 
> > There's only one correct setting for each board or SoC. Instead of
> > letting the user choose between right and wrong, can't we add a hook to
> > be called from the board/SoC code? A device tree property might be an
> > option as well, something like barebox,enable-boot-ack.
> > 
> > There are also bits to change the bus width after power up which might
> > need adjustments which would mean another parameter with the current
> > approach.
> 
> There hasn't been any progress here for 2 years. Sascha, can we just
> take this patch? Even if we add code in future to have this happen as
> part of eMMC/SoC init, a device parameter to easily check
> the current configuration would still be useful.

Ok then, let's go for it.

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

