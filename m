Delivery-date: Thu, 11 Jan 2024 16:58:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNxRz-00D95y-1Q
	for lore@lore.pengutronix.de;
	Thu, 11 Jan 2024 16:58:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNxRy-0005XL-Mv
	for lore@pengutronix.de; Thu, 11 Jan 2024 16:58:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iFeB6nl5i+QfkQ/5AGO7oMr5e7DZUnv5m7R/FR9TFak=; b=T9aOWI1r5Em8F3zXZHC3T9r28e
	QUqZW87jcjLhBLlfQqiJOlYv0whxk7+2gujiTaTcCOO1fT5iwPuIqXWrVWUEDEVIkZ/sat8urSfGL
	UzMQOP/77Lpg1tlSZ7l5pj82dp2Xbdn26jeuMC0BG8OKZTjFW7MTXC0YN6bZqMy8BuWDk6PuMXi+h
	5bI5S1vC9JuzEgISHq82dBHYNRtldTgn60tZwNcTkI+3Sj/Ascvi6tHZCGJxrqTNMNERMlWH6uTkt
	EGXC0v4VRZNJY8DjRIyvEOiYafvQ8p2U6WwCjGpgU30oTVZ2/p3Xas0lG8fhyAZJ1cSojk/f9iMf7
	lJA0ljUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNxQp-000W5d-2g;
	Thu, 11 Jan 2024 15:57:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNxQm-000W5E-1Y
	for barebox@lists.infradead.org;
	Thu, 11 Jan 2024 15:57:22 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNxQl-0005Hm-1Q; Thu, 11 Jan 2024 16:57:19 +0100
Message-ID: <2f94ac17-fb2e-4ebd-ad49-c48f0b06d875@pengutronix.de>
Date: Thu, 11 Jan 2024 16:57:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Stefan Kerkmann <s.kerkmann@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20240111-fix-habv4-event-report-v1-0-15d9a990f01e@pengutronix.de>
 <20240111-fix-habv4-event-report-v1-1-15d9a990f01e@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240111-fix-habv4-event-report-v1-1-15d9a990f01e@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240111_075720_540240_6C3B9351 
X-CRM114-Status: GOOD (  22.08  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] habv4: correct habv4 rom vector table
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Stefan,

On 11.01.24 16:42, Stefan Kerkmann wrote:
> All function signatures have been taken from the NXP manual "High
> Assurance Boot Version 4 Application Programming Interface Reference
> Manual" revision 1.4 under section "4.5 ROM vector table". A copy can be
> obtained from the imx code signing tool (imx-cst).
> 
> Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
> ---
>  drivers/hab/habv4.c | 50 ++++++++++++++++++++++++++++++--------------------
>  1 file changed, 30 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
> index ed6d4db77c..dfa0207435 100644
> --- a/drivers/hab/habv4.c
> +++ b/drivers/hab/habv4.c
> @@ -144,31 +144,41 @@ struct hab_header {
>  	uint8_t par;
>  } __packed;
>  
> -typedef enum hab_status hab_loader_callback_fn(void **start, uint32_t *bytes, const void *boot_data);
> +typedef enum hab_status hab_loader_callback_fn(void **start, size_t *bytes, const void *boot_data);
> +typedef void (*hab_image_entry_fn)(void);

While it only matter for forward declaration, perhaps, change this
to be a non-pointer like hab_loader_callback_fn above?

>  
> +/* This table is constructed from the NXP manual "High Assurance Boot Version 4
> + * Application Programming Interface Reference Manual", section 4.5 ROM vector
> + * table. Revision 1.4 */
>  struct habv4_rvt {
>  	struct hab_header header;
>  	enum hab_status (*entry)(void);
>  	enum hab_status (*exit)(void);
> -	enum hab_status (*check_target)(enum hab_target target, const void *start, uint32_t bytes);
> -	void *(*authenticate_image)(uint8_t cid, uint32_t ivt_offset, void **start, uint32_t *bytes, hab_loader_callback_fn *loader);
> -	enum hab_status (*run_dcd)(const void *dcd);
> -	enum hab_status (*run_csf)(const void *csf, uint8_t cid);
> +	enum hab_status (*check_target)(enum hab_target target, const void *start, size_t bytes);
> +	void *(*authenticate_image)(uint8_t cid, ptrdiff_t ivt_offset, void **start, size_t *bytes, hab_loader_callback_fn *loader);

Here you explicitly use a pointer to a function.

> +	enum hab_status (*run_dcd)(const uint8_t *dcd);
> +	enum hab_status (*run_csf)(const uint8_t *csf, uint8_t cid, uint32_t srkmask);
>  	enum hab_status (*assert)(enum hab_assertion assertion, const void *data, uint32_t count);
> -	enum hab_status (*report_event)(enum hab_status status, uint32_t index, void *event, uint32_t *bytes);
> +	enum hab_status (*report_event)(enum hab_status status, uint32_t index, uint8_t *event, size_t *bytes);
>  	enum hab_status (*report_status)(enum hab_config *config, enum habv4_state *state);
>  	void (*failsafe)(void);
> +	hab_image_entry_fn(* authenticate_image_no_dcd)(uint8_t cid, ptrdiff_t ivt_offset, void **start, size_t *bytes, hab_loader_callback_fn loader);

And here you rely on a function pointer being automatically derived.
While that's ok from a correctness point of view, for symmetry, it
would be better to stick to one type.

> +	uint32_t(* get_version)(void);

Nitpick: space after uint32_t and not before get_version.

> +	enum hab_status (*authenticate_container)(uint8_t cid, ptrdiff_t ivt_offset, void **start, size_t *bytes, hab_loader_callback_fn loader, uint32_t srkmask, int skip_dcd);
>  } __packed;
>  
> -#define FSL_SIP_HAB             0xC2000007

This is removed without replacement?

> -#define FSL_SIP_HAB_AUTHENTICATE        0x00
> -#define FSL_SIP_HAB_ENTRY               0x01
> -#define FSL_SIP_HAB_EXIT                0x02
> -#define FSL_SIP_HAB_REPORT_EVENT        0x03
> -#define FSL_SIP_HAB_REPORT_STATUS       0x04
> -#define FSL_SIP_HAB_FAILSAFE            0x05
> -#define FSL_SIP_HAB_CHECK_TARGET        0x06
> -#define FSL_SIP_HAB_GET_VERSION		0x07
> +#define FSL_SIP_HAB 0xC2000007
> +
> +enum hab_sip_cmd {
> +	FSL_SIP_HAB_AUTHENTICATE = 0x00,
> +	FSL_SIP_HAB_ENTRY = 0x01,
> +	FSL_SIP_HAB_EXIT = 0x02,
> +	FSL_SIP_HAB_REPORT_EVENT = 0x03,
> +	FSL_SIP_HAB_REPORT_STATUS = 0x04,
> +	FSL_SIP_HAB_FAILSAFE = 0x05,
> +	FSL_SIP_HAB_CHECK_TARGET = 0x06,
> +	FSL_SIP_HAB_GET_VERSION = 0x07,
> +};
>  
>  static enum hab_status hab_sip_report_status(enum hab_config *config,
>  					     enum habv4_state *state)
> @@ -211,8 +221,8 @@ static uint32_t hab_sip_get_version(void)
>  #define IMX8MP_ROM_OCRAM_ADDRESS	0x90D040
>  
>  static enum hab_status imx8m_read_sram_events(enum hab_status status,
> -					     uint32_t index, void *event,
> -					     uint32_t *bytes)
> +					     uint32_t index, uint8_t *event,
> +					     size_t *bytes)
>  {
>  	struct hab_event_record *events[10];
>  	int num_events = 0;
> @@ -478,7 +488,7 @@ static void habv4_display_event_record(struct hab_event_record *record)
>  	pr_err("Engine: %s (0x%02x)\n", habv4_get_engine_str(record->engine), record->engine);
>  }
>  
> -static void habv4_display_event(uint8_t *data, uint32_t len)
> +static void habv4_display_event(uint8_t *data, size_t len)
>  {
>  	unsigned int i;
>  
> @@ -525,7 +535,7 @@ static bool is_known_rng_fail_event(const uint8_t *data, size_t len)
>  	return false;
>  }
>  
> -static uint8_t *hab_get_event(const struct habv4_rvt *rvt, int index, int *len)
> +static uint8_t *hab_get_event(const struct habv4_rvt *rvt, int index, size_t *len)
>  {
>  	enum hab_status err;
>  	uint8_t *buf;
> @@ -558,7 +568,7 @@ int habv4_get_state(void)
>  static int habv4_get_status(const struct habv4_rvt *rvt)
>  {
>  	uint8_t *data;
> -	uint32_t len;
> +	size_t len;
>  	int i;
>  	enum hab_status status;
>  	enum hab_config config = 0x0;
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



