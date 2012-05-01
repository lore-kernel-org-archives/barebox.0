Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SPIxG-0006Gt-5A
 for barebox@lists.infradead.org; Tue, 01 May 2012 19:41:47 +0000
Date: Tue, 1 May 2012 21:41:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120501194139.GO4141@pengutronix.de>
References: <20120430115703.GD2992@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120430115703.GD2992@game.jcrosoft.org>
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
Subject: Re: [PATCH 0/3] qemu-malta nor flash support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Apr 30, 2012 at 01:57:03PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Hi,
> 
> 	The following patch serie add CFI flash support
> 
> The following changes since commit 6b489256ee1358973d536e723c77c2483e6b9f5b:
> 
>   Makefile: add barebox.srec to 'clean' (2012-04-30 14:01:34 +0200)
> 
> are available in the git repository at:
> 
>   git://git.jcrosoft.org/barebox.git tags/malta-cfi-flash
> 
> for you to fetch changes up to 37a97ca3fce6a92e25e7855359270f83548793bd:

Pulled, thanks.

Sascha

> 
>   qemu-malta: add nor flash support (2012-04-30 20:16:28 +0800)
> 
> ----------------------------------------------------------------
> Mips: malta add cfi flash support
> 
> ----------------------------------------------------------------
> Jean-Christophe PLAGNIOL-VILLARD (3):
>       mips: add in_be16/32 and out_be16/32 for cfi support
>       qemu-malta: rename serial.c to init.c
>       qemu-malta: add nor flash support
> 
>  arch/mips/boards/qemu-malta/Makefile             |    2 +-
>  arch/mips/boards/qemu-malta/{serial.c => init.c} |   14 ++++++++++++++
>  arch/mips/configs/qemu-malta_defconfig           |    5 +++++
>  arch/mips/include/asm/io.h                       |    5 +++++
>  4 files changed, 25 insertions(+), 1 deletions(-)
>  rename arch/mips/boards/qemu-malta/{serial.c => init.c} (76%)
> 
> Best Regards,
> J.
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
