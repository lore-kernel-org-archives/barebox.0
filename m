Delivery-date: Mon, 13 Nov 2023 13:40:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r2WEb-00A0oi-0g
	for lore@lore.pengutronix.de;
	Mon, 13 Nov 2023 13:40:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r2WEb-0005Gb-5P
	for lore@pengutronix.de; Mon, 13 Nov 2023 13:40:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=b+noZGDWLnj+8SjXDgph6HOGbNbvqKu4miNqMIelYoU=; b=E0zrc3WlaING7HpJgxwKPWEtNL
	5m2yuaPeYGOdFwnHoCsvHbQA73qcGN2GKIx2mrK5rk+XppRZu5hhArWB0BAIZISpKVBxpGLYTSvwf
	P/H8gvjVQgtQqQD3IcGhJ11osUXDlGZ8lRAVHVppSVf4W0ZhaIQSAFZg+45BviFuanlNa4WwDR0lM
	/cJu5VglW5CDyU0Yjguxqioxfn6XAbphVMw9bPrpHXEJLVNVD3pJrOzWPYxWQCMx0ezpnY6kKeLu9
	atvDARlfP5vChv3oBktaTQYwKxCP4RGccIsRykqpb5dou1rMP/iScyRg2elGG0A8smVI23oChdj4a
	t7Z1H/uA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r2WDG-00DygX-2F;
	Mon, 13 Nov 2023 12:38:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r2WDC-00DyfN-1L
	for barebox@lists.infradead.org;
	Mon, 13 Nov 2023 12:38:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r2WD8-00053Y-M5; Mon, 13 Nov 2023 13:38:38 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r2WD8-008jwq-9d; Mon, 13 Nov 2023 13:38:38 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r2WD8-001ooN-74; Mon, 13 Nov 2023 13:38:38 +0100
Date: Mon, 13 Nov 2023 13:38:38 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231113123838.GN3359458@pengutronix.de>
References: <20231110214421.2726093-1-a.fatoum@pengutronix.de>
 <20231110214421.2726093-15-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231110214421.2726093-15-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231113_043842_453601_D19E5E80 
X-CRM114-Status: GOOD (  23.13  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 14/18] include: implement dev_warn_once and friends
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Nov 10, 2023 at 10:44:17PM +0100, Ahmad Fatoum wrote:
> We already have pr_once, so duplicate it for dev_warn and friends as
> well.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/firmware/arm_scmi/driver.c |  4 ++--
>  include/linux/printk.h             | 29 ++++++++++++++++++++++++++++-
>  2 files changed, 30 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
> index c3536d6e9fbd..98f672746527 100644
> --- a/drivers/firmware/arm_scmi/driver.c
> +++ b/drivers/firmware/arm_scmi/driver.c
> @@ -988,7 +988,7 @@ static void scmi_create_protocol_devices(struct device_node *np,
>   */
>  int scmi_protocol_device_request(const struct scmi_device_id *id_table)
>  {
> -	int ret = 0;
> +	int id, ret = 0;
>  	struct list_head *phead = NULL;
>  	struct scmi_requested_dev *rdev;
>  	struct scmi_info *info;
> @@ -1001,7 +1001,7 @@ int scmi_protocol_device_request(const struct scmi_device_id *id_table)
>  	 * Search for the matching protocol rdev list and then search
>  	 * of any existent equally named device...fails if any duplicate found.
>  	 */
> -	idr_for_each_entry(&scmi_requested_devices, idr) {
> +	idr_for_each_entry(&scmi_requested_devices, idr, id) {
>  		struct list_head *head = idr->ptr;
>  		if (!phead) {
>  			/* A list found registered in the IDR is never empty */

These changes should be part of an earlier patch, right?

Sascha

> diff --git a/include/linux/printk.h b/include/linux/printk.h
> index cd4c3cb68edb..0e9604bbe967 100644
> --- a/include/linux/printk.h
> +++ b/include/linux/printk.h
> @@ -57,7 +57,15 @@ static inline int pr_print(int level, const char *format, ...)
>  		(level) <= LOGLEVEL ? dev_printf((level), (dev), (format), ##args) : 0; \
>  	 })
>  
> -
> +#define __dev_printf_once(level, dev, format, args...) do {	\
> +	static bool __print_once;				\
> +								\
> +	if (!__print_once && (level) <= LOGLEVEL) {		\
> +		__print_once = true;				\
> +		dev_printf((level), (dev), (format), ##args);	\
> +	}							\
> +} while (0)
> + 
>  #define dev_emerg(dev, format, arg...)		\
>  	__dev_printf(0, (dev) , format , ## arg)
>  #define dev_alert(dev, format, arg...)		\
> @@ -77,6 +85,25 @@ static inline int pr_print(int level, const char *format, ...)
>  #define dev_vdbg(dev, format, arg...)		\
>  	__dev_printf(8, (dev) , format , ## arg)
>  
> +#define dev_emerg_once(dev, format, arg...)		\
> +	__dev_printf_once(0, (dev) , format , ## arg)
> +#define dev_alert_once(dev, format, arg...)		\
> +	__dev_printf_once(1, (dev) , format , ## arg)
> +#define dev_crit_once(dev, format, arg...)		\
> +	__dev_printf_once(2, (dev) , format , ## arg)
> +#define dev_err_once(dev, format, arg...)		\
> +	__dev_prin_oncetf(3, (dev) , format , ## arg)
> +#define dev_warn_once(dev, format, arg...)		\
> +	__dev_printf_once(4, (dev) , format , ## arg)
> +#define dev_notice_once(dev, format, arg...)		\
> +	__dev_printf(_once5, (dev) , format , ## arg)
> +#define dev_info_once(dev, format, arg...)		\
> +	__dev_printf_once(6, (dev) , format , ## arg)
> +#define dev_dbg_once(dev, format, arg...)		\
> +	__dev_prin_oncetf(7, (dev) , format , ## arg)
> +#define dev_vdbg_once(dev, format, arg...)		\
> +	__dev_printf_once(8, (dev) , format , ## arg)
> +
>  #if LOGLEVEL >= MSG_ERR
>  int dev_err_probe(struct device *dev, int err, const char *fmt, ...)
>  	__attribute__ ((format(__printf__, 3, 4)));
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


