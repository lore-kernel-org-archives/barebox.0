Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo5.mail-out.ovh.net ([87.98.174.144]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZRKH-0002oT-Iy
 for barebox@lists.infradead.org; Mon, 06 May 2013 19:43:58 +0000
Received: from mail414.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 382D7FF9823
 for <barebox@lists.infradead.org>; Mon,  6 May 2013 21:43:36 +0200 (CEST)
Date: Mon, 6 May 2013 21:39:13 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130506193913.GB30509@game.jcrosoft.org>
References: <1367599871-28479-1-git-send-email-thomas.petazzoni@free-electrons.com>
 <1367599871-28479-3-git-send-email-thomas.petazzoni@free-electrons.com>
 <20130504195125.GJ13393@game.jcrosoft.org>
 <20130504203213.GS31290@titan.lakedaemon.net>
 <20130505111927.GK13393@game.jcrosoft.org>
 <20130506155352.15f23d3a@skate>
 <20130506135435.GL13393@game.jcrosoft.org>
 <20130506160614.054b5e1a@skate>
 <20130506140439.GM13393@game.jcrosoft.org>
 <20130506142115.GU31290@titan.lakedaemon.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130506142115.GU31290@titan.lakedaemon.net>
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/7] scripts: new kwbimage manipulation tool for
 Marvell SoC boot images
To: Jason Cooper <jason@lakedaemon.net>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, Lior Amsalem <alior@marvell.com>, Willy Tarreau <w@1wt.eu>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>, barebox@lists.infradead.org

On 10:21 Mon 06 May     , Jason Cooper wrote:
> On Mon, May 06, 2013 at 04:04:39PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 16:06 Mon 06 May     , Thomas Petazzoni wrote:
> > > Dear Jean-Christophe PLAGNIOL-VILLARD,
> > > 
> > > On Mon, 6 May 2013 15:54:35 +0200, Jean-Christophe PLAGNIOL-VILLARD
> > > wrote:
> > > 
> > > > > Could you please adopt a nicer language? You are very aggressive... and
> > > > > at that the same time completely wrong. Your comments make it entirely
> > > > > clear that you haven't even read the comments at the top of file.
> > > > I did but still think we can handle it in C
> > > > 
> > > > and need to handle by barebox itself when flashing
> > > 
> > > The image is pushed to the target through X-modem, directly talking to
> > > the ROM code of the SoC. Do you want the kwboot tool to prepare the
> > > image? It seems to me like it makes a lot more sense to have a tool to
> > > prepare the image.
> > 
> > yes a you want to re-flash barebox itself and you will do for ddr and I do not
> > want to care about all of this blob stuff twht the board already known
> > 
> > > 
> > > Remember also that this tool is needed to *extract* existing images.
> > > And you haven't explained how you intend to do this without a proper
> > > userspace tool such as kwbimage.
> > 
> > why extract?
> 
> Because you *received* the blob over xmodem from the SoC.  It came from
> the factory that way.  You need to take it apart to get the DDR info and
> the stock bootloader blob.  Think of this as a tool to assist board
> hackers when the mfgr doesn't have the time/experience to help the open
> source community.
This will only work if you known the DDR which is a huge suposition.

When porting barebox on new hardware this will not help at all

so not this tool can not be the default tool generate fashable images
> 
> Since a separate tool is needed to do this, it makes sense to have the
> same code perform the packing as well.  As opposed to the CPP.
> 
> hth,
> 
> Jason.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
