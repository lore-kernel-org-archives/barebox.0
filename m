Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QiTAt-0007dR-1T
	for barebox@lists.infradead.org; Sun, 17 Jul 2011 15:22:32 +0000
Date: Sun, 17 Jul 2011 17:22:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110717152224.GO6069@pengutronix.de>
References: <CAHwEkO2Zy7KN_9_ja_a+rCyxiDovHDWu5oZW8yGrUFxFjiLWMA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHwEkO2Zy7KN_9_ja_a+rCyxiDovHDWu5oZW8yGrUFxFjiLWMA@mail.gmail.com>
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
Subject: Re: XIP support in barebox
To: Vikram Narayanan <vikram186@gmail.com>
Cc: barebox@lists.infradead.org

Hi Vikram,

On Sat, Jul 16, 2011 at 01:37:49PM +0530, Vikram Narayanan wrote:
> Hi,
> 
> Is there any support available for creating execute in place (XIP)
> images in barebox?

Why would we need support for creating XIP images? What we need is
support for booting XIP images. barebox does not support this atm, but I
think adding support for it should be simple.

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
