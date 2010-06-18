Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.de ([217.6.246.34] helo=root.phytec.de)
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OPZxD-00066Y-EQ
	for barebox@lists.infradead.org; Fri, 18 Jun 2010 11:41:47 +0000
From: Teresa Gamez <T.Gamez@phytec.de>
In-Reply-To: <20100610115454.GN20799@pengutronix.de>
References: <1275991382.18173.37.camel@lws-gamez>
	<20100610115454.GN20799@pengutronix.de>
Date: Fri, 18 Jun 2010 13:41:42 +0200
Message-ID: <1276861302.27924.13.camel@lws-gamez>
Mime-Version: 1.0
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
Subject: Re: [PATCH] mx2 GPIO OCRx register
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello Sascha,

is it reasonable to create a gpio_mode commad then? Or is there an other
way to do this in the barebox shell?

Teresa

Am Donnerstag, den 10.06.2010, 13:54 +0200 schrieb Sascha Hauer:
> Hi Teresa,
> 
> On Tue, Jun 08, 2010 at 12:03:02PM +0200, Teresa Gamez wrote:
> > The GPIO OCRx register has to be set correct or the output is not set as expected.
> 
> No. The gpio functions are not expected to change the iomuxer. This is
> what imx_gpio_mode() is for.
> 
> Sascha



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
