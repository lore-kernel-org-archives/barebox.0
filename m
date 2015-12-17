Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a9fs4-0004vu-IP
 for barebox@lists.infradead.org; Thu, 17 Dec 2015 21:13:56 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Thu, 17 Dec 2015 21:13:25 +0000
Message-ID: <1450386805.26955.221.camel@rtred1test09.kymeta.local>
References: <1450313304.26955.188.camel@rtred1test09.kymeta.local>
 <1450313640.26955.192.camel@rtred1test09.kymeta.local>
 <20151217100733.GD11966@pengutronix.de>
In-Reply-To: <20151217100733.GD11966@pengutronix.de>
Content-Language: en-US
Content-ID: <E0FBC58FE382E94586D57A731D242164@kymetacorp.com>
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
Subject: Re: [PATCH 4/4] socfpga: Find partition with environment via device
 tree
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>

On Thu, 2015-12-17 at 11:07 +0100, Sascha Hauer wrote:
> >  / {
> > +	chosen {
> > +		environment@0 {
> > +			compatible = "barebox,environment";
> > +			device-path = &mmc, "partname:1";
> > +			file-path = "barebox.env";
> > +		};
> > +	};
> > +
> 
> I applied this series as is. We might have to move this to the board dts
> files later as putting this into the SoC dtsi file does not allow the
> boards to put the environment somewhere else. That was not possible
> before this patch either, so this doesn't change much at the moment.

It's possible to change in the board dts by adding a
"/chosen/environment@0" node to the dts with whatever properties should
be overridden from the dtsi file's values.  Like how status = "disabled"
in dtsi is changed to status = "okay" in the board file.  I do this for
my board as "partname:1" isn't correct for me.
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
