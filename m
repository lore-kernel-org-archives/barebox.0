Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1OEiHI-00074F-Qh
	for barebox@lists.infradead.org; Wed, 19 May 2010 12:21:37 +0000
Date: Wed, 19 May 2010 14:21:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100519122134.GO31199@pengutronix.de>
References: <1274174808-9516-1-git-send-email-eric@eukrea.com>
	<1274174808-9516-2-git-send-email-eric@eukrea.com>
	<20100519110124.GM31199@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100519110124.GM31199@pengutronix.de>
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
Subject: Re: [PATCH 2/3] i2c: add i2cdev driver
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Wed, May 19, 2010 at 01:01:24PM +0200, Sascha Hauer wrote:
> On Tue, May 18, 2010 at 11:26:47AM +0200, Eric B=E9nard wrote:
> > this driver is needed to introduce i2c commands
> =

> This approach limits the i2cdev support to exactly one bus which is not
> good. What we can do here is:
> =

> - collect all available adapters in a list in drivers/i2c/i2c.c
> - implement i2c_get_adapter(int busnum) to get an adapter from its
>   busnum

For your convenience, the following patch should do it (untested
currently)


From 541c2167200f2a21584d0fdc0353f130129cf120 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 19 May 2010 14:20:07 +0200
Subject: [PATCH] i2c: implement i2c_get_adapter()

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/i2c/i2c.c |   24 +++++++++++++++++++++++-
 include/i2c/i2c.h |    3 +++
 2 files changed, 26 insertions(+), 1 deletions(-)

diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index 32fd026..1fa114a 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -39,7 +39,7 @@ struct boardinfo {
 };
 =

 static LIST_HEAD(board_list);
-
+static LIST_HEAD(adapter_list);
 =

 /**
  * i2c_transfer - execute a single or combined I2C message
@@ -327,6 +327,23 @@ static void scan_boardinfo(struct i2c_adapter *adapter)
 }
 =

 /**
+ *
+ * i2c_get_adapter - get an i2c adapter from its busnum
+ *
+ * @param	busnum	the desired bus number
+ *
+ */
+struct i2c_adapter *i2c_get_adapter(int busnum)
+{
+	struct i2c_adapter *adap;
+
+	list_for_each_entry(adap, &adapter_list, list)
+		if (adap->nr =3D=3D busnum)
+			return adap;
+	return NULL;
+}
+
+/**
  * i2c_register_master - register I2C master controller
  *
  * @param	master	initialized master, originally from i2c_alloc_master()
@@ -345,6 +362,11 @@ static void scan_boardinfo(struct i2c_adapter *adapter)
  */
 int i2c_add_numbered_adapter(struct i2c_adapter *adapter)
 {
+	if (i2c_get_adapter(adapter->nr))
+		return -EBUSY;
+
+	list_add_tail(&adapter_list, &adapter->list);
+
 	/* populate children from any i2c device tables */
 	scan_boardinfo(adapter);
 =

diff --git a/include/i2c/i2c.h b/include/i2c/i2c.h
index 0760fdc..6c216df 100644
--- a/include/i2c/i2c.h
+++ b/include/i2c/i2c.h
@@ -66,6 +66,7 @@ struct i2c_adapter {
 	struct device_d		*dev;	/* ptr to device */
 	int			nr;	/* bus number */
 	int (*master_xfer)(struct i2c_adapter *adap, struct i2c_msg *msgs, int nu=
m);
+	struct list_head	list;
 };
 =

 =


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
