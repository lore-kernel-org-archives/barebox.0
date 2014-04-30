Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WfYb9-00054R-Aq
 for barebox@lists.infradead.org; Wed, 30 Apr 2014 17:47:12 +0000
Date: Wed, 30 Apr 2014 19:46:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140430174647.GP5858@pengutronix.de>
References: <1398848852-29093-1-git-send-email-c.hemp@phytec.de>
 <1398856529.154234152@f68.i.mail.ru>
 <20140430125213.GJ5858@pengutronix.de>
 <1398867314.6055.11.camel@lws-hemp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1398867314.6055.11.camel@lws-hemp>
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
Subject: Re: [PATCH v2] imx6: Add support for phyCARD-i.MX6
To: Christian Hemp <c.hemp@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, Apr 30, 2014 at 04:15:14PM +0200, Christian Hemp wrote:
> Hello Sascha,
> > > > +++ b/arch/arm/boards/phytec-phycard-imx6/lowlevel.c
> > > ...
> > > > +static inline void setup_uart(void)
> > > > +{
> > > > +	void __iomem *ccmbase = (void *)MX6_CCM_BASE_ADDR;
> > > 
> > > = IOMEM(MX6_CCM_BASE_ADDR);
> > > and so on...
> 
> Should I leave it as it is or change it to Alexanders version?

Don't worry, I changed this while applying.

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
