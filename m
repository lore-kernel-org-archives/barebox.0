Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UwuG8-0004S1-Bj
 for barebox@lists.infradead.org; Wed, 10 Jul 2013 13:16:40 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1UwuFm-00079x-Jc
 for barebox@lists.infradead.org; Wed, 10 Jul 2013 15:16:18 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1UwuFm-0005vG-Ij
 for barebox@lists.infradead.org; Wed, 10 Jul 2013 15:16:18 +0200
Date: Wed, 10 Jul 2013 15:16:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130710131618.GF516@pengutronix.de>
References: <1373439641-18852-1-git-send-email-shc_work@mail.ru>
 <20130710125236.GE29932@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130710125236.GE29932@pengutronix.de>
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
Subject: Re: [PATCH 1/3] ARM: Add "verbose" parameter for start_linux procedure
To: barebox@lists.infradead.org

On Wed, Jul 10, 2013 at 02:52:36PM +0200, Michael Olbrich wrote:
> On Wed, Jul 10, 2013 at 11:00:39AM +0400, Alexander Shiyan wrote:
> > This patch will make a normal booting more silent.
> 
> Why? Booting the kernel is the most important task for barebox. Why
> shouldn't we see a few lines about what is actually happening here by
> default.
> 
> If you really want no output then introduce a 'quiet' option.

I think we really need different verbosity levels. standard would be

- print commandline
- print which kernel image is started
- print which devicetree (if any) is used

There's more I'd like to output optionally, but it's also interesting to
output less in some cases.

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
