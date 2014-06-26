Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X0F3Y-0006Ns-6i
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 19:10:00 +0000
Date: Thu, 26 Jun 2014 21:09:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140626190937.GF14257@pengutronix.de>
References: <alpine.LFD.2.11.1406261425060.31619@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.11.1406261425060.31619@localhost>
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
Subject: Re: a couple consistent misspellings that could be fixed
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Thu, Jun 26, 2014 at 02:28:21PM -0400, Robert P. J. Day wrote:
> 
>   being the pedant that i am, i notice the following widespread
> misspellings in the barebox codebase:
> 
> * "existance" (should be existence)
> 
>   actually, not that widespread, only three, all comments so easy to
> fix
> 
> * "persistant" (should be persistent)
> 
>   this one is much uglier -- a couple dozen, including its use in
> runnable code itself. just run:
> 
>   $ grep -r persistant *

Uh, quite a few.

> 
> to see what i mean.
> 
>   what's the policy for fixing a spelling error that spills over from
> the comments into compilable code itself?

You can fix them all in a single patch, no need to split it up. At least
not as long there's not a function which uses 'persistent' and
'persistant' as two different variables ;)

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
