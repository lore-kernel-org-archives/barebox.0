Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp5-g21.free.fr ([2a01:e0c:1:1599::14])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vr2yP-0007Cj-Hp
 for barebox@lists.infradead.org; Thu, 12 Dec 2013 09:54:27 +0000
Date: Thu, 12 Dec 2013 10:53:56 +0100
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20131212105356.7ec8641a@e6520eb>
In-Reply-To: <20131212085121.GJ24559@pengutronix.de>
References: <1386409020-11914-1-git-send-email-eric@eukrea.com>
 <1386409020-11914-2-git-send-email-eric@eukrea.com>
 <20131209132721.GG27628@ns203013.ovh.net>
 <20131212085121.GJ24559@pengutronix.de>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/7] at91: introduce sama5d3's SMC support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Le Thu, 12 Dec 2013 09:51:21 +0100,
Sascha Hauer <s.hauer@pengutronix.de> a =E9crit :

> On Mon, Dec 09, 2013 at 02:27:21PM +0100, Jean-Christophe PLAGNIOL-VILLAR=
D wrote:
> > On 10:36 Sat 07 Dec     , Eric B??nard wrote:
> > > there is a new register (timings) vs SAM9 and thus a new mapping
> > > =

> > > Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> > > ---
> > >  arch/arm/mach-at91/generic.h                |   7 ++
> > >  arch/arm/mach-at91/include/mach/sama5_smc.h | 124 ++++++++++++++++++=
+++
> > >  arch/arm/mach-at91/sama5_smc.c              | 161 ++++++++++++++++++=
++++++++++
> > >  3 files changed, 292 insertions(+)
> > >  create mode 100644 arch/arm/mach-at91/include/mach/sama5_smc.h
> > >  create mode 100644 arch/arm/mach-at91/sama5_smc.c
> > =

> > nack the sama5 smc share part of the same IP as the sam9 do not duplica=
te code
> > share it
> =

> Indeed the code looks very similar. We could use id_table to distinguish
> between both.
> =

I was expecting this request ;-)
I'll update the patch in the coming days.

Eric
it.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
