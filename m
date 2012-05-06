Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SR5xG-000430-Ri
 for barebox@lists.infradead.org; Sun, 06 May 2012 18:13:11 +0000
Date: Sun, 6 May 2012 20:13:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120506181308.GZ4141@pengutronix.de>
References: <m3wr4qmhwq.fsf@intrepid.localdomain>
 <20120506174334.GW4141@pengutronix.de>
 <m37gwpyyqx.fsf@intrepid.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <m37gwpyyqx.fsf@intrepid.localdomain>
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
Subject: Re: RFC: Fix big endian MMIO primitives.
To: Krzysztof Halasa <khc@pm.waw.pl>
Cc: barebox@lists.infradead.org

On Sun, May 06, 2012 at 08:01:58PM +0200, Krzysztof Halasa wrote:
> Sascha Hauer <s.hauer@pengutronix.de> writes:
> 
> > Maybe we should rather use the __raw_* variants in the cfi driver aswell
> > which is the only user of the functions below.
> 
> We can do that for the sake of compatibility with Linux.
> 
> > For some reason I
> > believed that the __raw_* variants also do little endian accesses which
> > is wrong.
> > I don't like the naming of the __raw_* variants very much as the
> > underscores and 'raw' suggests that these are internal functions which
> > one should rather not use, but in fact these are the correct functions
> > in most SoC (non PCI) drivers. Anyway, since Linux has this functions we
> > should use them aswell, everything else probably leads to more
> > confusion.
> 
> I don't know.
> 
> I would rename:
> __raw_* -> cpu_*() as they are just plain and simple accessors with
> native endianness.
> 
> readl() and friends -> le32_readl() etc.
> The 'l' is somewhat redundant, the size is already determined by '32'
> (and 16, 8). Maybe le32_read() or read_le32()?
> 
> Your call. We can just limit this renaming to cpu_* -> __raw_*.
> 
> 
> To be honest, I would like this stuff renamed in Linux as well. Perhaps
> some day.

I tend to take your patch as is. The cpu_* accessors have a clear
meaning and don't conflict with anything in Linux, so why not just have
them around. Anyway, I'll sleep over it before applying it.

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
