Delivery-date: Thu, 15 Apr 2021 13:38:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lX0K9-0007LY-8L
	for lore@lore.pengutronix.de; Thu, 15 Apr 2021 13:38:17 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lX0K8-0004rN-Ef
	for lore@pengutronix.de; Thu, 15 Apr 2021 13:38:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kkXw1q/jDDEclWj9l9uWiZ3LLFnL8vCMEB8rnbgx69k=; b=SOHt6KRMTIQy0dDsBnl53tfMe
	H/CpfGkao8qh91CNeW8eLNb6Z2sR7F+G+rJqBW4G8uWQjI5qlMSOTRfDMy0Z5HZHLdK1RjXxmrZqO
	kppCabCdv5B73xFSqaoje2ow8KM63gLgprlW3s56ZuO8n5jymr5ofDLX0joA/y0z61Yi64ZOpMfaF
	SOl9cI/WuXugc1zAOMpgZRU3Rom0bvGmAiATwQ9eQ08dXOczE2UuPUIMQqSygX2BpJqpggGnIv6P2
	EexDHUSNisREQNKxw8to7g3cLcnYpU/ZjoTjh/+XLmrswY244OMrthIh6s5Ft12N49eA/lumlf0jc
	fbb6368xA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lX0Iz-00FzBw-RB; Thu, 15 Apr 2021 11:37:05 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lX0Iu-00FzBN-3u
 for barebox@desiato.infradead.org; Thu, 15 Apr 2021 11:37:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=qd9q7ruqDEkTfEldpO+RIcdaAwUY9YPVUgSplCAD/uE=; b=gP/ZDj8UjthOk8bJwWZ3oyuIRF
 0quqTwN9+KcxzSfom2JMOj1rb/wpNDhELDYAjG+B2MiZpoWT58LYqO2hTaxCQ4sB6aLveL2jUzgSa
 8K6+2iCmv23eBDg3ziYy4mG7u/oFcqtg5soeDPA1i3GsR3lGTptNKxbQ2eI5gJL5a3BhB2I4rAQuq
 P8XCk0tvAIfSguXU2yySHJWquNIG31+htp3HqrtwNwNfAEa//oa55m2a4Np0AHskbaxtQL2jtXdia
 DxBTNfHbI1Y4JM7bkxyQiO2iYE5HI3u1tgt6StpIL7/fX4tPBnq/aMZDD9bPKdhZEYpJsDvlJjFDD
 79Gm4yxw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lX0Ir-008XFA-Fu
 for barebox@lists.infradead.org; Thu, 15 Apr 2021 11:36:58 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lX0Ip-0004m1-Ku; Thu, 15 Apr 2021 13:36:55 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lX0Io-0000sK-Mq; Thu, 15 Apr 2021 13:36:54 +0200
Date: Thu, 15 Apr 2021 13:36:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>, Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20210415113654.GE19819@pengutronix.de>
References: <20210414122143.30827-1-s.hauer@pengutronix.de>
 <97515cec-d927-6f79-a80e-a9702d693627@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <97515cec-d927-6f79-a80e-a9702d693627@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:35:33 up 56 days, 14:59, 103 users,  load average: 0.13, 0.07,
 0.09
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210415_043657_555587_3129E2D0 
X-CRM114-Status: GOOD (  20.12  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: AT91: Add skov-arm9cpu board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Apr 14, 2021 at 02:45:55PM +0200, Ahmad Fatoum wrote:
> Hi,
> 
> > +ENTRY_FUNCTION(start_skov_arm9cpu, r0, r1, r2)
> > +{
> > +	void *fdt;
> > +
> > +	arm_cpu_lowlevel_init();
> > +
> > +	arm_setup_stack(AT91SAM9263_SRAM0_BASE + AT91SAM9263_SRAM0_SIZE - 16);
> 
> See 6b3dc4abd884e7 ("ARM: Cleanup stack offset cargo cult"). Likely, the - 16
> here can go away too.

Fixed.

> > +			device-path = &environment_nor;
> > +		};
> > +	};
> > +
> > +	ahb {
> > +		apb {
> 
> &{/ahb/apb/...} please. Otherwise, if upstream eventually renames the busses
> to generic names (like what's happening to other SoCs), we don't get silently
> broken. See https://barebox.org/doc/latest/devicetree/index.html#barebox-device-trees
> 
> I know that most at91 device trees look like this, but the trend seems to suggest
> that at one time, they will be changed for upstream device trees. (Unless the
> maintainers said otherwise?).

Fixed before applying.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

