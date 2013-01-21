Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TxGqX-0007lG-3A
 for barebox@lists.infradead.org; Mon, 21 Jan 2013 12:51:29 +0000
Date: Mon, 21 Jan 2013 13:51:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130121125109.GA1906@pengutronix.de>
References: <20130121102319.GE26329@game.jcrosoft.org>
 <1358764040-10690-1-git-send-email-plagnioj@jcrosoft.com>
 <1358764040-10690-8-git-send-email-plagnioj@jcrosoft.com>
 <CAB_54W76DctVP5c_aeghd+Bh+7Lr86sGLJ=BdGQrg40npCTnYA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAB_54W76DctVP5c_aeghd+Bh+7Lr86sGLJ=BdGQrg40npCTnYA@mail.gmail.com>
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
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox <barebox@lists.infradead.org>

On Mon, Jan 21, 2013 at 12:04:16PM +0100, Alexander Aring wrote:
> hi,
> 
> found a little 'things'. Maybe it's matter.
> 
> > +
> > +       cdev = cdev_open(name, O_RDONLY);
> > +       if (!cdev) {
> > +               bootstrap_err("failed to open partition\n");
> > +               return NULL;
> > +       }
> > +
> > +       ret = cdev_read(cdev, header, BAREBOX_HEAD_SIZE, 0, 0);
> >
> check on error here?
> 

This is done, see below.

> 
> > +       cdev_close(cdev);
> > +
> > +       if (ret != BAREBOX_HEAD_SIZE) {
> > +               bootstrap_err("failed to read from partition\n");
> > +               return NULL;
> > +       }
> > +
> > +       return header;
> > +}
> > +
> > +
> > +       if (!size) {
> > +               size = default_size;
> > +               bootstrap_err("%s: failed to detect barebox and it's image
> > size so use %d\n",
> > +                        devname, size);
> > +       }
> > +
> > +       to = xmalloc(size);
> >
> check on null here?

The x versions always return memory or else they panic.

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
