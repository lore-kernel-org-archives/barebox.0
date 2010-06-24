Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1ORkiP-0005MD-QV
	for barebox@lists.infradead.org; Thu, 24 Jun 2010 11:35:30 +0000
Date: Thu, 24 Jun 2010 13:35:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100624113527.GA12115@pengutronix.de>
References: <60663606c7efe2aaede86326339cb620c0a6bf8a.1277370124.git.baruch@tkos.co.il>
	<20100624111030.GZ12115@pengutronix.de>
	<20100624111917.GE27906@jasper.tkos.co.il>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100624111917.GE27906@jasper.tkos.co.il>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] envfs: fix build warning
To: Baruch Siach <baruch@tkos.co.il>
Cc: barebox@lists.infradead.org

On Thu, Jun 24, 2010 at 02:19:17PM +0300, Baruch Siach wrote:
> Hi Sascha,
> 
> On Thu, Jun 24, 2010 at 01:10:30PM +0200, Sascha Hauer wrote:
> > On Thu, Jun 24, 2010 at 12:04:59PM +0300, Baruch Siach wrote:
> > > __LITTLE_ENDIAN or __BIG_ENDIAN are not always defined. E.g. the CodeSourcery
> > > G++ Lite 2010q1 for ARM (4.4.1) does not define __BIG_ENDIAN. This causes a
> > > compile time warning.
> > 
> > Maybe we should rather define __LITTLE_ENDIAN and __BIG_ENDIAN
> > in include/linux/byteorder.h.
> 
> You mean include/linux/byteorder/generic.h? I now see that __LITTLE_ENDIAN and 
> __BIG_ENDIAN are defined in include/linux/byteorder/little_endian.h and 
> include/linux/byteorder/big_endian.h respectively. Should we add their 
> complement?

Yes.

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
