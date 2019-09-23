Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCIK1-0005N5-2V
 for barebox@lists.infradead.org; Mon, 23 Sep 2019 06:59:46 +0000
Date: Mon, 23 Sep 2019 08:59:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190923065943.mrug644cnw24aabw@pengutronix.de>
References: <20190920075813.22471-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190920075813.22471-1-ahmad@a3f.at>
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
Subject: Re: [PATCH v1 1/4] console: disallow opening for writing when no
 write method defined
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org

On Fri, Sep 20, 2019 at 09:58:10AM +0200, Ahmad Fatoum wrote:
> Some consoles, like the input console (usually /dev/cs0), don't feature
> a puts or putc callback. Trying to echo out of them would thus crash:
> 
> 	barebox@Embest MarS Board i.MX6Dual:/ echo -a /dev/cs0
> 	prefetch abort
> 	pc : [<00000004>]    lr : [<4fd05071>]
> 	WARNING: [<...>] (fops_write+0xd/0x10)
> 	WARNING: [<...>] (devfs_write+0x21/0x2a)
> 	WARNING: [<...>] (__write+0xcb/0xf0)
> 	WARNING: [<...>] (write+0x2d/0x68)
> 	WARNING: [<...>] (dputc+0x31/0x34)
> 	WARNING: [<...>] (do_echo+0xcb/0x144)
> 
> Fix this by only allowing open(.., O_WRONLY) or open(..., O_RDWR) when
> puts is defined. Consoles defining putc are covered by this as well as
> those have putc-calling __console_puts assigned as their puts when they
> are registered. Now echo -a /dev/cs0 would yield:
> 
> 	open: Operation not permitted
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
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
