Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gp9zx-0006bz-5t
 for barebox@lists.infradead.org; Thu, 31 Jan 2019 10:55:10 +0000
Received: by mail-lf1-x141.google.com with SMTP id q3so740037lfm.2
 for <barebox@lists.infradead.org>; Thu, 31 Jan 2019 02:55:08 -0800 (PST)
Date: Thu, 31 Jan 2019 13:54:53 +0300
From: Peter Mamonov <pmamonov@gmail.com>
Message-ID: <20190131105452.smetw36klsxmvtaq@localhost.localdomain>
References: <20190129065549.29161-1-andrew.smirnov@gmail.com>
 <20190129065549.29161-19-andrew.smirnov@gmail.com>
 <20190129084847.spkfbeksb7xne46g@pengutronix.de>
 <CAHQ1cqGm+VUgZDScpPVTDuPX89FNSr1JiecqBah_o2piNT-ayg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqGm+VUgZDScpPVTDuPX89FNSr1JiecqBah_o2piNT-ayg@mail.gmail.com>
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

Hello, Andrey,

> In order to allow access to second half of address space on 64-bit
> machines, add code that creates /dev/highmem dedicated for that.
> 
> Note that due to maximum file size being limited to MAX_LFS_FILESIZE
> or 0x7fff_ffff_ffff_ffff bytes at addresses 0x7fff_ffff_ffff_ffff and
> 0xffff_ffff_ffff_ffff cannot be access through /dev/mem and
> /dev/hightmem correspondingly.

Does it imply using `-s /dev/highmem` argument when accessing addresses beyond 
MAX_LFS_FILESIZE? That's not very convenient:

	$ git grep -l /dev/mem
	commands/crc.c
	commands/digest.c
	commands/disasm.c
	commands/md.c
	commands/memcmp.c
	commands/memcpy.c
	commands/memset.c
	commands/mm.c
	commands/mw.c

Regards,
Peter

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
