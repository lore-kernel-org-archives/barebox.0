Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-x22e.google.com ([2607:f8b0:4002:c05::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1avS1h-0003fF-NV
 for barebox@lists.infradead.org; Wed, 27 Apr 2016 16:09:22 +0000
Received: by mail-yw0-x22e.google.com with SMTP id g133so80950854ywb.2
 for <barebox@lists.infradead.org>; Wed, 27 Apr 2016 09:09:01 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160427091405.GS7860@pengutronix.de>
References: <CABx9NuS+pLjNeUrjNCo19zvmLQGoqUiFi8eh7_gxV8P_2hmoUA@mail.gmail.com>
 <20160427091405.GS7860@pengutronix.de>
Date: Wed, 27 Apr 2016 09:09:00 -0700
Message-ID: <CABx9NuQUz+cb4K5LDuBgoVQTHW-=bv0M-Ko_S05hUHh0dSd_gA@mail.gmail.com>
From: Russell Haley <russ.haley@gmail.com>
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
Subject: Re: Building on PC-BSD 10.3
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Apr 27, 2016 at 2:14 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> Hi Russell,
>
> On Tue, Apr 26, 2016 at 09:59:10PM -0700, Russell Haley wrote:
>> Hello,
>>
>> Just for a hoot I thought I'd build barebox on PC-BSD 10.3. I followed
>> these directions:
>>
>> https://github.com/jcobham/i.MX53-kernel-images/wiki/How-To:-Build-Barebox-for-IMX53
>>
>> and replaced "make" with "gmake". Here is the output:
>>
>> http://pastebin.com/AawYq4bR
>>
>> It seems to be missing endian.h?
>
> Yes, seems so. From "man 3 endian" on Linux:
>
>> These functions are nonstandard.  Similar functions are present on
>> the BSDs, where the required header file is <sys/endian.h> instead of
>> <endian.h>.  Unfortunately, NetBSD, FreeBSD, and glibc haven't
>> followed the original OpenBSD naming convention for these functions,
>> whereby the nn component always appears at the end of the function
>> name (thus, for example, in NetBSD, FreeBSD, and glibc, the
>> equivalent of OpenBSDs "betoh32" is "be32toh").
>
> We now have scripts/include/tools/endian.h from the Linux kernel. Does
> the change below help? (The same change may be needed elsewhere in
> /scripts/)
>
> Sascha
>
> ------------------------8<-------------------------------
>
> diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
> index 16f086a..c8fe5bf 100644
> --- a/scripts/imx/imx-image.c
> +++ b/scripts/imx/imx-image.c
> @@ -26,7 +26,7 @@
>  #include <sys/types.h>
>  #include <sys/stat.h>
>  #include <fcntl.h>
> -#include <endian.h>
> +#include <tools/endian.h>
>  #include <linux/kernel.h>
>  #include <sys/file.h>
>
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

Awesome, thanks so much. I'll try that tonight!

Russ

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
