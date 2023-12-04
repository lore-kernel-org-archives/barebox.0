Delivery-date: Mon, 04 Dec 2023 10:08:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rA4w4-002bTH-1T
	for lore@lore.pengutronix.de;
	Mon, 04 Dec 2023 10:08:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rA4w4-0005Uo-G4
	for lore@pengutronix.de; Mon, 04 Dec 2023 10:08:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lYDp2FKKVpiOc/6wpX7D8RlOQCqGMRL0D5rhbTOcdTE=; b=wrgoNWUGT9wyLtVhP07xSkHwRJ
	TtA32luMcNEP8hCqbD0EdohvbDLJVmxmdgxmKprKLv5oBMlQ3C/xcEPUIZnZuzZ5t7o7ogoDWKIq4
	dOgx8z07823PBbgBI/jdMQ1lFGmIELcOxNg+owWg+I0LzqA9Frt0VBgIT9GsnuF2ACOwExEx5AQQg
	bBdhuDyUEkSL71iaBf5biEwryZs7w/KaZsI0RdUTbPl1+DQ6REIUjRPqGUBmTTxKEZaTi/hoshVpa
	LnxSIjKlrn85lndR5eQTQilM2WM5zRASKy3Y25me1p2ygifdYSG+JvqKkggHpNlR0lriTVzApbVFT
	cFTQ9IAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rA4uK-003MYa-1K;
	Mon, 04 Dec 2023 09:06:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rA4uE-003MX8-34
	for barebox@lists.infradead.org;
	Mon, 04 Dec 2023 09:06:26 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rA4u9-0005BH-Vi; Mon, 04 Dec 2023 10:06:18 +0100
Message-ID: <161fba91-6197-455b-9a1d-1f3d64fa4542@pengutronix.de>
Date: Mon, 4 Dec 2023 10:06:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20231204072851.2515319-1-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20231204072851.2515319-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_010623_002207_F7FE7150 
X-CRM114-Status: GOOD (  19.12  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] drivers: firmware: arm-scmi: Fix iterating over idr
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 04.12.23 08:28, Sascha Hauer wrote:
> The iterator in idr_for_each_entry() is the pointer we store in the idr,
> not the idr element itself.
> 
> Fixes: d28d3d9159 ("include: linux/idr.h: implement more Linux API")
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>


> ---
>  drivers/firmware/arm_scmi/driver.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
> index 98f6727465..19fb77f4ea 100644
> --- a/drivers/firmware/arm_scmi/driver.c
> +++ b/drivers/firmware/arm_scmi/driver.c
> @@ -990,9 +990,9 @@ int scmi_protocol_device_request(const struct scmi_device_id *id_table)
>  {
>  	int id, ret = 0;
>  	struct list_head *phead = NULL;
> +	struct list_head *head;
>  	struct scmi_requested_dev *rdev;
>  	struct scmi_info *info;
> -	struct idr *idr;
>  
>  	pr_debug("Requesting SCMI device (%s) for protocol 0x%x\n",
>  		 id_table->name, id_table->protocol_id);
> @@ -1001,8 +1001,7 @@ int scmi_protocol_device_request(const struct scmi_device_id *id_table)
>  	 * Search for the matching protocol rdev list and then search
>  	 * of any existent equally named device...fails if any duplicate found.
>  	 */
> -	idr_for_each_entry(&scmi_requested_devices, idr, id) {
> -		struct list_head *head = idr->ptr;
> +	idr_for_each_entry(&scmi_requested_devices, head, id) {
>  		if (!phead) {
>  			/* A list found registered in the IDR is never empty */
>  			rdev = list_first_entry(head, struct scmi_requested_dev,

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



