Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZS60-0003eD-D8
 for barebox@lists.infradead.org; Mon, 06 May 2013 20:33:17 +0000
Date: Mon, 6 May 2013 22:32:52 +0200
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Message-ID: <20130506223252.63ca0ae8@skate>
In-Reply-To: <20130506192826.GP20989@pengutronix.de>
References: <1367599871-28479-1-git-send-email-thomas.petazzoni@free-electrons.com>
 <20130506192826.GP20989@pengutronix.de>
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
Subject: Re: [PATCH 0/7] Basic support for Marvell Armada 370/XP SoC
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Lior Amsalem <alior@marvell.com>, barebox@lists.infradead.org, Willy Tarreau <w@1wt.eu>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

Dear Sascha Hauer,

On Mon, 6 May 2013 21:28:26 +0200, Sascha Hauer wrote:

> So now I have the DDR3 training blob and the payload. I would then
> replace the payload with barebox and call kwbimage again to generate
> a new image, right?

Exact, that's what I'm doing for the moment: retrieve a u-boot.bin that
is provided by the board vendor, or dump it somehow from the NAND or
SPI flash of the board. In fact, this u-boot.bin is not just U-Boot,
but it contains the header + the DDR3 training code. Once I have this
image, I use the 'kwbimage -x' option to separate the configuration,
the DDR3 binary blob and the payload. I just trash the payload, and
using the configuration, the DDR3 binary blob, barebox.bin and
'kwbimage -c', I create a new bootable image.

I am interested in writing documentation that explains how to do this,
because this is not trivial, and I want Barebox users to be able to do
this on their own. But I haven't really figured out where is the good
place to document that: the Doxygen documentation has some
board-specific documentation, but this problem is mostly SoC-family
related. Just let me know where I can insert a documentation blurb
about this, and I'll do it.

> Just to understand what the problem here is: Am I right that we do not
> have the source code for the DDR3 training code and that the code is not
> GPL so that we can't distribute it with barebox?

No, I don't have the source code for the DDR3 training code. Or more
precisely, I have access to a very small part of it, but the largest
part of it is just a binary .a library for which I don't have access to
the source code, and even if I had, I doubt it would be licensed under
the GPL.

So, for now, this code is not available, and in any case not under a
license that allows it to be distributed with Barebox. Long term, I'd
like this to be possible, but it will require quite some work.

In the mean time, I think the reason Marvell invented this "binary
header" thing is precisely to avoid linking the DDR3 training code with
the bootloader, so that the DDR3 training code can remain proprietary,
while allowing users to use an GPL-licensed bootloader. I believe that
what kwbimage does is just a mere aggregation of components, and not
linking, and distributing the mere aggregation of a proprietary binary
and GPL-licensed binary is allowed by the GPL license. Of course, IANAL.

> Independently of this I repeat that adding a tool for the job of
> generating images is the right way to go, at least when the images are
> of a certain complexity which is the case here.

Good to hear this confirmation, thanks.

Best regards,

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
