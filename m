Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
	(helo=metis.ext.pengutronix.de)
	by casper.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NNN9z-0005tn-R4
	for barebox@lists.infradead.org; Wed, 23 Dec 2009 09:05:38 +0000
Date: Wed, 23 Dec 2009 10:02:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20091223090224.GO15126@pengutronix.de>
References: <alpine.LFD.2.00.0912220948380.4211@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.00.0912220948380.4211@localhost>
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
Subject: Re: [PATCH] Fix typo, "CFG_LONGHELP" -> "CONFIG_LONGHELP".
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

Hi Robert,

On Tue, Dec 22, 2009 at 09:51:19AM -0500, Robert P. J. Day wrote:
> 
> Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
> 
> ---
> 
>   while this fixes an obvious typo in this file, it's really just a
> band-aid since this header file sets *numerous* CONFIG_-prefixed
> macros, which it shouldn't be doing.  any macros prefixed with CONFIG_
> should be reserved for the Kconfig namespace, so it wouldn't hurt to
> apply this patch, but it's clear that this file needs a lot more work
> at some point in the future.

I used the eco920 during early development. We maybe have the
opportunity to work on this board in the next time and then I'll fix
this. Otherwise I tend to remove the board completely.

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
