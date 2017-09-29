Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dxtaT-0005Pc-UE
 for barebox@lists.infradead.org; Fri, 29 Sep 2017 11:36:12 +0000
Date: Fri, 29 Sep 2017 13:35:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170929113543.p2unhzcdk4knwpvx@pengutronix.de>
References: <1043852685.129432.1506673503086@mail.vodafone.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1043852685.129432.1506673503086@mail.vodafone.de>
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
Subject: Re: how to persistently save config values
To: Giorgio Dal Molin <giorgio.nicole@arcor.de>
Cc: barebox@lists.infradead.org

On Fri, Sep 29, 2017 at 10:25:03AM +0200, Giorgio Dal Molin wrote:
> Hi,
> 
> I'm working on a new project with an embedded system based on
> a standard intel PC.
> 
> I already have a barebox.efi running on the system; my problem is now
> how to permanently save some variables so that, on restart, they can be
> automatically restored by my '/env/bin/init' script.
> The variables I mean are for example 'eth0.ipaddr' or 'eth0.serveraddr'.
> A solution I used in the past was a custom 'env_dump' command that generated
> a config text file like:
> 
> eth0.ipaddr=10.0.0.15
> eth0.serveraddr=10.0.0.1

(should be eth0.serverip)

> ...
> 
> Then I saved the file with 'saveenv' and restored it back with 'loadenv'.

Normally you should edit /env/network/eth0 to change the network config.

Also there is the possibility to create a nv variable that automatically
mirrors to the device variable. In this case it would be
nv.dev.eth0.ipaddr and nv.dev.eth0.serverip. This doesn't work with dhcp
though.

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
