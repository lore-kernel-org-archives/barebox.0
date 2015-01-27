Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.microcatalog.org.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YG2Z7-0007In-Ft
 for barebox@lists.infradead.org; Tue, 27 Jan 2015 09:36:11 +0000
From: Christian Hemp <c.hemp@phytec.de>
Date: Tue, 27 Jan 2015 10:35:42 +0100
Message-ID: <4760408.BfXKAVH3vr@lws-hemp>
In-Reply-To: <20150127080927.GT12209@pengutronix.de>
References: <1422013301-16827-1-git-send-email-d.lavnikevich@sam-solutions.com>
 <1422013735-19774-1-git-send-email-d.lavnikevich@sam-solutions.com>
 <20150127080927.GT12209@pengutronix.de>
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
Subject: Re: [PATCH 2/2] dts:imx6:pfla02: Align nand partitions by 512k
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Dmitry Lavnikevich <d.lavnikevich@sam-solutions.com>

Hello Sascha,

Am Dienstag, 27. Januar 2015, 09:09:27 schrieb Sascha Hauer:
> + Teresa, Jan and Christian
> 
> On Fri, Jan 23, 2015 at 02:48:55PM +0300, Dmitry Lavnikevich wrote:
> > NAND chip used on phyFLEX-i.MX6 with 4GB NAND (MT29F32G08AFACAWP) has
> > 512k eraseblock size.
> > 
> > Align NAND partitions by 512k to fix erase fails.
> > 
> > Signed-off-by: Dmitry Lavnikevich <d.lavnikevich@sam-solutions.com>
> > ---
> > 
> >  arch/arm/dts/imx6qdl-phytec-pfla02.dtsi | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
> > 
> > diff --git a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
> > b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi index
> > 32ce088fee48..52b279057a33 100644
> > --- a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
> > +++ b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
> > @@ -95,22 +95,22 @@
> > 
> >  	partition@1 {
> >  	
> >  		label = "barebox-environment";
> > 
> > -		reg = <0x400000 0x20000>;
> > +		reg = <0x400000 0x80000>;
> > 
> >  	};
> >  	
> >  	partition@2 {
> >  	
> >  		label = "oftree";
> > 
> > -		reg = <0x420000 0x20000>;
> > +		reg = <0x480000 0x80000>;
> > 
> >  	};
> 
> The partition size for barebox-environment and the devicetree used to be
> one eraseblock only. Now it's again only one eraseblock at least for the
> 4k Page size variants. If one of those blocks is bad the board becomes
> unusable. I think the partitions should be at least two eraseblocks.
> That of course would make them quite big.
> 
> Any opinions about this?

we agree with your opinion.

Chritian

> 
> Sascha


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
