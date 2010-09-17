Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OwbqU-0008Fe-9d
	for barebox@lists.infradead.org; Fri, 17 Sep 2010 14:23:23 +0000
Date: Fri, 17 Sep 2010 16:23:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100917142311.GI1473@pengutronix.de>
References: <AANLkTimF=u+DegrO+d2kvWyae6TWnwwz5Zo=HMwqwhrn@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AANLkTimF=u+DegrO+d2kvWyae6TWnwwz5Zo=HMwqwhrn@mail.gmail.com>
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
Subject: Re: Mentor Inventra USB Contoller driver
To: Gaurav Singh <gausinghnsit@gmail.com>
Cc: barebox@lists.infradead.org

Hi Gaurav,

On Wed, Sep 08, 2010 at 04:57:25PM +0530, Gaurav Singh wrote:
> Hi all,
> Was working on MUSB (Mentor Inventra conroller) gadget driver for
> Barebox. Need to support DFU for my test board which has this
> controller. Currently trying to figure out how to modify kernel code
> which uses interrupts to a polling mode form. Was wondering if
> developers have planned this device or not.

What do you mean by 'developers have planned this device'? AFAIK nobody
is working on a barebox driver for the musb at them moment, if that's
what you wanted to know.

> I would be happy to
> contibute once I'm done :)

Nice to here :) Such patches are always welcome.

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
