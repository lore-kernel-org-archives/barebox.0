Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1THexA-0005cK-1H
 for barebox@lists.infradead.org; Fri, 28 Sep 2012 18:06:21 +0000
Date: Fri, 28 Sep 2012 20:06:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120928180618.GK1322@pengutronix.de>
References: <20120913172220.GB20834@game.jcrosoft.org>
 <1347558023-25680-1-git-send-email-plagnioj@jcrosoft.com>
 <1347558023-25680-7-git-send-email-plagnioj@jcrosoft.com>
 <20120928104846.GI24458@pengutronix.de>
 <20120928154801.GK26553@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120928154801.GK26553@game.jcrosoft.org>
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
Subject: Re: [PATCH 7/7] defaultenv-2: add boot sequence
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Sep 28, 2012 at 05:48:01PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 12:48 Fri 28 Sep     , Sascha Hauer wrote:
> > 
> > boot [method]: If called without method, it will iterate over
> >                /env/boot.d/*. If that directory does not exist,
> >                it will fall back to a single boot source, which you
> >                haven't specified, so the script will complain. If you
> >                give [method], that will be one of /env/boot/[method]
> >                or /env/boot.d/[method]. If [method] exists in both
> >                directories, the behaviour will be unspecified.
> This was your request to do this this way

Whatever I said, until recently I haven't even noticed that
this script recursively calls itself. I also did not realize
that this script intermixed two completely different things with
10 lines boot sequence, 10 lines not and then 10 lines maybe boot
sequence.

> 
> THe first version was keeping the old boot.default and ask you to enable the
> boot sequence specifycally and then you ask me to drop this to make the boot
> sequence by default
> 
> so now I've hardware ready to be send on the way with this next with boot
> sequence mandatory

The -next branch is explicitly declared non stable. You shouldn't ship
prerelease software and expect that it doesn't change.

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
