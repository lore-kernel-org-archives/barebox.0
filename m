Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x231.google.com ([2a00:1450:4010:c07::231])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eXWYs-0002DV-4E
 for barebox@lists.infradead.org; Fri, 05 Jan 2018 18:17:48 +0000
Received: by mail-lf0-x231.google.com with SMTP id h5so6019335lfj.2
 for <barebox@lists.infradead.org>; Fri, 05 Jan 2018 10:17:35 -0800 (PST)
Date: Fri, 5 Jan 2018 21:17:30 +0300
From: Peter Mamonov <pmamonov@gmail.com>
Message-ID: <20180105181730.q65oevjnuixvn5k2@localhost>
References: <20171220104814.4snxmloobeywnuwb@localhost.localdomain>
 <20171221104811.3o2tesuqfr7ej477@localhost.localdomain>
 <20180105114419.pfb3ouxfogen4y6f@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180105114419.pfb3ouxfogen4y6f@pengutronix.de>
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
Subject: Re: command: hashsum: md5sum reports wrong sum for the file named
 4k.bin
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Jan 05, 2018 at 12:44:19PM +0100, Sascha Hauer wrote:
> Hi Peter,
> 
> On Thu, Dec 21, 2017 at 01:48:11PM +0300, Peter Mamonov wrote:
> > On Wed, Dec 20, 2017 at 01:48:14PM +0300, Peter Mamonov wrote:
> > > Hi,
> > > 
> > > The md5sum command reports wrong sum for a file named 4k.bin and, I guess, for 
> > > other files named alike. Here are the commands to reproduce the bug:
> > 
> > The problem lays in __do_digest() function: 
> >  - it initializes variables `start` and `size` at commands/digest.c:38
> >  - then it calls parse_area_spec(*argv, &start, &size) at commands/digest.c:42
> >  - parse_area_spec() returns error as it should, however it changes the value 
> >  of the `start` at lib/misc.c:87.
> >  - this causes digest algo to skip leading 4k of the data from the file.
> > 
> > I'm not quite sure what is the best solution:
> >  - prevent parse_area_spec() from setting start if it fails?
> >  - reinitialize start/size after unsuccessfull call to parse_area_spec()?
> 
> preventing parse_area_spec() from modifying start and size if it fails
> seems like a good idea.
> 
> However, this doesn't solve the problem, does it? parse_area_spec()
> only fails because the dot in 4k.bin is not valid, but if you name
> the file only '4k' then parse_area_spec() won't fail.
> The problem is that we cannot know whether '4k' is a file or an area.

You are right. However, there is no ambiguity in the "4k.bin" and similar 
cases, so we can fix at least this obvious problem.

Regards,
Peter

> 
> Right now I have no good idea how to make the command nonambiguous,
> but this will require an incompatible change to the commands arguments.
> 
> Sascha
> 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
