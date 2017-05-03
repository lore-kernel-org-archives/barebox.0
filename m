Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d5tAA-0001KA-Pf
 for barebox@lists.infradead.org; Wed, 03 May 2017 12:13:48 +0000
Date: Wed, 3 May 2017 14:13:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170503121324.qguy2tsch7gepob7@pengutronix.de>
References: <af0065c8-141d-dce0-11bf-1aca9c46d73c@emlix.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <af0065c8-141d-dce0-11bf-1aca9c46d73c@emlix.com>
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
Subject: Re: barebox-state setup
To: Andreas Wilhelm <andreas.wilhelm@emlix.com>
Cc: barebox@lists.infradead.org

On Tue, May 02, 2017 at 03:24:10PM +0200, Andreas Wilhelm wrote:
> Hello,
> 
> I am using barebox state to exchange data between barebox and linux. From barebox I can access and change the state without any problems. If I try to access the state using the barebox-state util included with dt-utils (v2017.03.0), I get the following error:
> 
> > # barebox-state -g myvar
> > of_get_devicepath: no 'label' property found in /soc/aips-bus@02000000/spba-bus@02000000/ecspi@02008000/m25p80@0
> > Cannot find backend path in /state
> 
> This problem does not occur when using version 2016.08.0 of dt-utils. However, in this version I experienced an other problem. Even with backend-storage-type set to "circular" barebox attempted to storte data in "direct" mode:
> 
> > WARNING, no stridesize given although we use a direct file
> > write. Starting in degraded mode
> > Failed to initialize desired amount of direct buckets, only 1 of 3
> > succeeded
> 
> Furthermore changing the state from within barebox worked just fine, while changing it using dt-utils from within a booted linux didn't.
> 
> The barebox state is stored in NOR-flash and configured in barebox as followed:
> 
> > state: state {
> >     magic = <0x27031977>;
> >     compatible = "barebox,state";
> >     backend-type = "raw";
> >     backend = &flash, "partname:barebox-state";

Please use "backend = &barebox_state;" with a partition like this:

barebox_state: partition@0 {
	reg = <0x0 0x40000>;
};

> Within the linux kernel I use the following configuration

Note that barebox will rewrite the state node in the device tree passed
to Linux to make sure that both are consistent. You do not need to add a
state node to the Linux device tree manually. Unfortunately the
rewriting of the device node does not work correctly if you use the
"partname:" binding above in barebox.

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
