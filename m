Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ab3aT-0005hm-Oc
 for barebox@lists.infradead.org; Wed, 02 Mar 2016 10:00:59 +0000
Date: Wed, 2 Mar 2016 11:00:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160302100034.GO9224@pengutronix.de>
References: <56D6B15B.2040206@systec-electronic.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <56D6B15B.2040206@systec-electronic.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Crash after failed UBIFS mount
To: =?iso-8859-15?Q?Dr=2E-Ing=2E_Martin_D=E4umler?= SYS TEC electronic GmbH <martin.daeumler@systec-electronic.com>
Cc: barebox@lists.infradead.org, Daniel =?iso-8859-15?Q?Kr=FCger?= <daniel.krueger@systec-electronic.com>, Alexander Stein <alexander.stein@systec-electronic.com>

Hi Martin,

On Wed, Mar 02, 2016 at 10:24:43AM +0100, Dr.-Ing. Martin D=E4umler SYS TEC=
 electronic GmbH wrote:
> Hello,
> =

> we encountered a problem of barebox tag 2015.05.0, which is also
> reproducible with tag 2016.01.0. Mounting an UBIFS file system partition
> fails (correctly) and barebox crashes while cleaning up. The call hierarc=
hy
> is
> as follows:
> =

> -mount() (fs/fs.c:1243): try to mount ubifs partition; call
> register_device()
> --register_device() (drivers/base/driver.c:138):
> ---match() (drivers/base/driver.c:117): look for a suitable device driver
> ----device_probe() (drivers/base/driver.c:82): ubifs partition fails to
> mount due to corrupted LEB
> ----device_probe(): delete device's 'active' list ('list_del(&dev->active=
)')
> ---match(): set device driver to NULL and return -1 to register_device()
> --register_device(): return 0 (success) to mount()
> -mount(): check device driver and call unregister_device() due to invalid
> driver
> --unregister_device() (drivers/base/driver.c:180): delete device's 'activ=
e'
> list the second time -> crash
> =

> Barebox does not crash if drivers/base/driver.c:92, i.e., list deletion in
> device_probe(), is removed. Is the removal of the list deletion a valid
> solution or does this have side effects?

This should be fixed with the following patch which currently sits in
the master branch.

Sascha

-----------------------8<-------------------------------------

From 46bb3a4d8490b318fbcfac7b69c217cec05d7a8f Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 8 Feb 2016 11:31:00 +0100
Subject: [PATCH] driver: Fix unregister device after device probe failure

When a device probe fails the device is removed from the active list.
If then the device is unregistered afterwards it is removed from the
active list again resulting in a crash. To fix this initialize the
devices active list entry when removing it from the active list.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/base/driver.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index a70fbb2..c529296 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -101,6 +101,8 @@ int device_probe(struct device_d *dev)
 	}
 =

 	list_del(&dev->active);
+	INIT_LIST_HEAD(&dev->active);
+
 	dev_err(dev, "probe failed: %s\n", strerror(-ret));
 =

 	return ret;
@@ -258,6 +260,8 @@ static int device_probe_deferred(void)
 =

 		list_for_each_entry_safe(dev, tmp, &deferred, active) {
 			list_del(&dev->active);
+			INIT_LIST_HEAD(&dev->active);
+
 			dev_dbg(dev, "re-probe device\n");
 			bus_for_each_driver(dev->bus, drv) {
 				if (match(drv, dev))
-- =

2.7.0

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
