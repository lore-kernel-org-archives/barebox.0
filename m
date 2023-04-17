Delivery-date: Mon, 17 Apr 2023 08:54:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1poIlI-0060tU-Kl
	for lore@lore.pengutronix.de; Mon, 17 Apr 2023 08:54:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1poIlI-0001Zs-AI
	for lore@pengutronix.de; Mon, 17 Apr 2023 08:54:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tOdRIRFA/vU0Yuy37RlmGln44rEYkO4kdjw/ZCaYwSY=; b=SA1pO907LInxklvk9mp1bQUdnk
	8S9Qt5qqL777khCUq58rPiT01+0R5xYyRFtql80Omc59IuMZasrfdvlQZV50clHWtdNpXEfHkfVjF
	VE87vQQMg1r7Bb20ekFPJ6VbancdGgwrIkGDIcGooVqsC6pZcsrthZwvJb5JqxiIxNXJJzVuTO+nL
	u/Fi/qeZVeEIBp6RyXfyW4yzwc9qitKzxSc4IqHNRIkTo2jgV8/KuiQQ0j2lpyF/3B9c54hfzZtlh
	xGuE8W2Czkynpj2sbYc3SzVirhi5K+46FueEb97B18kvN6tgZz2Rk5sek+x8/7m5CA4BzfcRsHi4g
	oJeglXdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poIk9-00F6KL-39;
	Mon, 17 Apr 2023 06:53:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poIk5-00F6I3-1Y
	for barebox@lists.infradead.org;
	Mon, 17 Apr 2023 06:53:39 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1poIk4-0001Rq-7i; Mon, 17 Apr 2023 08:53:36 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1poIk3-00049D-VB; Mon, 17 Apr 2023 08:53:35 +0200
Date: Mon, 17 Apr 2023 08:53:35 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230417065335.GD13543@pengutronix.de>
References: <20230414174854.1927428-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230414174854.1927428-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230416_235337_516213_E5F30305 
X-CRM114-Status: GOOD (  20.86  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 master] mci: bcm2835: return command timeout silently
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Apr 14, 2023 at 07:48:54PM +0200, Ahmad Fatoum wrote:
> Some commands are expected to time out, for example when a non
> SDIO card is tested for being an SDIO card. Just return -ETIMEDOUT
> in that case and leave error message prints to the core.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2:
>   - target master
>   - reword commit message title
> ---
>  drivers/mci/mci-bcm2835.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/mci/mci-bcm2835.c b/drivers/mci/mci-bcm2835.c
> index bcdf1b6196de..477a3b83a0e3 100644
> --- a/drivers/mci/mci-bcm2835.c
> +++ b/drivers/mci/mci-bcm2835.c
> @@ -148,7 +148,7 @@ static int bcm2835_mci_request(struct mci_host *mci, struct mci_cmd *cmd,
>  		      command << 16 | transfer_mode);
>  
>  	ret = bcm2835_mci_wait_command_done(host);
> -	if (ret) {
> +	if (ret && ret != -ETIMEDOUT) {
>  		dev_err(host->hw_dev, "Error while executing command %d\n",
>  				cmd->cmdidx);
>  		dev_err(host->hw_dev, "Status: 0x%X, Interrupt: 0x%X\n",
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


