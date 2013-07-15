Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uycf0-0004mh-KU
 for barebox@lists.infradead.org; Mon, 15 Jul 2013 06:53:29 +0000
Message-ID: <1373871201.4284.69.camel@coredoba.hi.pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Mon, 15 Jul 2013 08:53:21 +0200
In-Reply-To: <20130714201712.GE19197@ns203013.ovh.net>
References: <1373809662-31482-1-git-send-email-jlu@pengutronix.de>
 <20130714201712.GE19197@ns203013.ovh.net>
Mime-Version: 1.0
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
Subject: Re: [PATCH] arm: cpuinfo: display the core name and version
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sun, 2013-07-14 at 22:17 +0200, Jean-Christophe PLAGNIOL-VILLARD
wrote:
> > +#define ARM_CPU_PART_CORTEX_A5      0xC050
> > +#define ARM_CPU_PART_CORTEX_A7      0xC070
> > +#define ARM_CPU_PART_CORTEX_A8      0xC080
> > +#define ARM_CPU_PART_CORTEX_A9      0xC090
> > +#define ARM_CPU_PART_CORTEX_A15     0xC0F0
> > +
> 
> reuse instead
> 
> arch/arm/include/asm/system_info.h

Thanks. So cpuinfo.c should probably reworked based on that code.
I'll take a look.

Regards,
Jan
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
