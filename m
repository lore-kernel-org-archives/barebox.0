Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gpW0j-0002mc-ON
 for barebox@lists.infradead.org; Fri, 01 Feb 2019 10:25:27 +0000
Received: by mail-lj1-x243.google.com with SMTP id u89-v6so5383353lje.1
 for <barebox@lists.infradead.org>; Fri, 01 Feb 2019 02:25:25 -0800 (PST)
Date: Fri, 1 Feb 2019 13:25:21 +0300
From: Peter Mamonov <pmamonov@gmail.com>
Message-ID: <20190201102520.33sxx2pdcawg2tlx@localhost.localdomain>
References: <20190129065549.29161-1-andrew.smirnov@gmail.com>
 <20190129065549.29161-19-andrew.smirnov@gmail.com>
 <20190129084847.spkfbeksb7xne46g@pengutronix.de>
 <CAHQ1cqGm+VUgZDScpPVTDuPX89FNSr1JiecqBah_o2piNT-ayg@mail.gmail.com>
 <20190131105452.smetw36klsxmvtaq@localhost.localdomain>
 <20190131125028.glbnt55zmhqowi6p@localhost.localdomain>
 <20190201074711.clrwidodo5hpqb7y@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190201074711.clrwidodo5hpqb7y@pengutronix.de>
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
Subject: Re: [PATCH v2 18/19] drivers: mem: Create file to access second half
 of 64-bit memory
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Barebox List <barebox@lists.infradead.org>

On Fri, Feb 01, 2019 at 08:47:11AM +0100, Sascha Hauer wrote:
> On Thu, Jan 31, 2019 at 03:50:28PM +0300, Peter Mamonov wrote:
> > On Thu, Jan 31, 2019 at 01:54:52PM +0300, Peter Mamonov wrote:
> > > Hello, Andrey,
> > > 
> > > > In order to allow access to second half of address space on 64-bit
> > > > machines, add code that creates /dev/highmem dedicated for that.
> > > > 
> > > > Note that due to maximum file size being limited to MAX_LFS_FILESIZE
> > > > or 0x7fff_ffff_ffff_ffff bytes at addresses 0x7fff_ffff_ffff_ffff and
> > > > 0xffff_ffff_ffff_ffff cannot be access through /dev/mem and
> > > > /dev/hightmem correspondingly.
> > > 
> > > Does it imply using `-s /dev/highmem` argument when accessing addresses beyond 
> > > MAX_LFS_FILESIZE? That's not very convenient:
> > > 
> > > 	$ git grep -l /dev/mem
> > > 	commands/crc.c
> > > 	commands/digest.c
> > > 	commands/disasm.c
> > > 	commands/md.c
> > > 	commands/memcmp.c
> > > 	commands/memcpy.c
> > > 	commands/memset.c
> > > 	commands/mm.c
> > > 	commands/mw.c
> > 
> > I've forgotten to mention, that all meaningful MIPS64 virtual addresses  
> > belong to the 2nd half of the address space. Except for user segment addresses 
> > which are not used in barebox.
> 
> In that case our only option seems to be to use an unsigned 64bit type
> for filesize. We would need an additional lseek like function which
> is able to reach the upper half of the address space and with regular
> lseek simply only the lower half would be reachable.
> 
> Note that currently we don't seem to have a problem as even with Andreys
> series applied we can still 'md' the whole address space. The test if we
> lseek outside the file never triggers since the signed comparison of
> offset > f->size never evaluates to true for f->size == S64_MAX.

I can confirm that it is possible to enable access to the whole 64 bit address 
space via /dev/mem after adjusting /dev/mem size and eliminating checks for 
negative offset/pos in lseek(). Yet the proper approach seems to be to add a 
dedicated lseek implementation for /dev/mem, as in Linux.

Regards,
Peter

> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
