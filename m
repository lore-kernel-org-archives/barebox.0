Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 63.mail-out.ovh.net ([91.121.185.56])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PXTCJ-00005A-Ms
	for barebox@lists.infradead.org; Tue, 28 Dec 2010 06:38:16 +0000
Date: Tue, 28 Dec 2010 07:33:00 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20101228063300.GP19266@game.jcrosoft.org>
References: <1293399652-2615-1-git-send-email-franck.jullien@gmail.com>
	<20101227064305.GN19266@game.jcrosoft.org>
	<AANLkTik6kuBviOejiXT_6eU2ZiaagDDMJy2Fsgc_6dk_@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AANLkTik6kuBviOejiXT_6eU2ZiaagDDMJy2Fsgc_6dk_@mail.gmail.com>
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
Subject: Re: [PATCH] (reformated) Allow board specific fancy banner
To: Franck JULLIEN <franck.jullien@gmail.com>
Cc: barebox@lists.infradead.org

>      > diff --git a/common/console.c b/common/console.c
>      > index 82786f2..8a830e3 100644
>      > --- a/common/console.c
>      > +++ b/common/console.c
>      > @@ -46,7 +46,17 @@ EXPORT_SYMBOL(console_list);
>      >  static void display_banner (void)
>      >  {
>      >       printf (RELOC("\n\n%s\n\n"), RELOC_VAR(version_string));
>      > +#ifdef CONFIG_BOARD_BANNER
>      > +#ifdef BOARD_BANNER
>      > +     printf(RELOC(BOARD_BANNER));
>      > +#else
>      > +#define VT100_YELLOW "\033[1;33m"
>      > +#define VT100_RESET  "\033[1;0m"
>      > +     printf(RELOC("Board: " VT100_YELLOW CONFIG_BOARDINFO VT100_RESET
>      "\n"));
>      why not define it in the Kconfig simply?
> 
>      I'm sorry but I do not see why we can not do it in the defconfig
> 
>      Best Regards,
>      J.
> 
>    We could do it in the arch/_the_arch_/Kconfig with depends on _your_board_
>    but I don't think that the better/more generic way. Moreover, if we ask
>    for the banner in Kconfig (with a string entry), fancy escape code and/or
>    carriage return will be hard to enter manually.
>    This is for example what I use for my neek board:
>    #define BOARD_BANNER "\e[1;32m\
>    ****************************************\n\
>    *          Altera NEEK board           *\n\
>    ****************************************\
>    \e[0m\n\n"
>    However, if you want I could manage to use the Kconfig way.....
>    Best regards,
so define completely the banner in the config.h
no VT100.... in the console.c as diferrent boards will have different colour

and something like this will be better 

#ifndef CONFIG_BOARD_BANNER
#undef  CONFIG_BOARD_BANNER_TEXT
#define CONFIG_BOARD_BANNER_TEXT "Board: " CONFIG_BOARDINFO "\n"
#endif

printf(RELOC(CONFIG_BOARD_BANNER_TEXT));

please keep CONFIG_xxxx for the macro even in the config.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
