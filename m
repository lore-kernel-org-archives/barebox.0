Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x229.google.com ([2a00:1450:4008:c01::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vgx0H-00081a-0v
 for barebox@lists.infradead.org; Thu, 14 Nov 2013 13:30:37 +0000
Received: by mail-bk0-f41.google.com with SMTP id v15so1085846bkz.28
 for <barebox@lists.infradead.org>; Thu, 14 Nov 2013 05:30:13 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Thu, 14 Nov 2013 14:30:08 +0100
Message-Id: <1384435808-17524-1-git-send-email-alex.aring@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] barebox: remove double semicolons
To: barebox@lists.infradead.org

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
I was bored during a lecture.
Just did a grep for find them.
This isn't compile tested.

 arch/arm/mach-imx/imx-bbu-internal.c | 3 ++-
 drivers/ata/ahci.c                   | 2 +-
 drivers/mci/mci-core.c               | 2 +-
 drivers/net/altera_tse.c             | 2 +-
 drivers/usb/gadget/dfu.c             | 2 +-
 lib/gui/bmp.c                        | 4 ++--
 net/dns.c                            | 2 +-
 net/net.c                            | 2 +-
 8 files changed, 10 insertions(+), 9 deletions(-)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index a96b110..9861c07 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -360,7 +360,8 @@ static void imx_bbu_internal_v2_init_flash_header(struct bbu_handler *handler, s
 	flash_header->self = imx_handler->app_dest + flash_header_offset;
 
 	flash_header->boot_data.start = imx_handler->app_dest;
-	flash_header->boot_data.size = ALIGN(imx_pre_image_size + data->len, 4096);;
+	flash_header->boot_data.size = ALIGN(imx_pre_image_size +
+			data->len, 4096);
 
 	if (imx_handler->dcdsize) {
 		flash_header->dcd.header.tag = DCD_HEADER_TAG;
diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index f9cf2d1..74f247d 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -375,7 +375,7 @@ static int ahci_init_port(struct ahci_port *ahci_port)
 	ret = wait_on_timeout(WAIT_LINKUP,
 			(ahci_port_read(ahci_port, PORT_SCR_STAT) & 0xf) == 0x3);
 	if (ret) {
-		ahci_port_info(ahci_port, "SATA link timeout\n");;
+		ahci_port_info(ahci_port, "SATA link timeout\n");
 		ret = -ETIMEDOUT;
 		goto err_init;
 	}
diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index cfae91b..0c3cad9 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -831,7 +831,7 @@ static void mci_extract_card_capacity_from_csd(struct mci *mci)
 		mci->capacity = (csize + 1) << (cmult + 2);
 	}
 
-	mci->capacity *= 1 << UNSTUFF_BITS(mci->csd, 80, 4);;
+	mci->capacity *= 1 << UNSTUFF_BITS(mci->csd, 80, 4);
 	dev_dbg(&mci->dev, "Capacity: %u MiB\n", (unsigned)(mci->capacity >> 20));
 }
 
diff --git a/drivers/net/altera_tse.c b/drivers/net/altera_tse.c
index 1a44278..6978e2a 100644
--- a/drivers/net/altera_tse.c
+++ b/drivers/net/altera_tse.c
@@ -376,7 +376,7 @@ static int tse_eth_send(struct eth_device *edev, void *packet, int length)
 
 	alt_sgdma_do_sync_transfer(tx_sgdma, tx_desc_cur);
 
-	return 0;;
+	return 0;
 }
 
 static void tse_eth_halt(struct eth_device *edev)
diff --git a/drivers/usb/gadget/dfu.c b/drivers/usb/gadget/dfu.c
index e051879..e15fc41 100644
--- a/drivers/usb/gadget/dfu.c
+++ b/drivers/usb/gadget/dfu.c
@@ -61,7 +61,7 @@
 #define DFU_TEMPFILE "/dfu_temp"
 
 static int dfualt;
-static int dfufd = -EINVAL;;
+static int dfufd = -EINVAL;
 static struct usb_dfu_dev *dfu_devs;
 static int dfu_num_alt;
 static int dfudetach;
diff --git a/lib/gui/bmp.c b/lib/gui/bmp.c
index dcf3095..6943a1c 100644
--- a/lib/gui/bmp.c
+++ b/lib/gui/bmp.c
@@ -19,8 +19,8 @@ struct image *bmp_open(char *inbuf, int insize)
 	}
 
 	img->data = inbuf;
-	img->height = le32_to_cpu(bmp->header.height);;
-	img->width = le32_to_cpu(bmp->header.width);;
+	img->height = le32_to_cpu(bmp->header.height);
+	img->width = le32_to_cpu(bmp->header.width);
 	img->bits_per_pixel = le16_to_cpu(bmp->header.bit_count);
 
 	pr_debug("bmp: %d x %d  x %d data@0x%p\n", img->width, img->height,
diff --git a/net/dns.c b/net/dns.c
index eb96c57..afd2663 100644
--- a/net/dns.c
+++ b/net/dns.c
@@ -127,7 +127,7 @@ static void dns_handler(void *ctx, char *packet, unsigned len)
 	debug("%s\n", __func__);
 
 	/* We sent 1 query. We want to see more that 1 answer. */
-	header = (struct header *)net_eth_to_udp_payload(packet);;
+	header = (struct header *)net_eth_to_udp_payload(packet);
 	if (ntohs(header->nqueries) != 1)
 		return;
 
diff --git a/net/net.c b/net/net.c
index 058a4d3..9ef0784 100644
--- a/net/net.c
+++ b/net/net.c
@@ -433,7 +433,7 @@ void net_unregister(struct net_connection *con)
 static int net_ip_send(struct net_connection *con, int len)
 {
 	con->ip->tot_len = htons(sizeof(struct iphdr) + len);
-	con->ip->id = htons(net_ip_id++);;
+	con->ip->id = htons(net_ip_id++);
 	con->ip->check = 0;
 	con->ip->check = ~net_checksum((unsigned char *)con->ip, sizeof(struct iphdr));
 
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
