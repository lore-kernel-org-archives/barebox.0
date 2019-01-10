Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ghfso-0000w3-JF
 for barebox@lists.infradead.org; Thu, 10 Jan 2019 19:20:52 +0000
Received: by mail-wr1-x441.google.com with SMTP id s12so12713521wrt.4
 for <barebox@lists.infradead.org>; Thu, 10 Jan 2019 11:20:50 -0800 (PST)
MIME-Version: 1.0
References: <20190109071210.18896-1-andrew.smirnov@gmail.com>
 <20190109071210.18896-11-andrew.smirnov@gmail.com>
 <20190110073714.effcrzo3b32hyydc@pengutronix.de>
In-Reply-To: <20190110073714.effcrzo3b32hyydc@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 10 Jan 2019 11:20:37 -0800
Message-ID: <CAHQ1cqHrRmGbCLBzZSaJabO8zprYZQd+DJ7c_FQapPvi0eq0yw@mail.gmail.com>
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
Subject: Re: [PATCH 10/21] soc: imx: gpcv2: fix regulator deferred probe
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Jan 9, 2019 at 11:37 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> On Tue, Jan 08, 2019 at 11:11:59PM -0800, Andrey Smirnov wrote:
> > Port of a Linux commit 9e01e2d56db23485a75864b6aeee8e443f024ddb
> >
> >   If a regulator requests a deferred probe, the power domain gets
> >   initialized twice. This leads to a list double add (without
> >   list debugging the kernel hangs due to the double add later):
> >
> >     WARNING: CPU: 0 PID: 19 at lib/list_debug.c:31 __list_add_valid+0xbc/0xc4
> >     list_add double add: new=c1229754, prev=c12383b4, next=c1229754.
> >
> >   Initialize the power domain after we get the regulator. Also do
> >   not print an error in case the regulator defers probing.
> >
> >   Cc: Fabio Estevam <fabio.estevam@nxp.com>
> >   Cc: Andrey Smirnov <andrew.smirnov@gmail.com>
> >   Cc: linux-arm-kernel@lists.infradead.org
> >   Cc: linux-kernel@vger.kernel.org
> >   Fixes: 03aa12629fc4 ("soc: imx: Add GPCv2 power gating driver")
> >   Signed-off-by: Stefan Agner <stefan@agner.ch>
> >   Acked-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> >   Tested-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> >   Signed-off-by: Shawn Guo <shawnguo@kernel.org>
> >
> > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > ---
> >  drivers/soc/imx/gpcv2.c | 15 ++++++++-------
> >  1 file changed, 8 insertions(+), 7 deletions(-)
>
> This file has been added in the last patch. Please squash this patch and
> the next one into it.
>

I purposefully kept this patch separate, since the bugs weren't deal
breakers (PCI still worked despite my bugs) and it would be easier to
see that the fixes that came later were back-ported to BB. I guess I
can squash this in v2.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
