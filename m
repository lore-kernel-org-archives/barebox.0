Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ue120-0001ZK-7b
 for barebox@lists.infradead.org; Sun, 19 May 2013 10:40:00 +0000
Date: Sun, 19 May 2013 12:39:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130519103936.GA32299@pengutronix.de>
References: <1368400146-30443-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <20130519073403.GY32299@pengutronix.de>
 <5198883E.5080803@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5198883E.5080803@gmail.com>
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
Subject: Re: [PATCH] of: add ranges address translation for default bus
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On Sun, May 19, 2013 at 10:07:26AM +0200, Sebastian Hesselbarth wrote:
> On 05/19/2013 09:34 AM, Sascha Hauer wrote:
> >Hi Sebastian,
> >
> >On Mon, May 13, 2013 at 01:09:06AM +0200, Sebastian Hesselbarth wrote:
> >>This patch adds address translation for default bus types. It has been
> >>shamelessly ported from Linux device tree address translation with the
> >>following exceptions:
> >>- only default bus map and translate are supported
> >>- of_bus has not been ported
> >>- check for #size-cells>  0 has been removed
> >>
> >>Signed-off-by: Sebastian Hesselbarth<sebastian.hesselbarth@gmail.com>
> >
> >I just gave this one a test.
> >
> >First of all you dropped 1:1 translation, see the attached fixup.
> 
> Sascha,
> 
> I know I dropped it, but have you tried empty/bool properties?
> I had no luck with an empty/bool ranges, so I removed the 1:1
> translation by empty property and wanted to take a look at bool
> props first.

Probably because of_get_property doesn't seem to be 100% Linux
compatible. Our version returns NULL for empty properties whereas
the Linux version seems to return some valid pointer for zero length
properties.

I used of_find_property instead in my fixup, but maybe it's better
to change the behaviour of of_get_property instead.

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
