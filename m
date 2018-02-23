Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ep7rL-0005CH-1L
 for barebox@lists.infradead.org; Fri, 23 Feb 2018 07:33:36 +0000
Date: Fri, 23 Feb 2018 08:33:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180223073320.6ubvlzyg76vc72ot@pengutronix.de>
References: <CAGm1_ksaqOepiKg2yRHaH2Bs+fur2ujDQEiDmaAD0HYADxj6Vw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGm1_ksaqOepiKg2yRHaH2Bs+fur2ujDQEiDmaAD0HYADxj6Vw@mail.gmail.com>
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
Subject: Re: linux.bootargs: export mtdparts from DTS
To: Yegor Yefremov <yegorslists@googlemail.com>
Cc: barebox <barebox@lists.infradead.org>

Hi Yegor,

On Fri, Feb 23, 2018 at 08:26:56AM +0100, Yegor Yefremov wrote:
> My board will be configured via DTS file, that contains an MTD
> partition table [1]. How can it be automatically exported to
> global.inux.bootargs.mtdparts?
> 
> [1] https://git.pengutronix.de/cgit/barebox/tree/arch/arm/dts/am335x-baltos-minimal.dts#n217

Why would you want to do that? You are not going to start an ancient
kernel with ATAG support, are you?

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
