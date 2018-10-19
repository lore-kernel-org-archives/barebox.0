Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gDTkZ-0006lM-VF
 for barebox@lists.infradead.org; Fri, 19 Oct 2018 12:19:56 +0000
Date: Fri, 19 Oct 2018 14:19:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181019121920.wonofy44e7v2zul7@pengutronix.de>
References: <20181018104349.26332-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181018104349.26332-1-m.felsch@pengutronix.de>
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
Subject: Re: [PATCH 0/4] gpio-hog fixes
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Oct 18, 2018 at 12:43:45PM +0200, Marco Felsch wrote:
> Hi,
> 
> in 2017 Andrey ported the linux gpio-hog functionality to barebox. So we
> can set simple power-on/reset gpios from DT without specifying them in
> the board file.
> 
> First this series do some fixes in the gpio-hog implementation. Then we
> have to reorder the initcall sequence to make use of the above descrbied
> feature. Since now the gpio devices depending on the pinctrl devices, so
> we have to probe the pinctrl first.
> 
> I've tested it on a iMX6 based board, other testers are welcome.
> 
> Regrads,
> Marco
> 
> Marco Felsch (4):
>   gpiolib: fix of_gpio_hog error handling
>   gpiolib: fix of_hog_gpio gpio label assignment
>   gpio: tree-wide don't probe devices during core_initcall
>   pinctrl: tree-wide probe devices during core_initcall

Applied, thanks

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
