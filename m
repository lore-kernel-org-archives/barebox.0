Delivery-date: Tue, 24 May 2022 06:49:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ntMUG-007BWq-0s
	for lore@lore.pengutronix.de; Tue, 24 May 2022 06:49:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ntMUE-00055J-MW
	for lore@pengutronix.de; Tue, 24 May 2022 06:49:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KCC0jBZVPWY/VnzK//kE38ytQSfwql9zLcRE5divnXQ=; b=KyjhSQe8Y5RoM9fDjd61/3sKHW
	k9sV03sa70aF4gZSDaS7zncHBDAEJPqERi2nnZDBlpx5uT9I79/GNew1UbrVseos38oY1Gap6aTYY
	dCzwM/YRAP/ByLqTh8yes6FYt5k/BQoKka8QQa3fDG4hWmcKnAWGvHTriY+dA452d98r/ggsLYd1i
	0e6RJsAr+r+8K3SKS0P6R+5+Eqk7VNL4DyeJSQDPpzOo4aTPuLMvVw761B/dHkxQFoi6bNCGusoG7
	zmSYUPc42qxWZZHC6aYhUkV/dJyLFcUb2Sp3p9sUoL4dF7+imHiXtFH2tRsYQVKYJsoqJlNeiEw+4
	KMsPEU9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ntMSD-006nhD-Gv; Tue, 24 May 2022 04:47:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ntMS7-006ngr-Lz
 for barebox@lists.infradead.org; Tue, 24 May 2022 04:47:29 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ntMS3-00051I-Bm; Tue, 24 May 2022 06:47:23 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ntMS3-0007nP-25; Tue, 24 May 2022 06:47:23 +0200
Date: Tue, 24 May 2022 06:47:23 +0200
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <20220524044723.GQ25578@pengutronix.de>
References: <20220523080009.2jya2x4nb7d5xpty@pengutronix.de>
 <7964f3ba-1c1c-af00-bbcb-12eb297716dc@pengutronix.de>
 <20220523082221.4qusbcylocpldf5u@pengutronix.de>
 <c9ecf954-af9d-cdc6-083a-7df248ddfcae@pengutronix.de>
 <20220523101106.l7njntapy7wlusrj@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220523101106.l7njntapy7wlusrj@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 06:47:02 up 54 days, 17:16, 49 users,  load average: 0.11, 0.11, 0.13
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220523_214727_753748_6530711C 
X-CRM114-Status: GOOD (  29.50  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] usb: usb251xb: remove duplicate status line on probe
 success
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, May 23, 2022 at 12:11:06PM +0200, Marco Felsch wrote:
> On 22-05-23, Ahmad Fatoum wrote:
> > On 23.05.22 10:22, Marco Felsch wrote:
> > > On 22-05-23, Ahmad Fatoum wrote:
> > >> Hello Marco,
> > >>
> > >> On 23.05.22 10:00, Marco Felsch wrote:
> > >>> Hi Ahmad,
> > >>>
> > >>> On 22-05-23, Ahmad Fatoum wrote:
> > >>>> A successful probe results in two lines logged:
> > >>>>
> > >>>>   usb251xb usb2514b0: Hub configuration was successful.
> > >>>
> > >>> The configuration (and this line) can be skipped if you specify
> > >>> "skip-config".
> > >>>
> > >>>>   usb251xb usb2514b0: Hub probed successfully
> > >>>>
> > >>>> There is no case where the first line is printed, but not the other and
> > >>>> they say about the same thing anyway, so drop the latter.
> > >>>
> > >>> The config step can fail. What about lower down the log level for the
> > >>> config step to dev_dbg() instead?
> > >>
> > >> If the config step fails we will get an error message from driver core.
> > >> A driver with skip-config doesn't do anything useful that warrants
> > >> a probed successfully message, so I think it's safe to drop it.
> > > 
> > > Hm.. with skip-config the driver still brings the hub out of reset and
> > > into a working state. Anyway just wanted to pointed out, that there are
> > > use-cases where the message is not printed twice.
> > 
> > Would you prefer I consolidate the logs messages into a single line instead?
> 
> Still think that the easiest would be to lower the hub configuration
> print to dbg. 

+1

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

