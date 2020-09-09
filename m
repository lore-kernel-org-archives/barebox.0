Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bn8nam12on2133.outbound.protection.outlook.com
 ([40.107.237.133] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kG5u2-0006nY-Jg
 for barebox@lists.infradead.org; Wed, 09 Sep 2020 19:37:11 +0000
From: Trent Piepho <trent.piepho@synapse.com>
Date: Wed,  9 Sep 2020 12:36:47 -0700
Message-Id: <20200909193650.347646-1-trent.piepho@synapse.com>
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
Subject: [PATCH 1/4] aiodev: Name channels with device instance name
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

Signed-off-by: Trent Piepho <trent.piepho@synapse.com>
---
 drivers/aiodev/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/aiodev/core.c b/drivers/aiodev/core.c
index b8428346a..7d9170d2d 100644
--- a/drivers/aiodev/core.c
+++ b/drivers/aiodev/core.c
@@ -131,7 +131,7 @@ int aiodevice_register(struct aiodevice *aiodev)
 				  aiochannel_param_get_value,
 				  &aiochan->value, "%d", aiochan);
 
-		aiochan->name = xasprintf("%s.%s", aiodev->name, name);
+		aiochan->name = xasprintf("%s.%s", dev_name(&aiodev->dev), name);
 
 		free(name);
 	}
-- 
2.25.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
