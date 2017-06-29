Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dQUxz-0007XE-BU
 for barebox@lists.infradead.org; Thu, 29 Jun 2017 08:38:27 +0000
Message-ID: <1498725475.2315.29.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 29 Jun 2017 10:37:55 +0200
In-Reply-To: <228fff5b-6629-368c-b491-34cc37e4ee8e@eurekelettronica.it>
References: <63687e34-f354-81d3-aed7-1a59866925c5@eurekelettronica.it>
 <2f43179e-2aa0-1dba-eafa-a9c0025afd24@eurekelettronica.it>
 <1487689380.2268.18.camel@pengutronix.de>
 <82857526-9f9a-2878-9b8e-070f124e2a41@eurekelettronica.it>
 <20170621063246.wdfct6r2boyx4xo3@pengutronix.de>
 <126e2527-f179-0c82-c384-c6c975a7c8e9@eurekelettronica.it>
 <1498045832.2904.105.camel@pengutronix.de>
 <3f12f02e-cccc-1edb-94d1-8cff2b69c808@eurekelettronica.it>
 <1498059009.2904.108.camel@pengutronix.de>
 <aaba2d2b-6d53-07a7-bfdd-f70c22ad13c6@eurekelettronica.it>
 <f950d875-85a7-988a-5425-441a05339a7c@eurekelettronica.it>
 <1498466766.2414.5.camel@pengutronix.de>
 <5e3f93ae-e91a-8e89-9979-e90584c5ad3d@eurekelettronica.it>
 <228fff5b-6629-368c-b491-34cc37e4ee8e@eurekelettronica.it>
Mime-Version: 1.0
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
Subject: Re: Fwd: Barebox 2017.02 works great but no Linux Framebuffer... :-/
To: gianluca <gianlucarenzi@eurekelettronica.it>
Cc: barebox@lists.infradead.org

Am Mittwoch, den 28.06.2017, 18:55 +0200 schrieb gianluca:
> On 06/26/2017 03:28 PM, gianluca wrote:
> >>
> >> Your kernel is too old. Full support for the QuadPlus is a really
> >> recent addition. Either update your kernel to 4.12-rc, or add
> >> "clk_ignore_unused" to get at least basic functionality working.
> >>
> >
> >
> > Now I am compiling the 4.12-rc7. Hope this helps.
> >
> > I will keep you informed about that...
> >
> 
> 
> Now I am using the kernel 4.12-rc7 as the time of this writing.

And now your devicetree is too old, it's missing the PRE/PRG nodes on
imx6qp.

Regards,
Lucas


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
