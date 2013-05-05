Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo1.mail-out.ovh.net ([188.165.48.29]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UYx37-0007jG-Gx
 for barebox@lists.infradead.org; Sun, 05 May 2013 11:24:14 +0000
Received: from mail184.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 46FE7FF91B3
 for <barebox@lists.infradead.org>; Sun,  5 May 2013 13:23:51 +0200 (CEST)
Date: Sun, 5 May 2013 13:19:27 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130505111927.GK13393@game.jcrosoft.org>
References: <1367599871-28479-1-git-send-email-thomas.petazzoni@free-electrons.com>
 <1367599871-28479-3-git-send-email-thomas.petazzoni@free-electrons.com>
 <20130504195125.GJ13393@game.jcrosoft.org>
 <20130504203213.GS31290@titan.lakedaemon.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130504203213.GS31290@titan.lakedaemon.net>
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
Cc: Lior Amsalem <alior@marvell.com>, Willy Tarreau <w@1wt.eu>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>, barebox@lists.infradead.org

On 16:32 Sat 04 May     , Jason Cooper wrote:
> On Sat, May 04, 2013 at 09:51:25PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 18:51 Fri 03 May     , Thomas Petazzoni wrote:
> > > The Marvell EBU SoCs (Kirkwood, Armada 370, Armada XP) have a BootROM
> > > that understand a specific image format, composed of a main header,
> > > several extension headers and a paylod. This image can be booted from
> > > NAND, SPI, SATA, UART, NOR, etc.
> > > 
> > > This patch adds a tool that allows to extract the components and
> > > configuration of existing images, and to create new images.
> > 
> > I don't like this
> 
> Why?
to geneate a simple header do it in C not with a tools
> 
> > please as on imx in barebox directly
> 
> what?  Could you please explain?

read the imx code we do it in C and place it at the begenning of the binary so
no need such tools and we can use linker scirpt and CONFIG_xx

Stop to think u-boot here

> 
> thx,
> 
> Jason.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
