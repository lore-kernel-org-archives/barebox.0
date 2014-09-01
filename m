Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XONMA-0006xY-1X
 for barebox@lists.infradead.org; Mon, 01 Sep 2014 08:52:58 +0000
Date: Mon, 1 Sep 2014 10:52:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140901085229.GG5352@pengutronix.de>
References: <1408821828-4079-1-git-send-email-ezequiel.garcia@free-electrons.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1408821828-4079-1-git-send-email-ezequiel.garcia@free-electrons.com>
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
Subject: Re: [PATCH] ubiformat: Include missing header
To: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Cc: barebox@lists.infradead.org

On Sat, Aug 23, 2014 at 04:23:48PM -0300, Ezequiel Garcia wrote:
> Currently this warning is found when compiling ubiformat.c
> 
>   CC      commands/ubiformat.o
> commands/ubiformat.c: In function 'flash_image':
> commands/ubiformat.c:368:3: warning: implicit declaration of function 'read_full' [-Wimplicit-function-declaration]
>    err = read_full(fd, buf, mtd->eb_size);
>    ^
> because ubiformat.c needs libfile.h for the read_full() function.
> This commit adds the missing header.
> 
> Signed-off-by: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

Should be fixed in master already.

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
