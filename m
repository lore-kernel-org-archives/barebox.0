Delivery-date: Mon, 11 Oct 2021 16:54:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mZwh3-0007Yb-Jt
	for lore@lore.pengutronix.de; Mon, 11 Oct 2021 16:54:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mZwh2-0002UC-JL
	for lore@pengutronix.de; Mon, 11 Oct 2021 16:54:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q0zWjnKZjif4s7rrVJpwQhVsVL/1l7qb85igvfooRfU=; b=ZVUOnYip5dSwQ6
	DiCY+FRrJKL8jt42DOTkgOHO6Y2AnzPLkWjX9TWet76M5F9S9jPeCz7FKSBmoFxMA4vYZ8eu2h8LY
	MpvdxCL5+67Tm4l/W38hwWMvMeMxNMlYFMpqUBaSu/6OT6hf7eV5QCrwS5+As+HdV09NJxIP5BOXF
	K9CZqTtofTzWIRcOPCw3v5De6OQB9OmWOa2NnCUFUQp45axBoScy+ORPpQFCbhDUaWMSioiLu3gr3
	PJsnLVnR3TvWgXtpbafbROhyHzJjHRzoOvg07QgUhlWhAwK+FYnjcUliyB9JyWhArp5JXX0RtYl2i
	utUxnpr/hZZf2OF1K0Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mZwff-009pQG-0k; Mon, 11 Oct 2021 14:52:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mZwfa-009pOx-Eh
 for barebox@lists.infradead.org; Mon, 11 Oct 2021 14:52:51 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mZwfZ-0002O2-5F; Mon, 11 Oct 2021 16:52:49 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mZwfY-0007rh-SH; Mon, 11 Oct 2021 16:52:48 +0200
Date: Mon, 11 Oct 2021 16:52:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20211011145248.GE28453@pengutronix.de>
References: <20211006142254.1751864-1-s.hauer@pengutronix.de>
 <20211006142254.1751864-3-s.hauer@pengutronix.de>
 <CAK7LNATVZXcPcHMbQ2T2tCa9+id2AY_1RgMe=-XkH=_aoXGc+w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK7LNATVZXcPcHMbQ2T2tCa9+id2AY_1RgMe=-XkH=_aoXGc+w@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 16:49:28 up 235 days, 18:13, 143 users,  load average: 0.13, 0.10,
 0.17
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211011_075250_514488_DB3F10B6 
X-CRM114-Status: GOOD (  26.09  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/5] scripts: Add common library functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Oct 11, 2021 at 11:37:07PM +0900, Masahiro Yamada wrote:
> On Wed, Oct 6, 2021 at 11:26 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> >
> > Several functions are duplicated in different host tools. This patch
> > starts collecting them in a single C file. We start with read_file()
> > and read_file_2(), others follow in separate commits.
> >
> > It would be great to compile these functions in a separate library, but
> > I don't know how this can be archieved in Kbuild. Instead, the C file
> > is included where needed. Not nice, not beautiful, but at least enough
> > to get something going.
> 
> 
> You can try this.
> 
> 
> hostprogs-always-$(CONFIG_IMD)   += bareboximd
> bareboximd-objs                                 := bareboximd.o common.o
> 
> 
> hostprogs-always-$(CONFIG_OMAP3_USB_LOADER) += omap3-usb-loader
> omap3-usb-loader-objs                       := omap3-usb-loader.o common.o

I did and it works well as long as common.o is used only in a single
directory. Unfortunately some tools are in subdirectories, like for
example scripts/imx/imx-usb-loader.c. Of course these could be moved up
one level, but I didn't want to go that path.
Do you see any possibility to archieve the same with files in different
directories?

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

