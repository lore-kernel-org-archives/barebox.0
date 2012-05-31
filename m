Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SaBfk-0000JG-GD
 for barebox@lists.infradead.org; Thu, 31 May 2012 20:08:43 +0000
Date: Thu, 31 May 2012 22:08:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120531200834.GE30400@pengutronix.de>
References: <CAHvDM_e+yLQbJAa96-XJan8u_K57tDuJyWVqTGLyHxeQ8MG02g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHvDM_e+yLQbJAa96-XJan8u_K57tDuJyWVqTGLyHxeQ8MG02g@mail.gmail.com>
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
Subject: Re: menu autodisplay does not work
To: Benoit RAT <benoit@sevensols.com>
Cc: barebox@lists.infradead.org

On Thu, May 31, 2012 at 05:25:03PM +0200, Benoit RAT wrote:
> Hy guy,
> 
> I found a small bug with menu autodisplay functionality that doesn't work:
> 
>  menu -a -m test -d "test menu"
>  menu -e -a -m test -c "echo 1" -d "test1"
>  menu -e -a -m test -c "echo 2" -d "test2"
>  menu -e -a -m test -c "echo 3" -d "test3"
> 
> And then I try to autoselect test2 after chosing test 1
> 
> 1
> barebox> menu -m test -s -d "test2"

I think this is not a bug, it's the documentation that is not clear
here. The above is only useful in conjunction with -A in which case
the description given with -d is shown as timeout text.

> 
> But this does not work!
> 
> The only way to perform this is to use
> 
> menu -m test -S -n 2
> menu -m test -s

That's a point I do not understand. Looking at the code it's clear to me
why this have to be two commands, but I think it should be possible to
combine the select option with the show option. Furthermore I think the
-S option is quite useless. -S seems to used only to let the -n option
take effect.

Overall it's not very clear which options exist and which options take
an argument. I've collected them and here is the result:

-m <menuname>    specify menu to work on
-l               list existing menus
-s               show menu
-a               Add a menu or, when -e is given additionally, add a menu entry
-r               remove a menu
-d <description> description, in conjunction with
                  -a -e: Menu text to show
		  -A: timeout text to show
-A <delay>       Autoselect selected entry in <delay> seconds
-c <command>     run <command> when an entry is selected
-R               reentrance, used with -a, do not leave the menu after
                 an entry is selected
-b 0|1           box entry. used with -a, add a yes/no entry
-e               when given with -a, add a menu entry. When given with
                 -l, additionally to the menu also list the entries
-S -n <num>      select entry <num>, starting at 1. Seperate command,
                 NOT together with actually showing the menu

I think we should add this to the help text for the menu command, or
even better, replace the docs and the code for -S -n <num> with a plain
-S <num>

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
