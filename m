Delivery-date: Fri, 04 Nov 2022 09:28:23 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oqs3r-00Eivj-5a
	for lore@lore.pengutronix.de; Fri, 04 Nov 2022 09:28:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oqs3p-00033s-78
	for lore@pengutronix.de; Fri, 04 Nov 2022 09:28:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aQua3sv0fNBADD7W5JpBCkvbhYF4XATFHGJDVClynEo=; b=Jz2iyvV0g60HxcyGkmzFLe8w9R
	RP9EknV2PBJYBLUK60bahTNSP9QNTs24jhg0kkdJSjJVGxcp9tECXsaHvH2gBUP7acd+PxsW2n2qS
	o8DQpNWgYUbPFzKf8MRamOQtjou36shDmnrzPXcVDZKs8eESZESbhV3HATdsSdDCzPV+7HUo9B2iH
	lpKdc19iK0zEyTm3OlFKt4qOuFM4Bvo1IxMHFKNQDLiiLcdOq6N2fZjtK3kte+8Pq9V8wflK8qTEG
	8XpcVgJaQbVgbUXCQ0aO1DYvFtKzdlWUW8GxVcyjCV+xpck8qHh8Chb4Lo8Z9GHtuZXRlPF9I95Rr
	x++s31Bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqs2V-002x8B-II; Fri, 04 Nov 2022 08:26:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqs2Q-002x7e-To
	for barebox@lists.infradead.org; Fri, 04 Nov 2022 08:26:56 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oqs2P-0002vG-Ko; Fri, 04 Nov 2022 09:26:53 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oqs2P-0005D4-EC; Fri, 04 Nov 2022 09:26:53 +0100
Date: Fri, 4 Nov 2022 09:26:53 +0100
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221104082653.GR3143@pengutronix.de>
References: <20221103131351.2059683-1-o.rempel@pengutronix.de>
 <20221103131351.2059683-2-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221103131351.2059683-2-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221104_012654_982647_E5FF5DC0 
X-CRM114-Status: GOOD (  24.38  )
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
Subject: Re: [PATCH v2 2/6] net: dsa: enable promiscuous mode for switch
 master edev
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Nov 03, 2022 at 02:13:47PM +0100, Oleksij Rempel wrote:
> Typical use case for DSA framework on barebox a port multiplexer. This
> means, we mostly have different MAC addresses on each port. To make this
> work, we need to enable promiscuous mode on the master Ethernet
> controller.
> 
> With this patch, promiscuous mode will be enabled automatically, as soon
> as at least one switch port is enabled and this mode will be disabled
> after all switch ports are disabled as well.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/net/dsa.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/net/dsa.c b/drivers/net/dsa.c
> index 040ba897e2..14ef8f4c4f 100644
> --- a/drivers/net/dsa.c
> +++ b/drivers/net/dsa.c
> @@ -129,6 +129,7 @@ static int dsa_port_start(struct eth_device *edev)
>  				return ret;
>  		}
>  
> +		eth_set_promiscuous_mode(ds->edev_master, true);
>  		eth_open(ds->edev_master);
>  	}
>  
> @@ -160,6 +161,7 @@ static void dsa_port_stop(struct eth_device *edev)
>  			ops->port_disable(dpc, ds->cpu_port,
>  					ds->cpu_port_fixed_phy);
>  
> +		eth_set_promiscuous_mode(ds->edev_master, false);

Please check the error code. When eth_set_promiscuous_mode() is not
implemented for the current ethernet device we should notice the user.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


