Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TaOEb-0006tx-Ub
 for barebox@lists.infradead.org; Mon, 19 Nov 2012 10:05:48 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TaOEa-0006Li-EK
 for barebox@lists.infradead.org; Mon, 19 Nov 2012 11:05:44 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TaOEa-0007Ra-Cs
 for barebox@lists.infradead.org; Mon, 19 Nov 2012 11:05:44 +0100
Date: Mon, 19 Nov 2012 11:05:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121119100544.GM10369@pengutronix.de>
References: <20121119081815.GA8572@greatfirst.com>
 <20121119083622.GB8572@greatfirst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121119083622.GB8572@greatfirst.com>
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
Subject: Re: howto cp to flash
To: barebox <barebox@lists.infradead.org>

On Mon, Nov 19, 2012 at 04:36:22PM +0800, zzs wrote:
> I use cp command, the result is same
> 
> cp ./zbarebox.bin /dev/nor0.root
> 
> md -s /dev/nor0.root
> 00000000: ffffffff ffffffff ffffffff ffffffff                ................
> 00000010: ffffffff ffffffff ffffffff ffffffff                ................
> 00000020: ffffffff ffffffff ffffffff ffffffff                ................

Have you tried the unprotect command like Eric suggested?

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
