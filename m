Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQoax-0002Oa-Ii
 for barebox@lists.infradead.org; Wed, 15 May 2019 07:45:01 +0000
Date: Wed, 15 May 2019 09:44:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190515074457.mh77wvyugj6efscl@pengutronix.de>
References: <CA+T6rvHH7Nd+xTAch5tQqJ6Y5tKKWHcfGjGuDp9BYJEjOvrxBA@mail.gmail.com>
 <bafb7600-4351-2c80-d78f-35d59ae559ba@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bafb7600-4351-2c80-d78f-35d59ae559ba@pengutronix.de>
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
Subject: Re: distclean removing LICENSES .gitignores
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, May 13, 2019 at 05:05:39PM +0200, Ahmad Fatoum wrote:
> Hello Geordan,
> 
> On 13/5/19 00:17, Geordan Neukum wrote:
> > When on the master branch, I noticed that running a "make distclean"
> > will remove:
> > 
> >     - LICENSES/exceptions/.gitignore
> > 
> >     - LICENSES/other/.gitignore
> > 
> > 
> > It looks like this is due to matching the pattern '-o size 0' in the
> > top-level barebox makefile under the distclean target.
> > 
> > Is this the desired behavior?
> 
> Nope, this behavior isn't desired. I added the files, to have git
> index the directories. IIRC, otherwise kernel checkpatch.pl laments their
> absence. Maybe we should add a comment describing the purpose and then
> these files aren't totally empty?

barebox has its own checkpatch script which doesn't have the problem yet
as it's copied from the kernel when there was no SPDX check, so we need
an updated checkpatch to even get this problem ;)

Then in the Kernel "other" was renamed to "deprecated", so with the
current spdxcheck.py we get an exception in the kernel aswell. There
were two patches sent for this on LKML:

https://lkml.org/lkml/2019/5/11/158

But honestly I don't know the intention why spdxcheck expects certain
directories to exist instead of looking which directories are actually
there.

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
