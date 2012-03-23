Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SAzzX-00048X-Rk
 for barebox@lists.infradead.org; Fri, 23 Mar 2012 08:37:06 +0000
Date: Fri, 23 Mar 2012 09:36:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120323083643.GI3852@pengutronix.de>
References: <20120322232544.GA3867@numbers.woodsts.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120322232544.GA3867@numbers.woodsts.org>
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
Subject: Re: i.MX21 USB OTG
To: "Derald D. Woods" <woods.rt@gmail.com>
Cc: barebox@lists.infradead.org

Hi Derald,

On Thu, Mar 22, 2012 at 06:25:44PM -0500, Derald D. Woods wrote:
> All,
> 
> I have an existing design that uses the i.MX21 ARM9 processor. The
> design currently uses an external USB OTG chip. The chip is now
> end-of-life. I know that this is an older ARM processor. It still meets
> most of the design needs. Is the i.MX21 OTG functionality considered
> reliable? I have not seen any real success stories with the i.MX21 USB
> OTG implementation. Our board currently utilizes the USB OTG chip at
> the bootloader and Linux kernel level.
> 
> I would appreciate being pointed in the right direction or warned of
> impending danger.
> 
> I posted to this list because the support for i.MX2x processors is still
> fairly active in the Barebox community.

The i.MX21 is the only i.MX I never used. Maybe you should contact
Martin Fuzzey <mfuzzey@gmail.com>, he mainlined the i.MX21 USB host
driver in Linux.

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
