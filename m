Delivery-date: Mon, 20 Apr 2026 14:02:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wEnL5-00EKkA-1C
	for lore@lore.pengutronix.de;
	Mon, 20 Apr 2026 14:02:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wEnL3-0002SL-Eu
	for lore@pengutronix.de; Mon, 20 Apr 2026 14:02:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Kz2yRWP6in/tU9fIoWR2G7zhICF6qVMFBdZo/VRTJ14=; b=yeG8MPaPq7uGJ5XQSHons6nUMn
	75qVsFEeQq0UlYHG13GBXr4wqPYIKngHKQHPI/NeQFwUvKEPq8Ytg71VT8vbNe3H4AMHTi2d8KaRj
	ZztQg+fKnmWoezvesOoqWgu3ZTgxV55SX5TzF774G0VkYMgB5dYLJNnPsTouSiQLAzdbDIb/p1EKo
	8sq8dUvn/RQDIg+bst9iV1zJqF+AezJile4qukYSuoIl1Pwj9ghiHJRudF2yIgeB9pRbJLvxWUgBH
	wf5+G8dVk4WkG7NPPYgyOgfvALlS0ms/XjQngeK1t7bGCvc2NuVi4EXDVYN1RuDqSfDOJvDSfea7W
	VHiyhPDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEnKQ-00000006qhZ-0LSg;
	Mon, 20 Apr 2026 12:02:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEnKN-00000006qhD-2HBT
	for barebox@lists.infradead.org;
	Mon, 20 Apr 2026 12:02:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wEnKL-0002A8-QK; Mon, 20 Apr 2026 14:02:09 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wEnKL-006KQz-1O;
	Mon, 20 Apr 2026 14:02:09 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wEnKL-00000004GN3-1IGr;
	Mon, 20 Apr 2026 14:02:09 +0200
Date: Mon, 20 Apr 2026 14:02:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>,
	"Claude Sonnet 4.6" <noreply@anthropic.com>
Message-ID: <aeYVwX9AMDdmRNKq@pengutronix.de>
References: <20260420-usb-typec-stusb160x-v1-0-5875bbae80ab@pengutronix.de>
 <20260420-usb-typec-stusb160x-v1-2-5875bbae80ab@pengutronix.de>
 <2fd9dab7-40ab-4e75-b6c8-821bded735a0@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2fd9dab7-40ab-4e75-b6c8-821bded735a0@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260420_050211_652579_90E870C4 
X-CRM114-Status: GOOD (  22.28  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/4] usb: typec: wire USB role changes to OTG device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Apr 20, 2026 at 01:08:41PM +0200, Ahmad Fatoum wrote:
> > +static bool typec_apply_otg_role(struct typec_port *port)
> > +{
> > +	struct device_node *connector = port->dev.of_node;
> > +	struct device_node *ep, *remote;
> > +	struct device *dev;
> > +	enum usb_dr_mode dr_mode;
> > +	bool applied = false;
> > +
> > +	if (!IS_ENABLED(CONFIG_USB_OTGDEV) || !connector)
> > +		return false;
> > +
> > +	if (port->usb_role == USB_ROLE_HOST)
> > +		dr_mode = USB_DR_MODE_HOST;
> > +	else if (port->usb_role == USB_ROLE_DEVICE)
> > +		dr_mode = USB_DR_MODE_PERIPHERAL;
> > +	else
> > +		return false;
> > +
> > +	for_each_endpoint_of_node(connector, ep) {
> > +		remote = of_graph_get_remote_port_parent(ep);
> > +		if (!remote)
> > +			continue;
> > +
> > +		bus_for_each_device(&otg_bus_type, dev) {
> > +			if (dev->parent && dev->parent->of_node == remote) {
> 
> I believe board code could've set the mode before we come here.
> 
> Also, I think there must be a way to opt out of this.
> 
> Let's assume you load barebox via USB on a Type C port. You may not be
> able to yank the cable away fast enough before barebox does the one-way
> otg -> peripheral transition.

Should have sent this as RFC, because these are the questions I had as
well. Ideally the otg->host or otg->device transition shouldn't be
oneway, but that might open a can of worms.

> > +late_initcall(typec_apply_otg_roles);
> 
> Does postenvironment not make more sense, so the environment can
> override this?

Sounds good, but then you don't have a chance anymore to do something
with the device from board code.

Ok, so we need something to opt in/out from that mechanism and also
something for board code to call the role transition earlier when
needed.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


