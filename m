Delivery-date: Tue, 06 Jun 2023 13:33:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6UwA-00Czew-DJ
	for lore@lore.pengutronix.de; Tue, 06 Jun 2023 13:33:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6Uw7-0001MN-SJ
	for lore@pengutronix.de; Tue, 06 Jun 2023 13:33:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WTfw0xNzhvbX3bBt22PKnO5NaCCIY+TFPdZtVW5aoLQ=; b=uvKRAw48WI16g6BDJnaVQXF1Bi
	42cbATNRgcKOuLIg50Zi5U3njwZdYOEcmrY7WjfSeTLJzfmz4ltoZVRKGQu8NdObcG2Tl2m+Puay4
	UMvH82CimoCcfSx/b5Hi4Yuvmy6C9lIn/NK2kT/O1uddpDazvf1dF8ZNFC3H/OFd9LkDUnP8jAAwu
	L8xlVHGhH9eNqhFCzGyEgOxZsodPfovbRi0SK2PZ04H5XpZRxA0nxIoFkRKQolJHK/TI4yY2oAsR8
	xsjO/f9+ulmcTvNQOssaqKpSSxIZU0iImmyIaylaDzWCJrq+TKcyKcrRNpqBtuHnELDNF0/CibKf8
	UYZMzK1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Uuz-001S9u-0R;
	Tue, 06 Jun 2023 11:32:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Uuv-001S8g-2h
	for barebox@lists.infradead.org;
	Tue, 06 Jun 2023 11:32:03 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q6Uut-0001DS-TX; Tue, 06 Jun 2023 13:31:59 +0200
Message-ID: <8ede8e80-bcaf-37b8-29a0-ca9181f91a47@pengutronix.de>
Date: Tue, 6 Jun 2023 13:31:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20230605062939.242063-1-a.fatoum@pengutronix.de>
 <20230605062939.242063-4-a.fatoum@pengutronix.de>
 <20230606093344.GV18491@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230606093344.GV18491@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_043201_874585_973CC7FA 
X-CRM114-Status: GOOD (  31.22  )
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
Subject: Re: [PATCH master 4/7] net: gianfar: fix out of bounds read of local
 variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 06.06.23 11:33, Sascha Hauer wrote:
> On Mon, Jun 05, 2023 at 08:29:36AM +0200, Ahmad Fatoum wrote:
>> The MAC address will be written to two 32-bit registers. Because
>> MAC_ADDR_LEN == 6, this meant two bytes out-of-bounds where written to
>> the hardware register. Fix this by having them be in-bound and always
>> initialized to zero.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  drivers/net/gianfar.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/net/gianfar.c b/drivers/net/gianfar.c
>> index 4b374b4a50de..10a95324920b 100644
>> --- a/drivers/net/gianfar.c
>> +++ b/drivers/net/gianfar.c
>> @@ -234,7 +234,7 @@ static int gfar_set_ethaddr(struct eth_device *edev, const unsigned char *mac)
>>  {
>>  	struct gfar_private *priv = edev->priv;
>>  	void __iomem *regs = priv->regs;
>> -	char tmpbuf[MAC_ADDR_LEN];
>> +	char tmpbuf[8] = {};
> 
> I would prefer to adopt the Linux commit fixing this code which apart
> from the out-of-bounds access also has endianess fixes and makes the
> code simpler:
> 
> ---------------------------8<-----------------------------------
> 
> From 35cc52aacd65886a2ae46e68f727cadd09a3e8f2 Mon Sep 17 00:00:00 2001
> From: Sascha Hauer <s.hauer@pengutronix.de>
> Date: Tue, 6 Jun 2023 11:29:51 +0200
> Subject: [PATCH] net: gianfar: make MAC addr setup endian safe, cleanup
> 
> This is an adoption of Linux commit:
> 
> | commit 83bfc3c4765c35ef0dfff8a3d6dedab88f3f50ea
> | Author: Claudiu Manoil <claudiu.manoil@freescale.com>
> | Date:   Tue Oct 7 10:44:33 2014 +0300
> |
> |     gianfar: Make MAC addr setup endian safe, cleanup
> |
> |     Fix the 32-bit memory access that is not endian safe,
> |     i.e. not giving the desired byte layout for a LE CPU:
> |     tempval = *((u32 *) (tmpbuf + 4)), where 'char tmpbuf[]'.
> |
> |     Get rid of rendundant local vars (tmpbuf[] and idx) and
> |     forced casts.  Cleanup comments.
> |
> |     Signed-off-by: Claudiu Manoil <claudiu.manoil@freescale.com>
> |     Signed-off-by: David S. Miller <davem@davemloft.net>
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/net/gianfar.c | 10 ++--------
>  1 file changed, 2 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/net/gianfar.c b/drivers/net/gianfar.c
> index 4b374b4a50..1a07059db4 100644
> --- a/drivers/net/gianfar.c
> +++ b/drivers/net/gianfar.c
> @@ -234,19 +234,13 @@ static int gfar_set_ethaddr(struct eth_device *edev, const unsigned char *mac)
>  {
>  	struct gfar_private *priv = edev->priv;
>  	void __iomem *regs = priv->regs;
> -	char tmpbuf[MAC_ADDR_LEN];
>  	uint tempval;
> -	int ix;
> -
> -	for (ix = 0; ix < MAC_ADDR_LEN; ix++)
> -		tmpbuf[MAC_ADDR_LEN - 1 - ix] = mac[ix];
>  
> -	tempval = (tmpbuf[0] << 24) | (tmpbuf[1] << 16) | (tmpbuf[2] << 8) |
> -		  tmpbuf[3];
> +	tempval = (mac[5] << 24) | (mac[4] << 16) | (mac[3] << 8)  |  mac[2];
>  
>  	out_be32(regs + GFAR_MACSTRADDR1_OFFSET, tempval);
>  
> -	tempval = *((uint *)(tmpbuf + 4));
> +	tempval = (mac[1] << 24) | (mac[0] << 16);
>  
>  	out_be32(regs + GFAR_MACSTRADDR2_OFFSET, tempval);
>  

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



