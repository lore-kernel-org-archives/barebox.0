Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UaCOr-0003B5-Qw
 for barebox@lists.infradead.org; Wed, 08 May 2013 21:59:50 +0000
Date: Wed, 8 May 2013 23:59:26 +0200
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Message-ID: <20130508235926.39101806@skate>
In-Reply-To: <518AC964.50304@free-electrons.com>
References: <1368047422-3397-1-git-send-email-thomas.petazzoni@free-electrons.com>
 <518AC964.50304@free-electrons.com>
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
Subject: Re: [PATCH v2 0/7] Basic support for Armada 370/XP SOCs
To: Gregory CLEMENT <gregory.clement@free-electrons.com>
Cc: Lior Amsalem <alior@marvell.com>, barebox@lists.infradead.org, Willy Tarreau <w@1wt.eu>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

Dear Gregory CLEMENT,

On Wed, 08 May 2013 23:53:40 +0200, Gregory CLEMENT wrote:

> >  - Add an integration of kwbimage to the Barebox build process. Now,
> >    when an ARCH_MVEBU platform is selected, a barebox.kwb file is
> >    automatically generated using the board kwbimage.cfg, and a
> >    barebox.kwbuart is generated using the board kwbimage.cfg + an
> >    override of the boot media to be UART.
> 
> It is a very nice improvement however, you should maybe mention somwhere
> that you expect to find a file named binary.0 at the root of the barebox
> sources. But it is not very important.

Indeed, but which "somewhere" do you suggest?

> However you didn't manage the out of tree building when KBUILD_OUTPUT is
> set. This is more annoying but it should be easily fixed.

Aah, I haven't thought of out-of-tree build. I'll test that and I'll
have a look.

> It didn't work for me when I tested the on the OpenBlocks AX3. The boot
> media didn't seem to have been overridden ie it still try to boot on the
> NOR. And if I modify the file arch/arm/boards/plathome-openblocks-ax3//kwbimage.cfg
> and replace spi by uart, then it works.

Are you sure you used barebox.kwbuart and not barebox.kwb?

Thanks for your testing!

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
