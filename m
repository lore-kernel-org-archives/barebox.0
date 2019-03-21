Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h6s1A-0007Zh-1q
 for barebox@lists.infradead.org; Thu, 21 Mar 2019 07:21:37 +0000
Date: Thu, 21 Mar 2019 08:21:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190321072131.tt4xeiq7hzlgt7ey@pengutronix.de>
References: <1553068113-13704-1-git-send-email-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1553068113-13704-1-git-send-email-yamada.masahiro@socionext.com>
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
Subject: Re: [PATCH] linux/kernel.h: split *_MAX and *_MIN macros into
 <linux/limits.h>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: barebox@lists.infradead.org

On Wed, Mar 20, 2019 at 04:48:33PM +0900, Masahiro Yamada wrote:
> Copy include/linuxlimits.h from Linux 5.1-rc1
> (removing #include <uapi/linux/limits.h>).
> 
> While we are here, add SPDX License tag to <linux/kernel.h>.
> 
> Based on the following Linux commits:
> 
>  - 54d50897d544 ("linux/kernel.h: split *_MAX and *_MIN macros
>    into <linux/limits.h>")
> 
>  - 2dc0e68d5ada ("linux/kernel.h: use 'short' to define USHRT_MAX,
>    SHRT_MAX, SHRT_MIN")
> 
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---

Applied, thanks

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
