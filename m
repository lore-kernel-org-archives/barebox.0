Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V9tdH-0002rj-Qx
 for barebox@lists.infradead.org; Thu, 15 Aug 2013 09:14:16 +0000
Date: Thu, 15 Aug 2013 11:13:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130815091354.GH26614@pengutronix.de>
References: <1376551741-16438-1-git-send-email-s.hauer@pengutronix.de>
 <1376551741-16438-8-git-send-email-s.hauer@pengutronix.de>
 <1376552360.905287029@f384.i.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1376552360.905287029@f384.i.mail.ru>
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
Subject: Re: [PATCH 7/8] Set model and hostname at boardlevel
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Thu, Aug 15, 2013 at 11:39:20AM +0400, Alexander Shiyan wrote:
> > With multiboard support the compiletime generated BOARDINFO string
> > gets more and more meaningless. This removes it from Kconfig and
> > replaces it with a variable that can be set at boardlevel.
> > 
> > Also many boards have a standard setting for the hostname in the
> > environment. This patch also moves the standard to C code by calling
> > barebox_set_hostname().
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> [...]
> > diff --git a/arch/arm/boards/ccxmx51/ccxmx51.c b/arch/arm/boards/ccxmx51/ccxmx51.c
> > index 2485e12..57280d5 100644
> > --- a/arch/arm/boards/ccxmx51/ccxmx51.c
> > +++ b/arch/arm/boards/ccxmx51/ccxmx51.c
> > @@ -475,6 +475,9 @@ static int ccxmx51_console_init(void)
> >  {
> >  	mxc_iomux_v3_setup_multiple_pads(ccxmx51_pads, ARRAY_SIZE(ccxmx51_pads));
> >  
> > +	barebox_set_model("Digi ConnectCore i.MX51");
> > +	barebox_set_hostname("cccmx51");
> 
> Not a fatal, but please remove one "c" during commit ;)

Ok, will do.

Thanks for noting.

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
