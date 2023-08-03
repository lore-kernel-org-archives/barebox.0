Delivery-date: Thu, 03 Aug 2023 10:55:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRU7P-004p0Z-Qe
	for lore@lore.pengutronix.de; Thu, 03 Aug 2023 10:55:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRU7O-0000As-0y
	for lore@pengutronix.de; Thu, 03 Aug 2023 10:55:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nrdedc43mxWOkyT6rVBLVGKfVcBvYy5Npk3gBIzZJus=; b=3I8/yF6UFctirUbzKWThcG3rN/
	AINLoA0F8/jF6/OA+jDjWhneZcyiWi7WLSvv8xLoj09OBbVd3O9xiUMuS6e7gxTJaaeJYbCy4q4wL
	De5J0mBERzvxkcjIuNXQdIDoMYKOAhSrv7SlUI4/KYjkmTmeIZ6ZnmRso4znoOamqr6oNxksNDRc3
	AKj/RKTDf0Mx5he8zt2MwbXneJ5UU1HVkaFl4F+qCpO53HBEMixmqRyCug2VOPKXzOliR2hWGkMEZ
	jf7ChKQc7SyOvucy5wRMrChbCB+K5GfiJ1XeCUOt+696LEASMQ0JJzzDYaUODAyvWkAif09BEQFnG
	fzGa2ZNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qRU6P-0075E0-2G;
	Thu, 03 Aug 2023 08:54:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRU6M-0075Dc-2F
	for barebox@lists.infradead.org;
	Thu, 03 Aug 2023 08:54:36 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qRU6L-0008MC-BX; Thu, 03 Aug 2023 10:54:33 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qRU6L-0001WX-3R; Thu, 03 Aug 2023 10:54:33 +0200
Date: Thu, 3 Aug 2023 10:54:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20230803085433.GC7788@pengutronix.de>
References: <CAP1tNvRt9ohDy3n3AJ1Fzvvqgbv_0V0iVM1urQWOzN2pT-xgpA@mail.gmail.com>
 <20230803083016.GB7788@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230803083016.GB7788@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230803_015434_773431_F282B3FA 
X-CRM114-Status: GOOD (  23.71  )
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
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: arm psci_probe() bug
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Aug 03, 2023 at 10:30:16AM +0200, Sascha Hauer wrote:
> Hi Alexander,
> 
> On Thu, Aug 03, 2023 at 11:04:36AM +0300, Alexander Shiyan wrote:
> > Hello.
> > 
> > I found a bug in psci processing.
> > Currently the kernel writes the following on boot:
> > psci: probing for conduit method from DT.
> > psci: invalid "method" property:
> > ...
> > 
> > In the psci_probe() function we do the following:
> > ret = of_property_read_string(dev->of_node, "method", &method);
> > and use this (method) variable as an argument for of_psci_fixup().
> > I suspect we are free this variable at of_property_write_string ->
> > of_set_property > of_delete_property.
> > 
> > Can you confirm my thought and correct it in the right direction?
> 
> Are you using the internal device tree for booting? If yes, then I think
> this can happen. As I just saw when booting with the internal device
> tree then of_get_fixed_tree() is called with the barebox live tree as
> argument. We shouldn't do this and use a copy instead.

Whether or not this is your actual problem I just sent a patch
addressing this.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


