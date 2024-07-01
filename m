Delivery-date: Mon, 01 Jul 2024 14:36:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOGGd-000VCl-0R
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 14:36:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOGGc-0002aP-BQ
	for lore@pengutronix.de; Mon, 01 Jul 2024 14:36:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pqsPsFVRnjo2gZptIG4BHXZ9f6RXufz25/LydeKdkXQ=; b=osKURUMrNlJPlfV5CrElNYQY4q
	fwYWmPAE4vKPXvjNhB3eyXpJEnlzK8hDax9dV/g6wZEkoSbEG2fxGEG4QOm1Q/7bQgGwcIIObqc5p
	lHbYoAeEQuGCuA/K2HA9K8ulZ4UNJDAexFJAXAeSp3c1drvsYx2JDm5aLX3DijKlWXtWdNJowCyCs
	ebfJF/F4BusIeDQr0wHvrXZvfE4aAGdbXebnCOGk5F847xShR+MFFewHbVRVq+8cCpqPIwv/Z1Rtu
	Jug9y8YCGzJYe7MhkX+HYS0sKIPNF5o9843P6jc6xmaB6yzH1bSKKdMs2/WqaKPRZjatvICW0XUMA
	yyfHeyTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOGFz-00000003FdZ-03Uf;
	Mon, 01 Jul 2024 12:35:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOFnP-000000032DU-1xHX
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 12:06:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1sOFnO-0000dI-1Q; Mon, 01 Jul 2024 14:06:10 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1sOFnN-006MrP-LH; Mon, 01 Jul 2024 14:06:09 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1sOFnN-008Qrq-1s;
	Mon, 01 Jul 2024 14:06:09 +0200
Date: Mon, 1 Jul 2024 14:06:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <ZoKbsY22cvuY-VUj@pengutronix.de>
References: <20240322164953.1772129-1-m.felsch@pengutronix.de>
 <20240322164953.1772129-2-m.felsch@pengutronix.de>
 <ZgE1VbATsBpAKnD_@pengutronix.de>
 <20240611083647.cjy2yz5qqaqb7gnr@pengutronix.de>
 <Zm_uFSiiT7KrUD6L@pengutronix.de>
 <20240626100442.z6prerlewpdwzeh5@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240626100442.z6prerlewpdwzeh5@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_050611_538378_E2DF55F3 
X-CRM114-Status: GOOD (  48.75  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/8] FIT: skip possible overlay config nodes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Jun 26, 2024 at 12:04:42PM +0200, Marco Felsch wrote:
> On 24-06-17, Sascha Hauer wrote:
> > On Tue, Jun 11, 2024 at 10:36:47AM +0200, Marco Felsch wrote:
> > > Hi,
> > > 
> > > sorry for the delay on this patchset.
> > > 
> > > On 24-03-25, Sascha Hauer wrote:
> > > > Hi Marco,
> > > > 
> > > > On Fri, Mar 22, 2024 at 05:49:47PM +0100, Marco Felsch wrote:
> > > > > The FIT spec is not very specific when it comes to device-tree overlay
> > > > > handling.
> > > > 
> > > > By FIT spec you mean
> > > > https://github.com/u-boot/u-boot/blob/master/doc/usage/fit/overlay-fdt-boot.rst,
> > > > right, or is there more?
> > > 
> > > this is just an example which is not complete e.g. it misses the
> > > signature node in case of verified boot. I used [1] as reference but
> > > after reading it again I see that this reference list the kernel or
> > > firmware properties as mandatory.
> > > 
> > > [1] https://docs.u-boot.org/en/latest/usage/fit/source_file_format.html#configurations-node
> > > 
> > > > > Overlays can be added directely to an config node:
> > > > > 
> > > > > 	config-a {
> > > > > 		compatible = "machine-compatible";
> > > > > 		kernel = "kernel-img-name";
> > > > > 		fdt = "fdt-base-name", "fdt-overlay1-name", "...";
> > > > > 	}
> > > > > 
> > > > > or they are supplied via dedicated config nodes:
> > > > > 
> > > > > 	overlay-2 {
> > > > > 		fdt = "fdt-overlay2-name";
> > > > > 	}
> > > > > 
> > > > > Of course these config nodes can have compatibles as well:
> > > > > 
> > > > > 	overlay-3 {
> > > > > 		compatible = "machine-compatible";
> > > > > 		fdt = "fdt-overlay3-name";
> > > > > 	}
> > > > 
> > > > The text I referenced above doesn't mention compatible properties in
> > > > overlay config nodes.
> > > 
> > > You're right, but the format description chapter [1] does.
> > > 
> > > > > The current fit_find_compatible_unit() code would skip the overlay node
> > > > > if the config-a compatible has the same score as the overlay-3
> > > > > compatible and if the overlay-3 config-node is listed after the config-a
> > > > > config-node. But if the compatible of config-a config-node has a lower
> > > > > score or the overlay-3 config-note is listed first (the spec does not
> > > > > specify any order) we end up in taking the overlay-3 config-node instead
> > > > > of config-a config-node.
> > > > 
> > > > You could distinguish overlay config nodes from full config nodes by the
> > > > presence of a "kernel" property. Overlay config nodes do not have it.
> > > 
> > > Of course this could be done but I wanted to make it more explicit since
> > > the FIT spec is not very clear when it comes to overlays. Instead of
> > > adding an explicit image type like:
> > > 
> > >   - type = "flat_dt_overlay";
> > > 
> > > they used the already existing definitions. Therefore I went this way so
> > > it is up to user to specify the overlay config nodes explicit.
> > 
> > I don't buy this argumentation. A node that doesn't have a 'kernel'
> > property can not be booted, hence you can ignore it when looking for a
> > bootable config. A node that does have a 'kernel' property by
> > definition doesn't describe an overlay.
> 
> As written in the commit message the overlays can be applied in two
> ways:
> 
> | 	config-a {
> | 		compatible = "machine-compatible";
> | 		kernel = "kernel-img-name";
> | 		fdt = "fdt-base-name", "fdt-overlay1-name", "...";
> | 	}
> 
> or via:
> 
> | 	overlay-2 {
> | 		fdt = "fdt-overlay2-name";
> | 	}
> 
> albeit this patchset targets the latter. This helper is used later as
> well to detect if the the config node is an overlay not just to detect
> if it is bootable or not. Right now there are also config nodes which
> don't have the kernel property included but also aren't overlays e.g.
> (doc/usage/fit/sec_firmware_ppa.rst):
> 
> |        configurations {
> |            default = "config-1";
> |            config-1 {
> |                description = "PPA Secure firmware";
> |                firmware = "firmware@1";
> |                loadables = "trustedOS@1", "fuse_scr";
> |            };
> |        };
> 
> and I assume that more such config nodes will be added over time.

Then let's put it differently:

Currently the bootm code calls fit_open_configuration() to get the
configuration node for a kernel. From the nodes above only one qualifies
being a kernel configuration, namely the one with the "kernel" property.

So instead of ignoring all nodes that are overlays you could instead
ignore all nodes that are not kernels.

Doing so would limit fit_open_configuration() to only kernel
configurations. This would break arch/arm/mach-layerscape/ppa.c
which calls fit_open_configuration() to find exactly the configuration
you are referring to above. So I think fit_open_configuration() needs
some way to let the user specify which configuration we are looking for,
maybe by adding some match() function pointer argument.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


