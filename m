Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from fmmailgate02.web.de ([217.72.192.227])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PVO5X-00017N-1i
	for barebox@lists.infradead.org; Wed, 22 Dec 2010 12:46:39 +0000
Date: Wed, 22 Dec 2010 13:46:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101222124635.GC6017@pengutronix.de>
References: <m362uodqms.fsf@intrepid.localdomain>
	<m3oc8gcae3.fsf@intrepid.localdomain>
	<20101222005722.GD19266@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20101222005722.GD19266@game.jcrosoft.org>
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
Subject: Re: [PATCH 10] ARM: Add support for IXP4xx CPU and for Goramo
	Multilink router platform.
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org, Krzysztof Halasa <khc@pm.waw.pl>

On Wed, Dec 22, 2010 at 01:57:22AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > +
> > +#define BAREBOX_START        0x00000
> > +#define BAREBOX_LENGTH       0x34000
> > +#define NPE_A_START          (BAREBOX_START + BAREBOX_LENGTH)
> > +#define NPE_A_LENGTH         0x05000
> > +#define NPE_B_START          (NPE_A_START + NPE_A_LENGTH)
> > +#define NPE_B_LENGTH         0x03000
> > +#define NPE_C_START          (NPE_B_START + NPE_B_LENGTH)
> > +#define NPE_C_LENGTH         0x04000
> > +#define NPE_ENV0_START       (NPE_C_START + NPE_C_LENGTH)
> > +#define NPE_ENV0_LENGTH      0x20000
> why not put the NPE firmware in the env?

That's a good idea. This way we can tell the users to put the firmware
to arch/arm/boards/.../env/firmware before compilation and avoid
redistribution problems if there are any. Another plus is that the
barebox binary is not larger than it has to be.
The only downside is that the environment gets bigger as it duplicates
the firmware, but even this could be avoided if we add a second (non
environment) filesystem image.

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
