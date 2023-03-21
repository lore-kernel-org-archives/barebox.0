Delivery-date: Tue, 21 Mar 2023 09:09:42 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1peX3t-008wG8-8n
	for lore@lore.pengutronix.de; Tue, 21 Mar 2023 09:09:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1peX3t-0004SQ-0u
	for lore@pengutronix.de; Tue, 21 Mar 2023 09:09:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XIMYiKv/Uiq+t3DjK7TTIAogQ5T0edPo80KhP202dcU=; b=YdMpQ2tmu81xeM+VM6z/svyq40
	PieSvuABpM3w6dEg2K5KTUWk4+ud7Xca7Yd44kUUMR9QM7UO9iATosbHYwXLU/pAi7Naq8TqH8hy5
	l/9gNUF+wBIbnBCDYWrB/3LnTwddcWNkO5ofmNlkmNNxEdwip0pAJTWx7wC7YVoKhRyqPfarNEZuN
	v8tF+JPgbbepxrEzUG8tyM4HtKvAJl/xujNatvzRyaHuM+/jmzlmyhbMKKSaD95TQ5UDIvXJkgVVB
	JqvZm75mHmzLU7C9SsmJXgeTENP8pic94obacywEiuGF5fwFF7wHBl/ejWQRGESImfkfHwBZccG0F
	xrqGSKKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peX2K-00BcjH-03;
	Tue, 21 Mar 2023 08:08:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peX2G-00Bcim-0h
	for barebox@lists.infradead.org;
	Tue, 21 Mar 2023 08:08:01 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1peX2E-0004Kh-2z; Tue, 21 Mar 2023 09:07:58 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1peX2D-0004uH-Rw; Tue, 21 Mar 2023 09:07:57 +0100
Date: Tue, 21 Mar 2023 09:07:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230321080757.GC7446@pengutronix.de>
References: <20230320152941.3155428-1-s.hauer@pengutronix.de>
 <20230320152941.3155428-8-s.hauer@pengutronix.de>
 <6434964e-16c1-7b01-7244-f38767be4570@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6434964e-16c1-7b01-7244-f38767be4570@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230321_010800_254452_77DB9475 
X-CRM114-Status: GOOD (  23.68  )
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
Subject: Re: [PATCH 07/18] driver: Add unregister_driver()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Mar 20, 2023 at 04:43:08PM +0100, Ahmad Fatoum wrote:
> On 20.03.23 16:29, Sascha Hauer wrote:
> > Registering drivers is one thing, getting rid of them another. Add
> > unregister_driver() which is used in the coming USB gadget update.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  drivers/base/driver.c | 16 ++++++++++++++++
> >  include/driver.h      |  2 ++
> >  2 files changed, 18 insertions(+)
> > 
> > diff --git a/drivers/base/driver.c b/drivers/base/driver.c
> > index efbffcdddb..719920ec67 100644
> > --- a/drivers/base/driver.c
> > +++ b/drivers/base/driver.c
> > @@ -405,6 +405,22 @@ int register_driver(struct driver *drv)
> >  }
> >  EXPORT_SYMBOL(register_driver);
> >  
> > +void unregister_driver(struct driver *drv)
> > +{
> > +	struct device *dev;
> > +
> > +	list_del(&drv->list);
> > +	list_del(&drv->bus_list);
> > +
> > +	bus_for_each_device(drv->bus, dev) {
> > +		if (dev->driver == drv) {
> > +			drv->bus->remove(dev);
> 
> I think drv->bus->remove may be NULL here and you need to guard against that.

drv->bus->remove is non NULL for all buses and in unregister_device() it
is also assumed to be non NULL.

> While at it, could you switch commands/devunbind.c to use this new function?

devunbind can only unregister devices. I don't think I can do anything
with unregister_driver() there.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


