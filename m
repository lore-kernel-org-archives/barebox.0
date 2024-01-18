Delivery-date: Thu, 18 Jan 2024 17:53:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQVeB-005ecp-2i
	for lore@lore.pengutronix.de;
	Thu, 18 Jan 2024 17:53:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQVeC-0004mG-FK
	for lore@pengutronix.de; Thu, 18 Jan 2024 17:53:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xTXcO8oQoqQ8hI382aTrj93YHOyUZaz0Wy3n50BMETc=; b=r4lfG5d+CiY9j1BdW82qqRynm6
	Jk/RyTuAnu4loGyvMlJUH5KbaTb/l9goTyXtkCMPbRp3+ryn94oXSdohwYovLfObPbewpdukOX1wB
	U8FuJrmrwf67KihxJWmTzcjtisfan0Jqg8VCHeUe9jkdvzDPjccaY1Pw/Me6DFE78io2mSzXvQV9m
	9rIEkbApvVL4SZgNzLN8bBFJiebeh+0pdOvx0HT+3PorcPFQ8cRK7SxtWKUiFffUxC37EmA3BImBO
	jLjnS8CQuCLX9Y8RbKqPm+BkACVDuc+SuKJ4jC5TPeVHeajnEQKVo8effs5mMQ/IrLFA2PhNBullx
	MOtQ0SaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQVcz-003JQA-2l;
	Thu, 18 Jan 2024 16:52:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQVcx-003JOm-02
	for barebox@lists.infradead.org;
	Thu, 18 Jan 2024 16:52:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rQVcq-0004go-8P; Thu, 18 Jan 2024 17:52:20 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1rQVcp-000jVs-Ru; Thu, 18 Jan 2024 17:52:19 +0100
Received: from mfe by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rQVcp-000b0G-PW; Thu, 18 Jan 2024 17:52:19 +0100
Date: Thu, 18 Jan 2024 17:52:19 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240118165219.g4khmosh3xs2ylpe@pengutronix.de>
References: <20240116170738.209954-1-m.felsch@pengutronix.de>
 <20240116170738.209954-19-m.felsch@pengutronix.de>
 <20240118153009.GN4700@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240118153009.GN4700@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240118_085227_045146_9DF55A54 
X-CRM114-Status: GOOD (  28.98  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 18/18] ARM: i.MX8M: fix optee of-fixup logic
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 24-01-18, Sascha Hauer wrote:
> On Tue, Jan 16, 2024 at 06:07:38PM +0100, Marco Felsch wrote:
> > The current code checks only if "/firmware/optee" exist on the builtin
> > dtb and applys the fixup if not found and if found nothing is done. If a
> > builtin dts contains the node but an external don't the fixup won't be
> > applied. Also if the external dts does have a node + the reserved memory
> > region nodes but the barebox builtin dts don't we do add additional
> > reserved memory nodes which may conflict due to different name scheme:
> > <name> vs. <name>@<addr>.
> > 
> > Move the "/firmware/optee" check into the of_optee_fixup() so the check
> > is done on the correct dtb root nodes.
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >  arch/arm/mach-imx/imx8m.c    | 3 +--
> >  drivers/tee/optee/of_fixup.c | 6 +++++-
> >  2 files changed, 6 insertions(+), 3 deletions(-)
> > 
> > diff --git a/arch/arm/mach-imx/imx8m.c b/arch/arm/mach-imx/imx8m.c
> > index 6db16f024148..73b420b38697 100644
> > --- a/arch/arm/mach-imx/imx8m.c
> > +++ b/arch/arm/mach-imx/imx8m.c
> > @@ -68,8 +68,7 @@ static int imx8m_init(const char *cputypestr)
> >  	imx_set_reset_reason(src + IMX7_SRC_SRSR, imx7_reset_reasons);
> >  	pr_info("%s unique ID: %llx\n", cputypestr, imx8m_uid());
> >  
> > -	if (IS_ENABLED(CONFIG_PBL_OPTEE) && tzc380_is_enabled() &&
> > -	    !of_find_node_by_path_from(NULL, "/firmware/optee")) {
> > +	if (IS_ENABLED(CONFIG_PBL_OPTEE) && tzc380_is_enabled()) {
> >  		static struct of_optee_fixup_data optee_fixup_data = {
> >  			.shm_size = OPTEE_SHM_SIZE,
> >  			.method = "smc",
> > diff --git a/drivers/tee/optee/of_fixup.c b/drivers/tee/optee/of_fixup.c
> > index cdf650592e90..2ff1f01964c8 100644
> > --- a/drivers/tee/optee/of_fixup.c
> > +++ b/drivers/tee/optee/of_fixup.c
> > @@ -9,12 +9,16 @@
> >  int of_optee_fixup(struct device_node *root, void *_data)
> >  {
> >  	struct of_optee_fixup_data *fixup_data = _data;
> > +	const char *optee_of_path = "/firmware/optee";
> >  	struct resource res = {};
> >  	struct device_node *node;
> >  	u64 optee_membase;
> >  	int ret;
> >  
> > -	node = of_create_node(root, "/firmware/optee");
> > +	if (of_find_node_by_path_from(NULL, optee_of_path))
> > +		return 0;
> 
> This implements a "when the internal dts does have a OP-TEE node, then
> do not fixup the external dts". This is surely not what you meant. 

Arg..

> Should this be
> 
> 	if (of_find_node_by_path_from(root, optee_of_path))
> 		return 0;

exactly, thanks.

Regards,
  Marco

> or something else?
> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 


