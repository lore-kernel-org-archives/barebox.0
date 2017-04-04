Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cvHoX-0001pl-BG
 for barebox@lists.infradead.org; Tue, 04 Apr 2017 06:19:40 +0000
Date: Tue, 4 Apr 2017 08:19:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170404061912.iutpfrgldubwxgrg@pengutronix.de>
References: <20170331070346.26878-1-s.hauer@pengutronix.de>
 <20170403201511.GA29829@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170403201511.GA29829@ravnborg.org>
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
Subject: Re: State patches
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sam,

On Mon, Apr 03, 2017 at 10:15:11PM +0200, Sam Ravnborg wrote:
> Hi Sasha.
> 
> On Fri, Mar 31, 2017 at 09:03:04AM +0200, Sascha Hauer wrote:
> > Hi All,
> > 
> > Here is a ton of patches working on the state framework:
> > 
> > - make code easier to follow
> >   - Drop cached backend, replace with open coded more direct code
> >   - drop backend as extra struct type
> >   - drop lazy init code
> > - update documentation
> > - Add keystore command
> >   Using authenticated state requires hardware support which currently
> >   is only available for i.MX6. At least for testing purposes a keystore
> >   command to set keys is useful. This way authenticated state can be
> >   tested without hardware support
> > - more robust conversion of the backend path to a device node
> > - make work better with NOR flash: The current code ended up reading
> >   from NOR Flash byte by byte which was painfully slow
> 
> From browsing the patches this also brings a nice boot time improvement.
> We avoid earsing the whole block (or whatever the right name is) until
> we have filled it up with state entries.
> I expect this tospeed up booting with at least a second on our target.
> 
> Will this require a newer version of dt-utils to work?
> (When we for example update the sate from linux userspace)

No new tools required, the binary format is still the same.

The circular format which fills up blocks before erasing them existed before
this series, but this format is the default now. So if you end up with
the new format because you haven't specified the format before, then
this format change is still passed to userspace in the device tree and
and the userspace utility will do the right thing.

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
