Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1elrYh-0006kL-17
 for barebox@lists.infradead.org; Wed, 14 Feb 2018 07:32:53 +0000
Date: Wed, 14 Feb 2018 08:32:37 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180214073237.p2kkvwhe373iuhac@pengutronix.de>
References: <OFB3F14132.C502B498-ONC1258234.0028C966-C1258234.0028E812@LocalDomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <OFB3F14132.C502B498-ONC1258234.0028C966-C1258234.0028E812@LocalDomain>
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
Subject: Re: [PATCH] added colored print out of log levels
To: Eugen.Wiens@JUMO.net
Cc: barebox@lists.infradead.org

On Wed, Feb 14, 2018 at 08:26:46AM +0100, Eugen.Wiens@JUMO.net wrote:
>    Hi Sascha,
> 
>    Sascha Hauer <s.hauer@pengutronix.de> schrieb am 13.02.2018 09:37:17:
> 
>    > Von: Sascha Hauer <s.hauer@pengutronix.de>
>    > An: Eugen Wiens <eugen.wiens@jumo.net>
>    > Kopie: barebox@lists.infradead.org
>    > Datum: 13.02.2018 09:37
>    > Betreff: Re: [PATCH] added colored print out of log levels
>    >
>    > HI Eugen,
>    >
>    > On Fri, Feb 09, 2018 at 01:28:45PM +0100, Eugen Wiens wrote:
>    > > When the system is booting the warnings and errors are not be
>    > quickly discovered.
>    > > With this improvement the errors are colored red, the warnings
>    > yellow and the notices blue.
>    >
>    > I like this because I like colors ;)
>    > However, some people do not. Can we make this honour the value of the
>    > global.allow_color variable?
>    That sounds good for me.
> 
>    > This variable is currently only used in the
>    > environment, so we would have to move it to C code by adding a
>    > globalvar_add_simple_bool().
>    Where is the best place to call this function, inside the file
>    "console_common.c" or

That would be a suitable place. You could rename loglevel_init to
console_common_init for example.

>    on a more generic place. Which file is the best one to learn the handling
>    of the
>    function "globalvar_add_simple_bool"?

You pass it an int pointer which is treated as boolean variable. Setting
the globalvar on the command line directly changes the integer variable.
Other than that, grep the source, there are not so many users of that
function.

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
