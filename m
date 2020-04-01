Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJWDM-00065W-Pz
 for barebox@lists.infradead.org; Wed, 01 Apr 2020 05:47:02 +0000
Date: Wed, 1 Apr 2020 07:46:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200401054657.GV27288@pengutronix.de>
References: <20200331184722.22707-1-andrew.smirnov@gmail.com>
 <20200331184722.22707-6-andrew.smirnov@gmail.com>
 <20200401052947.GU27288@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200401052947.GU27288@pengutronix.de>
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
Subject: Re: [PATCH 05/23] i2c: Port of_find_i2c_device_by_node() from Linux
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Apr 01, 2020 at 07:29:47AM +0200, Sascha Hauer wrote:
> On Tue, Mar 31, 2020 at 11:47:04AM -0700, Andrey Smirnov wrote:
> > Port of_find_i2c_device_by_node() from Linux in order to allow looking
> > i2c_client up by corresponding DT node. Useful for interacting with
> > identical raw/driverless I2C devices that are not found on the same
> > bus between board variants.
> > 
> > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > ---
> >  include/i2c/i2c.h | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> > 
> > diff --git a/include/i2c/i2c.h b/include/i2c/i2c.h
> > index a694e4ab2..7eaa97dde 100644
> > --- a/include/i2c/i2c.h
> > +++ b/include/i2c/i2c.h
> > @@ -281,6 +281,14 @@ static inline int i2c_register_board_info(int busnum,
> >  extern int i2c_add_numbered_adapter(struct i2c_adapter *adapter);
> >  struct i2c_adapter *i2c_get_adapter(int busnum);
> >  struct i2c_adapter *of_find_i2c_adapter_by_node(struct device_node *node);
> > +static inline struct i2c_client *
> > +of_find_i2c_device_by_node(struct device_node *node)
> > +{
> > +	struct device_d *dev = of_find_device_by_node(node);
> > +
> > +	return dev ? to_i2c_client(dev) : NULL;
> > +}
> 
> Can we have a sanity check if this is actually a I2C device? At least
> a test for dev->bus == &i2c_bus would be nice.

This should do it:

--------------------------------8<--------------------------------

From 1437676f8cdf8fafd3269e364fc06f996acc0aad Mon Sep 17 00:00:00 2001
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 31 Mar 2020 11:47:04 -0700
Subject: [PATCH] i2c: Port of_find_i2c_device_by_node() from Linux

Port of_find_i2c_device_by_node() from Linux in order to allow looking
i2c_client up by corresponding DT node. Useful for interacting with
identical raw/driverless I2C devices that are not found on the same
bus between board variants.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/i2c/i2c.c | 13 +++++++++++++
 include/i2c/i2c.h |  1 +
 2 files changed, 14 insertions(+)

diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index 9df5ee70c7..2fed624d69 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -556,6 +556,19 @@ struct i2c_adapter *of_find_i2c_adapter_by_node(struct device_node *node)
 	return NULL;
 }
 
+struct i2c_client *of_find_i2c_device_by_node(struct device_node *node)
+{
+	struct device_d *dev = of_find_device_by_node(node);
+
+	if (!dev)
+		return NULL;
+
+	if (dev->bus != &i2c_bus)
+		return NULL;
+
+	return to_i2c_client(dev);
+}
+
 /**
  * i2c_parse_fw_timings - get I2C related timing parameters from firmware
  * @dev: The device to scan for I2C timing properties
diff --git a/include/i2c/i2c.h b/include/i2c/i2c.h
index a694e4ab2f..56a887a13a 100644
--- a/include/i2c/i2c.h
+++ b/include/i2c/i2c.h
@@ -281,6 +281,7 @@ static inline int i2c_register_board_info(int busnum,
 extern int i2c_add_numbered_adapter(struct i2c_adapter *adapter);
 struct i2c_adapter *i2c_get_adapter(int busnum);
 struct i2c_adapter *of_find_i2c_adapter_by_node(struct device_node *node);
+struct i2c_client *of_find_i2c_device_by_node(struct device_node *node);
 
 void i2c_parse_fw_timings(struct device_d *dev, struct i2c_timings *t, bool use_defaults);
 
-- 
2.26.0.rc2

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
