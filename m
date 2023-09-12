Delivery-date: Tue, 12 Sep 2023 12:50:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qg0yR-00CXyg-P3
	for lore@lore.pengutronix.de; Tue, 12 Sep 2023 12:50:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qg0yP-0003ZK-Kv
	for lore@pengutronix.de; Tue, 12 Sep 2023 12:50:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ICoKJuBU8deUx7bsWlQfUGFylSK3PHUsJOLVEbYgND4=; b=neYwf4OPwjhFzLtBSjed9c5Rqe
	uxIuBNaKEJikbKTJZ/B6FDRTi3i1lj0RhIgHku8jvd0lyUz31u+wOcuXezo7w+Kvr6BGbUaR6TE8g
	PhAl9ojZzuGh8CYFOVXBdnNlp63m9M6Num9Fu+nh4kHyC9D+9poS8eF9cbNL3HkiSXDeuHt/je0+Y
	0Vh+O3dQ46jWx3uWqTr7Ib1AtdhzJaOVPJPAcwPAfLTsS/Wb+xO6fovYyah3C1X76V3qGpdY1xgRe
	kbMQ+BVcGMX4uiCLecjODF7sKdfSZwGnAJzewF3tHo54gpkosRH52cOCvEE0a7jJRqpjcUTK4vHpj
	Fwbp1MpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qg0xA-002zsH-1u;
	Tue, 12 Sep 2023 10:49:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qg0x8-002zrc-0B
	for barebox@lists.infradead.org;
	Tue, 12 Sep 2023 10:49:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qg0x6-0003O9-Kg; Tue, 12 Sep 2023 12:49:04 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qg0x6-005l09-86; Tue, 12 Sep 2023 12:49:04 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qg0x5-005bNW-Tk; Tue, 12 Sep 2023 12:49:03 +0200
Date: Tue, 12 Sep 2023 12:49:03 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org,
	Alexander Shiyan <eagle.alexander923@gmail.com>
Message-ID: <20230912104903.GA637806@pengutronix.de>
References: <20230911155927.3786335-1-a.fatoum@pengutronix.de>
 <20230911155927.3786335-3-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230911155927.3786335-3-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230912_034906_090549_1B78ED2F 
X-CRM114-Status: GOOD (  37.95  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/3] net: add generic MAC address derivation from machine
 ID
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Sep 11, 2023 at 05:59:27PM +0200, Ahmad Fatoum wrote:
> From: Ahmad Fatoum <ahmad@a3f.at>
> 
> Especially during development, devices often lack a MAC address. While a
> MAC address can be easily added to the environment:
> 
>   nv dev.eth0.ethaddr="aa:bb:cc:dd:ee:ff"
> 
> It's easily lost when flashing complete new images, e.g. from CI.
> Make the development experience neater by deriving a stable MAC address
> if possible.

I like this, because my Fritzbox network overview is full of duplicate
entries coming from boards with random MAC addresses.


> @@ -558,6 +559,7 @@ static int of_populate_ethaddr(void)

This function should be renamed. When reviewing this patch I asked
myself why you limit generating a fixed MAC address to the DT case until
I realized that you actually don't. I was just confused by the function
name.

>  {
>  	char str[sizeof("xx:xx:xx:xx:xx:xx")];
>  	struct eth_device *edev;
> +	bool generated = false;
>  	int ret;
>  
>  	list_for_each_entry(edev, &netdev_list, list) {
> @@ -566,11 +568,18 @@ static int of_populate_ethaddr(void)
>  
>  		ret = of_get_mac_addr_nvmem(edev->parent->of_node,
>  					    edev->ethaddr);
> +		if (ret && IS_ENABLED(CONFIG_NET_ETHADDR_FROM_MACHINE_ID)) {

This check doesn't seem to be needed, generate_ether_addr() already
returns -ENOSYS when this option is not enabled.

> +			ret = generate_ether_addr(edev->ethaddr, edev->dev.id);
> +			generated = true;
> +		}
>  		if (ret)
>  			continue;
>  
>  		ethaddr_to_string(edev->ethaddr, str);
> -		dev_info(&edev->dev, "Got preset MAC address from device tree: %s\n", str);
> +		if (generated)
> +			dev_notice(&edev->dev, "Generated MAC address from unique id: %s\n", str);
> +		else
> +			dev_info(&edev->dev, "Got preset MAC address from NVMEM: %s\n", str);
>  		eth_set_ethaddr(edev, edev->ethaddr);
>  	}
>  
> diff --git a/net/net.c b/net/net.c
> index bf2117ff7ec2..e38179491d7a 100644
> --- a/net/net.c
> +++ b/net/net.c
> @@ -25,6 +25,7 @@
>  #include <init.h>
>  #include <globalvar.h>
>  #include <magicvar.h>
> +#include <machine_id.h>
>  #include <linux/ctype.h>
>  #include <linux/err.h>
>  
> @@ -365,6 +366,43 @@ IPaddr_t net_get_gateway(void)
>  
>  static LIST_HEAD(connection_list);
>  
> +/**
> + * generate_ether_addr - Generates stable software assigned Ethernet address
> + * @addr: Pointer to a six-byte array to contain the Ethernet address
> + * @ethid: index of the Ethernet interface
> + *
> + * Derives an Ethernet address (MAC) from the machine ID, that's stable
> + * per board that is not multicast and has the local assigned bit set.
> + *
> + * Return 0 if an address could be generated or a negative error code otherwise.
> + */
> +int generate_ether_addr(u8 *ethaddr, int ethid)
> +{
> +	const char *hostname;
> +	uuid_t id;
> +	int ret;
> +
> +	if (!IS_ENABLED(CONFIG_NET_ETHADDR_FROM_MACHINE_ID))
> +		return -ENOSYS;
> +
> +	hostname = barebox_get_hostname();
> +	if (!hostname)
> +		return -EINVAL;
> +
> +	ret = machine_id_get_app_specific(&id, ARRAY_AND_SIZE("barebox-macaddr:"),
> +					  hostname, strlen(hostname), NULL);
> +	if (ret)
> +		return ret;
> +
> +	memcpy(ethaddr, &id.b, ETH_ALEN);
> +	eth_addr_add(ethaddr, ethid);
> +
> +	ethaddr[0] &= 0xfe;	/* clear multicast bit */
> +	ethaddr[0] |= 0x02;	/* set local assignment bit (IEEE802) */
> +
> +	return 0;
> +}
> +
>  static struct net_connection *net_new(struct eth_device *edev, IPaddr_t dest,
>  				      rx_handler_f *handler, void *ctx)
>  {
> @@ -381,9 +419,16 @@ static struct net_connection *net_new(struct eth_device *edev, IPaddr_t dest,
>  
>  	if (!is_valid_ether_addr(edev->ethaddr)) {
>  		char str[sizeof("xx:xx:xx:xx:xx:xx")];
> -		random_ether_addr(edev->ethaddr);
> +
> +		ret = generate_ether_addr(edev->ethaddr, edev->dev.id);

For most network devices we won't get here because of_populate_ethaddr()
will already have done it for us. It's only used for devices that are
probed after postenvironment_initcall(), namely USB devices.

I think this deserves a cleanup before we merge this. The original
reason to introduce a postenvironment_initcall() for getting the MAC
address from nvmem was:

> We do this in a very late initcall, because we don't want to enforce a
> probe a probe order between nvmem providers and network devices. We
> can't do it at randomization time, because we need to fixup Ethernet mac
> addresses, even when barebox itself doesn't ifup the netdev.

I think we should have one centralized function that retrieves the MAC
address for an ethernet device. That should be called when we actually
need that MAC address, so once in net_new() and once at of_fixup time.

Right now the behaviour is inconsistent with regard to random MAC
addresses. Currently we propagate the random MAC address to the Linux
device tree when we use ethernet in barebox, but we don't propagate it
when we do not use ethernet in barebox. We should decide what the
desired behaviour is and do it consistently regardless if we use
ethernet in barebox or not. This could be cleaned up along the way.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


