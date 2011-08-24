Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qw8sz-0006ik-Jv
	for barebox@lists.infradead.org; Wed, 24 Aug 2011 08:32:34 +0000
Date: Wed, 24 Aug 2011 10:32:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110824083230.GX31404@pengutronix.de>
References: <201108231430.01322.tim.sander@hbm.com>
	<20110823130607.GO31404@pengutronix.de>
	<1314166818.3389.127.camel@lws-gamez>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1314166818.3389.127.camel@lws-gamez>
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
Subject: Re: [PATCH] pcm memory fix
To: Teresa Gamez <T.Gamez@phytec.de>
Cc: barebox@lists.infradead.org, Tim Sander <tim.sander@hbm.com>

On Wed, Aug 24, 2011 at 08:20:18AM +0200, Teresa Gamez wrote:
> Am Dienstag, den 23.08.2011, 15:06 +0200 schrieb Sascha Hauer:
> > On Tue, Aug 23, 2011 at 02:30:01PM +0200, Tim Sander wrote:
> > > This patch is inspired by ram_timing.patch from OSELAS.BSP-Phytec-phyCORE-i.MX35-PD10.1.2. 
> > > PCM043 1315.6 does not boot without it.
> > > 
> > > Signed-off-by: Tim Sander <tim.sander@hbm.com>
> > > 
> > >     change refresh cycle
> > 
> > This is a duplicate of the patch Teresa recently sent. I just applied
> > Teresas version.
> 
> Are there any reasons why you applied the first version of the patch and
> not the second one with an updated description?

Damn, stupid me :(

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
