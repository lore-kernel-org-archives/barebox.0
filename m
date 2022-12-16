Delivery-date: Fri, 16 Dec 2022 07:40:22 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p64OM-005PSD-5f
	for lore@lore.pengutronix.de; Fri, 16 Dec 2022 07:40:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p64OL-0004pT-Qo
	for lore@pengutronix.de; Fri, 16 Dec 2022 07:40:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dabOl29pacK+P9U4Q88yqOzyPR01qO77KB460vuD5dU=; b=MQE4xgHJ6biasx4R2vms8KIZJp
	EmIrg3TYgTBHkOfkt8Z/ZMM8s4G3OogIXjrw1cZuy/MACf8OmNF6HMD+p7q43CR9TOa3SXihy4OWO
	fPiiou/UsvSs414RxBV+lOy92D5JKSn7WClx4qdZCgosxql8IhEFJnkWDNMX9p4mF4MMPXxPsLV0e
	PXmfFO3v+SqK5EqDbfRJR2CUusxdw22RwURw/HY+79gwWYn87odLPB0QFR/kgiRT6wFLAJ27Gt+BS
	zovJ3ZFWfhm8daug8mlvrBB83KfSvjB7L2nELZjZSep0VriwdlazeOgukiP3b3IULqD4kUFJqPJwF
	BGMIG8aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p64N6-00DCLA-7x; Fri, 16 Dec 2022 06:39:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p64N1-00DCK6-Dh
	for barebox@lists.infradead.org; Fri, 16 Dec 2022 06:39:00 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p64N0-0004ZC-4V; Fri, 16 Dec 2022 07:38:58 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p64Mz-0003kU-Tn; Fri, 16 Dec 2022 07:38:57 +0100
Date: Fri, 16 Dec 2022 07:38:57 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221216063857.GE11668@pengutronix.de>
References: <20221209071002.3765134-1-a.fatoum@pengutronix.de>
 <20221209071002.3765134-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221209071002.3765134-2-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221215_223859_478284_6602A025 
X-CRM114-Status: GOOD (  20.60  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/3] clk: add prepare/unprepare helpers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Dec 09, 2022 at 08:10:01AM +0100, Ahmad Fatoum wrote:
> barebox doesn't use interrupts, so it need not differentiate between a
> possibly sleeping prepare/unprepare and an atomic enable/disable.
> 
> Provide a wrapper that just expands to the already existing functions to
> simplify porting of Linux kernel drivers.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/linux/clk.h | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/include/linux/clk.h b/include/linux/clk.h
> index 42c64d650d1f..afa62cdccc02 100644
> --- a/include/linux/clk.h
> +++ b/include/linux/clk.h
> @@ -71,6 +71,7 @@ struct clk *clk_get(struct device_d *dev, const char *id);
>   * Returns success (0) or negative errno.
>   */
>  int clk_enable(struct clk *clk);
> +#define clk_prepare_enable(clk) clk_enable(clk)
>  
>  /**
>   * clk_disable - inform the system when the clock source is no longer required.
> @@ -85,6 +86,7 @@ int clk_enable(struct clk *clk);
>   * disabled.
>   */
>  void clk_disable(struct clk *clk);
> +#define clk_disable_unprepare(clk) clk_disable(clk)

You should define this outside of #ifdef CONFIG_HAVE_CLK.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


