Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-eopbgr80101.outbound.protection.outlook.com
 ([40.107.8.101] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irihI-0005yd-Af
 for barebox@lists.infradead.org; Wed, 15 Jan 2020 13:27:03 +0000
From: Hans-Ulrich Schlieben <hu.schlieben@codewrights.de>
Date: Wed, 15 Jan 2020 13:26:53 +0000
Message-ID: <DB8PR03MB54983C09B221B210D29A26AAFE370@DB8PR03MB5498.eurprd03.prod.outlook.com>
References: <r276.1579090214262888471.6UJY@lists.yoctoproject.org>
 <1579093362.13056.13.camel@pengutronix.de>
In-Reply-To: <1579093362.13056.13.camel@pengutronix.de>
Content-Language: en-US
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
Subject: RE: [yocto] #yocto bootchooser: Cannot get state 'state'
To: Enrico Joerns <ejo@pengutronix.de>, "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Enrico,

thank you very much for your help. 
I'm using barebox_2019.01.0-phy4-r7.0 now. In thud I used barebox_2017.12.0
The image is built using my own ims layer which depends on core-image-minimal
LAYERDEPENDS_ims-layer = "core-image-minimal openembedded-layer phytec-layer"
Its using the meta-phytec Layer and a custom layer from phytec named meta-ksp0663.
Forgot to mention that rauc is used too, which moved from 1.1 to now 1.2.
Just changed the LAYERSERIES_COMPAT to "zeus" here to check whether yocto zeus works.

Is there some info what to change in the devicetree and so on when moving to warrior/zeus?
In thud this worked.

Thank you
Regards

hu

> -----Original Message-----
> From: Enrico Joerns <ejo@pengutronix.de> 
> Sent: Wednesday, 15 January 2020 14:03
> To: Hans-Ulrich Schlieben <hu.schlieben@codewrights.de>; yocto@lists.yoctoproject.org
> Cc: barebox@lists.infradead.org
> Subject: Re: [yocto] #yocto bootchooser: Cannot get state 'state'
> 
> Hi,
> 
> this is mainly a barebox-related question, thus I'd suggest asking it on the barebox ML.
> 
> [cc-ing barebox mailing list]
> 
> On Wed, 2020-01-15 at 04:10 -0800, hu.schlieben@codewrights.de wrote:
> > Hi,
> > 
> > booting the new yocto zeus system manually by "boot mmc" works fine 
> > but default bootchooser fails with:
> > 
> > bootchooser: Cannot get state 'state'
> > Nothing bootable found on 'bootchooser'
> > Nothing bootable found
> 
> Looks like the state node is missing in your device tree.
> Which version of barebox do you use?
> And from which layer / recipe?
> 
> > Building the "same" image in yocto thud works fine. The boot variables 
> > are:
> > 
> > * BOOT_system0_.default: 3
> > * BOOT_system1_.default: 3
> > * allow_color: 0
> > * autoboot_timeout: 3
> > * boot.default: bootchooser
> >   boot.watchdog_timeout: 0
> >   bootchooser.default_attempts: 3
> >   bootchooser.default_priority: 1
> >   bootchooser.disable_on_zero_attempts: 0
> >   bootchooser.reset_attempts:  (list: "power-on", "all-zero")
> >   bootchooser.reset_priorities:
> >   bootchooser.retry: 0
> > * bootchooser.state_prefix: state.bootstate
> > * bootchooser.system0.boot: mmc
> > * bootchooser.system0.default_attempts: 3
> > * bootchooser.system0.default_priority: 20
> > * bootchooser.system1.boot: mmc1
> > * bootchooser.system1.default_attempts: 3
> > * bootchooser.system1.default_priority: 21
> > * bootchooser.targets: system0 system1
> >   bootm.appendroot: 0
> > ...
> > 
> 
> Regards, Enrico

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
