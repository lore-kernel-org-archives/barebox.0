Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x231.google.com ([2a00:1450:400c:c03::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W3MzQ-0000lU-UW
 for barebox@lists.infradead.org; Wed, 15 Jan 2014 09:42:25 +0000
Received: by mail-we0-f177.google.com with SMTP id x55so1462711wes.8
 for <barebox@lists.infradead.org>; Wed, 15 Jan 2014 01:42:01 -0800 (PST)
Date: Wed, 15 Jan 2014 10:41:56 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140115094154.GA12036@omega>
References: <1389770794-20487-1-git-send-email-s.hauer@pengutronix.de>
 <20140115093607.GP16215@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140115093607.GP16215@pengutronix.de>
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

Hi Sascha,

On Wed, Jan 15, 2014 at 10:36:07AM +0100, Sascha Hauer wrote:
> On Wed, Jan 15, 2014 at 08:26:33AM +0100, Sascha Hauer wrote:
> > As this name is used in the Kernel.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/dts/Makefile                                        | 4 ++--
> >  arch/arm/dts/{imx6q-dmo-realq7.dts => imx6q-dmo-edmqmx6.dts} | 0
> >  2 files changed, 2 insertions(+), 2 deletions(-)
> >  rename arch/arm/dts/{imx6q-dmo-realq7.dts => imx6q-dmo-edmqmx6.dts} (100%)
...
>  {
> @@ -155,7 +155,7 @@ ENTRY_FUNCTION(start_imx6_realq7, r0, r1, r2)

then the name of ENTRY_FUNCTION too?

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
