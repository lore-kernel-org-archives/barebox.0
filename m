Delivery-date: Mon, 22 Jan 2024 10:37:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rRqjy-00BHak-0F
	for lore@lore.pengutronix.de;
	Mon, 22 Jan 2024 10:37:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rRqjy-0003Pq-Om
	for lore@pengutronix.de; Mon, 22 Jan 2024 10:37:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kqlDun1SDvTMo5McAhs1KUl72BPYty70rIGVwOOCU8k=; b=TCzzeJ1H/s7Yv4Xm15ceDALChU
	92hYVJsFkLpG6uuyhWg2K6ELwtnMZhcLDXDWe5LRUbBWtN8T0rNDa2OP8tacKiAYhziZlsEPWnM4+
	Xk8dO6Caz1JXisfVXwOGPCrnubaYfGdWbTifLkQ7Bl9uNjU5QXtwyGpwBF1pm1tyhZzV3A9Kb4bZi
	MMm7dBLT19cAR9ORTQ9cDkEGuDTIYdBGgAdt9rXT98H/UEZOZ6VDm4+xi30ZW8ShP8uLzisVzLd/P
	be+6bkARKpYRCWb4rmo7ODHsdhIp+etVrnM1L2GXfckm/m0+5CHKZ4ZQmrCE5mg8lsOsdHDbDUEot
	dy9NvNxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rRqin-00BJJj-2V;
	Mon, 22 Jan 2024 09:36:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rRqih-00BJIz-2D
	for barebox@lists.infradead.org;
	Mon, 22 Jan 2024 09:35:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rRqig-0003Gr-AQ; Mon, 22 Jan 2024 10:35:54 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rRqif-001Ym4-UN; Mon, 22 Jan 2024 10:35:53 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rRqif-001Arr-Rx; Mon, 22 Jan 2024 10:35:53 +0100
Date: Mon, 22 Jan 2024 10:35:53 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org,
	Hans Christian Lonstad <hcl@datarespons.com>
Message-ID: <20240122093553.GS4700@pengutronix.de>
References: <20240119224522.1399213-1-a.fatoum@pengutronix.de>
 <20240119224522.1399213-3-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240119224522.1399213-3-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240122_013555_747626_5A5F1182 
X-CRM114-Status: GOOD (  17.93  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/3] nvmem: ocotp: prepare adding tester3 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Jan 19, 2024 at 11:45:21PM +0100, Ahmad Fatoum wrote:
> The tester fuses are written to the OCOTP by NXP during production.
> So far, we only evaluated tester4 to determine which peripherals
> are missing from the SoC. On the i.MX8MP, VPU and CPUs existence is
> instead encoded into the tester3 fuse word. In preparation for adding
> support for tester4, rename the existing masks to be tester4-specific.
> 
> diff --git a/drivers/soc/imx/imx8m-featctrl.c b/drivers/soc/imx/imx8m-featctrl.c
> index 9a2b66555dce..23a3f990160d 100644
> --- a/drivers/soc/imx/imx8m-featctrl.c
> +++ b/drivers/soc/imx/imx8m-featctrl.c
> @@ -33,6 +33,19 @@ static inline bool is_fused(u32 val, u32 bitmask)
>  	return bitmask && (val & bitmask) == bitmask;
>  }
>  
> +#define field_get(_mask, _reg) (((_reg) & (_mask)) >> (ffs(_mask) - 1))

It's likely time to find a common place for this. We already have that
defined in drivers/clk/at91/pmc.h and the kernel also has this defined
three times.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


