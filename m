Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g9vWw-00019L-MB
 for barebox@lists.infradead.org; Tue, 09 Oct 2018 17:10:48 +0000
Received: by mail-wr1-x441.google.com with SMTP id d2-v6so2655351wro.7
 for <barebox@lists.infradead.org>; Tue, 09 Oct 2018 10:10:35 -0700 (PDT)
MIME-Version: 1.0
References: <20181008063542.18709-1-andrew.smirnov@gmail.com>
 <20181008063542.18709-7-andrew.smirnov@gmail.com>
 <20181009154148.GC18654@ravnborg.org>
In-Reply-To: <20181009154148.GC18654@ravnborg.org>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 9 Oct 2018 10:10:22 -0700
Message-ID: <CAHQ1cqGzdfMDEZQebL-kC3dWgFbX3vO3xTN3yf19CrwJxRCDJQ@mail.gmail.com>
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
Subject: Re: [PATCH 06/16] drivers: Introduce dev_set_name()
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Oct 9, 2018 at 8:41 AM Sam Ravnborg <sam@ravnborg.org> wrote:
>
> Hi Andrey.
>
> Looked through the patch, everythign looked OK.
> One nit.
>
>         Sam
>
> > diff --git a/include/driver.h b/include/driver.h
> > index 1b61f2066..7b83c0a77 100644
> > --- a/include/driver.h
> > +++ b/include/driver.h
> > @@ -23,7 +23,6 @@
> >  #include <linux/ioport.h>
> >  #include <of.h>
> >
> > -#define MAX_DRIVER_NAME              32
> >  #define FORMAT_DRIVER_NAME_ID        "%s%d"
> >
> >  #include <param.h>
> > @@ -41,7 +40,7 @@ struct device_d {
> >       /*! This member (and 'type' described below) is used to match with a
> >        * driver. This is a descriptive name and could be MPC5XXX_ether or
> >        * imx_serial. */
> Add here: The name is set using dev_set_name() or somthing like that.
> To let the reader/user know how to set the name in the correct way.
>

I'll add a mention of it in the documentation, but strictly speaking
dev_set_name() is not mandatory to use. Driver can choose to assign
constant strings to that field and it wouldn't be unreasonable.

> > -     char name[MAX_DRIVER_NAME];
> > +     char *name;
> >       /*! The id is used to uniquely identify a device in the system. The id
> >        * will show up under /dev/ as the device's name. Usually this is
> >        * something like eth0 or nor0. */
> > @@ -177,6 +176,8 @@ static inline const char *dev_name(const struct device_d *dev)
> >       return dev_id(dev);
> >  }
> >
> > +int dev_set_name(struct device_d *dev, const char *fmt, ...);
> > +
> It would be nice with a small comment that tell this is used to set
> device_d.name - and that it shuld not be assigned direct.
>

Same here, device_d.name can be assigned directly. However
dev_set_name() does assume that device_d.name is free()-able, so I'll
mention that in the comment.

Will update both in v2.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
