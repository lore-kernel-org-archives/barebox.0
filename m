Delivery-date: Tue, 08 Nov 2022 07:58:40 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1osIZE-0019kB-Pu
	for lore@lore.pengutronix.de; Tue, 08 Nov 2022 07:58:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1osIZD-0004m9-8M
	for lore@pengutronix.de; Tue, 08 Nov 2022 07:58:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Content-Type:References:In-Reply-To:Date:To:From:Subject:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=E7IVqKOOP9ix9R5h8WKXK+6AjEoJAND4P1V83l3LwHQ=; b=nFxkZUp5yehbrKcbNLSJUaYt3W
	IHfVuxe8+mCIlQbOAwT77vTT9s8IR+U/8ADBmlDdkrUdtJzt7ycmif/HCjxsLMib/KfI1cq4Ug0YA
	c3hsLlSjn6QXomKfhlu3/qMQITA0yQb4w8b5l/1XwBAaTR6tJkALliCR5IeJ/Kxa3ob+T5ONwvRVp
	yf1b6VgyVjya1EGciMCeGir6jbqmrD+rzGzsto2dh4Fz4msM+x3tlg62Ux+vQLibwXbalfJCfo1OM
	Zsz7dRbTPnn7BHp4otTGIWg5Jj1OVaQThrVvkmzLpkxPVrTgANMZkp/39uUaWxLVuVBw3al3NzkGR
	R6O66gtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osIXp-003JGj-QA; Tue, 08 Nov 2022 06:57:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osIXk-003JFS-Lk
	for barebox@lists.infradead.org; Tue, 08 Nov 2022 06:57:10 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=irc.pengutronix.de)
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <j.zink@pengutronix.de>)
	id 1osIXi-0004hZ-NS; Tue, 08 Nov 2022 07:57:06 +0100
Message-ID: <9ada8e3bb9efdd25273eeea6c381abf63385c620.camel@pengutronix.de>
From: Johannes Zink <j.zink@pengutronix.de>
To: Oleksij Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org
Date: Tue, 08 Nov 2022 07:57:04 +0100
In-Reply-To: <20221108061009.4168735-3-o.rempel@pengutronix.de>
References: <20221108061009.4168735-1-o.rempel@pengutronix.de>
	 <20221108061009.4168735-3-o.rempel@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221107_225708_739262_31C83C80 
X-CRM114-Status: GOOD (  21.83  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v4 3/8] ethlog: option to enable/disable promisc mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Oleksij,

On Tue, 2022-11-08 at 07:10 +0100, Oleksij Rempel wrote:
> Add -p option to control promisc mode of the ethrnet device.
> 
just found a small typo: s/ethrnet/ethernet/

Best regards
Johannes

> Example:
> ethlog -p eth0 - will enable promisc mode and logging on the eth0
> device
> ethlog -rp eth0 - will disable promisc mode and logging on the eth0
> device
> 
> All the same commands without "-p" option will not touch promisc
> configuration.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  commands/ethlog.c | 21 +++++++++++++++++----
>  1 file changed, 17 insertions(+), 4 deletions(-)
> 
> diff --git a/commands/ethlog.c b/commands/ethlog.c
> index 0cc93ba808..7885d32c6b 100644
> --- a/commands/ethlog.c
> +++ b/commands/ethlog.c
> @@ -29,11 +29,14 @@ static int do_ethlog(int argc, char *argv[])
>  {
>         struct eth_device *edev;
>         const char *edevname;
> -       bool remove = false;
> -       int opt;
> +       bool remove = false, promisc = false;
> +       int opt, ret;
>  
> -       while ((opt = getopt(argc, argv, "r")) > 0) {
> +       while ((opt = getopt(argc, argv, "pr")) > 0) {
>                 switch (opt) {
> +               case 'p':
> +                       promisc = true;
> +                       break;
>                 case 'r':
>                         remove = true;
>                         break;
> @@ -56,10 +59,19 @@ static int do_ethlog(int argc, char *argv[])
>         if (remove) {
>                 edev->tx_monitor = NULL;
>                 edev->rx_monitor = NULL;
> +               if (promisc)
> +                       eth_set_promisc(edev, false);
>  
>                 return 0;
>         }
>  
> +       if (promisc) {
> +               ret = eth_set_promisc(edev, true);
> +               if (ret)
> +                       dev_warn(&edev->dev, "Failed to set promisc
> mode: %pe\n",
> +                                ERR_PTR(ret));
> +       }
> +
>         edev->tx_monitor = ethlog_tx_monitor;
>         edev->rx_monitor = ethlog_rx_monitor;
>  
> @@ -69,12 +81,13 @@ static int do_ethlog(int argc, char *argv[])
>  BAREBOX_CMD_HELP_START(ethlog)
>  BAREBOX_CMD_HELP_TEXT("Options:")
>  BAREBOX_CMD_HELP_OPT("-r", "remove log handler from Ethernet
> interface")
> +BAREBOX_CMD_HELP_OPT("-p", "Enable promisc mode, or disable if -r is
> used")
>  BAREBOX_CMD_HELP_END
>  
>  BAREBOX_CMD_START(ethlog)
>         .cmd            = do_ethlog,
>         BAREBOX_CMD_DESC("ETHLOG - tool to get dump of Ethernet
> packets")
> -       BAREBOX_CMD_OPTS("[-r] [device]")
> +       BAREBOX_CMD_OPTS("[-rp] [device]")
>         BAREBOX_CMD_GROUP(CMD_GRP_NET)
>         BAREBOX_CMD_COMPLETE(eth_complete)
>  BAREBOX_CMD_END

-- 
Pengutronix e.K.                | Johannes Zink                  |
Steuerwalder Str. 21            | https://www.pengutronix.de/    |
31137 Hildesheim, Germany       | Phone: +49-5121-206917-0       |
Amtsgericht Hildesheim, HRA 2686| Fax:   +49-5121-206917-5555    |



