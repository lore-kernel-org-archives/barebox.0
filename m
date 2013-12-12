Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vr1zk-0005qZ-5B
 for barebox@lists.infradead.org; Thu, 12 Dec 2013 08:51:44 +0000
Date: Thu, 12 Dec 2013 09:51:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131212085121.GJ24559@pengutronix.de>
References: <1386409020-11914-1-git-send-email-eric@eukrea.com>
 <1386409020-11914-2-git-send-email-eric@eukrea.com>
 <20131209132721.GG27628@ns203013.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131209132721.GG27628@ns203013.ovh.net>
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
Subject: Re: [PATCH 2/7] at91: introduce sama5d3's SMC support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Dec 09, 2013 at 02:27:21PM +0100, Jean-Christophe PLAGNIOL-VILLARD =
wrote:
> On 10:36 Sat 07 Dec     , Eric B??nard wrote:
> > there is a new register (timings) vs SAM9 and thus a new mapping
> > =

> > Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> > ---
> >  arch/arm/mach-at91/generic.h                |   7 ++
> >  arch/arm/mach-at91/include/mach/sama5_smc.h | 124 +++++++++++++++++++++
> >  arch/arm/mach-at91/sama5_smc.c              | 161 ++++++++++++++++++++=
++++++++
> >  3 files changed, 292 insertions(+)
> >  create mode 100644 arch/arm/mach-at91/include/mach/sama5_smc.h
> >  create mode 100644 arch/arm/mach-at91/sama5_smc.c
> =

> nack the sama5 smc share part of the same IP as the sam9 do not duplicate=
 code
> share it

Indeed the code looks very similar. We could use id_table to distinguish
between both.

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
