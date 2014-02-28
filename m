Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WJNdQ-0003rE-1C
 for barebox@lists.infradead.org; Fri, 28 Feb 2014 13:37:52 +0000
Date: Fri, 28 Feb 2014 14:37:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140228133730.GC17250@pengutronix.de>
References: <1393509826-19549-1-git-send-email-philippe.retornaz@epfl.ch>
 <1393509826-19549-2-git-send-email-philippe.retornaz@epfl.ch>
 <20140227203652.GS17250@pengutronix.de> <53104714.6090909@epfl.ch>
 <20140228083755.GZ17250@pengutronix.de> <53108AE3.80900@epfl.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <53108AE3.80900@epfl.ch>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/1] ARM: i.MX31: Add support for mx31moboard board
To: Philippe =?iso-8859-15?Q?R=E9tornaz?= <philippe.retornaz@epfl.ch>
Cc: barebox@lists.infradead.org

On Fri, Feb 28, 2014 at 02:10:59PM +0100, Philippe R=E9tornaz wrote:
> Le 28/02/2014 09:37, Sascha Hauer a =E9crit :
> >This may happen because the function gets too complex and gcc starts
> >using the stack in this case.
> >
> >Try rewriting the lowlevel stuff as:
> >
> >static void __noinline mx31_moboard_startup(void)
> >{
> >	/* Put setup here */
> >}
> >
> >void __bare_init __naked barebox_arm_reset_vector(void)
> >{
> >	 arm_cpu_lowlevel_init();
> >
> >	 arm_setup_stack(MX31_IRAM_BASE_ADDR + MX31_IRAM_SIZE - 12);
> >
> >	 mx31_moboard_startup();
> >}
> >
> >With this you can use the stack and should be on the safe side.
> =

> Ok, I tried and it works fine so I will do this.
> BTW, any reason for the -12, why not -8 ?

Probably historic reasons. I don't know exactly.

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
