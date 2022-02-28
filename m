Delivery-date: Mon, 28 Feb 2022 10:32:22 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nOcOE-00D5RO-2j
	for lore@lore.pengutronix.de; Mon, 28 Feb 2022 10:32:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nOcOC-0004xn-M9
	for lore@pengutronix.de; Mon, 28 Feb 2022 10:32:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3bwX0g5aBgXSS9r1Zpu06cK3mWLs4mzEBO1n9DXTz90=; b=rdb/HIwLzMhjh5VSlZ7xSLHOfg
	9kZUtM1waTIsQ0XgxAKeuKi2SQwPxWJ6UvKNvrBqyagfmbAKh0QmhL9L/5YZJyH0kYdPn1dkRpGLc
	ySSwS94Ws8gP8k4uNfCquNvD2+RqqCBkGf4A0Co0AsInZEbVjZbNqW3Ps2r81UXc2jdBz9BNDsMa2
	8hE+cFozkgu0vC6syuUaU9fqtV7rqj0kIV75Ln222wV2IbPPBUPxrkPUBG6pJh+4rFwK9Jj2xNHZT
	PiiDLB4+A0lptp4Y1W6xLDDJRUnUy3DvsL3WEkP7BWQ894FEhylxNVdoK9wCs3c2+zYovp6qhM7EB
	Q+z6zaDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOcMZ-00BGBV-AI; Mon, 28 Feb 2022 09:30:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOcMR-00BGAk-73
 for barebox@lists.infradead.org; Mon, 28 Feb 2022 09:30:35 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nOcMN-0004dL-32; Mon, 28 Feb 2022 10:30:27 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nOcMM-0002iA-QU; Mon, 28 Feb 2022 10:30:26 +0100
Date: Mon, 28 Feb 2022 10:30:26 +0100
To: Bastian Krause <bst@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220228093026.GF19585@pengutronix.de>
References: <20220225100344.4166248-1-bst@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220225100344.4166248-1-bst@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:30:15 up 79 days, 18:15, 90 users,  load average: 0.48, 0.24, 0.33
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_013031_282611_E0C1E2F8 
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] arch: arm: mach-imx: document field return in CSF template
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Feb 25, 2022 at 11:03:44AM +0100, Bastian Krause wrote:
> Activating the field return configuration returns a locked-down board
> (nearly) to its open state. In order to burn the FIELD_RETURN fuse, the
> CSF must contain a specific unlock command with the device's UID.
> 
> Signed-off-by: Bastian Krause <bst@pengutronix.de>
> ---
>  .../include/mach/habv4-imx6-gencsf-template.h        | 12 ++++++++++++
>  1 file changed, 12 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf-template.h b/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf-template.h
> index a60b485292..45da2981cb 100644
> --- a/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf-template.h
> +++ b/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf-template.h
> @@ -39,6 +39,18 @@ hab Engine = SETUP_HABV4_ENGINE
>  hab Features = SETUP_HABV4_FEATURES
>  #endif
>  
> +/*
> +// allow fusing FIELD_RETURN
> +// # ocotp0.permanent_write_enable=1
> +// # mw -l -d /dev/imx-ocotp 0xb8 0x1
> +hab [Unlock]
> +hab Engine = OCOTP
> +hab Features = FIELD RETURN
> +// device-specific UID:
> +// $ dd if=/sys/bus/nvmem/devices/imx-ocotp0/nvmem bs=4 skip=1 count=2 status=none | hexdump -ve '1/1 "0x%.2x, "' | sed 's/, $//'
> +hab UID = 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08
> +*/
> +
>  hab [Install Key]
>  /* verification key index in key store (0, 2...4) */
>  hab Verification index = 0
> -- 
> 2.30.2
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

