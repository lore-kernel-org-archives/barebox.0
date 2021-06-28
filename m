Delivery-date: Mon, 28 Jun 2021 22:39:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxy2J-0006ob-F5
	for lore@lore.pengutronix.de; Mon, 28 Jun 2021 22:39:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxy2I-0006Gy-LH
	for lore@pengutronix.de; Mon, 28 Jun 2021 22:39:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xXusbPGQY/qvASLdhoGuYdgbHUqg9J9L12lekGInsFg=; b=yf1ndL+Ly86Mjl/ySBurLaouVp
	L89DmIVchCjcVJPv69J8RQPaCd+lyzZb+l/HSjJHBWKot5mwpbJJCJ7m4pS+E7PEdnC7R+D87tqsC
	eZB52pOimSnb1tkphLUtGlaspdSm/xd5REfxTfzLq3GNiwm472Zln23uoYKWDD/TCpzg05AZ7FXFu
	BgrPEEx/HErG/+grcZrp0fqjCa3xYu3wQfS0RPOioAaXtK9EygmyF1KnBOGmf4cS7Y8r1M7kQleIg
	nJrfY52ftBUE2mNiI6KFEhoh2IOjJq9kC9MQwlnotEwKnVyCbRX76m/rPAAPCPgVFSjhQRKPNd5Px
	JERi/dFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxy11-0098lG-8F; Mon, 28 Jun 2021 20:37:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxy0v-0098kq-Lu
 for barebox@lists.infradead.org; Mon, 28 Jun 2021 20:37:55 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lxy0u-00069C-2f; Mon, 28 Jun 2021 22:37:52 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lxy0t-0005V9-Q2; Mon, 28 Jun 2021 22:37:51 +0200
Date: Mon, 28 Jun 2021 22:37:51 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210628203751.GS9782@pengutronix.de>
References: <20210628070345.13838-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210628070345.13838-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 22:36:53 up 131 days, 0 min, 95 users,  load average: 0.05, 0.14,
 0.15
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210628_133753_762156_B203CE42 
X-CRM114-Status: GOOD (  20.25  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] driver: add CONFIG_DEBUG_PROBES
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jun 28, 2021 at 09:03:45AM +0200, Ahmad Fatoum wrote:
> CONFIG_DEBUG_INITCALLS can be very useful to roughly pinpoint what
> causes barebox to hang. With deep probe, most probes run at the same
> initcall level making the debug option much less useful.
> 
> Add a new CONFIG_DEBUG_PROBES that will instead log whenever a probe is
> invoked. The text's horizontal alignment is increased with each
> recursive probe making the option suitable for debugging some deep probe
> issues as well.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/Kconfig        |  4 ++++
>  drivers/base/driver.c | 17 +++++++++++++++--
>  2 files changed, 19 insertions(+), 2 deletions(-)

Nice. I applied with one change I hope you're ok with:

> +	depth++;
> +
> +	pr_report_probe("%*sprobe-> %s\n", depth, "", dev_name(dev));

I changed the indentation to 4 here.

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

