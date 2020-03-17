Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEHDm-0005i5-2V
 for barebox@lists.infradead.org; Tue, 17 Mar 2020 18:45:47 +0000
Received: by mail-lj1-x242.google.com with SMTP id 19so24093797ljj.7
 for <barebox@lists.infradead.org>; Tue, 17 Mar 2020 11:45:45 -0700 (PDT)
Date: Tue, 17 Mar 2020 21:45:35 +0300
From: Peter Mamonov <pmamonov@gmail.com>
Message-ID: <20200317184534.GA20920@chr>
References: <20200317151611.4313-1-pmamonov@gmail.com>
 <fb297aaa-6399-baa1-94e5-bc93167ed88f@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fb297aaa-6399-baa1-94e5-bc93167ed88f@pengutronix.de>
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
Subject: Re: [PATCH] reset: add missing stub for device_reset()
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello, Ahmad,

On Tue, Mar 17, 2020 at 05:47:10PM +0100, Ahmad Fatoum wrote:
> Hello Peter,
> 
> On 3/17/20 4:16 PM, Peter Mamonov wrote:
> > Fixes: 45b95b50cd0b (reset: add reset controller framework)
> > Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> 
> I've submitted ("reset: add stub for device_reset when CONFIG_RESET_CONTROLLER=n")
> for this, which is currently in the next branch.

Sorry, I've missed it. And thanks for the notice!

Regards,
Peter

> 
> Cheers,
> Ahmad
> 
> > ---
> >  include/linux/reset.h | 6 ++++++
> >  1 file changed, 6 insertions(+)
> > 
> > diff --git a/include/linux/reset.h b/include/linux/reset.h
> > index a22bcf9a5..0d4ff5d19 100644
> > --- a/include/linux/reset.h
> > +++ b/include/linux/reset.h
> > @@ -49,6 +49,12 @@ static inline void reset_control_put(struct reset_control *rstc)
> >  	WARN_ON(1);
> >  }
> >  
> > +static inline int device_reset(struct device_d *dev)
> > +{
> > +	WARN_ON(1);
> > +	return 0;
> > +}
> > +
> >  static inline int device_reset_us(struct device_d *dev, int us)
> >  {
> >  	WARN_ON(1);
> > 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
