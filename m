Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YSK6b-0000Zi-Tx
 for barebox@lists.infradead.org; Mon, 02 Mar 2015 06:45:31 +0000
Date: Mon, 2 Mar 2015 07:45:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150302064507.GJ11010@pengutronix.de>
References: <1424682905-12451-1-git-send-email-s.trumtrar@pengutronix.de>
 <1424682905-12451-4-git-send-email-s.trumtrar@pengutronix.de>
 <1424683689.29479.3.camel@pengutronix.de>
 <20150225084429.GR7994@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150225084429.GR7994@pengutronix.de>
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
Subject: Re: [PATCH v2 3/3] ARM: socfpga: add Altera SoCFPGA Development Kit
 support
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Feb 25, 2015 at 09:44:29AM +0100, Steffen Trumtrar wrote:
> > > +&gmac1 {
> > > +	status = "okay";
> > > +	phy-mode = "rgmii";
> > > +
> > > +	rxd0-skew-ps = <0>;
> > > +	rxd1-skew-ps = <0>;
> > > +	rxd2-skew-ps = <0>;
> > > +	rxd3-skew-ps = <0>;
> > > +	txen-skew-ps = <0>;
> > > +	txc-skew-ps = <2600>;
> > > +	rxdv-skew-ps = <0>;
> > > +	rxc-skew-ps = <2000>;
> > > +};
> > 
> > It seems that with the DT-based configuration of the skew values, the
> > phy_fixup in board.c is not necessary.
> 
> Yes, one would expect that. But it didn't work, so I decided to not
> debug this right now.

I applied this series for now, but it would be nice if you could have a
look what's going wrong there.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
