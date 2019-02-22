Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gx73n-0003fn-TY
 for barebox@lists.infradead.org; Fri, 22 Feb 2019 09:24:01 +0000
Date: Fri, 22 Feb 2019 10:23:56 +0100
From: Roland Hieber <rhi@pengutronix.de>
Message-ID: <20190222092356.goklob5zbue54vms@pengutronix.de>
References: <20190115103423.5233-1-rhi@pengutronix.de>
 <20190115103423.5233-3-rhi@pengutronix.de>
 <20190214135157.sy2l2x6re3xspohu@pengutronix.de>
 <20190218085217.ebept7wmi2vmqf77@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190218085217.ebept7wmi2vmqf77@pengutronix.de>
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
Subject: Re: [PATCH v1 3/3] amba: pl011: make locally used functions static
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Feb 18, 2019 at 09:52:17AM +0100, Sascha Hauer wrote:
> On Thu, Feb 14, 2019 at 02:51:57PM +0100, Roland Hieber wrote:
> > Hi Sascha,
> > 
> > the other two patches in this series are on master now, but this one
> > seems to have fallen through the cracks.
> 
> Not really. Your patch indeed isn't applied, but we got the same from
> Sam: 864fb024cf ("serial: amba-pl011: fix "no previous prototype for
> 'pl011_init_port'" warning")

Ahh, that's the things you don't notice when creating patches on top of
an old master :-) Thanks for your explanation!

 - Roland

-- 
Roland Hieber                     | r.hieber@pengutronix.de     |
Pengutronix e.K.                  | https://www.pengutronix.de/ |
Peiner Str. 6-8, 31137 Hildesheim | Phone: +49-5121-206917-5086 |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
