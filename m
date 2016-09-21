Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bmcbC-0002sK-LA
 for barebox@lists.infradead.org; Wed, 21 Sep 2016 08:09:48 +0000
Date: Wed, 21 Sep 2016 10:09:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160921080923.fdmn4k2ey2czh7l6@pengutronix.de>
References: <20160917170731.GA30325@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160917170731.GA30325@ravnborg.org>
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
Subject: Re: [PATCH] strings: new command
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

On Sat, Sep 17, 2016 at 07:07:31PM +0200, Sam Ravnborg wrote:
> From 724382cf9aa173b6ced9fd213bbb369d9a5e3739 Mon Sep 17 00:00:00 2001
> From: Sam Ravnborg <sam@ravnborg.org>
> Date: Sat, 17 Sep 2016 19:01:15 +0200
> Subject: [PATCH 1/1] strings: new command
> 
> Implement a simple version of strings that will print
> printable strings from one or more files.
> Strings shall be at least 4 chars before thay are printed
> 
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> ---
> 
> I was in a situation where I missed "strings".
> So here it is....
> I started out with cat.c - but ended up re-writing everything.
> 
> It has seen light testing on my x86 box.
> Ran it through checkpatch for good measure - fixed a few things.
> 
> The location in Makefile seems random, so I just put it next to cat.
> 
> Before applying please consider if strings is really
> general useful in barebox.

The first thing I tried is "strings /dev/ram0" Which gave me quite a
long list, especially when Linux was bootet before ;)

I first thought this command might be useful for debugging, but probably
it isn't because usually one wants to pipe the result through grep to
limit the output. Also the next interesting thing to know is the
position of a string which this command does not tell us.

I won't apply it, but it's on the list for reference if someone wants to
use it. Maybe he/she can then tell us a good reason why this command should
be merged.

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
