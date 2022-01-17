Delivery-date: Mon, 17 Jan 2022 10:18:01 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9O9J-004Rye-PX
	for lore@lore.pengutronix.de; Mon, 17 Jan 2022 10:18:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9O9I-0005bl-C9
	for lore@pengutronix.de; Mon, 17 Jan 2022 10:18:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VeppcRPZXhgOhP0VQRVigeGmT6bRrz9snlv5AyBULYY=; b=Rv+IhcKNwdEgov
	tji8w9vu5zrL4P241wNZrm2ebBTjlwPX6FgID0S6q/PXMEw65Ice6VVXj3jYscxFIV6m1YefDQ4BM
	+wncqK9iyPZCEbrHTBpSLh8AqllQcM2wkxzzSxDcErGYvvXnkEIoVrnnjj8teEsdZL5vlGGD8eWqI
	G1/jlLrZ3Zpp5/8mhXYdr3SsgSGamduEzGbYQAPtuk4ZRnbLxu7slwVnDoqs1XBloOLMy7AdHu4cJ
	6ubHT4jZBfiOuslCijiH29+2RRVV/V/ct77ikLxnHXVqWdkewEGCzSogRDocGKGWd0KGSTrEbwGzv
	NSa7ZGaIbxjQcTG/UIWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9O86-00EERg-J2; Mon, 17 Jan 2022 09:16:46 +0000
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9O80-00EEQy-U3
 for barebox@lists.infradead.org; Mon, 17 Jan 2022 09:16:42 +0000
Received: by lynxeye.de (Postfix, from userid 501)
 id 57228E74217; Mon, 17 Jan 2022 10:16:09 +0100 (CET)
Received: from [192.168.178.22] (a89-183-29-160.net-htp.de [89.183.29.160])
 by lynxeye.de (Postfix) with ESMTPSA id 344C8E7420D;
 Mon, 17 Jan 2022 10:16:08 +0100 (CET)
Message-ID: <10192ccb41be58fd4e53044b17e6a5838c3629d7.camel@lynxeye.de>
From: Lucas Stach <dev@lynxeye.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Date: Mon, 17 Jan 2022 10:16:07 +0100
In-Reply-To: <095bafc0-7261-aa13-a9c7-8022cc78b26c@pengutronix.de>
References: <20220116213221.3466936-1-dev@lynxeye.de>
 <095bafc0-7261-aa13-a9c7-8022cc78b26c@pengutronix.de>
User-Agent: Evolution 3.40.4 (3.40.4-2.fc34) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220117_011641_158075_2F87D696 
X-CRM114-Status: GOOD (  25.87  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] clk: ignore of_device_ensure_probed error in clock
 lookup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

Am Montag, dem 17.01.2022 um 06:12 +0100 schrieb Ahmad Fatoum:
> Hello Lucas,
> 
> On 16.01.22 22:32, Lucas Stach wrote:
> > For CLK_OF_DECLARE clocks there is no driver that is bound to the device,
> > so the lookup fails before even trying to find the provider, breaking
> > the parent_ready() logic used when initializing the declared providers.
> > 
> > Ignore the return code from of_device_ensure_probed to allow the lookup
> > to proceed as usual. If of_device_ensure_probed the lookup will also fail,
> > as no provider will be found.
> 
> This seems to be an alternate fix for the issue addressed by:
> bd516e38dd14 ("clk: handle CLK_OF_DECLARE in deep probe")
> 
> What do you think?

Yes, it seems to be aimed at the same issue. However, your fix in
bd516e38dd14 doesn't fix my specific issue, as we still don't get the
correct -EPROBE_DEFER error code for the logic in parent_ready() in
drivers/clk/clk.c to work.

I guess we could even revert your fix if we agree that ignoring the
return code here is the right thing to do? Attaching a dummy driver 
doesn't seem to be totally correct, as I think it isn't prohibited to
have both a CLK_OF_DECLARE clock controller and a real platform driver
for other uses attached to the same OF node. While I'm not aware of any
clock controllers where this would be the case, I have seen such
constructs with IRQ controllers.

Regards,
Lucas

> 
> > 
> > Signed-off-by: Lucas Stach <dev@lynxeye.de>
> > ---
> >  drivers/clk/clk.c | 6 ++----
> >  1 file changed, 2 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
> > index 189c9c62df5c..a1d1d7f1a467 100644
> > --- a/drivers/clk/clk.c
> > +++ b/drivers/clk/clk.c
> > @@ -643,11 +643,9 @@ struct clk *of_clk_get_from_provider(struct of_phandle_args *clkspec)
> >  {
> >  	struct of_clk_provider *provider;
> >  	struct clk *clk = ERR_PTR(-EPROBE_DEFER);
> > -	int ret;
> >  
> > -	ret = of_device_ensure_probed(clkspec->np);
> > -	if (ret)
> > -		return ERR_PTR(ret);
> > +	/* Ignore error, as CLK_OF_DECLARE clocks have no proper driver. */
> > +	of_device_ensure_probed(clkspec->np);
> >  
> >  	/* Check if we have such a provider in our array */
> >  	list_for_each_entry(provider, &of_clk_providers, link) {
> > 
> 
> 



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

