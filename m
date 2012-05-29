Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SZPD5-0000xC-T7
 for barebox@lists.infradead.org; Tue, 29 May 2012 16:23:52 +0000
Date: Tue, 29 May 2012 18:23:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120529162350.GY30400@pengutronix.de>
References: <4EE62D17.1090709@eukrea.com> <4EE66F10.7090409@eukrea.com>
 <20111213094800.GF27267@pengutronix.de>
 <4EE76AC1.3070603@eukrea.com>
 <20111213192606.GA27267@pengutronix.de>
 <20120529104844.4df2752d@eb-e6520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120529104844.4df2752d@eb-e6520>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: magicvar breaks tftp (or ramfs)
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, May 29, 2012 at 10:48:44AM +0200, Eric B=E9nard wrote:
> Hi Sascha,
> =

> > =

> > I really want to believe this, but I wouldn't be so sure. I think
> > it's more likely that you found a bug in barebox that your new
> > toolchain happens to trigger. Could you provide the objdump of
> > show_progress along with a complete stack trace including register
> > contents?
> > =

> here is the full trace.
> There is something strange as it seems a wrong value gets loaded into R3
> leading to the error.

I recently found a bug that could match this description. The following
patch fixes this, but currently I don't now what other places might be
affected. It's a matter of reviewing all places where dma_inv_range is
used. Does the problem persist when you turn off the MMU?

Sascha



From f11b34785ba3d33854c752e81c43de0271d19d35 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 24 May 2012 16:02:37 +0200
Subject: [PATCH] USB gadget fsl: request cacheline aligned buffer

The fsl udc driver allocates a buffer for small requests. The
driver then calls dma_inv_range later on it. This buffer happens
to be not cacheline aligned which means that a dma_inv_range can
corrupt other memory around the buffer.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/fsl_udc.c |    3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/gadget/fsl_udc.c b/drivers/usb/gadget/fsl_udc.c
index 5b64ec2..96cdb30 100644
--- a/drivers/usb/gadget/fsl_udc.c
+++ b/drivers/usb/gadget/fsl_udc.c
@@ -2109,7 +2109,8 @@ static int struct_udc_setup(struct fsl_udc *udc,
 	udc->status_req =3D container_of(fsl_alloc_request(NULL),
 			struct fsl_req, req);
 	/* allocate a small amount of memory to get valid address */
-	udc->status_req->req.buf =3D xmalloc(8);
+	udc->status_req->req.buf =3D xmemalign(4096, 4096);
+	udc->status_req->req.length =3D 8;
 	udc->resume_state =3D USB_STATE_NOTATTACHED;
 	udc->usb_state =3D USB_STATE_POWERED;
 	udc->ep0_dir =3D 0;
-- =

1.7.10


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
