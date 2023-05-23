Delivery-date: Tue, 23 May 2023 08:10:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1LDp-00APwO-Lj
	for lore@lore.pengutronix.de; Tue, 23 May 2023 08:10:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1LDn-0002RE-Da
	for lore@pengutronix.de; Tue, 23 May 2023 08:10:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:Cc:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wPwjh0MTQLDOkH49RxkPmWV/TtZJM4RwQ+9YeiNvKkA=; b=ZJbgu/BIAT73Ps/m/XwqBvBl7t
	6QfGqfWDXidWxTxd3QczYSe4120jnU4CdnVKvn36X4ns+hd58eWfOwpqeEBBFAJmtjNRNw9BJ1Zyr
	9hvBVs3/cWI4vkpvY9Cn/053rg+hzqv4qXS8nfl+dzDLmLq6dEM721f5yEGCF4LJHwU0nPyF+O8iP
	vNKf4RxMsn2xPSLWyhdeiVPq5e8oReyBr6eUUkTTtjpNsg9KLGXfPp/mbLGYVVfuEhxeMukrSt4zo
	f7qhjneuokvDV/3Mk0ME9eYyiVzJOBdejTf+LYivBLB/7zvmqXb00eCajAx+gFfq8rMCX+/CzedBU
	r22ohzXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1LCb-0092iD-1i;
	Tue, 23 May 2023 06:08:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1LCX-0092hd-2o
	for barebox@lists.infradead.org;
	Tue, 23 May 2023 06:08:55 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q1LCW-0002KF-Ae; Tue, 23 May 2023 08:08:52 +0200
Message-ID: <9c678311-3227-7577-780c-3f2d26596f74@pengutronix.de>
Date: Tue, 23 May 2023 08:08:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>
References: <20230523055042.2863795-1-a.fatoum@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230523055042.2863795-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230522_230853_905726_1ACB3851 
X-CRM114-Status: GOOD (  18.69  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] fixup! pci: set upper word for 64bit base addresses
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 23.05.23 07:50, Ahmad Fatoum wrote:
> pci: fix warning building for 32-bit
> 
> On systems with sizeof(resource_size_t) == 4, shifting by 32 will result
> in a warning. Use the upper_32_bits macro to fix this.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/pci/pci.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
> index 046711cd145b..ff2ffacffb6b 100644
> --- a/drivers/pci/pci.c
> +++ b/drivers/pci/pci.c
> @@ -223,7 +223,8 @@ static void setup_device(struct pci_dev *dev, int max_bar)
>  			*last_addr = ALIGN(*last_addr, size);
>  			pci_write_config_dword(dev, pci_base_address_0, *last_addr);

Sascha, could you change this into lower_32_bits(*last_addr) when you apply?

Cheers,
Ahmad


>  			if (mask & PCI_BASE_ADDRESS_MEM_TYPE_64)
> -				pci_write_config_dword(dev, pci_base_address_1, *last_addr >> 32);
> +				pci_write_config_dword(dev, pci_base_address_1,
> +						       upper_32_bits(*last_addr));
>  			start = *last_addr;
>  			*last_addr += size;
>  		} else {

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



