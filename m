Delivery-date: Mon, 09 Aug 2021 21:18:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mDAn0-0003TZ-UP
	for lore@lore.pengutronix.de; Mon, 09 Aug 2021 21:18:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mDAmw-0005Df-EJ
	for lore@pengutronix.de; Mon, 09 Aug 2021 21:18:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=d/W64cnkkX3qu1NkH5ndagJCb1YL8DNm9ufbUE/rke0=; b=a82qS+U/SNI0ABAIz8QRi7K5gg
	QBMKSPjJ51r9TfyjazVd9nvGtD4E19riZbq3YE1eVlQxhKqG3CFqh6AWgmMUf+ZQYcT8jJDfREFbs
	ixpAbJJXfYFtnfP3EzkqJ7uxYM8dOGd3NDyAgaPnpEDtJ0Yc/4JzpqqfmddDCDgmjBG2QmwMAUOqh
	2JKTaMQfcdb2PktVj757xFqUzxJ9rp986k/tOMzKfBLN8xCeDwjhFOd9AM17JwQcNlhu+8qaNmQbD
	Oy3KuXcpXn65trsaMZM2VKIixhZH8o36KqWs6+S1gf5EVIDFkdEkCHO8HmJCOk+3IQm1JY8HazYkL
	7+O0rJeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mDAlH-001pc4-5y; Mon, 09 Aug 2021 19:16:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mDAl9-001paJ-Hz
 for barebox@lists.infradead.org; Mon, 09 Aug 2021 19:16:31 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mDAl8-00055M-4e; Mon, 09 Aug 2021 21:16:26 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mDAl7-0000K3-Eq; Mon, 09 Aug 2021 21:16:25 +0200
Date: Mon, 9 Aug 2021 21:16:25 +0200
To: Renaud Barbier <renaud.barbier@abaco.com>
Cc: barebox@lists.infradead.org
Message-ID: <20210809191625.GB24834@pengutronix.de>
References: <1627900804-15814-1-git-send-email-renaud.barbier@abaco.com>
 <1627900804-15814-3-git-send-email-renaud.barbier@abaco.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1627900804-15814-3-git-send-email-renaud.barbier@abaco.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 21:01:39 up 172 days, 22:25, 81 users,  load average: 0.50, 0.29,
 0.16
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210809_121627_642301_D3808176 
X-CRM114-Status: GOOD (  23.17  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/3] nand: add NXP IFC nand driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Renaud,

On Mon, Aug 02, 2021 at 11:40:03AM +0100, Renaud Barbier wrote:
> Add the NXP IFC nand driver support. This driver
> can be used with the NXP QorIQ cores.

Could you leave a few words here which base you used for the driver? Is
it based on Linux or U-Boot, which version?

> +static void fsl_ifc_ctrl_init(void)
> +{
> +	struct fsl_ifc_ctrl *ctrl;
> +	struct device_node *np;
> +
> +	np = of_find_compatible_node(NULL, NULL, "fsl,ifc");
> +	if (!np)
> +		return;

Looks like this function can fail, it should return an error.

> +		while (!is_timeout(time_start, IFC_TIMEOUT_MS * MSECOND)) {
> +			ifc_ctrl->nand_stat =
> +				ifc_in32(ctrl->rregs + FSL_IFC_NAND_EVTER_STAT);
> +
> +			if (!(ifc_ctrl->nand_stat & IFC_NAND_SRAM_INIT_EN))
> +				return 0;
> +		}
> +		pr_err("fsl-ifc: Failed to Initialise SRAM\n");
> +		return 1;

It would be better to return an error code here and propagate that.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

