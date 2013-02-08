Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U3jKf-0000Zk-LP
 for barebox@lists.infradead.org; Fri, 08 Feb 2013 08:29:18 +0000
Date: Fri, 8 Feb 2013 09:29:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130208082914.GE1906@pengutronix.de>
References: <1360269380-28155-1-git-send-email-alex.aring@gmail.com>
 <20130207213524.GC1906@pengutronix.de>
 <20130207214156.GD1906@pengutronix.de>
 <20130207215053.GF2572@x61s.8.8.8.8>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130207215053.GF2572@x61s.8.8.8.8>
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
Subject: Re: [PATCH 0/4] Small fixes in barebox
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Feb 07, 2013 at 10:50:54PM +0100, Alexander Aring wrote:
> Hi,
> 
> On Thu, Feb 07, 2013 at 10:41:56PM +0100, Sascha Hauer wrote:
> > On Thu, Feb 07, 2013 at 10:35:24PM +0100, Sascha Hauer wrote:
> > > On Thu, Feb 07, 2013 at 09:36:16PM +0100, Alexander Aring wrote:
> > > > First I tried to change getopt optstring argument to "const char *"
> > > > and I test it with an allyesconfig for compiler warnings.
> > > > 
> > > > Then there popup some compile errors, which I tried to fix.
> > > > 
> > > > I am not happy with some of these solutions. Maybe someone have an idea
> > > > how we can make it better.
> > > > 
> > > > hush: add getopt only if it enabled
> > > >  - I don't know if this needs a fix. But if we disable getopt there is a
> > > >    no-op getopt implementation in the command list. This patch don't add
> > > >    getopt to the command list at runtime, but the no-op implementation is
> > > >    still there. Maybe a compiletime solution is better to remove the
> > > >    no-op implementation.
> > > 
> > > I don't understand. getopt is not there if CONFIG_HUSH_GETOPT is
> > > disabled. It's ifdeffed out.
> > 
> > Ah, now I got it. You miss the 'unknown command... message'. Then the
> > patch seems fine.
> >
> 
> Yea, it's only a small thing... I don't know if this is necessary. :-)
> Maybe there is a special reason for that no error occurs.

Well the patch will result in dropping the unnecessary strcmp, so a
slightly smaller binary.

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
