Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W97x9-0007nv-8o
 for barebox@lists.infradead.org; Fri, 31 Jan 2014 06:51:51 +0000
Date: Fri, 31 Jan 2014 07:51:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140131065128.GZ16215@pengutronix.de>
References: <1391096626-6342-1-git-send-email-freesilicon@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1391096626-6342-1-git-send-email-freesilicon@gmail.com>
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
Subject: Re: [PATCH] Load PBL into SRAM
To: David Vincent <freesilicon@gmail.com>
Cc: barebox@lists.infradead.org

Hi David,

On Thu, Jan 30, 2014 at 04:43:46PM +0100, David Vincent wrote:
> This allows to load all the lowlevel init code, including the
> uncompressor, inside SRAM and not just the bare init part. This is
> useful when pbl is used as a first-stage bootloader but is loaded by an
> external ROM code.

I do not understand this patch. Is there something missing in it?

> +#include <linux/stringify.h>
> +#define BAREBOX_PBL_SIZE					\
> +	_barebox_pbl_size = __bss_start - _text;	\
> +	ASSERT(_barebox_pbl_size < MAX_PBL_SIZE, "Barebox pbl size > ") \
> +	ASSERT(_barebox_pbl_size < MAX_PBL_SIZE, __stringify(MAX_PBL_SIZE))

BAREBOX_PBL_SIZE is defined but unused.

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
