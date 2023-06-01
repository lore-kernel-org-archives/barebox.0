Delivery-date: Thu, 01 Jun 2023 10:41:24 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4ds5-005Y9o-DV
	for lore@lore.pengutronix.de; Thu, 01 Jun 2023 10:41:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4ds3-0005hj-34
	for lore@pengutronix.de; Thu, 01 Jun 2023 10:41:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cY4I+K8vKnt2Mi8ucd+XZs7KRcZgeeJGuYo5IhHWMDE=; b=e5JQwU1hbz9CGFX/VurEycasOM
	4EBdhIiqkAxPBVe/dPLqOijeDUmbahlcpjq6shlGVKewrw9zOLMC8iyCWjrjMt3hvvjLAiRN/10W5
	6LKNXEZazNUixzedabrRqk2fUvovzg8nBq+uYq+CpmxlPpENdDugC9EhJwzljeRp13fonWfc910G4
	nGKjSW7RqoMerbZiLjIMWVY9GPwn9anAANV9BTaP2L4wYpUVl+HMmMVklhAPrcCJixpJrkr6DArS4
	IJPbqOTu1oFGfkIKm5jTRILHDi3ouI76wnCj54kN/o3jbmKdSSIQiXGWZYwTf/m0aO+xcyL4v9W1x
	abCN5Zfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4dqp-002bJl-0D;
	Thu, 01 Jun 2023 08:40:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4dqm-002bIo-2Q
	for barebox@lists.infradead.org;
	Thu, 01 Jun 2023 08:40:05 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1q4dql-0005HZ-5s; Thu, 01 Jun 2023 10:40:03 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1q4dqk-0005Q3-TR; Thu, 01 Jun 2023 10:40:02 +0200
Date: Thu, 1 Jun 2023 10:40:02 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: Johannes Zink <j.zink@pengutronix.de>, barebox@lists.infradead.org,
	patchwork-jzi@pengutronix.de,
	Juergen Borleis <j.borleis@pengutronix.de>
Message-ID: <20230601084002.jvs6layjwob2me3r@pengutronix.de>
References: <20230601-koenigbauer-alphajet-upstreaming-v1-1-bcdcc1f1382e@pengutronix.de>
 <20230601082825.GL18491@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230601082825.GL18491@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230601_014004_791823_079FEF2E 
X-CRM114-Status: GOOD (  13.73  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX8MP: add Koenig+Bauer Alphajet board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Sascha,

On 23-06-01, Sascha Hauer wrote:
> On Thu, Jun 01, 2023 at 09:40:29AM +0200, Johannes Zink wrote:

...

> > +#define EQOS_PWR_PIN IMX_GPIO_NR(1, 5) /* ENET_PWREN# */
> > +static void setup_ethernet_phy(void)
> > +{
> > +	u32 val;
> > +
> > +	of_device_ensure_probed_by_alias("gpio0");
> > +
> > +	if (gpio_direction_output(EQOS_PWR_PIN, 0))
> > +	{
> > +		pr_err("eqos phy power: failed to request pin\n");
> > +		return;
> > +	}
> 
> Should this be a fixed regulator in dt?

Sorry for stepping in here. I think the problem was that neither the
kernel nor the barebox EQOS driver support the regulator feature. But
you're right this should be the correct solution.

Regards,
  Marco


