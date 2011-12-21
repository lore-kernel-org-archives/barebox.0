Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RdJtW-0006FG-GZ
 for barebox@lists.infradead.org; Wed, 21 Dec 2011 10:59:35 +0000
Date: Wed, 21 Dec 2011 11:59:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111221105928.GR27267@pengutronix.de>
References: <1324303449-30045-1-git-send-email-robert.jarzmik@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1324303449-30045-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: Re: [PATCH V3 0/8] mtd framework rework
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On Mon, Dec 19, 2011 at 03:04:01PM +0100, Robert Jarzmik wrote:
> This patchset aims at reworking the mtd support :
>  - add a mtd core
>  - concentrate MTD core functions (MTD_WRITE)
>  - split mtd core character device (/dev/mtd<N>) from other
>    character devices (/dev/mtdoob<N>).
>  - add a data+oob character device (/dev/mtdraw<N>)
> 
> Since V1, Sascha comments should have been taken into
> account, and the patchset was rebased against next tree
> (commit "mtd nand: fix oob compile time option").
> 
> As there were some quirks on the rebase, I'd like a
> quick validation from you, Sascha, if everything still works
> as it's supposed to, especially the *_READ_OOB thingy.

Almost there, the oob thing doesn't work yet. Some comments inline.

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
