Delivery-date: Fri, 07 Oct 2022 10:32:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ogimg-000I1O-Vd
	for lore@lore.pengutronix.de; Fri, 07 Oct 2022 10:32:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ogime-0004E4-Nw
	for lore@pengutronix.de; Fri, 07 Oct 2022 10:32:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ht1ez6ze/hIyt5LT+mrkD4aAt6zPOkuLbS6KwUncck0=; b=Lktef5jErrf00MGImprHvFNUt/
	S+GnPbdIVrp/W5pi7ox7zpSXUSRPt6v8WYhx/fg6eC1AR9ACsIhCTEeic31OWCEt14OpmcqTd/9wa
	eTvwHuh73cWsf2eju/DCw4LAqpwwtRxz/kNLy/Yacu0EkU7YOPMLlKj/yLkArSeofHfP4Z0+IuKt1
	QFv6hhMPw9G8xnEkkyRv6JT+FmhtGtjRlh+5s/zk7J1wYrQOAEhIcLELMMEEvP0AIP6DXls7BvICt
	Y/3VtnwCx3BeSP9N6BzG/i+/q3i8tbRrVGKXiZ4TCvkufO65ROn6jZCKbx+jYeS3aigBemHVvItPY
	f4uzmt6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogikz-0086w5-6B; Fri, 07 Oct 2022 08:30:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogiku-0086vV-SM
	for barebox@lists.infradead.org; Fri, 07 Oct 2022 08:30:54 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ogikt-0003sy-LF; Fri, 07 Oct 2022 10:30:51 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ogikt-0003os-Dh; Fri, 07 Oct 2022 10:30:51 +0200
Date: Fri, 7 Oct 2022 10:30:51 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221007083051.GZ986@pengutronix.de>
References: <20221005195730.3405753-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221005195730.3405753-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221007_013052_929933_BC7E7DB7 
X-CRM114-Status: GOOD (  20.59  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] common: ubiformat: print 100 % complete message when done
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Oct 05, 2022 at 09:57:30PM +0200, Ahmad Fatoum wrote:
> During formatting, current progress is printed every 300ms, e.g.:
> 
>   ubiformat: formatting eraseblock 1936 -- 95 % complete
> 
> When formatting is done, a single new line is printed. When ubiformat is
> called in the fastboot workqueue, the barebox prompt won't be printed
> again, so the user may think that update is stuck at the last message
> printed. Improve user experience by explicitly printing a 100 % complete
> message.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/ubiformat.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/common/ubiformat.c b/common/ubiformat.c
> index e10ce31ce659..1edfc5b2a3b9 100644
> --- a/common/ubiformat.c
> +++ b/common/ubiformat.c
> @@ -444,7 +444,7 @@ static int format(struct ubiformat_args *args, struct mtd_info *mtd,
>  	}
>  
>  	if (!args->quiet && !args->verbose)
> -		printf("\n");
> +		printf("\rubiformat: formatted all eraseblocks -- 100 %% complete\n");
>  
>  	if (!novtbl) {
>  		if (eb1 == -1 || eb2 == -1) {
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


