Delivery-date: Mon, 17 Jun 2024 13:03:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJA8b-007Y0x-2F
	for lore@lore.pengutronix.de;
	Mon, 17 Jun 2024 13:03:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJA8b-0004Xv-4V
	for lore@pengutronix.de; Mon, 17 Jun 2024 13:03:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=prPdTobCDn42fQTuHoUbxon0MGCA04/UMm3qkvO0cMU=; b=JjGr5pud1XLbUAifOOrWPV5T05
	P1L2lVVgsvUwfx4TuPdJaVW1TbvxWc5OaIEITg5PKyUDNbqXnVCRIKq52qbPve/spcsRServ0aGsK
	bXm61NTc9R2Uq8EixvyQv51pyCU0P8per3Y3rmuw+PNw3GduSfPIimCLkD+7lgyHBX1tC4YHsO49S
	5iCYu9DfEBsq7B2q6kEGpITXAzK2QJRKdO+d6dRlxD8fWmZ+kD4bWEp+RA/667EXmBLncd5DMdGNa
	9jg70hxdNQXwoCyHr6QShrvtYGoPxSnRQy1lW3LBPkSNZKCYiNc77IkZYVikEDiJeMSX8C8qzSoRr
	DXvsszXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJA7u-0000000AOtg-449i;
	Mon, 17 Jun 2024 11:02:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJA7r-0000000AOsl-0FK5
	for barebox@lists.infradead.org;
	Mon, 17 Jun 2024 11:02:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1sJA7o-0004UJ-U4; Mon, 17 Jun 2024 13:02:12 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1sJA7o-002xUj-Hc; Mon, 17 Jun 2024 13:02:12 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1sJA7o-00G8OA-1V;
	Mon, 17 Jun 2024 13:02:12 +0200
Date: Mon, 17 Jun 2024 13:02:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <ZnAXtIKclnIk_7Tk@pengutronix.de>
References: <20240613125818.30499-1-m.felsch@pengutronix.de>
 <20240613125818.30499-11-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240613125818.30499-11-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_040215_131071_FC5714A4 
X-CRM114-Status: GOOD (  20.66  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 10/11] FIT: save filename during fit_open
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Jun 13, 2024 at 02:58:17PM +0200, Marco Felsch wrote:
> This is in preparation of buffering fit_open() calls to not load the
> same fit twice if it is still open.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  common/image-fit.c  | 4 ++++
>  include/image-fit.h | 1 +
>  2 files changed, 5 insertions(+)
> 
> diff --git a/common/image-fit.c b/common/image-fit.c
> index e93946a0615e..c5c88ebe4c1e 100644
> --- a/common/image-fit.c
> +++ b/common/image-fit.c
> @@ -951,6 +951,7 @@ struct fit_handle *fit_open(const char *filename, bool verbose,
>  	}
>  
>  	handle->fit = handle->fit_alloc;
> +	handle->filename = xstrdup(filename);
>  
>  	ret = fit_do_open(handle);
>  	if (ret) {
> @@ -966,6 +967,9 @@ void fit_close(struct fit_handle *handle)
>  	if (handle->root)
>  		of_delete_node(handle->root);
>  
> +	if (handle->filename)
> +		free(handle->filename);

free() handles NULL pointers gracefully, no need to check.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


