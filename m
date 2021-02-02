Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l70xM-0001Cl-4l
 for barebox@lists.infradead.org; Tue, 02 Feb 2021 19:03:21 +0000
Date: Tue, 2 Feb 2021 20:03:17 +0100
Message-ID: <20210202190317.GD8233@pengutronix.de>
References: <20210129161116.9971-1-a.fatoum@pengutronix.de>
 <20210129161116.9971-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210129161116.9971-2-a.fatoum@pengutronix.de>
From: Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: [PATCH 2/8] asm-generic: define fallback memcpy and memset for
 device I/O
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Jan 29, 2021 at 05:11:10PM +0100, Ahmad Fatoum wrote:
> The Atmel quadspi driver makes use of the memcpy_(to|from)io,
> but we don't define them on all platforms. Fix this to allow
> for easier porting of kernel code.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/asm-generic/io.h | 53 ++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 53 insertions(+)

This patch breaks compilation for ARM:

In file included from /ptx/work/WORK_EIHEI/sha/backup/barebox/barebox-maintainer-utils/barebox/arch/arm/include/asm/io.h:6,
                 from include/io.h:5,
                 from arch/arm/lib32/io.c:3:
include/asm-generic/io.h:448:23: error: redefinition of 'memcpy_fromio'
  448 | #define memcpy_fromio memcpy_fromio
      |                       ^~~~~~~~~~~~~
arch/arm/lib32/io.c:9:6: note: in expansion of macro 'memcpy_fromio'
    9 | void memcpy_fromio(void *to, const volatile void __iomem *from, size_t count)
      |      ^~~~~~~~~~~~~
include/asm-generic/io.h:448:23: note: previous definition of 'memcpy_fromio' was here
  448 | #define memcpy_fromio memcpy_fromio
      |                       ^~~~~~~~~~~~~
include/asm-generic/io.h:457:20: note: in expansion of macro 'memcpy_fromio'
  457 | static inline void memcpy_fromio(void *buffer,
      |                    ^~~~~~~~~~~~~
include/asm-generic/io.h:466:21: error: redefinition of 'memcpy_toio'
  466 | #define memcpy_toio memcpy_toio
      |                     ^~~~~~~~~~~
arch/arm/lib32/io.c:24:6: note: in expansion of macro 'memcpy_toio'
   24 | void memcpy_toio(volatile void __iomem *to, const void *from, size_t count)
      |      ^~~~~~~~~~~
include/asm-generic/io.h:466:21: note: previous definition of 'memcpy_toio' was here
  466 | #define memcpy_toio memcpy_toio
      |                     ^~~~~~~~~~~
include/asm-generic/io.h:475:20: note: in expansion of macro 'memcpy_toio'
  475 | static inline void memcpy_toio(volatile void __iomem *addr, const void *buffer,
      |                    ^~~~~~~~~~~
include/asm-generic/io.h:431:19: error: redefinition of 'memset_io'
  431 | #define memset_io memset_io
      |                   ^~~~~~~~~
arch/arm/lib32/io.c:39:6: note: in expansion of macro 'memset_io'
   39 | void memset_io(volatile void __iomem *dst, int c, size_t count)
      |      ^~~~~~~~~
include/asm-generic/io.h:431:19: note: previous definition of 'memset_io' was here
  431 | #define memset_io memset_io
      |                   ^~~~~~~~~
include/asm-generic/io.h:440:20: note: in expansion of macro 'memset_io'
  440 | static inline void memset_io(volatile void __iomem *addr, int value,
      |                    ^~~~~~~~~


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
