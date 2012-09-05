Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo3.mail-out.ovh.net ([188.165.41.191]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T9M3g-0003wr-Pc
 for barebox@lists.infradead.org; Wed, 05 Sep 2012 20:18:45 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 394E0FF8BF3
 for <barebox@lists.infradead.org>; Wed,  5 Sep 2012 22:26:17 +0200 (CEST)
Date: Wed, 5 Sep 2012 22:19:00 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120905201900.GD4761@game.jcrosoft.org>
References: <1346860337-777-1-git-send-email-jlu@pengutronix.de>
 <1346860337-777-3-git-send-email-jlu@pengutronix.de>
 <20120905180516.GC4761@game.jcrosoft.org>
 <20120905191035.GA1440@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120905191035.GA1440@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/8] Makefile: add target to produce a SPL compatible
 uimage
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On 21:10 Wed 05 Sep     , Jan Luebbe wrote:
> On Wed, Sep 05, 2012 at 08:05:16PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 17:52 Wed 05 Sep     , Jan Luebbe wrote:
> > > +barebox.img: barebox.bin FORCE
> > > +	$(call if_changed,barebox_mkimage)
> > this will not work whit the PBL
> > 
> > please fix it
> 
> PBL is the preloader for the compressed barebox image?
> 
> While using that in an uImage doesn't seem very useful, how
> would I fix it?

so why do we do it to for the kernel?

As I already said check $(KBUILD_IMAGE)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
