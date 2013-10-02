Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VRHn8-0000RG-L4
 for barebox@lists.infradead.org; Wed, 02 Oct 2013 08:28:19 +0000
Date: Wed, 2 Oct 2013 10:27:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131002082757.GH30088@pengutronix.de>
References: <1380608528-26999-1-git-send-email-s.hauer@pengutronix.de>
 <1380608528-26999-6-git-send-email-s.hauer@pengutronix.de>
 <20131001132250.GK32444@ns203013.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131001132250.GK32444@ns203013.ovh.net>
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
Subject: Re: [PATCH 5/6] ARM: vexpress: Fix compiler warning
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Oct 01, 2013 at 03:22:50PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 08:22 Tue 01 Oct     , Sascha Hauer wrote:
> > Fixes:
> > 
> > arch/arm/boards/vexpress/init.c: In function 'vexpress_core_init':
> > arch/arm/boards/vexpress/init.c:139:22: warning: 'hostname' may be used uninitialized in this function [-Wmaybe-uninitialized]
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/boards/vexpress/init.c | 2 ++
> >  1 file changed, 2 insertions(+)
> > 
> > diff --git a/arch/arm/boards/vexpress/init.c b/arch/arm/boards/vexpress/init.c
> > index 48bc11e..5358be3 100644
> > --- a/arch/arm/boards/vexpress/init.c
> > +++ b/arch/arm/boards/vexpress/init.c
> > @@ -133,6 +133,8 @@ static int vexpress_core_init(void)
> >  			hostname = "vexpress-a9";
> >  		else if (cpu_is_cortex_a15())
> >  			hostname = "vexpress-a15";
> > +		else
> > +			hostname = "vexpress-unknown";
> 
> so set hostname by default not on else

Ok, changed this.

Sascha

> >  	}
> >  
> >  	barebox_set_model("ARM Vexpress");
> > -- 
> > 1.8.4.rc3
> > 
> > 
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
