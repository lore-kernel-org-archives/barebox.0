Delivery-date: Tue, 14 Feb 2023 10:48:08 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pRrv0-0079xt-3l
	for lore@lore.pengutronix.de; Tue, 14 Feb 2023 10:48:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pRrux-0003MR-A9
	for lore@pengutronix.de; Tue, 14 Feb 2023 10:48:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ngVsGy3WrtTQGffaPacGFW1m/10GkPl0ATwfIW0imPY=; b=sM4hMXDYx57uQr4fE9a7gFKQns
	7AHV62lOkPdS+ZdOPqd7HVIIY09GYRvu2CtVeE388nc7ZEhPiBOaVLnAmNR9SmpHig/wuY1TSiaYI
	XbZ6YOsNzxx0lysegspFBEFO1kB4M+Y1xutsgtPL7xQBStjF6/z77H1D0Q872bh8mu4qkWrnBu4ee
	B/408aqoIEBbVbfGozo4ydSeLf8Zu2twMj0I1fKqY4xM5j3gPjcL2gD35+XKoj/LxtZpn6X6EiOQD
	KxYZVjAUTKPFoWrx6JGnJPtxOhwePH+169f7JWLHCPhiI+VBRGG2zTzjULHP/UG0w1vF/8v1b5FBb
	/ZGDUZvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRrtL-000mvp-Fj; Tue, 14 Feb 2023 09:46:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRrt9-000mqD-RX
	for barebox@lists.infradead.org; Tue, 14 Feb 2023 09:46:17 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <ejo@pengutronix.de>)
	id 1pRrt4-00036h-8a; Tue, 14 Feb 2023 10:46:10 +0100
Message-ID: <acf8b79c23675a2b4c7225e55e4ab369fbcf7f54.camel@pengutronix.de>
From: Enrico =?ISO-8859-1?Q?J=F6rns?= <ejo@pengutronix.de>
To: Richard Purdie <richard.purdie@linuxfoundation.org>, Marco Felsch
	 <m.felsch@pengutronix.de>, openembedded-core@lists.openembedded.org
Cc: yocto@pengutronix.de, barebox@lists.infradead.org
Date: Tue, 14 Feb 2023 10:46:09 +0100
In-Reply-To: <12e370a3183d04572da1c5749d8e64dcf5091a0c.camel@linuxfoundation.org>
References: <20230203135011.2061939-1-m.felsch@pengutronix.de>
	 <12e370a3183d04572da1c5749d8e64dcf5091a0c.camel@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3-1+deb11u1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230214_014615_917996_9C3BE309 
X-CRM114-Status: GOOD (  27.42  )
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
Subject: Re: [yocto] [OE-core] [PATCH 1/2] barebox: add initial support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Richard,

Am Freitag, dem 03.02.2023 um 14:17 +0000 schrieb Richard Purdie:
> On Fri, 2023-02-03 at 14:50 +0100, Marco Felsch wrote:
> > This adds the support for the barebox bootloader to oe-core. The recipe
> > is based on the recipe found in meta-ptx [1] with a few minor adaptions.
> > 
> > This basic support includes the bootloader and the target tools to
> > interact with the bootloader. The host tools support is not part of
> > this commit. This will be added later on as separate recipe.
> > 
> > [1] https://github.com/pengutronix/meta-ptx/tree/master/recipes-bsp/barebox
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >  meta/conf/documentation.conf                  |   7 +
> >  meta/recipes-bsp/barebox/barebox.inc          | 123 ++++++++++++++++++
> >  meta/recipes-bsp/barebox/barebox_2023.01.0.bb |   5 +
> >  ...IMAGE_COMPRESSION-per-default-to-lz4.patch |  40 ++++++
> >  4 files changed, 175 insertions(+)
> >  create mode 100644 meta/recipes-bsp/barebox/barebox.inc
> >  create mode 100644 meta/recipes-bsp/barebox/barebox_2023.01.0.bb
> >  create mode 100644 meta/recipes-bsp/barebox/files/0001-pbl-set-IMAGE_COMPRESSION-per-default-
> > to-lz4.patch
> 
> In order to add something to OE-Core, we need to see it being used by a
> reasonable portion of the ecosystem. Is there enough usage of barebox
> on common boards that justifies this?

I understand that not each and every package can and should be added to OE-core, so let me provide
my view on why adding barebox could be reasonable.

First of all, since it is a bootloader and oe-core's purpose is to provide basic common recipes
required to bring up a device, I found it to be a proper location for the recipe.
It does not add any further dependencies in the oe-core ecosystem so additional maintenance should
be limited in scope.

With over 300 individual contributors and regular monthly releases [1] I would call the barebox
bootloader a common, stable and mature project that is around since ~2009 and provides support for a
wide range of architectures, SoCs and platforms [2] including freely available common boards like
RPI, beaglebone, i.MX eval kits and UEFI in general.

Ever since, barebox has also been used by different hardware vendors (e.g. [4]) and was chosen by
Kalray [5] as their bootloader. Of course, as you know, it is always difficult to have a reliable
overview of the user base of an open source project as barebox.

So far there are already a number of barebox oe recipes around [3] that I find worth to consolidate
with adding one reference recipe to oe-core.


The question if these are sufficient arguments for adding barebox to oe-core probably needs to be
answered by the broader community, but I found it to be a good added value to have a bootloader in
oe-core that adapts many of the well-known schemes of Linux and focuses on being developer-friendly
and framework-driven.
(Let me just drop [6] for those interested in a bit details on what I summed up very roughly here.)

> I noticed there is no maintainers entry being added so this will throw
> QA errors on the autobuilder.

I would take responsibility for the recipe, backed by other barebox developers here.

> Also, I'm not sure adding doc varflags for individual recipe variables
> to documentation.conf makes sense. We should probably have them in the
> recipe or just put entries into the manual?

To be honest, this was inspired by the UBOOT_ variables that are placed in documentation.conf thus
we assumed this could be a proper place. We can simply move them into the recipe to limit intrusion
into the rest of the oe ecosystem.


Many thanks for your initial thoughts! Best regards,

Enrico

> Cheers,
> 
> Richard


[1] https://barebox.org/download/
[2] https://barebox.org/doc/latest/boards.html
[3] http://layers.openembedded.org/layerindex/branch/master/recipes/?q=barebox
[4] https://www.phytec.eu/en/cdocuments/?doc=YQ4RCg
[5] https://en.wikipedia.org/wiki/Kalray
[6] https://www.youtube.com/watch?v=fru1n54s2W4&ab_channel=TheLinuxFoundation

-- 
Pengutronix e.K.                           | Enrico Jörns                |
Embedded Linux Consulting & Support        | https://www.pengutronix.de/ |
Steuerwalder Str. 21                       | Phone: +49-5121-206917-180  |
31137 Hildesheim, Germany                  | Fax:   +49-5121-206917-9    |



