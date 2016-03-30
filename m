Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1al9Ts-0003cb-BL
 for barebox@lists.infradead.org; Wed, 30 Mar 2016 06:19:52 +0000
Date: Wed, 30 Mar 2016 08:19:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160330061930.GD30994@pengutronix.de>
References: <1458208829-25570-1-git-send-email-alexander.stein@systec-electronic.com>
 <1458208829-25570-12-git-send-email-alexander.stein@systec-electronic.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1458208829-25570-12-git-send-email-alexander.stein@systec-electronic.com>
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
Subject: Re: [PATCH 11/13] barebox-wrapper: Implement kfree and vfree as
 static inline functions
To: Alexander Stein <alexander.stein@systec-electronic.com>
Cc: barebox@lists.infradead.org, Daniel Krueger <daniel.krueger@systec-electronic.com>

Hi Alexander,

Just to let you know, I haven't forgot this series, I am currently
looking at it. I am currently having problems getting this compiled.

On Thu, Mar 17, 2016 at 11:00:27AM +0100, Alexander Stein wrote:
> If kfree/vfree is called where free is a already variable name, code will
> not compile.
> Also both take a const* in Linux kernel code.
> 
> Signed-off-by: Alexander Stein <alexander.stein@systec-electronic.com>
> ---
>  include/linux/barebox-wrapper.h | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/include/linux/barebox-wrapper.h b/include/linux/barebox-wrapper.h
> index fc1b5c2..67b332e 100644
> --- a/include/linux/barebox-wrapper.h
> +++ b/include/linux/barebox-wrapper.h
> @@ -1,14 +1,21 @@
>  #ifndef __INCLUDE_LINUX_BAREBOX_WRAPPER_H
>  #define __INCLUDE_LINUX_BAREBOX_WRAPPER_H
>  
> +#include <malloc.h>

This makes problems for the decompressor code using the malloc
implementation in include/linux/decompress/mm.h. With this additional
include the normal malloc implementation leaks into the decompressor
code. I think I have a patch fixing it but must wait for the compile
test.

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
