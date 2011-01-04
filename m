Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pa2ke-00019C-Oj
	for barebox@lists.infradead.org; Tue, 04 Jan 2011 09:00:21 +0000
Date: Tue, 4 Jan 2011 10:00:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110104090015.GB11295@pengutronix.de>
References: <20101230034811.GS19266@game.jcrosoft.org>
	<1293713374-3476-1-git-send-email-franck.jullien@gmail.com>
	<20110103114144.GL6017@pengutronix.de>
	<AANLkTikS9h1PgeLFAUWPNwoZc+eaJri48q6VQ92XiNRm@mail.gmail.com>
	<20110103135058.GB24408@pengutronix.de>
	<87wrmlbl2w.fsf@macbook.be.48ers.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87wrmlbl2w.fsf@macbook.be.48ers.dk>
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
To: Peter Korsgaard <jacmet@sunsite.dk>
Cc: barebox@lists.infradead.org

On Tue, Jan 04, 2011 at 12:53:43AM +0100, Peter Korsgaard wrote:
> >>>>> "Sascha" == Sascha Hauer <s.hauer@pengutronix.de> writes:
> 
>  Sascha> Ok, I can see your problem. I think we should rather define a
>  Sascha> board specific function to display a banner than a string, so
>  Sascha> something like:
> 
>  Sascha> config BOARD_BANNER
>  Sascha> 	bool
> 
>  Sascha> #ifdef CONFIG_BOARD_BANNER
>  Sascha> 	display_board_banner();
>  Sascha> #else
>  Sascha> 	printf(RELOC("Board: " CONFIG_BOARDINFO "\n"));
>  Sascha> #endif
> 
> Even better, stick:
> 
> #ifdef CONFIG_BOARD_BANNER
> extern void display_board_banner(void);
> #else
> static inline void display_board_banner(void)
> {
>         printf(RELOC("Board: " CONFIG_BOARDINFO "\n"));
> }
> #endif
> 

The printing of version_string is missing. We could add it to
display_board_banner, but I really would like to keep this in a
generic place to make sure barebox is recognizable by both users
and automatic scripts. Or does anybody wants to fully customize
the initial output of barebox?

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
