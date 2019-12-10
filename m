Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ied1E-0004RO-W1
 for barebox@lists.infradead.org; Tue, 10 Dec 2019 10:45:31 +0000
Date: Tue, 10 Dec 2019 11:45:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191210104525.oee5ygpzwyhtzvha@pengutronix.de>
References: <1575894703-316604-1-git-send-email-s.riedmueller@phytec.de>
 <1575894703-316604-5-git-send-email-s.riedmueller@phytec.de>
 <20191209153740.w7klpla2pi6xlnnq@pengutronix.de>
 <0edc4e68-8fd6-8e6d-450a-41db3ae975be@phytec.de>
 <20191210080554.gzar2hlvhbzjtewt@pengutronix.de>
 <b3a97721-c6a9-0458-5c55-f7feab869451@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b3a97721-c6a9-0458-5c55-f7feab869451@phytec.de>
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
Subject: Re: [PATCH v2 5/8] ARM: dts: imx6: phycard: Use partname for
 environment device-path
To: Stefan =?iso-8859-15?Q?Riedm=FCller?= <s.riedmueller@phytec.de>
Cc: barebox@lists.infradead.org

On Tue, Dec 10, 2019 at 09:15:52AM +0100, Stefan Riedm=FCller wrote:
> Hi Sascha,
> =

> On 10.12.19 09:05, Sascha Hauer wrote:
> > On Tue, Dec 10, 2019 at 08:50:41AM +0100, Stefan Riedm=FCller wrote:
> > > Hi Sascha,
> > > =

> > > On 09.12.19 16:37, Sascha Hauer wrote:
> > > > On Mon, Dec 09, 2019 at 01:31:40PM +0100, Stefan Riedmueller wrote:
> > > > > Change environment device-path from using a separate label to
> > > > > referencing a device plus partname.
> > > > =

> > > > Why? The way it was is fine.
> > > =

> > > Just to be consistent with phyCORE and phyFLEX. Is there a downside I=
'm not
> > > aware of?
> > =

> > It feels more natural to directly point to the partition, that's why I
> > prefer that way. So if you don't have a good reason I suggest to convert
> > it the other way round for consistency
> =

> I will recheck if there was a specific reason for us to use the partname
> approach. But you can drop this patch for now.

I just tried. The series doesn't apply on current master. Could you
rebase it?

Sascha

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
