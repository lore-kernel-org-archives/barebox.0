Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo2.mail-out.ovh.net ([178.32.228.2])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZLwq-0004xZ-2d
 for barebox@lists.infradead.org; Mon, 06 May 2013 13:59:26 +0000
Received: from mail411.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 65BA2DC0C8C
 for <barebox@lists.infradead.org>; Mon,  6 May 2013 15:59:00 +0200 (CEST)
Date: Mon, 6 May 2013 15:54:35 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130506135435.GL13393@game.jcrosoft.org>
References: <1367599871-28479-1-git-send-email-thomas.petazzoni@free-electrons.com>
 <1367599871-28479-3-git-send-email-thomas.petazzoni@free-electrons.com>
 <20130504195125.GJ13393@game.jcrosoft.org>
 <20130504203213.GS31290@titan.lakedaemon.net>
 <20130505111927.GK13393@game.jcrosoft.org>
 <20130506155352.15f23d3a@skate>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130506155352.15f23d3a@skate>
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
To: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Lior Amsalem <alior@marvell.com>, barebox@lists.infradead.org, Jason Cooper <jason@lakedaemon.net>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>, Willy Tarreau <w@1wt.eu>

On 15:53 Mon 06 May     , Thomas Petazzoni wrote:
> Dear Jean-Christophe PLAGNIOL-VILLARD,
> 
> On Sun, 5 May 2013 13:19:27 +0200, Jean-Christophe PLAGNIOL-VILLARD
> wrote:
> 
> > > > > This patch adds a tool that allows to extract the components and
> > > > > configuration of existing images, and to create new images.
> > > > 
> > > > I don't like this
> > > 
> > > Why?
> > to geneate a simple header do it in C not with a tools
> 
> Then it seems like you haven't read the code at all. The 'simple
> header' has the following properties:
> 
>  * Is of variable length: it contains a main header, and an optional
>    arbitrary number of binary headers, security headers and register
>    headers.
> 
>  * A 8-bit checksum that covers the entire size of headers. This cannot
>    be easily computed directly by compiling C code and using linker
>    scrips.
> 
>  * A 32-bit checksum that covers the binary payload.
> 
>  * The contents of the binary header are extracted from existing boot
>    images for Armada 370/XP platforms because this binary header
>    contains some DDR3 training code that I haven't worked on for now.
>    And since this binary header is cleanly isolated from the bootloader
>    itself, it is easier to re-use such binary code for now.
> 
> The tool also allows to extract binary images, which is needed to
> extract the binary header mentioned above, and re-use when building a
> bootable image that includes Barebox.
> 
> > read the imx code we do it in C and place it at the begenning of the binary so
> > no need such tools and we can use linker scirpt and CONFIG_xx
> > 
> > Stop to think u-boot here
> 
> Could you please adopt a nicer language? You are very aggressive... and
> at that the same time completely wrong. Your comments make it entirely
> clear that you haven't even read the comments at the top of file.
I did but still think we can handle it in C

and need to handle by barebox itself when flashing
> 
> Thomas
> -- 
> Thomas Petazzoni, Free Electrons
> Kernel, drivers, real-time and embedded Linux
> development, consulting, training and support.
> http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
