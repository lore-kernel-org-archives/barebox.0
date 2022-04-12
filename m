Delivery-date: Tue, 12 Apr 2022 10:02:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1neBTp-00Gxu7-Sn
	for lore@lore.pengutronix.de; Tue, 12 Apr 2022 10:02:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1neBTn-00047D-2r
	for lore@pengutronix.de; Tue, 12 Apr 2022 10:02:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ueB6KxH/B5z3N7fM/VN+7NXH3I+A3TzIysImH3aoxyk=; b=TiXAME+dlulcNq/dd22vjmwtvZ
	X23ABydSNYKqDmmAz4CvtwPtzpRaO8xx2+jR6+W6DgLHhrTV2dKrSmLkZdHtkMJuekgAkna3tn5Mm
	5zbRxhBZgf05Y914rEDCANK2pOih0RXjg7Ybbr6F4+z0Y7SKmGuOgTfZgjMk6O1Z/T0Yloru/2A9i
	+x2opqxyXvJjRXqSgBHY3fdAn1ZWLIPjBfSHWV6DZAY5RNeXNYIuyf6lkYIbDG+BkCoiRFwW6nNx5
	9EV9J0NmiWBsN+RuFEC6dffvKcLB9EKrPSnUoIP8kI0eRyPtDU/Ckb+RodzY54hPm45WEzneEvwEn
	0RavvjMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neBSJ-00CPft-JG; Tue, 12 Apr 2022 08:00:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neBPy-00COEH-Mp
 for barebox@lists.infradead.org; Tue, 12 Apr 2022 07:58:32 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1neBPv-0003BH-Ay; Tue, 12 Apr 2022 09:58:27 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1neBPv-0007cn-1v; Tue, 12 Apr 2022 09:58:27 +0200
Date: Tue, 12 Apr 2022 09:58:27 +0200
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220412075827.GV4012@pengutronix.de>
References: <20220408082950.824927-1-o.rempel@pengutronix.de>
 <20220408082950.824927-2-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220408082950.824927-2-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:55:59 up 12 days, 20:25, 66 users,  load average: 0.04, 0.09, 0.10
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220412_005830_804907_B63E4C7B 
X-CRM114-Status: GOOD (  23.49  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v4 01/13] net: add RX preprocessor support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Apr 08, 2022 at 10:29:38AM +0200, Oleksij Rempel wrote:
> Add callback for optional rx_preprocessor. This is needed to add DSA
> switch support and demultiplex traffic received from different switch ports.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  include/net.h | 3 +++
>  net/net.c     | 6 ++++++
>  2 files changed, 9 insertions(+)
> 
> diff --git a/include/net.h b/include/net.h
> index aad28e4f4c..ca9b6cd61e 100644
> --- a/include/net.h
> +++ b/include/net.h
> @@ -44,9 +44,12 @@ struct eth_device {
>  	void (*halt) (struct eth_device*);
>  	int  (*get_ethaddr) (struct eth_device*, u8 adr[6]);
>  	int  (*set_ethaddr) (struct eth_device*, const unsigned char *adr);
> +	int  (*rx_preprocessor) (struct eth_device*, unsigned char **packet,
> +				 int *length);
>  
>  	struct eth_device *next;
>  	void *priv;
> +	void *rx_preprocessor_priv;
>  
>  	/* phy device may attach itself for hardware timestamping */
>  	struct phy_device *phydev;
> diff --git a/net/net.c b/net/net.c
> index fdb9ab826c..dd2ceb396d 100644
> --- a/net/net.c
> +++ b/net/net.c
> @@ -708,6 +708,12 @@ int net_receive(struct eth_device *edev, unsigned char *pkt, int len)
>  		goto out;
>  	}
>  
> +	if (edev->rx_preprocessor) {
> +		ret = edev->rx_preprocessor(edev, &pkt, &len);
> +		if (ret == -ENOMSG)
> +			return 0;

ret == -ENOMSG means the packet has been handled by the preprocessor
(and forwarded to the DSA virtual network devices). What about the other
errors that rx_preprocessor can return? Shouldn't we ignore the packet
on other errors?

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

