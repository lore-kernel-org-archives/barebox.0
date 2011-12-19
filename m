Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RcdQj-0001mm-Sb
 for barebox@lists.infradead.org; Mon, 19 Dec 2011 13:39:03 +0000
Date: Mon, 19 Dec 2011 14:38:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111219133852.GO27267@pengutronix.de>
References: <87fwggelyg.fsf@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87fwggelyg.fsf@free.fr>
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
Subject: Re: barebox build error : WATCHDOG_RESET
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On Mon, Dec 19, 2011 at 02:21:27PM +0100, Robert Jarzmik wrote:
> If think commit fc726402479efc486bbd3fb207e8d21ed0f4581c "remote unused watchdog
> header" has left a remaining WATCHDOG_RESET in readline_simple.c ...
> 
> rj@beldin:~/mio_linux/barebox$ make
> make[1]: `include/generated/mach-types.h' is up to date.
>   CHK     include/generated/version.h
>   CHK     include/generated/utsrelease.h
>   SYMLINK include/config.h -> arch/arm/boards/mioa701//config.h
>   LD      barebox
> lib/built-in.o: In function `readline':
> uncompress.c:(.text.readline+0x4c): undefined reference to `WATCHDOG_RESET'

Seems I forgot to remove this.

Fixed
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
