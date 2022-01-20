Delivery-date: Thu, 20 Jan 2022 09:15:18 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nASbG-007TUf-KS
	for lore@lore.pengutronix.de; Thu, 20 Jan 2022 09:15:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nASbE-0004tP-W3
	for lore@pengutronix.de; Thu, 20 Jan 2022 09:15:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3tCK5J+m/mktTSq+weB2pfAdfcH6le3Suls9BbFNov4=; b=o3IR59kEX/44G25AUu4i8R4/Iy
	ryM4mrffM2t8HVwP8B7DScncmbJlSTmdUdv0n9Y3PqtLjKfFCpgf4ULChK8GWYSD4smdkjm+LHdHQ
	UrueGqRq68gBAaybMjTN2Lmh0T5388Evd9fE73En82uQf/N6Vrzod5MKqIhyO8jIZgDD92TUaHUdX
	iXQDO8KeYgXuA/i0RAvF/Zv36DPefBRmvtiNQbBaRaiq8f0f9GDd5MJAD0I29amadUKmDmkdV2UWJ
	swk7bOIaYOFkZL+JcOxK3fgFsyiKfbhdX55ujSFu5qIL8c8rWHH7Wt1eZb8CLcuyfg7d6Xhmp8gPz
	1wKbDXFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nASZu-009fJ9-SF; Thu, 20 Jan 2022 08:13:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nASZm-009fGw-0E
 for barebox@lists.infradead.org; Thu, 20 Jan 2022 08:13:48 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nASZi-0004i4-DR; Thu, 20 Jan 2022 09:13:42 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nASZh-0004rn-Lz; Thu, 20 Jan 2022 09:13:41 +0100
Date: Thu, 20 Jan 2022 09:13:41 +0100
To: Trent Piepho <trent.piepho@igorinstitute.com>
Cc: Jules Maselbas <jmaselbas@kalray.eu>, barebox@lists.infradead.org
Message-ID: <20220120081341.GI23490@pengutronix.de>
References: <20220117230235.13549-1-jmaselbas@kalray.eu>
 <20220117230235.13549-5-jmaselbas@kalray.eu>
 <CAMHeXxOQXTTd=u8M9fbtQeB6OAFnC+1t=Sx=CtwzocNc=HaDMg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMHeXxOQXTTd=u8M9fbtQeB6OAFnC+1t=Sx=CtwzocNc=HaDMg@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:12:05 up 40 days, 16:57, 74 users,  load average: 1.25, 0.68, 0.44
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220120_001346_082131_5009EDA2 
X-CRM114-Status: GOOD (  17.79  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 4/5] logo: Enable image format selection for the logo
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jan 17, 2022 at 03:28:17PM -0800, Trent Piepho wrote:
> On Mon, Jan 17, 2022 at 3:03 PM Jules Maselbas <jmaselbas@kalray.eu> wrote:
> >
> > +choice
> > +       prompt "Logo image encoding format to be used"
> > +       default BAREBOX_LOGO_PNG
> > +
> > +config BAREBOX_LOGO_PNG
> > +       bool "png"
> > +       select PNG
> > +       help
> > +         Encode logo with the PNG image format
> > +
> > +config BAREBOX_LOGO_BMP
> > +       bool "bmp"
> > +       select BMP
> > +       help
> > +         Encode logo with the BMP image format
> 
> You might say why one might want one format or ther other.  What's the
> point of adding bmp support?

The point could be that for a small logo a bmp image + renderer is
smaller than a better compressed image + a bigger renderer. I don't know
if that's actually the case though.

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

