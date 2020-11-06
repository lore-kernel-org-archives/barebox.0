Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-co1nam11on2129.outbound.protection.outlook.com
 ([40.107.220.129] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kb0VQ-0007bm-3H
 for barebox@lists.infradead.org; Fri, 06 Nov 2020 12:06:15 +0000
From: "Barbier, Renaud" <renaud.barbier@abaco.com>
Date: Fri, 6 Nov 2020 12:06:08 +0000
Message-ID: <MN2PR16MB31357702729D2810D0A7926D91ED0@MN2PR16MB3135.namprd16.prod.outlook.com>
References: <MN2PR16MB3135009790C9E05DD2D996BB91170@MN2PR16MB3135.namprd16.prod.outlook.com>
 <20201102131343.eez2qi4pxq56gfo6@pengutronix.de>
In-Reply-To: <20201102131343.eez2qi4pxq56gfo6@pengutronix.de>
Content-Language: en-US
MIME-Version: 1.0
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
Subject: RE: bareboxenv-target
To: Roland Hieber <rhi@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

> >
> >
> > It looks like sysroot is missing as when I add to scripts/Makefile:
> > ifdef SDKTARGETSYSROOT
> >     userccflags += --sysroot=$(SDKTARGETSYSROOT)
> > endif
> >
> > It builds.
> >
> > Not much came out from search on google but one thread that refers to
> this problem when building with Yocto.

In barebox.inc of the Yocto recipe, I replaced
export TARGETCFLAGS="${TARGET_LDFLAGS}${HOST_CC_ARCH}${TOOLCHAIN_OPTIONS}"
with
export userccflags="${TARGET_LDFLAGS}${HOST_CC_ARCH}${TOOLCHAIN_OPTIONS}"

It builds.

Would that  be the way to pass sysroot to scripts/Makefile?

Cheers,
Renaud
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
