Delivery-date: Tue, 02 Jan 2024 12:47:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKdF6-000XgD-0x
	for lore@lore.pengutronix.de;
	Tue, 02 Jan 2024 12:47:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKdF5-00084h-7E
	for lore@pengutronix.de; Tue, 02 Jan 2024 12:47:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Rz+QucRwDTorH8FLxg8nAA3kXPXsxYkuuOOvsra+tdo=; b=hkpGS0suyzr1jCLrt9tnaWvGdB
	UAzqeMJrXHksdM0fvIg3tiOsbPmuy13SjAPQzXfT7aYolhbrE+8XUYFjVRB525HNm9Z+6lZDaWCWi
	ZabIqx3DpMAOWBQP8dsKzQCkKgJ20XzWDa6kmA2TkjAkRl16s7G7HBA3FDY7yEZ68mTtN1UiebtVV
	KtyfJNbWsacWP7V2BQ41nt7E0FPRs0FBRcXd0pbwB00Bdk8jdf6zMdyuqFU/Upc//QiaLeNug0zeU
	gaaAnHyWNB8esbqif9kaoY6PC7kBRiXVJspLEtBT9RGTWbDRHKXNO3BSUkG7V8qQXhSdWI4CovPC6
	cCYHGvFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKdE0-007qEI-1e;
	Tue, 02 Jan 2024 11:46:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKdDx-007qBq-1X
	for barebox@lists.infradead.org;
	Tue, 02 Jan 2024 11:46:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rKdDw-0007vz-3Q; Tue, 02 Jan 2024 12:46:20 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rKdDu-003Afi-HJ; Tue, 02 Jan 2024 12:46:19 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rKdDv-009uGx-I2; Tue, 02 Jan 2024 12:46:19 +0100
Date: Tue, 2 Jan 2024 12:46:19 +0100
To: Christian Melki <christian.melki@t2data.com>
Cc: barebox@lists.infradead.org
Message-ID: <20240102114619.GD1318922@pengutronix.de>
References: <20231218202544.3952838-1-christian.melki@t2data.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231218202544.3952838-1-christian.melki@t2data.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240102_034621_531506_5DB9BEFB 
X-CRM114-Status: GOOD (  25.63  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] habv4: Fix parsing of unresonable events.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Dec 18, 2023 at 09:25:44PM +0100, Christian Melki wrote:
> An unknown root cause made data look like events (0xdb)
> with very long event lengths. This was causing
> very long printouts of bogus stuff in the console.
> 
> While the root cause needs to be found and fixed,
> there is no need of parsing events with abnormal lengths.
> Also stop parsing if length exceeds the end of scope.
> 
> Signed-off-by: Christian Melki <christian.melki@t2data.com>
> ---
>  drivers/hab/habv4.c | 15 +++++++++++++--
>  1 file changed, 13 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
> index f74de009fc..1a55a3e448 100644
> --- a/drivers/hab/habv4.c
> +++ b/drivers/hab/habv4.c
> @@ -203,6 +203,8 @@ static uint32_t hab_sip_get_version(void)
>  	return (uint32_t)res.a0;
>  }
>  
> +#define HABV4_EVENT_MAX_LEN		0x80
> +
>  #define IMX8MQ_ROM_OCRAM_ADDRESS	0x9061C0
>  #define IMX8MM_ROM_OCRAM_ADDRESS	0x908040
>  #define IMX8MN_ROM_OCRAM_ADDRESS	0x908040
> @@ -217,6 +219,7 @@ static enum hab_status imx8m_read_sram_events(enum hab_status status,
>  	char *sram;
>  	int i = 0;
>  	int internal_index = 0;
> +	uint16_t ev_len;
>  	char *end = 0;
>  	struct hab_event_record *search;
>  
> @@ -236,13 +239,21 @@ static enum hab_status imx8m_read_sram_events(enum hab_status status,
>  	 * recommends the address and size, however errors are usually contained
>  	 * within the first bytes. Scan only the first few bytes to rule out
>  	 * lots of false positives.
> +	 * The max event length is just a sanity check.
>  	 */
> -	end = sram +  0x1a0;
> +	end = sram + 0x1a0;
>  
>  	while (sram < end) {
>  		if (*sram == 0xdb) {
>  			search = (void *)sram;
> -			sram = sram + be16_to_cpu(search->hdr.len);
> +			ev_len = be16_to_cpu(search->hdr.len);
> +			if (ev_len > HABV4_EVENT_MAX_LEN) {
> +				break;
> +			}
> +			sram += ev_len;
> +			if (sram > end) {
> +				break;
> +			}
>  			events[num_events] = search;
>  			num_events++;
>  		} else {
> -- 
> 2.34.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


