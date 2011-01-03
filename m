Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PZkoY-0001Z7-Bx
	for barebox@lists.infradead.org; Mon, 03 Jan 2011 13:51:14 +0000
Date: Mon, 3 Jan 2011 14:50:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110103135058.GB24408@pengutronix.de>
References: <20101230034811.GS19266@game.jcrosoft.org>
	<1293713374-3476-1-git-send-email-franck.jullien@gmail.com>
	<20110103114144.GL6017@pengutronix.de>
	<AANLkTikS9h1PgeLFAUWPNwoZc+eaJri48q6VQ92XiNRm@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AANLkTikS9h1PgeLFAUWPNwoZc+eaJri48q6VQ92XiNRm@mail.gmail.com>
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
Subject: Re: [PATCH] Add an option to set a board specific banner
To: Franck JULLIEN <franck.jullien@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Jan 03, 2011 at 01:45:18PM +0100, Franck JULLIEN wrote:
> 2011/1/3 Sascha Hauer <s.hauer@pengutronix.de>
> 
> 
> I know CONFIG_BOARDINFO is board specific. However, I think it is more
> conveniant
> to have the possibility to define a banner text outside the Kconfig. For
> example, I use
> this in my config.h:
> 
> #define CONFIG_BOARD_BANNER_TEXT "\e[1;32m\
> ***********************************************************************\n\
> *           Communication board bootloader (ODSFT0152)        *\n\
> ************************************************************************\
> \e[0m\n\n"
> 
> So may be we could define this kind of banner in the Kconfig.....

Ok, I can see your problem. I think we should rather define a board
specific function to display a banner than a string, so something like:

config BOARD_BANNER
	bool

#ifdef CONFIG_BOARD_BANNER
	display_board_banner();
#else
	printf(RELOC("Board: " CONFIG_BOARDINFO "\n"));
#endif

This way we can also show runtime dependent information in the banner
(like baseboard or whatever).

> 
> Let me know if you don't like this. This patch was kind of a test for me and
> we could
> forget about it.
> 
> Although this patch was very small, we had a lot of discussion around it and
> I don't want to imagine what it is going to be when I submit the nios2 port :)

Don't worry, the amount of comments you receive usually is not
proportional to the patch size you send ;)

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
