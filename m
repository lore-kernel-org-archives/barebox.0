Delivery-date: Mon, 07 Feb 2022 09:23:39 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGzJD-0084n6-9c
	for lore@lore.pengutronix.de; Mon, 07 Feb 2022 09:23:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGzJB-0006yJ-Vv
	for lore@pengutronix.de; Mon, 07 Feb 2022 09:23:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mzgk1BhfuF32EXj+QlZspesIrhsWw/7oyTSIx3ABoeU=; b=JEKQrnr7ae4MfS
	U4nas3/Rt2DVXM4yViopdf7OVy9dmICpvsygFOiShId1RFoUPI/dQ49aFZhYe4vaAQiFxvzqu3zdq
	JY8pvDlYKKKXaZdEDJNlguq/Ib/OW3bTMRXpGAIyxhOFtvcfbSGl+EREGiZpAeRhEDN8b8dYldhpi
	PUDSUdKU/3LDNSvLmLMKQ70hpiBCoWEmISwvL74rbJSeH26BkmcSU4X3X3Ia3sLna9PfyNU8u33Ef
	lPK33XAYtp5zcU68en3tvoT2TzIVBOJ5ItmPyA3H/INVH4fO5aal57P2dNSzj2E/zVRSqdYCbog70
	05p4RTcScKtyT9Qcoivw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGzI1-009Kj4-Iq; Mon, 07 Feb 2022 08:22:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGzHx-009Ki9-6c
 for barebox@lists.infradead.org; Mon, 07 Feb 2022 08:22:22 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nGzHv-0006mv-VI; Mon, 07 Feb 2022 09:22:19 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nGzHv-0006Rz-MW; Mon, 07 Feb 2022 09:22:19 +0100
Date: Mon, 7 Feb 2022 09:22:19 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220207082219.GC18637@pengutronix.de>
References: <20220207075621.1014381-1-a.fatoum@pengutronix.de>
 <20220207075621.1014381-4-a.fatoum@pengutronix.de>
 <20220207081730.GB18637@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220207081730.GB18637@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:21:46 up 58 days, 17:07, 79 users,  load average: 0.17, 0.21, 0.24
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220207_002221_262439_84B72A63 
X-CRM114-Status: GOOD (  25.19  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 4/5] of: silence of_diff output for negative indents
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Feb 07, 2022 at 09:17:30AM +0100, Sascha Hauer wrote:
> On Mon, Feb 07, 2022 at 08:56:20AM +0100, Ahmad Fatoum wrote:
> > Negative indents just led to strange behavior so far. Repurpose them to
> > mean that the caller is not interested in console output. This makes
> > them useful for negative tests (Sanity check that two different nodes
> > are indeed different).
> > 
> > Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> > ---
> >  drivers/of/base.c | 15 +++++++++++++--
> >  1 file changed, 13 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/of/base.c b/drivers/of/base.c
> > index 99be24254203..ffa79785f80e 100644
> > --- a/drivers/of/base.c
> > +++ b/drivers/of/base.c
> > @@ -2087,6 +2087,8 @@ int of_diff(struct device_node *a, struct device_node *b, int indent)
> 
> Can we add a
> 
> 	bool do_print = indent >= 0;
> 
> variable and use it for the tests below? I think this makes the code a
> bit clearer.

Changed while applying, so when you agree with this we are good to go.

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

