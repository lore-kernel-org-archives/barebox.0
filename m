Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
	(helo=metis.ext.pengutronix.de)
	by casper.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NNO0E-00070u-PA
	for barebox@lists.infradead.org; Wed, 23 Dec 2009 09:59:37 +0000
Date: Wed, 23 Dec 2009 10:58:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20091223095834.GQ15126@pengutronix.de>
References: <alpine.LFD.2.00.0912221552470.17516@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.00.0912221552470.17516@localhost>
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
Subject: Re: building for sandbox, warning: "__BIG_ENDIAN" is not defined
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Tue, Dec 22, 2009 at 03:56:55PM -0500, Robert P. J. Day wrote:
> 
>   perhaps showing my ignorance of how big vs little endian should be
> implemented, but in configuring and building the sandbox version, i
> get:
> 
> ...
>   CC      common/environment.o
> In file included from common/environment.c:37:
> include/envfs.h:47:23: warning: "__BIG_ENDIAN" is not defined
> ...
> 
>   this isn't surprising since, as i read it, because this is x86_64,
> it's the little-endian headers that are included, but the envfs.h
> header contains the preprocessor checking:
> 
> #ifndef __BYTE_ORDER
> #error "No byte order defined in __BYTE_ORDER"
> #endif
> 
> #if __BYTE_ORDER == __LITTLE_ENDIAN
> ... snip ...
> #elif __BYTE_ORDER == __BIG_ENDIAN
> ... snip ...
> 
>   clearly(?), depending on which endianness is being used, one or the
> other of __LITTLE_ENDIAN or __BIG_ENDIAN won't be defined, right?  so,
> no matter what, *one* of those tests is going to generate a warning.

Hm, in glibc both are defined like this:

#define __LITTLE_ENDIAN 1234
#define __BIG_ENDIAN    4321

In the kernel (and barebox too) only one of them is defined depending on
the endianess. I wonder why we do not define both, too.

Digging a bit further...

This part of include/envfs.h is copied from include/cramfs/cramfs_fs.h.
The cramfs header file is copied from U-Boot, but as the U-Boot guys
found out cramfs is always in host order and thus does not need byteswap
functions (see http://thread.gmane.org/gmane.comp.boot-loaders.u-boot/22846)
But that's another story, I think we should keep the environment in
little endian order to be able to generate a envfs image on the compile
host.

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
