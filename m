Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gpBnc-0008Gz-TC
 for barebox@lists.infradead.org; Thu, 31 Jan 2019 12:50:35 +0000
Received: by mail-lf1-x135.google.com with SMTP id z13so2197234lfe.11
 for <barebox@lists.infradead.org>; Thu, 31 Jan 2019 04:50:32 -0800 (PST)
Date: Thu, 31 Jan 2019 15:50:28 +0300
From: Peter Mamonov <pmamonov@gmail.com>
Message-ID: <20190131125028.glbnt55zmhqowi6p@localhost.localdomain>
References: <20190129065549.29161-1-andrew.smirnov@gmail.com>
 <20190129065549.29161-19-andrew.smirnov@gmail.com>
 <20190129084847.spkfbeksb7xne46g@pengutronix.de>
 <CAHQ1cqGm+VUgZDScpPVTDuPX89FNSr1JiecqBah_o2piNT-ayg@mail.gmail.com>
 <20190131105452.smetw36klsxmvtaq@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190131105452.smetw36klsxmvtaq@localhost.localdomain>
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
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Jan 31, 2019 at 01:54:52PM +0300, Peter Mamonov wrote:
> Hello, Andrey,
> 
> > In order to allow access to second half of address space on 64-bit
> > machines, add code that creates /dev/highmem dedicated for that.
> > 
> > Note that due to maximum file size being limited to MAX_LFS_FILESIZE
> > or 0x7fff_ffff_ffff_ffff bytes at addresses 0x7fff_ffff_ffff_ffff and
> > 0xffff_ffff_ffff_ffff cannot be access through /dev/mem and
> > /dev/hightmem correspondingly.
> 
> Does it imply using `-s /dev/highmem` argument when accessing addresses beyond 
> MAX_LFS_FILESIZE? That's not very convenient:
> 
> 	$ git grep -l /dev/mem
> 	commands/crc.c
> 	commands/digest.c
> 	commands/disasm.c
> 	commands/md.c
> 	commands/memcmp.c
> 	commands/memcpy.c
> 	commands/memset.c
> 	commands/mm.c
> 	commands/mw.c

I've forgotten to mention, that all meaningful MIPS64 virtual addresses  
belong to the 2nd half of the address space. Except for user segment addresses 
which are not used in barebox.

> 
> Regards,
> Peter

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
