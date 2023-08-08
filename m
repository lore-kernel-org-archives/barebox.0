Delivery-date: Tue, 08 Aug 2023 11:37:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qTJ9p-00CEH6-Fw
	for lore@lore.pengutronix.de; Tue, 08 Aug 2023 11:37:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qTJ9n-0003mV-GH
	for lore@pengutronix.de; Tue, 08 Aug 2023 11:37:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pAMCclpjn3j3tnzHvI7w0zyqd7IzRAY7sLjCBeg/TF8=; b=F3yOUnfVmk6a/ivuNvjUnnUL3Q
	403eebDmobFVMgxQtR+RW/F5sWAobLHQGr/wk5uAhKuEEbvNN7XS7eUzpg4CXG6UcCp0vJXbJxnva
	TB3G3Wq/C9WIizL0IiJ9w4LRFYI9JkGk7gJtLYdQ0NT14DL+rZdmWl7YM4aJC/JLpEWVLVi4Ve7RY
	Hgmc7adlavEy/FLbqYU2Ze8LxNJnRDP54XRbvnfJgq5DnrrBQNXARkYpv+lbDGpDHlGg6DYQjxJH5
	1KMoA639YKp2DuhVHuaCNjAjoACbESpuOEbNliZkSe1qGSyXgPJDKOsz/m3/566FNlBQ1cyP5eiK5
	aABNxKRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qTJ8i-0029Nl-2L;
	Tue, 08 Aug 2023 09:36:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qTJ8f-0029NJ-1J
	for barebox@lists.infradead.org;
	Tue, 08 Aug 2023 09:36:30 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qTJ8c-0003iR-8a; Tue, 08 Aug 2023 11:36:26 +0200
Message-ID: <31c0838e-1aac-6691-3165-40c94cd94006@pengutronix.de>
Date: Tue, 8 Aug 2023 11:36:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org
References: <20230807170743.149799-1-m.felsch@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230807170743.149799-1-m.felsch@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230808_023629_444874_85D8B76D 
X-CRM114-Status: GOOD (  23.33  )
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
X-Spam-Status: No, score=-6.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] of: of_net: add support to parse ASCII encoded
 mac-addresses
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Marco,

On 07.08.23 19:07, Marco Felsch wrote:
> Some vendors like Polyhex store the MAC address ASCII encoded instead of
> using the plain 6-byte MAC address. This commit adds the support to
> decode the 12-byte ASCII encoded MAC addresses.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

FYI, the upstream device tree binding for this is NVMEM layout, which was only
recently added to Linux and for which barebox has no support yet.

I can understand that porting NVMEM layouts, just to get a MAC address assigned
might not be an attractive proposition, but I don't think that adding a new
barebox-specific binding is the right way here. I'd suggest, you get the
nvmem cell in board code and assign it there. There's readily available API
for that. If you are interested in a generic solution, NVMEM layouts are
the way to go IMO.

> ---
>  drivers/of/of_net.c | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/drivers/of/of_net.c b/drivers/of/of_net.c
> index 75a24073da51..4e74986cdda8 100644
> --- a/drivers/of/of_net.c
> +++ b/drivers/of/of_net.c
> @@ -79,6 +79,8 @@ static int of_get_mac_addr(struct device_node *np, const char *name, u8 *addr)
>  	return -ENODEV;
>  }
>  
> +#define ETH_ALEN_ASCII	12
> +
>  int of_get_mac_addr_nvmem(struct device_node *np, u8 *addr)
>  {
>  	struct nvmem_cell *cell;
> @@ -98,6 +100,23 @@ int of_get_mac_addr_nvmem(struct device_node *np, u8 *addr)
>  	if (IS_ERR(mac))
>  		return PTR_ERR(mac);
>  
> +	if (len == ETH_ALEN_ASCII) {
> +		u8 *mac_new;
> +		int ret;
> +
> +		mac_new = kzalloc(sizeof("xx:xx:xx:xx:xx:xx"), GFP_KERNEL);
> +		ret = hex2bin(mac_new, mac, ETH_ALEN);

Why not parse into a fixed size local buffer and then copy it? Would save
you the extra allocation.

> +		if (ret) {
> +			kfree(mac_new);
> +			kfree(mac);
> +			return ret;
> +		}
> +
> +		kfree(mac);
> +		mac = mac_new;
> +		len = ETH_ALEN;
> +	}
> +
>  	if (len != ETH_ALEN || !is_valid_ether_addr(mac)) {
>  		kfree(mac);
>  		return -EINVAL;

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



