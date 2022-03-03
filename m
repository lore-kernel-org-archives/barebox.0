Delivery-date: Thu, 03 Mar 2022 11:07:55 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nPiNH-00GP6n-Fc
	for lore@lore.pengutronix.de; Thu, 03 Mar 2022 11:07:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nPiNG-0000ra-0d
	for lore@pengutronix.de; Thu, 03 Mar 2022 11:07:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nW6EzbFQuepN5dZqGH3xOeZmMJvZYUi1Td9Op6k2TRU=; b=yHdEkbck+Pl0esE/6ffoTSlE/8
	O4yJF1fn+RrJ5aiRBbnBobqHN6zId4vVcmMPHvpN98lyUWheP6wY0/5ixjdG1IRZiv/kKViDHIosr
	/cslUvbHOrjoH4RzHAoPS6Vx0zb1nI0OoT4qHe6MtEukMKGhDvWh/8rYWoGFD+eI5osRwNK+bPzMD
	uuFBSNW2MQEDibygvxpqF+gtbLYdJ6wAPSsrOzFexarwiVKbCsloH8av6hRdqBvZgCzxZ7ipPqqvO
	tV6sYixljrhue4Y7mzk1sMWBHgvM0YauVjN/k9mrRvTGNFBWGQGspYRsvrdKkwEzy2w8Bp5WN/67X
	xBRkiSDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPiLp-0060M5-TK; Thu, 03 Mar 2022 10:06:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPiLk-0060Kq-Nr
 for barebox@lists.infradead.org; Thu, 03 Mar 2022 10:06:22 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nPiLj-0000gH-H0; Thu, 03 Mar 2022 11:06:19 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nPiLj-0002Yq-83; Thu, 03 Mar 2022 11:06:19 +0100
Date: Thu, 3 Mar 2022 11:06:19 +0100
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20220303100619.GF19585@pengutronix.de>
References: <20220302200934.657994-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220302200934.657994-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:06:10 up 82 days, 18:51, 83 users,  load average: 0.18, 0.29, 0.26
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220303_020620_802464_030B65BB 
X-CRM114-Status: GOOD (  25.59  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] watchdog: wdat: fix mixed spaces/tabs in alignment
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Mar 02, 2022 at 09:09:34PM +0100, Ahmad Fatoum wrote:
> Many struct members have a space followed by tabs for alignments. Drop
> the space.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  drivers/watchdog/wdat_wdt.c | 36 ++++++++++++++++++------------------
>  1 file changed, 18 insertions(+), 18 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/watchdog/wdat_wdt.c b/drivers/watchdog/wdat_wdt.c
> index 39e8cc4a3dab..f58aee128301 100644
> --- a/drivers/watchdog/wdat_wdt.c
> +++ b/drivers/watchdog/wdat_wdt.c
> @@ -48,12 +48,12 @@ enum acpi_wdat_instructions {
>  /* WDAT Instruction Entries (actions) */
>  
>  struct __packed acpi_wdat_entry {
> -	u8 				action;
> -	u8 				instruction;
> -	u16 				reserved;
> -	struct acpi_generic_address 	register_region;
> -	u32 				value;		/* Value used with Read/Write register */
> -	u32 				mask;		/* Bitmask required for this register instruction */
> +	u8				action;
> +	u8				instruction;
> +	u16				reserved;
> +	struct acpi_generic_address	register_region;
> +	u32				value;		/* Value used with Read/Write register */
> +	u32				mask;		/* Bitmask required for this register instruction */
>  };
>  
>  /**
> @@ -82,7 +82,7 @@ struct wdat_instruction {
>  struct wdat_wdt {
>  	struct watchdog		wdd;
>  	unsigned int		period;
> -	bool 			stopped_in_sleep;
> +	bool			stopped_in_sleep;
>  	bool			stopped;
>  	struct list_head	*instructions[MAX_WDAT_ACTIONS];
>  };
> @@ -90,17 +90,17 @@ struct wdat_wdt {
>  struct __packed acpi_table_wdat {
>  	struct acpi_table_header header;	/* Common ACPI table header */
>  	u32			 header_length;	/* Watchdog Header Length */
> -	u16 			 pci_segment;	/* PCI Segment number */
> -	u8 			 pci_bus;	/* PCI Bus number */
> -	u8 			 pci_device;	/* PCI Device number */
> -	u8 			 pci_function;	/* PCI Function number */
> -	u8 			 reserved[3];
> -	u32 			 timer_period;	/* Period of one timer count (msec) */
> -	u32 			 max_count;	/* Maximum counter value supported */
> -	u32 			 min_count;	/* Minimum counter value */
> -	u8 			 flags;
> -	u8 			 reserved2[3];
> -	u32 			 nr_entries;	/* Number of watchdog entries that follow */
> +	u16			 pci_segment;	/* PCI Segment number */
> +	u8			 pci_bus;	/* PCI Bus number */
> +	u8			 pci_device;	/* PCI Device number */
> +	u8			 pci_function;	/* PCI Function number */
> +	u8			 reserved[3];
> +	u32			 timer_period;	/* Period of one timer count (msec) */
> +	u32			 max_count;	/* Maximum counter value supported */
> +	u32			 min_count;	/* Minimum counter value */
> +	u8			 flags;
> +	u8			 reserved2[3];
> +	u32			 nr_entries;	/* Number of watchdog entries that follow */
>  	struct acpi_wdat_entry   entries[];
>  };
>  
> -- 
> 2.34.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

