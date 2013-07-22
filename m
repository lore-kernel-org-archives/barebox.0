Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V1AOs-00080K-Jp
 for barebox@lists.infradead.org; Mon, 22 Jul 2013 07:19:19 +0000
Date: Mon, 22 Jul 2013 09:18:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130722071855.GC9434@pengutronix.de>
References: <20130715100958.GG19197@ns203013.ovh.net>
 <20130716062532.GV14452@pengutronix.de>
 <20130716193936.49949f12c31c8145965c1c74@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130716193936.49949f12c31c8145965c1c74@gmail.com>
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
Subject: Re: [PATCH 0/3 v2] pbl: add lz4 compression support
To: "antonynpavlov@gmail.com" <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Jul 16, 2013 at 07:39:36PM +0400, antonynpavlov@gmail.com wrote:
> On Tue, 16 Jul 2013 08:25:32 +0200
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> > On Mon, Jul 15, 2013 at 12:09:58PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > Hi,
> > > 
> > > 	v2:
> > > 	keep lzo as default
> > > 
> > > 	The following patch serie add the lz4 support to the pbl
> > > 
> > > Jean-Christophe PLAGNIOL-VILLARD (1):
> > >       pbl: add lz4 support
> > > 
> > > Kyungsik Lee (2):
> > >       decompressor: Add LZ4 decompressor module
> > >       lib: Add support for LZ4-compressed kernel
> > 
> > Applied, thanks
> > 
> > Sascha
> 
> LZ4 decompressor work fine on MIPS but I have got a warning:
> 
> ...
> rm arch/mips/dts/qemu-malta.dtb.S arch/mips/dts/qemu-malta.dtb
>    LD      pbl/built-in.o
>    PBLCC   pbl/pbl-decomp.o
>  In file included from pbl/decomp.c:14:
>  /home/antony/barebox.git.rebased.isp/arch/mips/include/../../../lib/dec ompress_unlz4.c:185: warning: no previous prototype for 'decompress_unl z4'

I fixed this. It should work without warning now.

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
