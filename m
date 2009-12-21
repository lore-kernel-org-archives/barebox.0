Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
	(helo=metis.ext.pengutronix.de)
	by casper.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NMf8X-0000OD-43
	for barebox@lists.infradead.org; Mon, 21 Dec 2009 10:05:10 +0000
Date: Mon, 21 Dec 2009 11:04:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20091221100407.GV15126@pengutronix.de>
References: <alpine.LFD.2.00.0912210419020.6190@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.00.0912210419020.6190@localhost>
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
Subject: Re: can barebox avoid creating typedefs just for struct shortcuts?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Mon, Dec 21, 2009 at 04:22:43AM -0500, Robert P. J. Day wrote:
> 
>   i noticed the following:
> 
> $ grep -rw gd_t *
> arch/arm/include/asm/global_data.h:typedef	struct	global_data gd_t;
> arch/ppc/include/asm/global_data.h: * Keep it *SMALL* and remember to set CFG_GBL_DATA_SIZE > sizeof(gd_t)
> arch/ppc/include/asm/global_data.h:} gd_t;
> arch/sandbox/include/asm/global_data.h:typedef	struct	global_data gd_t;
> $
> 
>   it's obvious that the typedef "gd_t" is being created as a
> time-saving shortcut.  that approach has been actively discouraged in
> the main kernel tree for quite some time, as it just obfuscates the
> code.

Ack. I normally remove the typedefs when I find them.
In barebox we do not have global_data, so the whole file can be removed.


> there are, of course, numerous typedefs being used to support
> legitimately opaque types, but creating more of them just to save
> keystrokes is now frowned upon.
> 
>   and since it looks like no one is actually using that one yet, does
> anyone mind if i remove it?

Nope, go ahead.

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
