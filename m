Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jvxfP-00016H-Aj
 for barebox@lists.infradead.org; Thu, 16 Jul 2020 06:46:53 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu, 16 Jul 2020 08:46:40 +0200
Message-Id: <20200716064642.25729-2-o.rempel@pengutronix.de>
In-Reply-To: <20200716064642.25729-1-o.rempel@pengutronix.de>
References: <20200716064642.25729-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v3 1/3] devinfo: do not dump the device node for the root node
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>, david@protonic.nl

Calling the devinfo against a device which is linked to some devicetree
node weill result a devictree dump of this node. For example:

barebox@Protonic PRTI6Q board:/ devinfo sound-spdif.of
Bus: platform
Device node: /sound-spdif
sound-spdif {
        compatible = "fsl,imx-audio-spdif";
        model = "imx-spdif";
        spdif-controller = <0x7a>;
        spdif-in;
        spdif-out;
};

Calling same command on a device wich is linked to the root node of
devicetree, for example "machine.of", will trigger a dump fo complete
devicetree. Since the same functionality is provided by the "of_dump"
command, it is better to limit devinfo on the root device. After this
patch we would get following output:

barebox@Protonic PRTI6Q board:/ devinfo machine.of
Driver: board-protonic-imx6
Bus: platform
Parameters:
  boardid: 0 (type: uint32)
  boardrev: 1 (type: uint32)

In this example, "boardid" and "boardrev" are variabled provided by this
this specific board driver.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 commands/devinfo.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/devinfo.c b/commands/devinfo.c
index 81956b1cc0..018a7c4167 100644
--- a/commands/devinfo.c
+++ b/commands/devinfo.c
@@ -99,7 +99,7 @@ static int do_devinfo(int argc, char *argv[])
 			printf("\n");
 		}
 #ifdef CONFIG_OFDEVICE
-		if (dev->device_node) {
+		if (dev->device_node && dev->device_node != of_get_root_node()) {
 			printf("Device node: %s\n", dev->device_node->full_name);
 			of_print_nodes(dev->device_node, 0);
 		}
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
