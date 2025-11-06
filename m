Delivery-date: Thu, 06 Nov 2025 09:23:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vGvHN-00FsQ1-26
	for lore@lore.pengutronix.de;
	Thu, 06 Nov 2025 09:23:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vGvHN-00064x-2x
	for lore@pengutronix.de; Thu, 06 Nov 2025 09:23:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rzVCRI0rO2RPtyW3fzjB4vKA2cbl+0jBNVdSTxUyts8=; b=Up7MYlJA/+33J6WsrH1XWbQKtx
	u2HAP+QXIIwC++yGHi3z+lCWjeBtf0BMOo6rSVoiYDeCeBcjxbR1iw1DBDVggf4pLfAtursoqYxlL
	eU3ueeFzpyvWO9YsF/xX9lKeFwkvyZ7mBOH67clBumUPP0DN7a+IfPpH6q3m2A3VmVug6wmU6qowP
	UoDdwSmHg1vK+MUleLitYegr+0JcKN1JjcYGE3W1rdGCt9iy/BT2OBF8LH5gJIMnpWpJetNaAwPds
	Ax8b4CC0dwyAlBXm8f4J1ogr6neMBgeSxTVfSWWpc2iQ/eV0FW0sVTTFnOAy5lpBGKkapcpuEZ2Kd
	zu6MTdJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGvGp-0000000F3cn-44Hr;
	Thu, 06 Nov 2025 08:23:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGvGl-0000000F3cP-3f0G
	for barebox@lists.infradead.org;
	Thu, 06 Nov 2025 08:23:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vGvGi-0005x0-Ra; Thu, 06 Nov 2025 09:22:56 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vGvGi-007KZw-1H;
	Thu, 06 Nov 2025 09:22:56 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vGvGi-004n7h-0t;
	Thu, 06 Nov 2025 09:22:56 +0100
Date: Thu, 6 Nov 2025 09:22:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <aQxa4LmSRqWBQQEK@pengutronix.de>
References: <20251106073035.3580913-1-s.hauer@pengutronix.de>
 <edc3b34d-a2ed-41c3-b272-51c8cb98eaf5@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <edc3b34d-a2ed-41c3-b272-51c8cb98eaf5@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_002259_915884_37D0BF2A 
X-CRM114-Status: GOOD (  26.52  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: k3: allow to take signing key from environment
 variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Nov 06, 2025 at 09:02:07AM +0100, Ahmad Fatoum wrote:
> Hi,
> 
> On 06.11.25 08:30, Sascha Hauer wrote:
> > This adds a new Kconfig option CONFIG_ARCH_K3_SIGNING_KEY_ENV. With
> > this option enabled the content of CONFIG_ARCH_K3_SIGNING_KEY is treated
> > as the name of an environment variable from which the private key
> > file/uri is taken. This allows for better integration with build
> > systems.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/mach-k3/Kconfig |  8 ++++++++
> >  images/Makefile.k3       | 12 +++++++++++-
> >  2 files changed, 19 insertions(+), 1 deletion(-)
> > 
> > diff --git a/arch/arm/mach-k3/Kconfig b/arch/arm/mach-k3/Kconfig
> > index ecd77d8d9a..58f6ba827d 100644
> > --- a/arch/arm/mach-k3/Kconfig
> > +++ b/arch/arm/mach-k3/Kconfig
> > @@ -81,6 +81,14 @@ config ARCH_K3_SIGNING_KEY_CUSTOM
> >  
> >  endchoice
> >  
> > +config ARCH_K3_SIGNING_KEY_ENV
> > +	bool "Specify signing key in environment"
> > +	depends on ARCH_K3_SIGNING_KEY_CUSTOM
> > +	help
> > +	  If this option is enabled the content of CONFIG_ARCH_K3_SIGNING_KEY
> > +	  is treated as name of an environment variable rather than a filename/uri
> > +	  directly which allows for better integration with build systems.
> 
> Why an extra option instead of just interpreting any number of __ENV_something
> as environment variable ${something} as we already do for CONFIG_CRYPTO_PUBLIC_KEYS?

I tried but despaired at the quoting hell I got into. __ENV__something
right now is interpreted in scripts/keytoc.c which is easy.
FWIW with HAB_CERTS_ENV we have something similar to the way I have
chosen as well.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


