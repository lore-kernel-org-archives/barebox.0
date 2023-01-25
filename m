Delivery-date: Wed, 25 Jan 2023 10:42:34 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKcIe-001LNz-2i
	for lore@lore.pengutronix.de; Wed, 25 Jan 2023 10:42:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKcIb-0000uz-9X
	for lore@pengutronix.de; Wed, 25 Jan 2023 10:42:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=A/0fbM4AJkOCCqnSOFfIWZkFwHs6glBd4CpfRRab3Oc=; b=mOfTHm5Y1iwZGFkaMpJSpgNdb7
	s+JfCUIXk6wqDYyFN5C8SnjIkrAIwi8H0TAg4GXIQ9kuxpjdTUeaRPcdVMlv4+eJboM4MatsH63xK
	aWTyJYPp0b91NzoyagtDGlNCYx0uNH0APuPpVVLveCyOc/80XHgkLZ7szkELhQ4q/nTsvVdHND06+
	k5GqE6tai/11emel9dACkgT7KtsL6AwNQYDik4y5CS2RrqYkNnC1O3RUBwK211RSVER9JvtNlRXOu
	F6ZnNP5C2laLlIIfKXwqeLSG4UVXmJ86ZTZ8302QWXhowJqnG/1mDbaStZhGNsVIWm/YWb0ofM2zr
	Z8HyTejg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKcHV-006ekT-8K; Wed, 25 Jan 2023 09:41:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKcHN-006ehk-8f
	for barebox@lists.infradead.org; Wed, 25 Jan 2023 09:41:18 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pKcHL-0000fn-UJ; Wed, 25 Jan 2023 10:41:15 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pKcHL-0007LE-MV; Wed, 25 Jan 2023 10:41:15 +0100
Date: Wed, 25 Jan 2023 10:41:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230125094115.GA13319@pengutronix.de>
References: <20230125073739.1992152-1-s.hauer@pengutronix.de>
 <20230125092129.nua7ipc223llsanv@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230125092129.nua7ipc223llsanv@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230125_014117_327321_D02B2E89 
X-CRM114-Status: GOOD (  25.14  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] i2c: i.MX: Use better error code when bus recovery
 failed
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jan 25, 2023 at 10:21:29AM +0100, Marco Felsch wrote:
> On 23-01-25, Sascha Hauer wrote:
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  drivers/i2c/busses/i2c-imx.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
> > index e4b04327ee..3be3b158c7 100644
> > --- a/drivers/i2c/busses/i2c-imx.c
> > +++ b/drivers/i2c/busses/i2c-imx.c
> > @@ -235,7 +235,7 @@ static int i2c_fsl_start(struct i2c_adapter *adapter)
> >  	if (result) {
> >  		result = i2c_recover_bus(&i2c_fsl->adapter);
> >  		if (result)
> > -			return result;
> > +			return -EIO;
> 
> This would also reinterpret adap->bus_recovery_info->recover_bus()
> errors. I didn't checked the possible error codes for this but I think
> to say it's an IO error is fine.

Nah, forget about this, I have sent the wrong patches. Changing the i.MX
driver was my first approach until I saw that Linux returns a less
confusing error code from i2c_recover_bus().

Instead of this one I ought to send "i2c: i.MX: Use initialized dev for
dev_dbg()" which I have done now.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


