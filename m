Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHM7k-0003ct-RN
 for barebox@lists.infradead.org; Thu, 26 Mar 2020 06:36:18 +0000
Date: Thu, 26 Mar 2020 07:36:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200326063614.GO27288@pengutronix.de>
References: <CAGm1_ktP_E_44J-CuM=Dy7JdLXXturWm9jC9MmYN9aq=ngNvxQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGm1_ktP_E_44J-CuM=Dy7JdLXXturWm9jC9MmYN9aq=ngNvxQ@mail.gmail.com>
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
Subject: Re: Cross-compiling target tools
To: Yegor Yefremov <yegorslists@googlemail.com>
Cc: barebox <barebox@lists.infradead.org>

Hi Yegor,

On Wed, Mar 25, 2020 at 11:13:03PM +0100, Yegor Yefremov wrote:
> How should one compile the target tools like bareboxenv-target etc. I
> get the following error:
> 
>  ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make -C debian/build
> make: Entering directory
> '/home/user/MyProjects/oss/bootloaders/barebox-upstream/debian/build'
> make[3]: 'include/generated/mach-types.h' is up to date.
>   Using /home/user/MyProjects/oss/bootloaders/barebox-upstream as
> source for kernel
>   GEN     /home/user/MyProjects/oss/bootloaders/barebox-upstream/debian/build/Makefile
>   CHK     include/generated/version.h
>   CHK     include/generated/utsrelease.h
>   CREATE  include/config.h
>   CC      scripts/bareboxenv-target
> /tmp/cc0VGmDE.o: In function `file_action':
> /home/user/MyProjects/oss/bootloaders/barebox-upstream/scripts/../common/environment.c:119:
> undefined reference to `xzalloc'
> /tmp/cc0VGmDE.o: In function `concat_path_file':
> /home/user/MyProjects/oss/bootloaders/barebox-upstream/scripts/bareboxenv.c:79:

bareboxenv.c includes a compiler.h file which has static inline variants
of xmalloc and xzalloc. I just gave it a test here and it still works as
expected. Could you verify scripts/compiler.h is included by the
compiler? If not, what else is included which provides prototypes for
these functions? If scripts/compiler.h is not included then I would
expect some undeclared function warnings.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
