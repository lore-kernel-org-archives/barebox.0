Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gZA32-0004Oi-2B
 for barebox@lists.infradead.org; Tue, 18 Dec 2018 07:44:13 +0000
Date: Tue, 18 Dec 2018 08:44:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181218074400.wg7fx3cl42tsk66g@pengutronix.de>
References: <1545044070.6213.11.camel@phytec.de>
 <20181217111407.bsdwqy2lqfinwj2p@pengutronix.de>
 <1545055337.6213.18.camel@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1545055337.6213.18.camel@phytec.de>
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
Subject: Re: AM335x NAND boot on next
To: Teresa Remmet <t.remmet@phytec.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Dec 17, 2018 at 03:02:17PM +0100, Teresa Remmet wrote:
> Hello Sascha,
> 
> Am Montag, den 17.12.2018, 12:14 +0100 schrieb Sascha Hauer:
> > Hi Teresa,
> > 
> > On Mon, Dec 17, 2018 at 11:54:30AM +0100, Teresa Remmet wrote:
> > > 
> > > Hello Sascha,
> > > 
> > > I watend to test the gpmc driver changes for our am335x boards
> > > using
> > > latest next. I noticed that booting from nand is not working
> > > correct
> > > any more. The MLO can not correctly obtain the image size of the
> > > barebox image.
> > Ups, right. Try the following.
> 
> Yes, this helps. Thanks.

Ok, I'll take this as a 

Tested-by: Teresa Remmet <t.remmet@phytec.de>

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
