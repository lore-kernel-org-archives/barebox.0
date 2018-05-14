Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fI8DU-0002yj-OO
 for barebox@lists.infradead.org; Mon, 14 May 2018 07:48:22 +0000
Date: Mon, 14 May 2018 09:48:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180514074808.gs6vnuy5ba5qmcmk@pengutronix.de>
References: <20180508212125.5923-1-andrew.smirnov@gmail.com>
 <20180508212125.5923-2-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180508212125.5923-2-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 1/2] common: oftree: Pass bootsource and bootsource
 instance to kernel
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Andrey,

On Tue, May 08, 2018 at 02:21:24PM -0700, Andrey Smirnov wrote:
> Pass barebox-detected bootsource and bootsource instance to Linux to
> make it availible to Linux userspace. We use put the version under
> /chosen/bootsource and it can be read under Linux in
> 
> /sys/firmware/devicetree/base/chosen/bootsource

I like the idea of having the bootsource available in Linux and more
than once thought about implementing it. However, I don't think it's
good to put the rather adhoc strings from barebox into the devicetree.

I'd rather have a phandle pointing to the actual device providing the
bootsource. Something like converting bootsource/bootsource_instance
into an alias name, lookup that alias in the device tree and create a
phandle pointing to the node the alias points to aswell. This may be
more complicated, but this way we do not have to think up any mapping.

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
