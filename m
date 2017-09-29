Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vsmx009.vodafonemail.xion.oxcs.net ([153.92.174.87])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dxuSk-0001BO-Vu
 for barebox@lists.infradead.org; Fri, 29 Sep 2017 12:32:39 +0000
Date: Fri, 29 Sep 2017 14:31:40 +0200 (CEST)
From: Giorgio Dal Molin <giorgio.nicole@arcor.de>
Message-ID: <1240553302.113348.1506688301119@mail.vodafone.de>
In-Reply-To: <20170929113543.p2unhzcdk4knwpvx@pengutronix.de>
References: <1043852685.129432.1506673503086@mail.vodafone.de>
 <20170929113543.p2unhzcdk4knwpvx@pengutronix.de>
MIME-Version: 1.0
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

thank you for the answer.

I just experimented a bit with the environment and the nv vars
and I think I'll go this way.

I was a bit surprised by the saveenv command though: my understanding
of the (default) environment was that it was a read only blob
hardcoded in the barebox image; I thought if I want some new/dynamic
env content to be saved for the next reboot I have to explicitly provide
a storage disk/cf/mtd partition to the saveenv and then to the loadenv.
Instead, just saying 'saveenv' saves the contents of '/env' 'somewhere'
from where it can be restored on next reboot (very good!).

Together with the nv vars and the 'nv.dev.' prefix this just does the
trick for me.

Thank you.

giorgio

> On September 29, 2017 at 1:35 PM Sascha Hauer wrote:
> 
> On Fri, Sep 29, 2017 at 10:25:03AM +0200, Giorgio Dal Molin wrote:
> > Hi,
> > 
> > I'm working on a new project with an embedded system based on
> > a standard intel PC.
> > 
> > I already have a barebox.efi running on the system; my problem is now
> > how to permanently save some variables so that, on restart, they can be
> > automatically restored by my '/env/bin/init' script.
> > The variables I mean are for example 'eth0.ipaddr' or 'eth0.serveraddr'.
> > A solution I used in the past was a custom 'env_dump' command that generated
> > a config text file like:
> > 
> > eth0.ipaddr=10.0.0.15
> > eth0.serveraddr=10.0.0.1
> 
> (should be eth0.serverip)
> > ...
> > 
> > Then I saved the file with 'saveenv' and restored it back with 'loadenv'.
> 
> Normally you should edit /env/network/eth0 to change the network config.
> 
> Also there is the possibility to create a nv variable that automatically
> mirrors to the device variable. In this case it would be
> nv.dev.eth0.ipaddr and nv.dev.eth0.serverip. This doesn't work with dhcp
> though.
> 
> Sascha
> 
> -- 
> Pengutronix e.K. | |
> Industrial Linux Solutions | http://www.pengutronix.de/ |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0 |
> Amtsgericht Hildesheim, HRA 2686 | Fax: +49-5121-206917-5555 |
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
