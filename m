Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo5.mail-out.ovh.net ([46.105.47.167]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TxIM0-0002ye-Fv
 for barebox@lists.infradead.org; Mon, 21 Jan 2013 14:28:05 +0000
Received: from mail178.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 07FC9FFA82D
 for <barebox@lists.infradead.org>; Mon, 21 Jan 2013 15:37:31 +0100 (CET)
Date: Mon, 21 Jan 2013 15:26:23 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130121142623.GH26329@game.jcrosoft.org>
References: <20130121102319.GE26329@game.jcrosoft.org>
 <1358764040-10690-1-git-send-email-plagnioj@jcrosoft.com>
 <1358764040-10690-8-git-send-email-plagnioj@jcrosoft.com>
 <CAB_54W76DctVP5c_aeghd+Bh+7Lr86sGLJ=BdGQrg40npCTnYA@mail.gmail.com>
 <20130121125109.GA1906@pengutronix.de>
 <20130121135902.GG26329@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130121135902.GG26329@game.jcrosoft.org>
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
Subject: Re: [PATCH 08/10] introduce common bootstrap code
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>

On 14:59 Mon 21 Jan     , Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 13:51 Mon 21 Jan     , Sascha Hauer wrote:
> > On Mon, Jan 21, 2013 at 12:04:16PM +0100, Alexander Aring wrote:
> > > hi,
> > > 
> > > found a little 'things'. Maybe it's matter.
> > > 
> > > > +
> > > > +       cdev = cdev_open(name, O_RDONLY);
> > > > +       if (!cdev) {
> > > > +               bootstrap_err("failed to open partition\n");
> > > > +               return NULL;
> > > > +       }
> > > > +
> > > > +       ret = cdev_read(cdev, header, BAREBOX_HEAD_SIZE, 0, 0);
> > > >
> > > check on error here?
> > > 
> > 
> > This is done, see below.
> > 
> > > 
> > > > +       cdev_close(cdev);
> > > > +
> > > > +       if (ret != BAREBOX_HEAD_SIZE) {
> > > > +               bootstrap_err("failed to read from partition\n");
> > > > +               return NULL;
> > > > +       }
> > > > +
> > > > +       return header;
> > > > +}
> > > > +
> > > > +
> > > > +       if (!size) {
> > > > +               size = default_size;
> > > > +               bootstrap_err("%s: failed to detect barebox and it's image
> > > > size so use %d\n",
> > > > +                        devname, size);
> > > > +       }
> > > > +
> > > > +       to = xmalloc(size);
> > > >
> > > check on null here?
> > 
> > The x versions always return memory or else they panic.
> 
> can we have this version merged
I send a v6

I switch the omal xlaod to the new generic code and see that we need to be
able to pass the fstype

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
