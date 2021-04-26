Delivery-date: Mon, 26 Apr 2021 10:16:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lawPn-0002qw-EI
	for lore@lore.pengutronix.de; Mon, 26 Apr 2021 10:16:23 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lawPm-0004yo-Le
	for lore@pengutronix.de; Mon, 26 Apr 2021 10:16:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5TkzoowdLyh8eKfA/ubYQWeF19ilsRZ/2aktzAaKY5I=; b=By37wkfEK2QDIliPMvFq7RDgG
	Ue7ZGZAdciZzvJNg2QDRZIVUblqg4k3xqVYjp8ifIqyE860ezzU2O6HTERZUtsToEhulZANpL5Lfb
	K/im7ayFZ16peRV4Z8LqpRejYYwrTUQE4Ja+7gYp3XuDICaPJ8SAsIo4WvrLuumexXtXKrFjz80op
	4w9uK/OnF0flbaIha3bTGj+cUDCh0iHzQuhpAqmjLyJkBUwRXvc11Y9Nd9ksk46LmF3Cu+Pc/2jE9
	re4VCAld+oWo95RSJMcXzUNJeD+UGQ9Rm1eAgPJPHVzRKV0ukQcVyqqb/TtdStbn5LbPYG4tBEVMN
	ye7d8+p2w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lawOg-007Bww-QL; Mon, 26 Apr 2021 08:15:15 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lawOd-007Bwk-7I
 for barebox@desiato.infradead.org; Mon, 26 Apr 2021 08:15:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=JLqt4uftWY3P7/VmtU6RiJKvx6qcDJ51rNLL0Bhe7UQ=; b=4BWOYF6PH+QhgzL9fuwbXybhBP
 cOIrcilZl1V94iIw0bhcb0cBnUUFhTp1OAXnMYdElXMGX6G6NFTot0CeV5+3hCdLhx9502RAGPhEq
 jpJsAIgKslBUeJ6pOwkv5NMWwLbcb54pW1lJnEKCKAGN2c9Jb/3LnW4dt9HXDuenRyGxY2Nd1NVnw
 D9XiszV0Pxq8sLl7z00gRlmCIhOSX46l0elFoHZQUbdocuW8XIf9cvNECdDU2u+bQcmd6EOYlaXBi
 uqhpt/1iL1TR2t4kIVuPDZqVMlx4uI51FDchgPbgOvXyGgN4iAsNzTq8GRm0+dyD7FoOiwK8584bv
 kNw5zKZA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lawOa-00FpCp-Ma
 for barebox@lists.infradead.org; Mon, 26 Apr 2021 08:15:10 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1lawOU-0004jZ-T8; Mon, 26 Apr 2021 10:15:02 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1lawOU-0002Es-J7; Mon, 26 Apr 2021 10:15:02 +0200
Date: Mon, 26 Apr 2021 10:15:02 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20210426081502.k6gmgyvqswskvoj7@pengutronix.de>
References: <20210416094943.3648-1-s.hauer@pengutronix.de>
 <20210416094943.3648-10-s.hauer@pengutronix.de>
 <fe03da71-5ff0-b09c-62bd-75b4d2ebfde5@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fe03da71-5ff0-b09c-62bd-75b4d2ebfde5@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:12:20 up 144 days, 22:18, 48 users,  load average: 0.31, 0.16,
 0.09
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210426_011508_761887_5EE13BB5 
X-CRM114-Status: GOOD (  19.21  )
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
Cc: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 09/17] common: add initial barebox deep-probe support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 21-04-19 09:16, Ahmad Fatoum wrote:
> Hi,
> 
> On 16.04.21 11:49, Sascha Hauer wrote:
> > diff --git a/drivers/base/driver.c b/drivers/base/driver.c
> > index f60533c59e..ea23884624 100644
> > --- a/drivers/base/driver.c
> > +++ b/drivers/base/driver.c
> > @@ -21,6 +21,7 @@
> >  
> >  #include <common.h>
> >  #include <command.h>
> > +#include <deep-probe.h>
> >  #include <driver.h>
> >  #include <malloc.h>
> >  #include <console.h>
> > @@ -95,7 +96,15 @@ int device_probe(struct device_d *dev)
> >  	if (ret == -EPROBE_DEFER) {
> >  		list_del(&dev->active);
> >  		list_add(&dev->active, &deferred);
> > -		dev_dbg(dev, "probe deferred\n");
> > +
> > +		/*
> > +		 * -EPROBE_DEFER should never appear on a deep-probe machine so
> > +		 * inform the user immediately.
> > +		 */
> > +		if (deep_probe_is_supported())
> > +			dev_warn(dev, "probe deferred\n");
> 
> Such devices wouldn't ever be retried with deep probe, right?

The subsystem needs to support deep probe and if it isn't adapted, right
now only a few ones are adapted, this could still be possible.

> If so, this should be a dev_err, not dev_warn, as it's not a recoverable
> issue.

If all subsystems support it you're right.

Regards,
  Marco

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

