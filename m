Delivery-date: Tue, 04 Apr 2023 11:11:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pjch4-009Ygy-0z
	for lore@lore.pengutronix.de; Tue, 04 Apr 2023 11:11:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pjch3-0006pT-Iw
	for lore@pengutronix.de; Tue, 04 Apr 2023 11:11:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JlJcAUhePE9YleuvvVjghS+oQQKqwDCIkxEt75Lbn64=; b=WCCj8OypSIMC9uqbkhtZuEh5gh
	xGD6iTjFoSZTMdrq/sOSEWHk8KVBGKBWrl6OE7PR71jgdVcynehdg0jMZl6OK4zFUZbAYkPxofdeR
	H+qmSO3iynFA9dCO4l+qMuIfcq+pTmYMpJ/WDffG+8FRoipyXU5nbvahx7Az3ya2QJzd7jp6VCbMp
	0XgfFa0gj91Rj0gRE6NPiCmzNGBLF/rqkJ0m5w9h0lrfCwxF2tlv7QpG7nuRupqxUT4W/2ZMqAG4i
	Dsd3F7o7dfgWKLRmWhOI8Rqhs+BackqrSeg//xg2q44bENb5EDkE7Huhb4jTuenRoUasRC67G05l/
	NlWOYVUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjccP-000dsN-0B;
	Tue, 04 Apr 2023 09:06:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjcc4-000dlh-1G
	for barebox@lists.infradead.org;
	Tue, 04 Apr 2023 09:06:18 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pjcc1-00064r-HE; Tue, 04 Apr 2023 11:05:57 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pjcc1-0007i1-9O; Tue, 04 Apr 2023 11:05:57 +0200
Date: Tue, 4 Apr 2023 11:05:57 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230404090557.3nqhbgpwlhi3w3fy@pengutronix.de>
References: <20230228-v2023-02-0-topic-flexspi-v2-0-3d33126d2434@pengutronix.de>
 <20230228-v2023-02-0-topic-flexspi-v2-2-3d33126d2434@pengutronix.de>
 <20230404070417.GI15436@pengutronix.de>
 <20230404080142.itltxhz6vtagoipo@pengutronix.de>
 <20230404084900.GX19113@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230404084900.GX19113@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_020609_314140_C77637FF 
X-CRM114-Status: GOOD (  37.37  )
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
Subject: Re: [PATCH v2 02/23] bbu: make it possible to check multiple
 of-compatibles
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 23-04-04, Sascha Hauer wrote:
> On Tue, Apr 04, 2023 at 10:01:42AM +0200, Marco Felsch wrote:
> > On 23-04-04, Sascha Hauer wrote:
> > > On Mon, Mar 13, 2023 at 02:41:41PM +0100, Marco Felsch wrote:
> > > > It is possible that one barebox can rule multiple platforms e.g.
> > > > multiple platform revision each has a dedicated device tree and of
> > > > compatible. While it is possible to add multiple of-compatibles via
> > > > IMD_USED_OF() (see: zii-imx8mq-dev) we didn't allowed it to flash it
> > > > without 'force'. Fix this by check all possible IMD_TYPE_OF_COMPATIBLE
> > > > image metadata types.
> > > > 
> > > > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > > > ---
> > > >  common/bbu.c | 42 +++++++++++++++++++++++++++---------------
> > > >  1 file changed, 27 insertions(+), 15 deletions(-)
> > > > 
> > > > diff --git a/common/bbu.c b/common/bbu.c
> > > > index 3ec17216cb..a9b3fef7a0 100644
> > > > --- a/common/bbu.c
> > > > +++ b/common/bbu.c
> > > > @@ -154,36 +154,44 @@ struct bbu_handler *bbu_find_handler_by_device(const char *devicepath)
> > > >  	return NULL;
> > > >  }
> > > >  
> > > > -static int bbu_check_of_compat(struct bbu_data *data)
> > > > +static int bbu_check_of_compat(struct bbu_data *data, unsigned short of_compat_nr)
> > > >  {
> > > > +	const struct imd_header *imd = data->imd_data;
> > > > +	const struct imd_header *of_compat;
> > > >  	struct device_node *root_node;
> > > >  	const char *machine, *str;
> > > >  	int ret;
> > > > -	const struct imd_header *of_compat;
> > > >  
> > > >  	if (!IS_ENABLED(CONFIG_OFDEVICE) || !IS_ENABLED(CONFIG_IMD))
> > > >  		return 0;
> > > 
> > > This patch breaks barebox update when the update image doesn't contain
> > > any IMD_TYPE_OF_COMPATIBLE entries. To fix this we need this here:
> > > 
> > > 	if (!of_compat_nr)
> > > 		return 0;
> > > 
> > > I fixed this up.
> > 
> > Argh.. thanks :) To make even more robust and forcable by board we could
> > replace it with a dedicated CONFIG_IMD_OF_COMPATIBLE.
> 
> Making this a compile time option is not a good idea. Should be runtime.

Yes, you're right. I thought the same after send this mail :/

> 
> > This way boards
> > can select it to enforce the check or we skip the check. Since just
> > checking:
> > 
> >   if (!of_comat_nr)
> >      return 0;
> > 
> > could also hide board code issues.
> 
> Indeed, yes. Ahmad has a patch in the queue which automatically adds the
> IMD_TYPE_OF_COMPATIBLE entries for each board based on the device tree
> that is used in the image. I suggest we wait for this patch, and with it
> we can re-evaluate this.

Sure

Regards,
  Marco

> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 


