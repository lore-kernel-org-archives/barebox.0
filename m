Delivery-date: Mon, 20 Oct 2025 14:28:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vAp0G-009tMA-0Q
	for lore@lore.pengutronix.de;
	Mon, 20 Oct 2025 14:28:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vAp0F-0002qb-Hb
	for lore@pengutronix.de; Mon, 20 Oct 2025 14:28:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6tShVyh7nYTN7UyXXxVH4EN5onqujqdf4+Nu1KXg5VM=; b=P0w9/fIgzj2VDqjlN5vk0wudmq
	UsumoorPKv0wNiOeoiHD7lRndJdhzTEPONU8781RMc30nISB8g1Hr9KIAu2HUHINdBy0Xq/LcWUi4
	fb2tnXkwXruPZF7pNzNnSyV8RIiqGZk0i+vA0KqkxYC3vuwe0RLs9UaNvjqkYDT+D5GCNGiiTYRFF
	/wVFCohWFFdjztDpbQVrVLA/muvV0RHb45PkrVpmd79bHX9W7nPU9QvP6n9ty+PEmcHHeYP18lepR
	8uvBvkaQQj1pzAGi+HXcMcckd/OS3TKfmNa4o7uWp5RUw3TmOPXhWneSR6g/6XISUSrLaKOsddnCq
	1XWDmVdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAozf-0000000DPgq-3hB0;
	Mon, 20 Oct 2025 12:28:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAozc-0000000DPe1-00hi
	for barebox@lists.infradead.org;
	Mon, 20 Oct 2025 12:28:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1vAozY-0002Zm-8X
	for barebox@lists.infradead.org; Mon, 20 Oct 2025 14:28:00 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vAla0-004W57-2n;
	Mon, 20 Oct 2025 10:49:24 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vAla0-007Gd2-2S;
	Mon, 20 Oct 2025 10:49:24 +0200
Date: Mon, 20 Oct 2025 10:49:24 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20251020084924.6ytubm6byqw22iw3@pengutronix.de>
References: <20251017120406.1348897-1-m.felsch@pengutronix.de>
 <20251017120406.1348897-3-m.felsch@pengutronix.de>
 <aPX2dGXUM9BFm4qe@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aPX2dGXUM9BFm4qe@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_052804_045286_93B2F6D5 
X-CRM114-Status: GOOD (  31.02  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/4] lib: hexdump: make use of pr_debug
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25-10-20, Sascha Hauer wrote:
> On Fri, Oct 17, 2025 at 02:03:35PM +0200, Marco Felsch wrote:
> > The hexdump library was ported from Linux which supports different
> > printk() level. Because the barebox print* facility is different
> > compared to the one from Linux the barebox printk() doesn't support
> > levels. Therefore the level is always set to an empty string.
> > 
> > Furthermore all barebox printk() calls aren't recorded by the internal
> > barebox_logbuf because they are mostly used for command prints. Linux on
> > the other hand record each printk() print.
> > 
> > Not recording the output can be an issue on systems which don't have a
> > hw-console but a USB-ACM console, because the hexdump call may already
> > occurred before the console was ready.
> > 
> > Make use of pr_debug() instead to record the output within the
> > barebox_logbuf to be available later on via dmesg. Using pr_debug()
> > should be fine since it is mostly used for debugging/development
> > purpose.
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >  lib/hexdump.c | 9 +++------
> >  1 file changed, 3 insertions(+), 6 deletions(-)
> > 
> > diff --git a/lib/hexdump.c b/lib/hexdump.c
> > index 940c4eec64e9..ab5e3cf727ec 100644
> > --- a/lib/hexdump.c
> > +++ b/lib/hexdump.c
> > @@ -284,16 +284,13 @@ void dev_print_hex_dump(struct device *dev, const char *level,
> >  
> >  		switch (prefix_type) {
> >  		case DUMP_PREFIX_ADDRESS:
> > -			printk("%s%s%s%p: %s\n", level, name, prefix_str,
> > -			       ptr + i, linebuf);
> > +			pr_debug("%s%s%p: %s\n", name, prefix_str, ptr + i, linebuf);
> 
> pr_debug is only compiled in when DEBUG is defined. This means you have
> to add a "#define DEBUG" in lib/hexdump.c to make the messages visible
> printed in another file, or alternatively have to define DEBUG globally.

Yep, this is true and I forgot about that drawback :/

> I think we should rather replace the const char *level argument with a
> unsigned int level argument expecting one of MSG_* and use pr_print() here.

What about keeping the Linux API but converting it back to int?

Regards,
  Marco


> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 


