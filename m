Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f5Qe7-00058y-Pn
 for barebox@lists.infradead.org; Mon, 09 Apr 2018 06:51:21 +0000
Date: Mon, 9 Apr 2018 08:51:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180409065105.ew2jszpd35rpncqw@pengutronix.de>
References: <20180406131639.14100-1-s.hauer@pengutronix.de>
 <1523043217.12903.5.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1523043217.12903.5.camel@pengutronix.de>
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
Subject: Re: [PATCH] net: on ifup -a only detect devices when necessary
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>, mtr@pengutronix.de

On Fri, Apr 06, 2018 at 09:33:37PM +0200, Lucas Stach wrote:
> Am Freitag, den 06.04.2018, 15:16 +0200 schrieb Sascha Hauer:
> > For network boot we once used to hardcode eth0, but in latest changes
> > this was changed to work with different network devices and the 'ifup
> > eth0' was replaced with 'ifup -a' which lead to the result that we
> > now
> > detect all devices in order to eventually also bring up USB network
> > adapters. In most of the cases this is not desired. When a board has
> > internal network support this is likely to be used. With this patch
> > we only detect all devices when we do not have a network device
> > already.
> > For the unusual case in which a USB network adapter shall be used
> > even when an internal network interface is present we introduce the
> > global variable "global.net.ifup_force_detect" which can be used to
> > force detection of devices.
> 
> This may warrant some more documentation. Without the code change and
> the above commit message, the variable doc isn't too verbose about what
> it does exactly.

You're right. I added the following to the docs:

 +------------------------------+--------------+------------------------------------------------+
 | global.net.ifup_force_detect | boolean      | Set to true if your network device is not      |
 |                              |              | detected automatically during start (i.e. for  |
 |                              |              | USB network adapters)                          |
 +------------------------------+--------------+------------------------------------------------+

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
