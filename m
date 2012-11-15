Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TYu2u-0002q5-Ev
 for barebox@lists.infradead.org; Thu, 15 Nov 2012 07:39:33 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TYu2s-0002ab-06
 for barebox@lists.infradead.org; Thu, 15 Nov 2012 08:39:30 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TYu2r-0000RE-VN
 for barebox@lists.infradead.org; Thu, 15 Nov 2012 08:39:29 +0100
Date: Thu, 15 Nov 2012 08:39:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121115073929.GR10369@pengutronix.de>
References: <20121115024018.GA30674@greatfirst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121115024018.GA30674@greatfirst.com>
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
Subject: Re: why eth0 not in /dev
To: barebox <barebox@lists.infradead.org>

On Thu, Nov 15, 2012 at 10:40:18AM +0800, zzs wrote:
> When barebox starts, devinfo can show eth0's info
> like this
> 
> 9200-EK:/dev devinfo eth0
> resources:
> driver: none
> bus: platform
> 
> Parameters:
>           ipaddr = 192.168.0.109
>          ethaddr =
>          gateway =
>          netmask =
>         serverip =
> 
> But I can't see it in /dev, Why?

Files are registered manually under /dev/ by device drivers when they
want to provide a file there. A network device does not have anything
useful to register as a file, so there is none. Files under /dev/ often
have the same name as the devices, but this does not have to be the
case, they are two different things.

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
