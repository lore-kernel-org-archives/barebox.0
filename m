Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1wt.eu ([62.212.114.60])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UYxJj-0007qU-7o
 for barebox@lists.infradead.org; Sun, 05 May 2013 11:41:24 +0000
Date: Sun, 5 May 2013 13:40:55 +0200
From: Willy Tarreau <w@1wt.eu>
Message-ID: <20130505114055.GH17662@1wt.eu>
References: <1367599871-28479-1-git-send-email-thomas.petazzoni@free-electrons.com>
 <1367599871-28479-3-git-send-email-thomas.petazzoni@free-electrons.com>
 <20130504195125.GJ13393@game.jcrosoft.org>
 <20130504203213.GS31290@titan.lakedaemon.net>
 <20130505111927.GK13393@game.jcrosoft.org>
Mime-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130505111927.GK13393@game.jcrosoft.org>
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
Subject: Re: [PATCH 2/7] scripts: new kwbimage manipulation tool for Marvell
 SoC boot images
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: Lior Amsalem <alior@marvell.com>, Jason Cooper <jason@lakedaemon.net>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>, barebox@lists.infradead.org

On Sun, May 05, 2013 at 01:19:27PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 16:32 Sat 04 May     , Jason Cooper wrote:
> > On Sat, May 04, 2013 at 09:51:25PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > On 18:51 Fri 03 May     , Thomas Petazzoni wrote:
> > > > The Marvell EBU SoCs (Kirkwood, Armada 370, Armada XP) have a BootROM
> > > > that understand a specific image format, composed of a main header,
> > > > several extension headers and a paylod. This image can be booted from
> > > > NAND, SPI, SATA, UART, NOR, etc.
> > > > 
> > > > This patch adds a tool that allows to extract the components and
> > > > configuration of existing images, and to create new images.
> > > 
> > > I don't like this
> > 
> > Why?
> to geneate a simple header do it in C not with a tools
> > 
> > > please as on imx in barebox directly
> > 
> > what?  Could you please explain?
> 
> read the imx code we do it in C and place it at the begenning of the binary so
> no need such tools and we can use linker scirpt and CONFIG_xx
> 
> Stop to think u-boot here

I don't see why you're talking about u-boot here, the tool is needed to
extract a binary payload from existing images in order to reuse it with
new images. Now whether you'd prefer have some C code contain a dump of
this 48kB payload or have a tool to build the final image will not change
the fact that such an extraction tool is needed anyway.

Willy


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
