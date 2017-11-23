Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eHmIm-0000zH-Tt
 for barebox@lists.infradead.ORG; Thu, 23 Nov 2017 07:52:14 +0000
Date: Thu, 23 Nov 2017 08:51:41 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20171123075141.in7vc75sqlho7vvy@pengutronix.de>
References: <20171121154047.27334-1-g.schenk@eckelmann.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171121154047.27334-1-g.schenk@eckelmann.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] Add linux.devname property to eth device
To: Gavin Schenk <g.schenk@eckelmann.de>
Cc: barebox@lists.infradead.org

On Tue, Nov 21, 2017 at 04:40:47PM +0100, Gavin Schenk wrote:
> When you have a static network environment but more than one network
> device on your machine it is necessary to provide the <device> parameter
> to the ip parameter at kernel cmd line.
> =

> The device name assigned by Linux cannot in general be predicted as it
> depends on driver bind order.
> =

> This patch introduces a new property linux.devname to eth devices.
> The value is added to bootargs per interface and can be changed in
> env/network/INTF
> =

> Note that the device name is also used when dhcp is in use.
> =

> Signed-off-by: Gavin Schenk <g.schenk@eckelmann.de>
> ---
> =

> This is V2 of "[PATCH] Configure network device for nfsboot via nv var"

After first thinking that the former patch was a good idea, seeing this
now I agree with Sascha this new approach is better.

Maybe add the following (in a separate commit?):

diff --git a/defaultenv/defaultenv-2-base/network/eth0 b/defaultenv/default=
env-2-base/network/eth0
index 33fe7c1b2b48..992e37a35deb 100644
--- a/defaultenv/defaultenv-2-base/network/eth0
+++ b/defaultenv/defaultenv-2-base/network/eth0
@@ -13,6 +13,10 @@ serverip=3D
 # MAC address if needed
 #ethaddr=3Dxx:xx:xx:xx:xx:xx
 =

+# device name under Linux (needed for static setups with more than
+# one network adapter)
+#linuxdevname=3Deth0
+
 # put code to discover eth0 (i.e. 'usb') to /env/network/eth0-discover
 =

 exit 0

Other than that:

Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Thanks
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
