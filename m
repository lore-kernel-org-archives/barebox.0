Delivery-date: Thu, 28 Nov 2024 08:37:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGZ5Y-001MZx-1d
	for lore@lore.pengutronix.de;
	Thu, 28 Nov 2024 08:37:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGZ5Y-0005zk-EN
	for lore@pengutronix.de; Thu, 28 Nov 2024 08:37:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cHHSAL+vqc2dyoK3G0muFEFoXfHg9ELxz2lk2/sAIFY=; b=HDGKRJkQ/E8PzRXh/JTDuOHcuh
	FD+Vxl4U9BOO6HuOfjeTHkCWxTVYH7lZcCuw4VAQcu8G4ZoNA3Ucoxe/Tsv9VVuaIwFs0lUkoTDIZ
	RF5o3wGbHADPRbSjk+WphjIIcT5Sn+oFTG/q1uA3kRMxQ1YSB3/SleDNJw/62x6wzPpZeL6Ma0F/i
	wGpI6RGt8vYzJyWie7FVXqxnQOz61N3ETWtKms6lgHXW5UdX7S1qJD8nGYIL8E8/+eNgjWJE0LqVI
	p3EWEn5N5Lrxhzwo/ud5jAJxYyUrGvZYbaQeZxnFqdI7FV/puuNz40W9DZKhFuOctX6wNntD3moFk
	23DKwczA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGZ5A-0000000EtZs-2o9N;
	Thu, 28 Nov 2024 07:37:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGZ56-0000000EtZR-41ME
	for barebox@lists.infradead.org;
	Thu, 28 Nov 2024 07:36:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tGZ55-0005r9-Fx; Thu, 28 Nov 2024 08:36:55 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tGZ54-000Zfm-1k;
	Thu, 28 Nov 2024 08:36:55 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tGZ55-002p09-0k;
	Thu, 28 Nov 2024 08:36:55 +0100
Date: Thu, 28 Nov 2024 08:36:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z0gdl5vSvNaLYqXP@pengutronix.de>
References: <20241126151744.3621717-1-a.fatoum@pengutronix.de>
 <20241126151744.3621717-5-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241126151744.3621717-5-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241127_233656_995958_C9F89813 
X-CRM114-Status: GOOD (  20.04  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/4] net: implement ethaddr_string_cmp()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Nov 26, 2024 at 04:17:44PM +0100, Ahmad Fatoum wrote:
> We keep ethernet addresses either in binary or in text form at a couple
> of places, e.g. device tree, device parameters, struct net_device,
> ... etc. We have memcmp() and strcmp() respectively to compare each, add
> one more function to compare a text string with binary. This will be
> used in a follow up commit.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/net.h |  2 ++
>  net/lib.c     | 17 +++++++++++++++++
>  2 files changed, 19 insertions(+)
> 
> diff --git a/include/net.h b/include/net.h
> index d9b7953a3c33..dbc45b806a51 100644
> --- a/include/net.h
> +++ b/include/net.h
> @@ -366,6 +366,8 @@ IPaddr_t getenv_ip(const char *name);
>  int setenv_ip(const char *name, IPaddr_t ip);
>  
>  int string_to_ethaddr(const char *str, u8 enetaddr[6]);
> +void ethaddr_to_string(const u8 enetaddr[6], char *str);
> +int ethaddr_string_cmp(const u8 enetaddr_a[6], const char *str_b);
>  
>  #ifdef CONFIG_NET_RESOLV
>  int resolv(const char *host, IPaddr_t *ip);
> diff --git a/net/lib.c b/net/lib.c
> index dc6e138f392c..59bd4c280caf 100644
> --- a/net/lib.c
> +++ b/net/lib.c
> @@ -37,6 +37,23 @@ int string_to_ethaddr(const char *str, u8 enetaddr[ETH_ALEN])
>  	return 0;
>  }
>  
> +void ethaddr_to_string(const u8 enetaddr[ETH_ALEN], char *str)
> +{
> +	sprintf(str, "%02x:%02x:%02x:%02x:%02x:%02x",
> +		 enetaddr[0], enetaddr[1], enetaddr[2], enetaddr[3],
> +		 enetaddr[4], enetaddr[5]);
> +}

Do you reintroduce this function on purpose or due to rebasing
conflicts? A MAC address can now be printed with "%pM".

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


