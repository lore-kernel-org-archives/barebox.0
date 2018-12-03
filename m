Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gToFf-0002ZX-9V
 for barebox@lists.infradead.org; Mon, 03 Dec 2018 13:27:08 +0000
Date: Mon, 3 Dec 2018 14:26:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181203132655.kngrgqk4ocaej6vc@pengutronix.de>
References: <1543840931.5085.22.camel@erwinrol.com>
 <20181203125811.cm6mzwrjy7glrh5j@pengutronix.de>
 <1543842381.5085.24.camel@erwinrol.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1543842381.5085.24.camel@erwinrol.com>
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
Subject: Re: ubifs
To: Erwin Rol <mailinglists@erwinrol.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Dec 03, 2018 at 02:06:21PM +0100, Erwin Rol wrote:
> On Mon, 2018-12-03 at 13:58 +0100, Sascha Hauer wrote:
> > Hi Erwin,
> > 
> > On Mon, Dec 03, 2018 at 01:42:11PM +0100, Erwin Rol wrote:
> > > Hallo all,
> > > 
> > > I want to create empty ubifs volumes, like this;
> > > 
> > > 1) ubiformat -y -q /dev/nand0.system
> > > 2) ubiattach /dev/nand0.system
> > > 3) ubimkvol -t dynamic /dev/nand0.system.ubi system 0
> > > 
> > > 4) .... ???? 
> > > 
> > > 5) mount -t ubifs -o rw /dev/nand0.system.ubi.system /mnt/system/
> > > 
> > > 
> > > Is this possible with barebox?
> > 
> > It depends on what you do in step 4. Should be something like
> > 'ubiupdatevol' or cp /some/image /dev/nand0.system.ubi.system. But then,
> > yes, this works
> 
> But I need some sort of image, I can not create an empty ubifs volume
> and mount it with just barebox tools ?

Nope, because we only have a readonly UBIFS implementation.

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
