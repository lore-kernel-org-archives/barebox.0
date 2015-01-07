Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.tricorecenter.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y8oMU-0007T1-I8
 for barebox@lists.infradead.org; Wed, 07 Jan 2015 11:01:15 +0000
Date: Wed, 7 Jan 2015 12:00:43 +0100
From: Jan Weitzel <J.Weitzel@phytec.de>
Message-ID: <20150107110042.GA5297@lws-weitzel2@phytec.de>
References: <20141211075948.GD30369@pengutronix.de>
 <1418291279-3610-1-git-send-email-j.weitzel@phytec.de>
 <20150105122203.GA5603@lws-weitzel2@phytec.de>
 <20150106134713.GF17225@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20150106134713.GF17225@pengutronix.de>
Content-Disposition: inline
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: Jan Weitzel <J.Weitzel@phytec.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2] i2c: omap: fix fclk_rate for ti,omap4-i2c
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Jan 06, 2015 at 02:47:13PM +0100, Sascha Hauer wrote:
> On Mon, Jan 05, 2015 at 01:22:04PM +0100, Jan Weitzel wrote:
> > On Thu, Dec 11, 2014 at 10:47:59AM +0100, Jan Weitzel wrote:
> > > The compatible "ti,omap4-i2c" don't help to get fclk_rate. So set it acording to
> > > cpu compatible: "ti,am33xx" and "ti,omap4"
> > > 
> > > Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
> > > ---
> > > v2: set i2c_data directly
> > >-9.0.1.i586.deb  
> > 
> > ping
> 
> Applied now.
Thanks :)

Jan
> 
> Sascha
> 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
