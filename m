Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZMAs-0005D1-9c
 for barebox@lists.infradead.org; Mon, 06 May 2013 14:13:54 +0000
Date: Mon, 6 May 2013 16:13:29 +0200
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Message-ID: <20130506161329.74d58c37@skate>
In-Reply-To: <20130506140439.GM13393@game.jcrosoft.org>
References: <1367599871-28479-1-git-send-email-thomas.petazzoni@free-electrons.com>
 <1367599871-28479-3-git-send-email-thomas.petazzoni@free-electrons.com>
 <20130504195125.GJ13393@game.jcrosoft.org>
 <20130504203213.GS31290@titan.lakedaemon.net>
 <20130505111927.GK13393@game.jcrosoft.org>
 <20130506155352.15f23d3a@skate>
 <20130506135435.GL13393@game.jcrosoft.org>
 <20130506160614.054b5e1a@skate>
 <20130506140439.GM13393@game.jcrosoft.org>
Mime-Version: 1.0
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
Cc: Lior Amsalem <alior@marvell.com>, barebox@lists.infradead.org, Jason Cooper <jason@lakedaemon.net>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>, Willy Tarreau <w@1wt.eu>

Dear Jean-Christophe PLAGNIOL-VILLARD,

On Mon, 6 May 2013 16:04:39 +0200, Jean-Christophe PLAGNIOL-VILLARD
wrote:

> > > > Could you please adopt a nicer language? You are very aggressive... and
> > > > at that the same time completely wrong. Your comments make it entirely
> > > > clear that you haven't even read the comments at the top of file.
> > > I did but still think we can handle it in C
> > > 
> > > and need to handle by barebox itself when flashing
> > 
> > The image is pushed to the target through X-modem, directly talking to
> > the ROM code of the SoC. Do you want the kwboot tool to prepare the
> > image? It seems to me like it makes a lot more sense to have a tool to
> > prepare the image.
> 
> yes a you want to re-flash barebox itself and you will do for ddr and I do not
> want to care about all of this blob stuff twht the board already known

Sorry, but I don't understand what you're trying to explain here, your
english sentence doesn't make sense.

The binary blob is needed for now. I've intentionally written a tool
that allows people to extract this binary blob from their existing
bootloader image so we don't have to store this binary blob anywhere in
the Barebox tree. As I explained, getting a working DDR3 training code
will be something that can be done later on, but it's not yet my
priority.

> > Remember also that this tool is needed to *extract* existing images.
> > And you haven't explained how you intend to do this without a proper
> > userspace tool such as kwbimage.
> 
> why extract?
> 
> you generated at runtime

 1) Because it's useful to extract the various parameters of an
 existing bootloader image, to see how it was built by the vendor to
 use the same parameters. For example, for Kirkwood SoCs, the header
 contains the values to put in the DRAM controller to configure the
 right timings, and it is useful to extract those values into a
 configuration file, later used to create a shiny new image that
 contains Barebox.

 2) Because it's useful to extract the binary blob needed to configure
 the DDR3 timing dynamically (for Armada 370/XP).

> > Quoting Sascha, an e-mail for this thread:
> > 
> > """
> > Anyway, what we do on i.MX doesn't really scale anymore since the more
> > complicated features of the image format can't be used with C
> > structures. I'm working on replacing this with a imx-image tool.
> > You seem to use checksums in your images. These can't be generated
> > in C or CPP anyway.
> > """

Have you read Sascha comment?

Thanks,

Thomas
-- 
Thomas Petazzoni, Free Electrons
Kernel, drivers, real-time and embedded Linux
development, consulting, training and support.
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
