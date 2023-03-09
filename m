Delivery-date: Thu, 09 Mar 2023 16:57:37 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paIe8-00F0cY-QR
	for lore@lore.pengutronix.de; Thu, 09 Mar 2023 16:57:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paIe8-0001WG-I2
	for lore@pengutronix.de; Thu, 09 Mar 2023 16:57:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vTHPjiSVci2Kf2R/MF6gmoTjLrYHqy6XGKXfzWgOWSs=; b=dE5LNfikLi+NsSSh9ZRL5fekMm
	WORo2ugMSqD8l1fzl9IBPoXYzq+xuch7MlQi9ef6jkRghfUYavUCdD5+S8YibcCZLYORENFCB2ubK
	RSDIqkc51SeVh9MsQZQbMkKaMChOUnnO5mtdHExkKultup5mhGKJHypG5UGjZxsBsCkfrYA/mlUeG
	iz29FziFKLaK1HJIU6wLy61UEjmE39FH9NMmkzNBvvAJiYgAK72Ul5AiSAmR58dUlElYlTMSuDoW6
	gV2u1cBepETsO7/avbRdKN+TiBPhBNqrVoiL5ed6me4MznV85GSkijSN8TGJQhuKWvMCmKj73JP28
	lcxPfUTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paIcl-00B4lN-5C; Thu, 09 Mar 2023 15:56:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paIOA-00Aybq-Vf
	for barebox@lists.infradead.org; Thu, 09 Mar 2023 15:41:08 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1paIO9-00074r-9B; Thu, 09 Mar 2023 16:41:05 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1paIO9-0003ts-1k; Thu, 09 Mar 2023 16:41:05 +0100
Date: Thu, 9 Mar 2023 16:41:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230309154105.GJ5784@pengutronix.de>
References: <20230309115208.973893-1-s.hauer@pengutronix.de>
 <20230309115208.973893-3-s.hauer@pengutronix.de>
 <613252b4-1c8a-357f-6da1-2def7e422586@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <613252b4-1c8a-357f-6da1-2def7e422586@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230309_074107_058851_8BC8AA39 
X-CRM114-Status: GOOD (  31.85  )
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
Subject: Re: [PATCH v2 2/7] driver: Add rescan hook to struct device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Mar 09, 2023 at 02:08:50PM +0100, Ahmad Fatoum wrote:
> On 09.03.23 12:52, Sascha Hauer wrote:
> > When devices are enabled with a device tree overlay the newly enabled
> > devices can be probed by doing a of_probe(). This works fine for the
> > regular platform devices, but doesn't work for devices which are not
> > probed by the core, but by the subsystem. Prominent examples are I2C or
> > SPI devices.
> > 
> > This patch adds a struct device::rescan hook that subsystems can
> > implement to trigger rescanning the device nodes.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  drivers/of/platform.c | 11 +++++------
> >  include/driver.h      |  6 ++++++
> >  2 files changed, 11 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/of/platform.c b/drivers/of/platform.c
> > index edb082b106..2e9abe32bc 100644
> > --- a/drivers/of/platform.c
> > +++ b/drivers/of/platform.c
> > @@ -153,8 +153,10 @@ struct device *of_platform_device_create(struct device_node *np,
> >  	 * Linux uses the OF_POPULATED flag to skip already populated/created
> >  	 * devices.
> >  	 */
> > -	if (np->dev)
> > +	if (np->dev) {
> > +		device_rescan(np->dev);
> >  		return np->dev;
> > +	}
> >  
> >  	/* count the io resources */
> >  	if (of_can_translate_address(np))
> > @@ -420,11 +422,8 @@ static struct device *of_device_create_on_demand(struct device_node *np)
> >  	if (!parent)
> >  		return NULL;
> >  
> > -	if (!np->dev && parent->dev) {
> > -		ret = device_detect(parent->dev);
> > -		if (ret && ret != -ENOSYS)
> > -			return ERR_PTR(ret);
> > -	}
> 
> The int ret definition at the top of the function should be ok to be removed now.

No, it's still used.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


