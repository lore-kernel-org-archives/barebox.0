Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from outbound1a.ore.mailhop.org ([54.213.22.21])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bjVaA-0001EZ-Od
 for barebox@lists.infradead.org; Mon, 12 Sep 2016 18:03:52 +0000
Date: Mon, 12 Sep 2016 18:03:25 +0000
From: Jason Cooper <jason@lakedaemon.net>
Message-ID: <20160912180324.GJ12916@io.lakedaemon.net>
References: <1473435824-7830-1-git-send-email-akurz@blala.de>
 <20160912062643.6ulohzrsmt44uwvi@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160912062643.6ulohzrsmt44uwvi@pengutronix.de>
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
Subject: Re: [PATCH 1/6] ARM: add common definitions for i.MX50 SOC
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Alexander Kurz <akurz@blala.de>

On Mon, Sep 12, 2016 at 08:26:43AM +0200, Sascha Hauer wrote:
> On Fri, Sep 09, 2016 at 05:43:39PM +0200, Alexander Kurz wrote:
> > Signed-off-by: Alexander Kurz <akurz@blala.de>
> > ---
> >  Documentation/boards/imx.rst                   |  1 +
> >  arch/arm/mach-imx/include/mach/generic.h       | 13 +++++++++++++
> >  arch/arm/mach-imx/include/mach/imx_cpu_types.h |  1 +
> >  3 files changed, 15 insertions(+)
> 
> Seems to be straight forward to add i.MX50 support. I have nothing to
> add, except: Applied, thanks
> 
> Out of curiosity: What device do you use with i.MX50? Is it some E-Book
> reader again?

http://downloads.sandisk.com/downloads/qsg/wmd-qsg-en.pdf

Has an i.MX50 with a ti wifi card.  Basically a battery powered hotspot.
Now I gotta go see if I can find it in my box 'o boards. :-)

thx,

Jason.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
