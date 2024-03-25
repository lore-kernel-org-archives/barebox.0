Delivery-date: Mon, 25 Mar 2024 10:52:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1roh0B-003gBo-2n
	for lore@lore.pengutronix.de;
	Mon, 25 Mar 2024 10:52:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1roh0B-0000O8-8t
	for lore@pengutronix.de; Mon, 25 Mar 2024 10:52:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zpMMBC2iHrU4KAikCmHtHZf5oslSHF19SM4IQtcb8cI=; b=vgIr1g+18LOSMA4OK11AAiHvgc
	4EvDcocHolg+fW4LooeOajVgmduYzTlNuRmudmxT61knAT5NPmDwU2cJMiSvKVtjOxTfipiRkLGHZ
	NB2F5uCvxF57YFE1tbWUi1adTMPPkQL2T0UKAniB61cH14uUevlvLKZ5ECaSZpIQ4N4LmIZJuh72u
	0koYrsImonRYVOqw+EuD7AI25L9KQOpCgIbey3FpRkWSCwbXbl4iOXqy9RX6PsqKL0Q10QIupBNAg
	Fq7Q443EHLSpHBWz5ae6ug+J/KvpSmmrirzL9/PeJezTFfnm/AqchlHUZbgWPKFKNd4G3iIjqOyXn
	24LpsTQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rogzj-0000000GYt0-3kBO;
	Mon, 25 Mar 2024 09:51:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rogzf-0000000GYrW-2hPI
	for barebox@lists.infradead.org;
	Mon, 25 Mar 2024 09:51:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rogze-0000Ho-9X; Mon, 25 Mar 2024 10:51:50 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rogzd-008OR4-T7; Mon, 25 Mar 2024 10:51:49 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rogzd-00G5LJ-2e;
	Mon, 25 Mar 2024 10:51:49 +0100
Date: Mon, 25 Mar 2024 10:51:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <ZgFJNVN1tI6_Sqk0@pengutronix.de>
References: <20240322164559.1768983-1-m.felsch@pengutronix.de>
 <20240322164559.1768983-3-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240322164559.1768983-3-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_025151_703937_B3280C52 
X-CRM114-Status: GOOD (  18.04  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/5] nvmem: constify the write path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Mar 22, 2024 at 05:45:57PM +0100, Marco Felsch wrote:
> Constify the nvmem_*_write() functions as the write functions shouldn't
> alter the buffer content.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  drivers/nvmem/core.c           | 10 +++++-----
>  include/linux/nvmem-consumer.h |  8 ++++----
>  2 files changed, 9 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
> index b4a29e4b67f3..7d795d5873dc 100644
> --- a/drivers/nvmem/core.c
> +++ b/drivers/nvmem/core.c
> @@ -794,8 +794,8 @@ void *nvmem_cell_read(struct nvmem_cell *cell, size_t *len)
>  }
>  EXPORT_SYMBOL_GPL(nvmem_cell_read);
>  
> -static inline void *nvmem_cell_prepare_write_buffer(struct nvmem_cell_entry *cell,
> -						    u8 *_buf, int len)
> +static inline const void *nvmem_cell_prepare_write_buffer(struct nvmem_cell_entry *cell,
> +							  const u8 *_buf, int len)

We already had this, this reverts a change you introduced with the nvmem
update in patch 1. So better squash it into that patch.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


