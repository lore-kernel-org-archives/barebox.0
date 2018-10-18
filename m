Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gD2fA-0006eh-AU
 for barebox@lists.infradead.org; Thu, 18 Oct 2018 07:24:10 +0000
Date: Thu, 18 Oct 2018 09:23:56 +0200
From: "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Message-ID: <20181018072356.cnkzl62v4yebvifg@pengutronix.de>
References: <20181017084707.11878-1-s.hauer@pengutronix.de>
 <5017d68f9bbcab2c4e3af5c20d29d3452fe6410f.camel@eckelmann.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5017d68f9bbcab2c4e3af5c20d29d3452fe6410f.camel@eckelmann.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] of: fix reproducible node name for legacy vs. new
 partition binding
To: "Schenk, Gavin" <G.Schenk@eckelmann.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, =?iso-8859-15?Q?G=F6tzinger=2C?= Jonathan <J.Goetzinger@eckelmann.de>

Hi Gavin,

On Wed, Oct 17, 2018 at 11:07:45AM +0000, Schenk, Gavin wrote:
> Hi,
> =

> On Wed, 2018-10-17 at 10:47 +0200, Sascha Hauer wrote:
> > the of_reproducible_name mechanism is used to find a partition node
> > from the barebox devicetree in the Linux devicetree. Unfortunately
> > we have two different partition bindings. In the legacy one the partiti=
on
> > nodes are directly under the hardware devicenode whereas in the new
> > binding the partitions are under an additional partitions subnode.
> > This means we get two different (not so) reproducible names when
> > the barebox devicetree uses the legacy binding and the Linux devicetree
> > uses the new binding (or the other way round). To get the same
> > name then for these cases we drop the partitions subnode from the
> > reproducible name.
> > =

> > This makes the partition fixup in barebox-state work when the barebox
> > devicetree uses another binding than the Linux devicetree.
> > =

> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > Tested-by: Ulrich =D6lmann <u.oelmann@pengutronix.de>
> Tested-by: Gavin Schenk <g.schenk@eckelmann.de>
> =

> What I did to test it:
> =

> 1. [x] of_partition_binding=3Dnew in barebox and barebox-state in Linux i=
s working.
> 2. [ ] set of_partition_binding=3Dlegacy in barebox and barebox-state in =
Linux fails.
> 3. [x] apply the patch and rebuild and install barebox
> 4. [x] set of_partition_binding=3Dlegacy and barebox-state in Linux is wo=
rking again \o/.
> =

> Is this test sufficient?
> If not what are other usefull testcases?

Thanks for testing.

Another test would be if you use the legacy binding in your barebox
devicetree and then set of_partition_binding=3Dnew. Without this patch it
should fail in Linux and with it it should work. That's the less
important case though.

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
