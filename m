Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2DMw-0007nK-Cp
 for barebox@lists.infradead.org; Thu, 13 Feb 2020 12:13:33 +0000
From: Roland Hieber <rhi@pengutronix.de>
Date: Thu, 13 Feb 2020 13:12:48 +0100
Message-Id: <20200213121254.17491-2-rhi@pengutronix.de>
In-Reply-To: <20200213121254.17491-1-rhi@pengutronix.de>
References: <20190207223906.24394-1-rohieb@rohieb.name>
 <20200213121254.17491-1-rhi@pengutronix.de>
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
Subject: [PATCH v3 1/7] include: add SPDX GPL-2.0-only license tags where
 applicable
To: Barebox Mailing List <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Roland Hieber <rohieb@rohieb.name>

From: Roland Hieber <rohieb@rohieb.name>

Interpret "GPLv2" as "GPLv2 only".

Signed-off-by: Roland Hieber <rohieb@rohieb.name>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/aimage.h            |  3 +--
 include/aiodev.h            |  9 ---------
 include/binfmt.h            |  3 +--
 include/bootstrap.h         |  3 +--
 include/bpkfs.h             |  3 +--
 include/dhcp.h              |  5 +----
 include/digest.h            | 12 +-----------
 include/dma.h               |  4 +---
 include/firmware.h          | 10 +---------
 include/getopt.h            | 11 +----------
 include/local_mac_address.h |  3 +--
 include/menu.h              | 12 +-----------
 include/of_graph.h          |  5 +----
 include/of_mtd.h            |  3 +--
 include/of_net.h            |  3 +--
 include/password.h          | 11 +----------
 include/pbl.h               |  3 +--
 include/poller.h            |  4 +---
 include/shell.h             |  3 +--
 include/uimagefs.h          |  3 +--
 include/w1_mac_address.h    |  3 +--
 21 files changed, 20 insertions(+), 96 deletions(-)

diff --git a/include/aimage.h b/include/aimage.h
index 9702b7d35ca0..4f34c2477112 100644
--- a/include/aimage.h
+++ b/include/aimage.h
@@ -1,9 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * (C) Copyright 2011 Jean-Christhophe PLAGNIOL-VILLARD <plagniol@jcrosoft.com>
  *
  * Android boot image
- *
- * Under GPLv2 only
  */
 
 #ifndef __AIMAGE_H__
diff --git a/include/aiodev.h b/include/aiodev.h
index 5e38b4fab5ad..ff877c0d7892 100644
--- a/include/aiodev.h
+++ b/include/aiodev.h
@@ -6,15 +6,6 @@
  *
  * See file CREDITS for list of people who contributed to this
  * project.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #ifndef __AIODEVICE_H
diff --git a/include/binfmt.h b/include/binfmt.h
index 46b627e36da1..7eb46e522573 100644
--- a/include/binfmt.h
+++ b/include/binfmt.h
@@ -1,7 +1,6 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
- *
- * GPL v2
  */
 
 #ifndef __BFMT_H__
diff --git a/include/bootstrap.h b/include/bootstrap.h
index d3ee6be47c7a..05734a920c3e 100644
--- a/include/bootstrap.h
+++ b/include/bootstrap.h
@@ -1,7 +1,6 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
- *
- * Under GPLv2
  */
 
 #ifndef __BOOSTRAP_H__
diff --git a/include/bpkfs.h b/include/bpkfs.h
index ccb56c1419e5..c80dc211c672 100644
--- a/include/bpkfs.h
+++ b/include/bpkfs.h
@@ -1,7 +1,6 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright (c) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
- *
- * under GPLv2 only
  */
 
 #ifndef __BPKFS_H__
diff --git a/include/dhcp.h b/include/dhcp.h
index 0dced8e9faa4..e19dac0d66ab 100644
--- a/include/dhcp.h
+++ b/include/dhcp.h
@@ -1,10 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright (C) 2015 PHYTEC Messtechnik GmbH,
  * Author: Wadim Egorov <w.egorov@phytec.de>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
  */
 
 #ifndef __DHCP_H__
diff --git a/include/digest.h b/include/digest.h
index 176084146b76..6148c03da469 100644
--- a/include/digest.h
+++ b/include/digest.h
@@ -1,19 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * (C) Copyright 2008-2010 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
  *
  * See file CREDITS for list of people who contributed to this
  * project.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; version 2 of
- * the License.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
- * GNU General Public License for more details.
- *
  */
 
 #ifndef __DIGEST_H__
diff --git a/include/dma.h b/include/dma.h
index 7f95782635d8..07b79cd91893 100644
--- a/include/dma.h
+++ b/include/dma.h
@@ -1,8 +1,6 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright (C) 2012 by Marc Kleine-Budde <mkl@pengutronix.de>
- *
- * This file is released under the GPLv2
- *
  */
 
 #ifndef __DMA_H
diff --git a/include/firmware.h b/include/firmware.h
index 7c01a77118eb..19777d9bf711 100644
--- a/include/firmware.h
+++ b/include/firmware.h
@@ -1,14 +1,6 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright (c) 2013 Juergen Beisert <kernel@pengutronix.de>, Pengutronix
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #ifndef FIRMWARE_H
diff --git a/include/getopt.h b/include/getopt.h
index 4f48ba8fd9b2..d4c01e793ad6 100644
--- a/include/getopt.h
+++ b/include/getopt.h
@@ -1,17 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * getopt.h - a simple getopt(3) implementation.
  *
  * Copyright (c) 2007 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
  */
 
 #ifndef __GETOPT_H
diff --git a/include/local_mac_address.h b/include/local_mac_address.h
index 3d1ec66b1f9f..5d2fb9d4c2e0 100644
--- a/include/local_mac_address.h
+++ b/include/local_mac_address.h
@@ -1,7 +1,6 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
- *
- * Under GPLv2 only
  */
 
 #ifndef __LOCAL_MAC_ADDRESS_H__
diff --git a/include/menu.h b/include/menu.h
index 2fef064499f7..77c496c65c17 100644
--- a/include/menu.h
+++ b/include/menu.h
@@ -1,19 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * (C) Copyright 2009-2010 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
  *
  * See file CREDITS for list of people who contributed to this
  * project.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; version 2 of
- * the License.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
  */
 
 #ifndef __MENU_H__
diff --git a/include/of_graph.h b/include/of_graph.h
index 254dd2ca28c9..ef3fb8b94a76 100644
--- a/include/of_graph.h
+++ b/include/of_graph.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * OF graph binding parsing helpers
  *
@@ -6,10 +7,6 @@
  *
  * Copyright (C) 2012 Renesas Electronics Corp.
  * Author: Guennadi Liakhovetski <g.liakhovetski@gmx.de>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of version 2 of the GNU General Public License as
- * published by the Free Software Foundation.
  */
 #ifndef __LINUX_OF_GRAPH_H
 #define __LINUX_OF_GRAPH_H
diff --git a/include/of_mtd.h b/include/of_mtd.h
index 9f5b8a2796a2..6dbc3d86730d 100644
--- a/include/of_mtd.h
+++ b/include/of_mtd.h
@@ -1,9 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
  *
  * OF helpers for mtd.
- *
- * This file is released under the GPLv2
  */
 
 #ifndef __LINUX_OF_MTD_H
diff --git a/include/of_net.h b/include/of_net.h
index 0f6ef200d5c6..f37af58303a5 100644
--- a/include/of_net.h
+++ b/include/of_net.h
@@ -1,7 +1,6 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * OF helpers for network devices.
- *
- * This file is released under the GPLv2
  */
 
 #ifndef __LINUX_OF_NET_H
diff --git a/include/password.h b/include/password.h
index 8b9961815fab..e259a87da1ac 100644
--- a/include/password.h
+++ b/include/password.h
@@ -1,18 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright (c) 2008-2010 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
  *
  * See file CREDITS for list of people who contributed to this
  * project.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
  */
 
 #ifndef __PASSWORD_H__
diff --git a/include/pbl.h b/include/pbl.h
index 787bd8293ff1..f84ed3b7bfcf 100644
--- a/include/pbl.h
+++ b/include/pbl.h
@@ -1,7 +1,6 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright (c) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
- *
- * Under GPLv2
  */
 
 #ifndef __PBL_H__
diff --git a/include/poller.h b/include/poller.h
index 35a2271d699c..b22b8a1b8959 100644
--- a/include/poller.h
+++ b/include/poller.h
@@ -1,8 +1,6 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright (C) 2010 Marc Kleine-Budde <mkl@pengutronix.de>
- *
- * This file is released under the GPLv2
- *
  */
 
 #ifndef POLLER_H
diff --git a/include/shell.h b/include/shell.h
index 65dad0e1d147..073f18102b45 100644
--- a/include/shell.h
+++ b/include/shell.h
@@ -1,7 +1,6 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * (C) Copyright 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
- *
- * Under GPLv2 only
  */
 
 #ifndef __SHELL_H__
diff --git a/include/uimagefs.h b/include/uimagefs.h
index 3f58589b731e..6b34982e4e97 100644
--- a/include/uimagefs.h
+++ b/include/uimagefs.h
@@ -1,7 +1,6 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright (c) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
- *
- * under GPLv2 only
  */
 
 #ifndef __UIMAGEFS_H__
diff --git a/include/w1_mac_address.h b/include/w1_mac_address.h
index cd4be765f73e..1ee0ad27c99d 100644
--- a/include/w1_mac_address.h
+++ b/include/w1_mac_address.h
@@ -1,7 +1,6 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
- *
- * Under GPLv2 only
  */
 
 #ifndef __W1_MAC_ADDRESS_H__
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
