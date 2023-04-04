Delivery-date: Tue, 04 Apr 2023 10:09:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pjbjb-009UZb-By
	for lore@lore.pengutronix.de; Tue, 04 Apr 2023 10:09:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pjbjb-0005A1-4P
	for lore@pengutronix.de; Tue, 04 Apr 2023 10:09:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ptUM7MlrfHucn0QyW2oq/mvTUYvKJsQDGjO2nqA0iKc=; b=VWTqW2MoBGuk8T83Rc4vZewb42
	fHvULmRhcxv6FvP4wz/RjkUjwiIZkk+fgrqFG1CdzyFv9mouVijyvp1eeJV9asdpPR9jmWk7L+aS/
	k1q2Qq4gUnCl8vclTX1xWVevUKJ6pDGyboOXdp2yfZcuyx2OMNfXwIepyPJ2Wh81zr8vPK3/t2g+o
	zR8KahVfEq+WM+z3Zpk0PLk3h3+4W9pijZKLvPANNjcBTNViLGaRvFDRUiRU0XPoMXXwHZ4fALVlz
	jv6MhJ6ra4rT8AqRZZqVANIbCCRgom/rGoxjD/9+ndtuhNIdPh3jxwSxHwQIibSGZcv38OrCW139Z
	1bCIAQ3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjbcw-000O9V-0d;
	Tue, 04 Apr 2023 08:02:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjbc6-000O2Y-2t
	for barebox@lists.infradead.org;
	Tue, 04 Apr 2023 08:02:07 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pjbbq-0003oa-9B; Tue, 04 Apr 2023 10:01:42 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pjbbq-0002wV-1u; Tue, 04 Apr 2023 10:01:42 +0200
Date: Tue, 4 Apr 2023 10:01:42 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230404080142.itltxhz6vtagoipo@pengutronix.de>
References: <20230228-v2023-02-0-topic-flexspi-v2-0-3d33126d2434@pengutronix.de>
 <20230228-v2023-02-0-topic-flexspi-v2-2-3d33126d2434@pengutronix.de>
 <20230404070417.GI15436@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230404070417.GI15436@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_010203_926006_B0FDB270 
X-CRM114-Status: GOOD (  26.97  )
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
> On Mon, Mar 13, 2023 at 02:41:41PM +0100, Marco Felsch wrote:
> > It is possible that one barebox can rule multiple platforms e.g.
> > multiple platform revision each has a dedicated device tree and of
> > compatible. While it is possible to add multiple of-compatibles via
> > IMD_USED_OF() (see: zii-imx8mq-dev) we didn't allowed it to flash it
> > without 'force'. Fix this by check all possible IMD_TYPE_OF_COMPATIBLE
> > image metadata types.
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >  common/bbu.c | 42 +++++++++++++++++++++++++++---------------
> >  1 file changed, 27 insertions(+), 15 deletions(-)
> > 
> > diff --git a/common/bbu.c b/common/bbu.c
> > index 3ec17216cb..a9b3fef7a0 100644
> > --- a/common/bbu.c
> > +++ b/common/bbu.c
> > @@ -154,36 +154,44 @@ struct bbu_handler *bbu_find_handler_by_device(const char *devicepath)
> >  	return NULL;
> >  }
> >  
> > -static int bbu_check_of_compat(struct bbu_data *data)
> > +static int bbu_check_of_compat(struct bbu_data *data, unsigned short of_compat_nr)
> >  {
> > +	const struct imd_header *imd = data->imd_data;
> > +	const struct imd_header *of_compat;
> >  	struct device_node *root_node;
> >  	const char *machine, *str;
> >  	int ret;
> > -	const struct imd_header *of_compat;
> >  
> >  	if (!IS_ENABLED(CONFIG_OFDEVICE) || !IS_ENABLED(CONFIG_IMD))
> >  		return 0;
> 
> This patch breaks barebox update when the update image doesn't contain
> any IMD_TYPE_OF_COMPATIBLE entries. To fix this we need this here:
> 
> 	if (!of_compat_nr)
> 		return 0;
> 
> I fixed this up.

Argh.. thanks :) To make even more robust and forcable by board we could
replace it with a dedicated CONFIG_IMD_OF_COMPATIBLE. This way boards
can select it to enforce the check or we skip the check. Since just
checking:

  if (!of_comat_nr)
     return 0;

could also hide board code issues.

Regards,
  Marco


> 
> Sascha
> 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 


