Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifgGb-0006ND-P4
 for barebox@lists.infradead.org; Fri, 13 Dec 2019 08:25:45 +0000
Date: Fri, 13 Dec 2019 09:25:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191213082539.x2ztak2qg7jmuklh@pengutronix.de>
References: <1575990387-9905-1-git-send-email-m.otto@phytec.de>
 <20191210152149.eymit4nvxa2prbzf@pengutronix.de>
 <71fdd107-c88e-d605-44a8-92701eef926d@phytec.de>
 <20191211081525.d5vpz2naqlgrf2wv@pengutronix.de>
 <e29fd96e-10ca-26de-d393-6ae95fe3e17e@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e29fd96e-10ca-26de-d393-6ae95fe3e17e@phytec.de>
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
Subject: Re: [PATCH] habv4: add the possibility to changing the signing area
 from Kconfig
To: Maik Otto <m.otto@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, Dec 11, 2019 at 10:10:10AM +0100, Maik Otto wrote:
> Hi Sascha,
> 
> so do you think we should always start from-dcdofs instead of full?
> at the moment i use this configuration with from-dcdofs and i think you
> have right, there is
> not really a good case to sign the area between 0x00 and dcdofs in the
> barebox build
> What is the best solution in your opinion?
> change default from full to dcdofs in the scripts/imx/imx.c ?
> additional delete full and skip-mbr ?

Yes. Always only check the executed image without the 1KiB padding at
the beginning. Note that on i.MX8 it's 32KiB padding until the image
start.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
