Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x22e.google.com ([2a00:1450:400c:c00::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W3oOp-00081L-2O
 for barebox@lists.infradead.org; Thu, 16 Jan 2014 14:58:27 +0000
Received: by mail-wg0-f46.google.com with SMTP id x12so3216462wgg.13
 for <barebox@lists.infradead.org>; Thu, 16 Jan 2014 06:58:03 -0800 (PST)
Date: Thu, 16 Jan 2014 15:57:57 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140116145756.GA21736@omega>
References: <1389770794-20487-1-git-send-email-s.hauer@pengutronix.de>
 <20140115093607.GP16215@pengutronix.de>
 <20140115094154.GA12036@omega>
 <20140116132809.GV16215@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140116132809.GV16215@pengutronix.de>
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
Subject: Re: [PATCH 1/2] ARM: dts: rename imx6q-dmo-realq7.dts to
 imx6q-dmo-edmqmx6.dts
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Jan 16, 2014 at 02:28:09PM +0100, Sascha Hauer wrote:
> On Wed, Jan 15, 2014 at 10:41:56AM +0100, Alexander Aring wrote:
> > Hi Sascha,
> > 
> > On Wed, Jan 15, 2014 at 10:36:07AM +0100, Sascha Hauer wrote:
> > > On Wed, Jan 15, 2014 at 08:26:33AM +0100, Sascha Hauer wrote:
> > > > As this name is used in the Kernel.
> > > > 
> > > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > > ---
> > > >  arch/arm/dts/Makefile                                        | 4 ++--
> > > >  arch/arm/dts/{imx6q-dmo-realq7.dts => imx6q-dmo-edmqmx6.dts} | 0
> > > >  2 files changed, 2 insertions(+), 2 deletions(-)
> > > >  rename arch/arm/dts/{imx6q-dmo-realq7.dts => imx6q-dmo-edmqmx6.dts} (100%)
> > ...
> > >  {
> > > @@ -155,7 +155,7 @@ ENTRY_FUNCTION(start_imx6_realq7, r0, r1, r2)
> > 
> > then the name of ENTRY_FUNCTION too?
> 
> I'll send a patch later renaming the whole board. For now I just want to
> be compatible with the kernel filename which makes the files easier to
> compare.
> 
Now I see the 'extern' keyword in this patch. Makes sense to change this right
now. So it's still compileable. :-)

Thanks Sascha for your reply.

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
