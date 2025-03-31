Delivery-date: Mon, 31 Mar 2025 09:46:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tz9rH-006TtW-0c
	for lore@lore.pengutronix.de;
	Mon, 31 Mar 2025 09:46:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tz9rG-00077N-0y
	for lore@pengutronix.de; Mon, 31 Mar 2025 09:46:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zedsbCPrhwNJVukdv0BfyE+Q7AFgjMWRVryxpNmsDRE=; b=QA5QlAYdpCEnEt14Jy5WYRiLmS
	/Snog9DDMU9UBz3soSVI9DEfazQiADIIL3HxOejD+mXPIcy6xWzle2ue3GrfPeOt623YGiJvwJSnp
	PGVJ3UMw0BkXYTDOpD/jkPX/EIZNo8BZl5TT8B04egZUDTuNuEGX0CbhV4xpdQZKfK9JU5FUnC25O
	FqUk6QYELBqe9jMNdBAYZ2XzWRVeNYXu6/2wyX0p3naG/1n0lCOm5/uyzA59owFgk3PZzZnTL0wAf
	OCbNYmueBt050eHokXLlRHuLFJBMjhD6WlgjpOGs4qc93K4279QjYRYAa6K9AmZjNP0XV7wZvVmt/
	Kb35imdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tz9qZ-0000000HFQ9-4BUO;
	Mon, 31 Mar 2025 07:46:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tz9pH-0000000HFFd-295U
	for barebox@lists.infradead.org;
	Mon, 31 Mar 2025 07:44:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tz9pF-0006t4-Qb; Mon, 31 Mar 2025 09:44:53 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tz9pF-002YaD-1r;
	Mon, 31 Mar 2025 09:44:53 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tz9pF-009AJN-1Z;
	Mon, 31 Mar 2025 09:44:53 +0200
Date: Mon, 31 Mar 2025 09:44:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Robin van der Gracht <robin@protonic.nl>
Cc: barebox@lists.infradead.org
Message-ID: <Z-pH9YkFy9vGiFKU@pengutronix.de>
References: <20250327100122.654317-1-robin@protonic.nl>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250327100122.654317-1-robin@protonic.nl>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250331_004455_545882_7A0ED41B 
X-CRM114-Status: GOOD (  21.93  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: boards: protonic-imx6: Re-introduce generic boot
 target board string
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Robin,

On Thu, Mar 27, 2025 at 11:01:22AM +0100, Robin van der Gracht wrote:
> This allows using a single bootable usb drive for multiple boards.
> 
> Signed-off-by: Robin van der Gracht <robin@protonic.nl>
> ---
>  arch/arm/boards/protonic-imx6/board.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
> index 19e58627c6..e4debb1c66 100644
> --- a/arch/arm/boards/protonic-imx6/board.c
> +++ b/arch/arm/boards/protonic-imx6/board.c
> @@ -374,7 +374,7 @@ static int prt_imx6_usb_boot(struct bootentry *entry, int verbose, int dryrun)
>  
>  	*second_word = 0;
>  
> -	if (strcmp(buf, priv->name)) {
> +	if (strcmp(buf, priv->name) && strcmp(buf, "prti6qp")) {

Where does this "prti6qp" string come from? It sounds like a very
specific machine, but is used as a generic value to short circuit the
compatible check.

Shouldn't it be something like "prt,generic-imx6" or whatever else this
image is supposed to work on?

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


