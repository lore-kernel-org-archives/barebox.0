Delivery-date: Fri, 04 Nov 2022 09:36:17 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oqsBV-00EjDJ-J4
	for lore@lore.pengutronix.de; Fri, 04 Nov 2022 09:36:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oqsBU-0004Fj-I7
	for lore@pengutronix.de; Fri, 04 Nov 2022 09:36:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lqiCMnl/k75Fur/EfvvN5MG+S1PPS7h2/JQB4tWSwQ0=; b=s6IvIuDOdsfoV0cGrOKCMMtp9s
	YQ4Nq2bj3KSdA4Qir+bw6x95KZ/X3/MhQ3waBJLPYmkfqOBozFZibL144MX0kwsrLStZW/6Uqgphn
	VXq/cZU0jy/+wxIG2RGeehN32sSVTMCy3sjPNlnbxZUcaPmTXlWyccp0sDlavB7y5Jveb46NNQl6F
	6f6hmEfsSQ3qvJGYGwuK+4ZXe+dInOSxWTHtYX0eemfd7wjP1UJ+Nrm1iwgWNrk0xSJ7wjD39p4H4
	QLqFwB++RtNd8X4ho2H6Axe0gl6THc5b6ZGTJrVGoL6h781AkZgCwvMlLWX7NFjexh+N6u0FbnZ5P
	tv02bLIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqsA9-002yak-Lc; Fri, 04 Nov 2022 08:34:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqsA3-002yZp-MB
	for barebox@lists.infradead.org; Fri, 04 Nov 2022 08:34:50 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1oqsA0-0003pb-EK; Fri, 04 Nov 2022 09:34:44 +0100
Message-ID: <94bc24cc-2675-de3d-0b3c-541ab7a3fdac@pengutronix.de>
Date: Fri, 4 Nov 2022 09:34:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>,
 Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20221103131351.2059683-1-o.rempel@pengutronix.de>
 <20221103131351.2059683-2-o.rempel@pengutronix.de>
 <20221104082653.GR3143@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20221104082653.GR3143@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221104_013447_754000_815920B9 
X-CRM114-Status: GOOD (  21.98  )
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
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/6] net: dsa: enable promiscuous mode for switch
 master edev
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Oleksij,

On 04.11.22 09:26, Sascha Hauer wrote:
> On Thu, Nov 03, 2022 at 02:13:47PM +0100, Oleksij Rempel wrote:
>> Typical use case for DSA framework on barebox a port multiplexer. This
>> means, we mostly have different MAC addresses on each port. To make this
>> work, we need to enable promiscuous mode on the master Ethernet
>> controller.
>>
>> With this patch, promiscuous mode will be enabled automatically, as soon
>> as at least one switch port is enabled and this mode will be disabled
>> after all switch ports are disabled as well.
>>
>> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
>> ---
>>  drivers/net/dsa.c | 2 ++
>>  1 file changed, 2 insertions(+)
>>
>> diff --git a/drivers/net/dsa.c b/drivers/net/dsa.c
>> index 040ba897e2..14ef8f4c4f 100644
>> --- a/drivers/net/dsa.c
>> +++ b/drivers/net/dsa.c
>> @@ -129,6 +129,7 @@ static int dsa_port_start(struct eth_device *edev)
>>  				return ret;
>>  		}
>>  
>> +		eth_set_promiscuous_mode(ds->edev_master, true);
>>  		eth_open(ds->edev_master);
>>  	}
>>  
>> @@ -160,6 +161,7 @@ static void dsa_port_stop(struct eth_device *edev)
>>  			ops->port_disable(dpc, ds->cpu_port,
>>  					ds->cpu_port_fixed_phy);
>>  
>> +		eth_set_promiscuous_mode(ds->edev_master, false);

Can you change the name to eth_set_promisc[_mode] ?
This aligns it with the kernel IFF_PROMISC and it's easier to type
without looking up correct spelling ^^'.

> 
> Please check the error code. When eth_set_promiscuous_mode() is not
> implemented for the current ethernet device we should notice the user.
> 
> Sascha
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



