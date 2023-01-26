Delivery-date: Thu, 26 Jan 2023 09:33:43 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKxhY-002UW1-Er
	for lore@lore.pengutronix.de; Thu, 26 Jan 2023 09:33:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKxhV-00063w-Hq
	for lore@pengutronix.de; Thu, 26 Jan 2023 09:33:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ejv1mhGTeX1NfzuiDtWDlgJ5sbSCuSYNIKuAbqUgFjw=; b=gMP3u6iszEyNciFiMRUFHNF/OK
	lyMW7voLXN98Lv8D9di2JIRW6DDWYwko9k2FxVRu2U2EuFpbrLYx2o5TguuoMEUkIX9F6O/C8ajLE
	klVYedBqGOiSQDO9+vVzQQytjDnn9chhRuTqmCUJNG87IYSX+PRY2yDZDNuxEtGl/QsqMsg1nAqWS
	ULaKcdl8O6NsEXPxl3pHS7YBeqQS68rzZdbP+NFB+C7p2mIVsiQdoc9ckUXghTgqSZXu8bk9aUij8
	z70ieWzjLuirnAccHOYoT7WGa1G27QvJ3U2cncsGut4QIJ9LQDvJ/FOyzPAKxsLNIVek66PVJ3EY7
	EvxXL/tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKxg2-009z2I-Tv; Thu, 26 Jan 2023 08:32:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKxfx-009z1T-DB
	for barebox@lists.infradead.org; Thu, 26 Jan 2023 08:32:07 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pKxfs-0005fZ-19; Thu, 26 Jan 2023 09:32:00 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pKxfr-0005Lm-QW; Thu, 26 Jan 2023 09:31:59 +0100
Date: Thu, 26 Jan 2023 09:31:59 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230126083159.GL13319@pengutronix.de>
References: <20230125095236.2626065-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230125095236.2626065-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_003205_486402_6D586E0B 
X-CRM114-Status: GOOD (  29.37  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [RFC PATCH 1/2] net: ifup: prefer interfaces where the link is
 already up
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jan 25, 2023 at 10:52:35AM +0100, Ahmad Fatoum wrote:
> ifup -a on a platform with a DSA switch can take quite a while, because
> barebox will attempt sending a DHCP DISCOVER on every port in sequence
> and waiting until timeout. This could use some refactoring to make it
> possible to make dhcp() non-blocking, but let's do an easier workaround
> for that: Let's prefer ports that already have a link-up, which is the
> case if the user has been sitting idly on the shell for a few seconds,
> because we enable all interfaces that weren't explicitly disabled then.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/net.h | 1 +
>  net/eth.c     | 2 +-
>  net/ifup.c    | 8 ++++++++
>  3 files changed, 10 insertions(+), 1 deletion(-)
> 
> diff --git a/include/net.h b/include/net.h
> index 0555b0bd6bed..fdd21481dbf5 100644
> --- a/include/net.h
> +++ b/include/net.h
> @@ -110,6 +110,7 @@ int eth_register(struct eth_device* dev);    /* Register network device		*/
>  void eth_unregister(struct eth_device* dev); /* Unregister network device	*/
>  int eth_set_ethaddr(struct eth_device *edev, const char *ethaddr);
>  int eth_open(struct eth_device *edev);
> +int eth_carrier_check(struct eth_device *edev, bool may_wait);
>  void eth_close(struct eth_device *edev);
>  int eth_send(struct eth_device *edev, void *packet, int length);	   /* Send a packet		*/
>  int eth_rx(void);			/* Check for received packets	*/
> diff --git a/net/eth.c b/net/eth.c
> index 6fb64afea024..6c201d7dfc30 100644
> --- a/net/eth.c
> +++ b/net/eth.c
> @@ -179,7 +179,7 @@ int eth_complete(struct string_list *sl, char *instr)
>  /*
>   * Check for link if we haven't done so for longer.
>   */
> -static int eth_carrier_check(struct eth_device *edev, bool may_wait)
> +int eth_carrier_check(struct eth_device *edev, bool may_wait)
>  {
>  	int ret;
>  
> diff --git a/net/ifup.c b/net/ifup.c
> index e4d5374db3ae..a0167eeb8a82 100644
> --- a/net/ifup.c
> +++ b/net/ifup.c
> @@ -285,6 +285,14 @@ int ifup_all(unsigned flags)
>  	    list_empty(&netdev_list))
>  		device_detect_all();
>  
> +	/* Prefer interfaces where the link is already up */
> +	for_each_netdev(edev) {
> +		if (eth_carrier_check(edev, false))
> +			continue;
> +
> +		ifup_edev(edev, flags);
> +	}
> +

This patch confused my while reading it. It doesn't "prefer" interfaces,
instead it only changes the order they are brought up. This change
doesn't make sense by itself, only reading patch 2/2 makes your intention
clear. I think you should merge both patches together.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


