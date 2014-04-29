Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from gloria.sntech.de ([95.129.55.99])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WfG3X-0005CK-Er
 for barebox@lists.infradead.org; Tue, 29 Apr 2014 21:59:16 +0000
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Date: Tue, 29 Apr 2014 23:59:22 +0200
Message-ID: <5555245.5Qy31DLVk9@diego>
In-Reply-To: <20140429211313.GA15720@gmail.com>
References: <1398591044-3616-1-git-send-email-b.galvani@gmail.com>
 <20140429070557.GB5858@pengutronix.de> <20140429211313.GA15720@gmail.com>
MIME-Version: 1.0
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
Subject: Re: [PATCH 00/11] ARM: add initial support for Rockchip boards
To: Beniamino Galvani <b.galvani@gmail.com>
Cc: barebox@lists.infradead.org

Hi Beniamino,


very cool that you're working on getting a better boot loader for us :-)

Am Dienstag, 29. April 2014, 23:13:14 schrieb Beniamino Galvani:
> On Tue, Apr 29, 2014 at 09:05:58AM +0200, Sascha Hauer wrote:
> > On Mon, Apr 28, 2014 at 10:54:53PM +0200, Beniamino Galvani wrote:
> > > On Mon, Apr 28, 2014 at 09:26:27AM +0200, Sascha Hauer wrote:
> > > > Hi Beniamino,
> > > > 
> > > > On Sun, Apr 27, 2014 at 11:30:33AM +0200, Beniamino Galvani wrote:
> > > > > This series adds an initial support for Rockchip SoCs and has been
> > > > > tested on a Radxa Rock board, on which I'm able to load a kernel
> > > > > from
> > > > > the network and boot it [1].
> > > > > 
> > > > > At the moment Barebox must be chainloaded from the Rockchip binary
> > > > > bootloader which performs low-level initializations and loads
> > > > > Barebox
> > > > > from the "boot" partition on the NAND.
> > > > > 
> > > > > Barebox should be written using the same procedure used for kernels:
> > > > > it must be prepared with the mkimage tool and then written with
> > > > > rkflashkit.
> > > > > 
> > > > > There is a u-boot code released by Rockchip [2] which probably
> > > > > includes all the low-level initializations but I'm not brave enough
> > > > > to
> > > > > try it.

hehe, that goes for me too :-)


> > BTW I noticed the upstream radxa rock dts file does not have a board
> > specific compatible. I added this in my patch, but this should be done
> > upstream.
> 
> CC'ing Heiko, who is the Linux Rockchip maintainer.

Until now I didn't give it much thought, but according to usage-model.txt the 
board-specific compatible is a required property. So we'll need to add it to 
the board dts in the kernel too.

So you could send a patch, or I'll prepare one in the next days.


Heiko

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
