Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XRGo8-0001gF-7U
 for barebox@lists.infradead.org; Tue, 09 Sep 2014 08:29:48 +0000
Date: Tue, 9 Sep 2014 10:29:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140909082925.GS5352@pengutronix.de>
References: <1410159189-17328-1-git-send-email-antonynpavlov@gmail.com>
 <1410159189-17328-8-git-send-email-antonynpavlov@gmail.com>
 <CAJfOKBxf1qQ4zm12REacELYMCSqye-OcUM45ZULprPNREhVcGQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJfOKBxf1qQ4zm12REacELYMCSqye-OcUM45ZULprPNREhVcGQ@mail.gmail.com>
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
Subject: Re: [PATCH v2 7/7] Documentation: add OpenRISC or1ksim emulator
 section
To: Franck Jullien <franck.jullien@gmail.com>
Cc: barebox <barebox@lists.infradead.org>

On Mon, Sep 08, 2014 at 09:12:06AM +0200, Franck Jullien wrote:
> Hi Antony,
> 
> 2014-09-08 8:53 GMT+02:00 Antony Pavlov <antonynpavlov@gmail.com>:
> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > Cc: Franck Jullien <franck.jullien@gmail.com>
> > ---
> >  Documentation/boards/openrisc.rst | 51 +++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 51 insertions(+)
> >
> > diff --git a/Documentation/boards/openrisc.rst b/Documentation/boards/openrisc.rst
> > new file mode 100644
> > index 0000000..0b36712
> > --- /dev/null
> > +++ b/Documentation/boards/openrisc.rst
> > @@ -0,0 +1,51 @@
> > +OpenRISC
> > +========
> > +
> > +or1ksim
> > +-------
> > +
> > +Compile or1ksim emulator::
> > +
> > + $ cd ~/
> > + $ git clone https://github.com/fjullien/or1ksim
> 
> You should use this repo: https://github.com/openrisc/or1ksim

I changed while this applying.

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
