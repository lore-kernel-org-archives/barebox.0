Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-co1nam11on2120.outbound.protection.outlook.com
 ([40.107.220.120] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kLxGN-0007OR-3G
 for barebox@lists.infradead.org; Fri, 25 Sep 2020 23:36:28 +0000
From: Trent Piepho <trent.piepho@synapse.com>
Date: Fri, 25 Sep 2020 16:36:04 -0700
Message-Id: <20200925233607.453281-1-trent.piepho@synapse.com>
MIME-Version: 1.0
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
Subject: [PATCH v2 1/4] aiodev: Name channels with device instance name
To: barebox@lists.infradead.org
Cc: Trent Piepho <trent.piepho@synapse.com>

When dynamically assigning device names, an aiodev's name will be
"aiodev" and an index, not part of the name string itself, will be
allocated dynamically.  These are combined to register a device with a
name like "aiodev0" or "aiodev1".

The shell environment variables use the device name, so one might use
"${aiodev0.in_value0_mV}" and "${aiodev1.in_value0_mV}".

However, the channel names that are used with aiochannel_get_by_name()
just use the aiodev's name and channel name.  So channel 0 of the 1st
aiodev would be "aiodev.in_value0_mV" and the 2nd aiodev would use the
same name.

Change the channel naming to use the device instance name, e.g.
"aiodev0", rather than the aiodev's base name.  This makes the names
used aiochannel_get_by_name() match the environment variable names and
also avoids duplicate names with more than one dynamically allocated
aiodev.

Rename aiochannel_get_by_name() to aiochannel_by_name() so that any out
of tree boards that use it will fail to compile, since they now need to
pass in a different name.

Signed-off-by: Trent Piepho <trent.piepho@synapse.com>
---
Changes in v2:
  * Rename aiochannel_get_by_name()

 drivers/aiodev/core.c | 4 ++--
 include/aiodev.h      | 3 ++-
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/aiodev/core.c b/drivers/aiodev/core.c
index b8428346a..7240de2c4 100644
--- a/drivers/aiodev/core.c
+++ b/drivers/aiodev/core.c
@@ -24,7 +24,7 @@
 LIST_HEAD(aiodevices);
 EXPORT_SYMBOL(aiodevices);
 
-struct aiochannel *aiochannel_get_by_name(const char *name)
+struct aiochannel *aiochannel_by_name(const char *name)
 {
 	struct aiodevice *aiodev;
 	int i;
@@ -131,7 +131,7 @@ int aiodevice_register(struct aiodevice *aiodev)
 				  aiochannel_param_get_value,
 				  &aiochan->value, "%d", aiochan);
 
-		aiochan->name = xasprintf("%s.%s", aiodev->name, name);
+		aiochan->name = xasprintf("%s.%s", dev_name(&aiodev->dev), name);
 
 		free(name);
 	}
diff --git a/include/aiodev.h b/include/aiodev.h
index 65d817f29..d55771567 100644
--- a/include/aiodev.h
+++ b/include/aiodev.h
@@ -31,7 +31,8 @@ struct aiodevice {
 int aiodevice_register(struct aiodevice *aiodev);
 
 struct aiochannel *aiochannel_get(struct device_d *dev, int index);
-struct aiochannel *aiochannel_get_by_name(const char *name);
+/* Find aiochannel by channel name, e.g. "aiodev0.in_value0_mV" */
+struct aiochannel *aiochannel_by_name(const char *name);
 
 int aiochannel_get_value(struct aiochannel *aiochan, int *value);
 int aiochannel_get_index(struct aiochannel *aiochan);
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
