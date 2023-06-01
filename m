Delivery-date: Thu, 01 Jun 2023 10:06:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4dKX-005WSd-Rp
	for lore@lore.pengutronix.de; Thu, 01 Jun 2023 10:06:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4dKV-0008Qp-5H
	for lore@pengutronix.de; Thu, 01 Jun 2023 10:06:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=G+MmrBl2gZvtNaYonlEbzgycf1TslfW1z8dNQRZg/C0=; b=lp11IKll+tfvaV9gyybbWqHJAB
	XLvYeRNOWYneTLEuSd/jixVkuvFLtE5jBE/BRhd+28pO/fXQZpc/wbHLm6ovdx8ViGcr9yn5yffQO
	LeQdrzYR12vclgynZLOxl3hX0F6Np3HfaQYu2vvOyrG87CyvNNydMDJaQfrMG/Dkr1r1yAkKVi4Vt
	HFvR/mpYHIfkChAA7+y/ht6EeOtZ7DB6kIkENtAXYR8pMiqqz6AsDTrMoqRYdOPiXJ+927Y32vDsh
	I6p8fme/VHfw6PS0zLEpBiYH4ti83vJn95nAPMMuPd73K1rTa4bcSnh+7yFm/8Lk6Qg5O5Boy9w3u
	wM3KO+Rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4dJK-002U3w-2L;
	Thu, 01 Jun 2023 08:05:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4dJH-002U36-2L
	for barebox@lists.infradead.org;
	Thu, 01 Jun 2023 08:05:29 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q4dJG-0008Cr-9j; Thu, 01 Jun 2023 10:05:26 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q4dJG-00045z-2t; Thu, 01 Jun 2023 10:05:26 +0200
Date: Thu, 1 Jun 2023 10:05:26 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230601080526.GJ18491@pengutronix.de>
References: <20230531145927.1399282-1-a.fatoum@pengutronix.de>
 <20230531145927.1399282-19-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230531145927.1399282-19-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230601_010527_765299_604B91CB 
X-CRM114-Status: GOOD (  20.06  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 18/18] state: allow lookup of barebox state partition by
 Type GUID
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, May 31, 2023 at 04:59:27PM +0200, Ahmad Fatoum wrote:
> The backend device tree property so far always pointed at a partition.
> Let's allow pointing it at GPT storage devices directly and lookup
> the correct barebox state partition by the well-known type GUID:
> 
>   4778ed65-bf42-45fa-9c5b-287a1dc4aab1
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/state/state.c | 22 ++++++++++++++++++++++
>  include/driver.h     | 17 +++++++++++++++++
>  include/state.h      |  4 ++++
>  3 files changed, 43 insertions(+)
> 
> diff --git a/common/state/state.c b/common/state/state.c
> index 88e246198fb8..8f56c60b0e82 100644
> --- a/common/state/state.c
> +++ b/common/state/state.c
> @@ -21,8 +21,10 @@
>  #include <fs.h>
>  #include <crc.h>
>  #include <init.h>
> +#include <block.h>
>  #include <linux/err.h>
>  #include <linux/list.h>
> +#include <linux/uuid.h>
>  
>  #include <linux/mtd/mtd-abi.h>
>  #include <malloc.h>
> @@ -595,6 +597,8 @@ static char *cdev_to_devpath(struct cdev *cdev, off_t *offset, size_t *size)
>  }
>  #endif
>  
> +static guid_t barebox_state_partition_guid = BAREBOX_STATE_PARTITION_GUID;
> +
>  /*
>   * state_new_from_node - create a new state instance from a device_node
>   *
> @@ -641,6 +645,24 @@ struct state *state_new_from_node(struct device_node *node, bool readonly)
>  		goto out_release_state;
>  	}
>  
> +	/* Is the backend referencing an on-disk partitonable block device? */

s/partitonable/partitionable/

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


