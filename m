Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gUIN2-0004u6-FI
 for barebox@lists.infradead.org; Tue, 04 Dec 2018 21:36:48 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Tue,  4 Dec 2018 22:36:18 +0100
Message-Id: <20181204213618.6900-1-linux@rempel-privat.de>
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
Subject: [PATCH v2] drivers: net: convert drivers to spdx
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 drivers/net/ag71xx.c             |  5 +----
 drivers/net/altera_tse.c         | 15 +--------------
 drivers/net/altera_tse.h         |  5 +----
 drivers/net/ar231x.c             |  6 +-----
 drivers/net/ar231x.h             |  9 +--------
 drivers/net/arc_emac.c           | 10 +---------
 drivers/net/at91_ether.c         | 15 +--------------
 drivers/net/at91_ether.h         |  6 +-----
 drivers/net/cpsw.c               | 15 +--------------
 drivers/net/cs8900.c             | 11 +----------
 drivers/net/davinci_emac.c       | 19 +------------------
 drivers/net/davinci_emac.h       | 18 +-----------------
 drivers/net/designware.c         | 15 +--------------
 drivers/net/designware.h         | 15 +--------------
 drivers/net/designware_generic.c | 15 +--------------
 drivers/net/designware_socfpga.c | 15 +--------------
 drivers/net/dm9k.c               | 11 +----------
 drivers/net/efi-snp.c            | 14 +-------------
 drivers/net/enc28j60.c           |  7 +------
 drivers/net/ep93xx.c             | 17 +----------------
 drivers/net/ep93xx.h             | 16 +---------------
 drivers/net/ethoc.c              |  5 +----
 drivers/net/fec_imx.c            | 12 +-----------
 drivers/net/fec_imx.h            | 13 +------------
 drivers/net/fec_mpc5200.c        |  1 +
 drivers/net/gianfar.c            |  5 +----
 drivers/net/gianfar.h            |  5 +----
 drivers/net/ks8851_mll.c         | 12 ++----------
 drivers/net/ksz8864rmn.c         | 12 +-----------
 drivers/net/macb.c               | 12 +-----------
 drivers/net/macb.h               | 15 +--------------
 drivers/net/mvneta.c             | 12 +-----------
 drivers/net/orion-gbe.c          | 16 +---------------
 drivers/net/orion-gbe.h          | 16 +---------------
 drivers/net/rtl8169.c            | 13 +------------
 drivers/net/smc91111.c           | 11 +----------
 drivers/net/smc911x.c            | 15 +--------------
 drivers/net/smc911x.h            | 15 +--------------
 drivers/net/tap.c                | 14 +-------------
 drivers/net/xgmac.c              | 14 +-------------
 40 files changed, 41 insertions(+), 436 deletions(-)

diff --git a/drivers/net/ag71xx.c b/drivers/net/ag71xx.c
index a422aacdd..0565c9049 100644
--- a/drivers/net/ag71xx.c
+++ b/drivers/net/ag71xx.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  *  Atheros AR71xx built-in ethernet mac driver
  *
@@ -5,10 +6,6 @@
  *  Copyright (C) 2008 Imre Kaloz <kaloz@openwrt.org>
  *
  *  Based on Atheros' AG7100 driver
- *
- *  This program is free software; you can redistribute it and/or modify it
- *  under the terms of the GNU General Public License version 2 as published
- *  by the Free Software Foundation.
  */
 
 #include <common.h>
diff --git a/drivers/net/altera_tse.c b/drivers/net/altera_tse.c
index 316b97174..f1dfe5952 100644
--- a/drivers/net/altera_tse.c
+++ b/drivers/net/altera_tse.c
@@ -1,23 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Altera TSE Network driver
  *
  * Copyright (C) 2008 Altera Corporation.
  * Copyright (C) 2010 Thomas Chou <thomas@wytron.com.tw>
  * Copyright (C) 2011 Franck JULLIEN, <elec4fun@gmail.com>
- *
- * See file CREDITS for list of people who contributed to this
- * project.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
  */
 
 #include <common.h>
diff --git a/drivers/net/altera_tse.h b/drivers/net/altera_tse.h
index 5a66a7d28..7bff14de8 100644
--- a/drivers/net/altera_tse.h
+++ b/drivers/net/altera_tse.h
@@ -1,13 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Altera 10/100/1000 triple speed ethernet mac
  *
  * Copyright (C) 2008 Altera Corporation.
  * Copyright (C) 2010 Thomas Chou <thomas@wytron.com.tw>
  * Copyright (C) 2011 Franck JULLIEN <elec4fun@gmail.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
  */
 #ifndef _ALTERA_TSE_H_
 #define _ALTERA_TSE_H_
diff --git a/drivers/net/ar231x.c b/drivers/net/ar231x.c
index 1ef9ce815..48d41b8cb 100644
--- a/drivers/net/ar231x.c
+++ b/drivers/net/ar231x.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * ar231x.c: driver for the Atheros AR231x Ethernet device.
  * This device is build in to SoC on ar231x series.
@@ -9,11 +10,6 @@
  *   Copyright (C) 2006-2009 Felix Fietkau <nbd@openwrt.org>
  * Ported to Barebox:
  *   Copyright (C) 2013 Oleksij Rempel <linux@rempel-privat.de>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
  */
 /*
  * Known issues:
diff --git a/drivers/net/ar231x.h b/drivers/net/ar231x.h
index 24684127c..d92598a69 100644
--- a/drivers/net/ar231x.h
+++ b/drivers/net/ar231x.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
 /*
  * ar231x.h: Linux driver for the Atheros AR231x Ethernet device.
  * Based on Linux driver:
@@ -6,14 +7,6 @@
  *		Copyright (C) 2006-2009 Felix Fietkau <nbd@openwrt.org>
  * Ported to Barebox:
  *		Copyright (C) 2013 Oleksij Rempel <linux@rempel-privat.de>
- *
- * Thanks to Atheros for providing hardware and documentation
- * enabling me to write this driver.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
  */
 
 #ifndef _AR2313_2_H_
diff --git a/drivers/net/arc_emac.c b/drivers/net/arc_emac.c
index 2155349e2..28ec5e31f 100644
--- a/drivers/net/arc_emac.c
+++ b/drivers/net/arc_emac.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Driver for ARC EMAC Ethernet controller
  *
@@ -5,15 +6,6 @@
  *
  * Based on Linux kernel driver, which is:
  *  Copyright (C) 2004-2013 Synopsys, Inc. (www.synopsys.com)
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
- * GNU General Public License for more details.
  */
 
 #include <clock.h>
diff --git a/drivers/net/at91_ether.c b/drivers/net/at91_ether.c
index 523e35590..e69a300a6 100644
--- a/drivers/net/at91_ether.c
+++ b/drivers/net/at91_ether.c
@@ -1,22 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright (C) 2009-2012 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
  *
  * (C) Copyright 2003
  * Author : Hamid Ikdoumi (Atmel)
- *
- * See file CREDITS for list of people who contributed to this
- * project.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
  */
 
 #include <common.h>
diff --git a/drivers/net/at91_ether.h b/drivers/net/at91_ether.h
index b97619ecb..08df6f161 100644
--- a/drivers/net/at91_ether.h
+++ b/drivers/net/at91_ether.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
 /*
  * Ethernet driver for the Atmel AT91RM9200 (Thunder)
  *
@@ -5,11 +6,6 @@
  *
  * Based on an earlier Atmel EMAC macrocell driver by Atmel and Lineo Inc.
  * Initial version by Rick Bronson.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License
- * as published by the Free Software Foundation; either version
- * 2 of the License, or (at your option) any later version.
  */
 
 #ifndef AT91_ETHERNET
diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index 6de9851fd..432004ec9 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -1,19 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * CPSW Ethernet Switch Driver
- *
- * See file CREDITS for list of people who contributed to this
- * project.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
  */
 
 #include <common.h>
diff --git a/drivers/net/cs8900.c b/drivers/net/cs8900.c
index 1be49e86f..75bbbd79e 100644
--- a/drivers/net/cs8900.c
+++ b/drivers/net/cs8900.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * cs8900.c
  *
@@ -9,16 +10,6 @@
  *   (C) Copyright 2002 Sysgo Real-Time Solutions, GmbH <www.elinos.com>
  *   Marius Groeger <mgroeger@sysgo.de>
  *   Copyright (C) 1999 Ben Williamson <benw@pobox.com>
- *
- *      This program is free software; you can redistribute it and/or
- *      modify it under the terms of the GNU General Public License
- *      as published by the Free Software Foundation; either version 2
- *      of the License, or (at your option) any later version.
- *
- *      This program is distributed in the hope that it will be useful,
- *      but WITHOUT ANY WARRANTY; without even the implied warranty of
- *      MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *      GNU General Public License for more details.
  */
 
 #include <common.h>
diff --git a/drivers/net/davinci_emac.c b/drivers/net/davinci_emac.c
index 75a917a76..2fccd4681 100644
--- a/drivers/net/davinci_emac.c
+++ b/drivers/net/davinci_emac.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright (C) 2012 Jan Luebbe <j.luebbe@pengutronix.de>
  *
@@ -16,27 +17,9 @@
  *
  * Copyright (C) 2005 Texas Instruments.
  *
- * ----------------------------------------------------------------------------
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- *  You should have received a copy of the GNU General Public License
- *  along with this program; if not, write to the Free Software
- *  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
- * ----------------------------------------------------------------------------
-
  * Modifications:
  * ver. 1.0: Sep 2005, Anant Gole - Created EMAC version for uBoot.
  * ver  1.1: Nov 2005, Anant Gole - Extended the RX logic for multiple descriptors
- *
  */
 
 #include <common.h>
diff --git a/drivers/net/davinci_emac.h b/drivers/net/davinci_emac.h
index c5fa018fb..db3c57f59 100644
--- a/drivers/net/davinci_emac.h
+++ b/drivers/net/davinci_emac.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
 /*
  * Copyright (C) 2007 Sergey Kubushyn <ksi@koi8.net>
  *
@@ -10,23 +11,6 @@
  * TI DaVinci (DM644X) EMAC peripheral driver header for DV-EVM
  *
  * Copyright (C) 2005 Texas Instruments.
- *
- * ----------------------------------------------------------------------------
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- *  You should have received a copy of the GNU General Public License
- *  along with this program; if not, write to the Free Software
- *  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
- * ----------------------------------------------------------------------------
  */
 
 #ifndef _DAVINCI_EMAC_H_
diff --git a/drivers/net/designware.c b/drivers/net/designware.c
index 58880b0e5..ad70967e8 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -1,20 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * (C) Copyright 2010
  * Vipin Kumar, ST Micoelectronics, vipin.kumar@st.com.
- *
- * See file CREDITS for list of people who contributed to this
- * project.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
  */
 
 /*
diff --git a/drivers/net/designware.h b/drivers/net/designware.h
index 6236d6c2e..305f674bf 100644
--- a/drivers/net/designware.h
+++ b/drivers/net/designware.h
@@ -1,20 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
 /*
  * (C) Copyright 2010
  * Vipin Kumar, ST Micoelectronics, vipin.kumar@st.com.
- *
- * See file CREDITS for list of people who contributed to this
- * project.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
  */
 
 #ifndef __DESIGNWARE_ETH_H
diff --git a/drivers/net/designware_generic.c b/drivers/net/designware_generic.c
index 9d125b47a..809c7b7b6 100644
--- a/drivers/net/designware_generic.c
+++ b/drivers/net/designware_generic.c
@@ -1,20 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * (C) Copyright 2010
  * Vipin Kumar, ST Micoelectronics, vipin.kumar@st.com.
- *
- * See file CREDITS for list of people who contributed to this
- * project.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
  */
 
 /*
diff --git a/drivers/net/designware_socfpga.c b/drivers/net/designware_socfpga.c
index cb88882d6..274ec1562 100644
--- a/drivers/net/designware_socfpga.c
+++ b/drivers/net/designware_socfpga.c
@@ -1,20 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * (C) Copyright 2010
  * Vipin Kumar, ST Micoelectronics, vipin.kumar@st.com.
- *
- * See file CREDITS for list of people who contributed to this
- * project.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
  */
 
 /*
diff --git a/drivers/net/dm9k.c b/drivers/net/dm9k.c
index c99d188de..d183ab55c 100644
--- a/drivers/net/dm9k.c
+++ b/drivers/net/dm9k.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright (C) 2011 Juergen Beisert, Pengutronix
  *
@@ -9,16 +10,6 @@
  *   1997-1998 DAVICOM Semiconductor,Inc.
  *   2003 Weilun Huang <weilun_huang@davicom.com.tw>
  *   2003 <saschahauer@web.de>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #undef DEBUG
diff --git a/drivers/net/efi-snp.c b/drivers/net/efi-snp.c
index 23edc9f04..4e3251373 100644
--- a/drivers/net/efi-snp.c
+++ b/drivers/net/efi-snp.c
@@ -1,20 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * efi-snp.c - Simple Network Protocol driver for EFI
  *
  * Copyright (c) 2014 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- *
- * See file CREDITS for list of people who contributed to this
- * project.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
  */
 
 #include <common.h>
diff --git a/drivers/net/enc28j60.c b/drivers/net/enc28j60.c
index 6550c59fc..3628a88f7 100644
--- a/drivers/net/enc28j60.c
+++ b/drivers/net/enc28j60.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Microchip ENC28J60 ethernet driver (MAC + PHY)
  *
@@ -6,12 +7,6 @@
  * Copyright (C) 2007 Eurek srl
  * Author: Claudio Lanconelli <lanconelli.claudio@eptar.com>
  * based on enc28j60.c written by David Anders for 2.4 kernel version
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
  */
 
 #include <common.h>
diff --git a/drivers/net/ep93xx.c b/drivers/net/ep93xx.c
index fd725a56e..f8b281093 100644
--- a/drivers/net/ep93xx.c
+++ b/drivers/net/ep93xx.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Cirrus Logic EP93xx ethernet MAC / MII driver.
  *
@@ -12,22 +13,6 @@
  * (C) Copyright 2002 2003
  * Adam Bezanson, Network Audio Technologies, Inc.
  * <bezanson@netaudiotech.com>
- *
- * See file CREDITS for list of people who contributed to this project.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
- * or FITNESS FOR A PARTICULAR PURPOSE.	See the GNU General Public License
- * for more details.
- *
- * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 675 Mass Ave, Cambridge, MA 02139, USA.
  */
 
 #include <common.h>
diff --git a/drivers/net/ep93xx.h b/drivers/net/ep93xx.h
index 32ae57f9f..b06692ccf 100644
--- a/drivers/net/ep93xx.h
+++ b/drivers/net/ep93xx.h
@@ -1,23 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
 /*
  * Copyright (C) 2009 Matthias Kaehlcke <matthias@kaehlcke.net>
  *
  * Copyright (C) 2004, 2005
  * Cory T. Tusar, Videon Central, Inc., <ctusar@videon-central.com>
- *
- * See file CREDITS for list of people who contributed to this
- * project.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- *
  */
 
 #ifndef _ETH_H
diff --git a/drivers/net/ethoc.c b/drivers/net/ethoc.c
index 1cb9fc285..f24120ce7 100644
--- a/drivers/net/ethoc.c
+++ b/drivers/net/ethoc.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * OpenCores 10/100 Mbps Ethernet driver
  *
@@ -6,10 +7,6 @@
  * Copyright (C) 2013 Beniamino Galvani <b.galvani@gmail.com>
  *
  * Originally written by Thierry Reding <thierry.reding@avionic-design.de>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
  */
 
 #include <common.h>
diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index d304b94c5..c2628cc1d 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -1,17 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * (C) Copyright 2007 Pengutronix, Sascha Hauer <s.hauer@pengutronix.de>
  * (C) Copyright 2007 Pengutronix, Juergen Beisert <j.beisert@pengutronix.de>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
  */
 
 #include <common.h>
diff --git a/drivers/net/fec_imx.h b/drivers/net/fec_imx.h
index e3f60dd66..1a1fbc987 100644
--- a/drivers/net/fec_imx.h
+++ b/drivers/net/fec_imx.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
 /*
  * (C) Copyright 2007 Pengutronix, Sascha Hauer <s.hauer@pengutronix.de>
  * (C) Copyright 2007 Pengutronix, Juergen Beisert <j.beisert@pengutronix.de>
@@ -7,18 +8,6 @@
  *
  * This file is based on mpc4200fec.h
  * (C) Copyright Motorola, Inc., 2000
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- *
  */
 
 #ifndef __IMX27_FEC_H
diff --git a/drivers/net/fec_mpc5200.c b/drivers/net/fec_mpc5200.c
index b99c23f7d..b47813aae 100644
--- a/drivers/net/fec_mpc5200.c
+++ b/drivers/net/fec_mpc5200.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * (C) Copyright 2003-2005
  * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
diff --git a/drivers/net/gianfar.c b/drivers/net/gianfar.c
index 9b2f781d9..8571d4f92 100644
--- a/drivers/net/gianfar.c
+++ b/drivers/net/gianfar.c
@@ -1,10 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Freescale Three Speed Ethernet Controller driver
  *
- * This software may be used and distributed according to the
- * terms of the GNU Public License, Version 2, incorporated
- * herein by reference.
- *
  * Copyright 2012 GE Intelligent Platforms, Inc.
  * Copyright 2004-2010 Freescale Semiconductor, Inc.
  * (C) Copyright 2003, Motorola, Inc.
diff --git a/drivers/net/gianfar.h b/drivers/net/gianfar.h
index c0b976347..081230189 100644
--- a/drivers/net/gianfar.h
+++ b/drivers/net/gianfar.h
@@ -1,12 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  *  gianfar.h
  *
  *  Driver for the Motorola Triple Speed Ethernet Controller
  *
- *  This software may be used and distributed according to the
- *  terms of the GNU Public License, Version 2, incorporated
- *  herein by reference.
- *
  * Copyright 2012 GE Intelligent Platforms, Inc.
  * Copyright 2004, 2007, 2009  Freescale Semiconductor, Inc.
  * (C) Copyright 2003, Motorola, Inc.
diff --git a/drivers/net/ks8851_mll.c b/drivers/net/ks8851_mll.c
index 39e1654ca..c0608112d 100644
--- a/drivers/net/ks8851_mll.c
+++ b/drivers/net/ks8851_mll.c
@@ -1,16 +1,8 @@
-/**
+// SPDX-License-Identifier: GPL-2.0-only
+/*
  * Copyright (c) 2012 Jan Weitzel <j.weitzel@phytec.de>
  * based on kernel driver drivers/net/ks8851_mll.c
  * Copyright (c) 2009 Micrel Inc.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 /**
diff --git a/drivers/net/ksz8864rmn.c b/drivers/net/ksz8864rmn.c
index 8b9d66019..4a19dd873 100644
--- a/drivers/net/ksz8864rmn.c
+++ b/drivers/net/ksz8864rmn.c
@@ -1,16 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright (C) 2012 Jan Luebbe, Pengutronix
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
  */
 
 #include <common.h>
diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 1c5752d10..1a8f6da31 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -1,16 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright (C) 2005-2006 Atmel Corporation
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
  */
 #include <common.h>
 
diff --git a/drivers/net/macb.h b/drivers/net/macb.h
index 1be9ff90f..6be973276 100644
--- a/drivers/net/macb.h
+++ b/drivers/net/macb.h
@@ -1,19 +1,6 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
 /*
  * Copyright (C) 2005-2006 Atmel Corporation
- *
- * See file CREDITS for list of people who contributed to this
- * project.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
  */
 #ifndef __DRIVERS_MACB_H__
 #define __DRIVERS_MACB_H__
diff --git a/drivers/net/mvneta.c b/drivers/net/mvneta.c
index 5c163cebc..7aa54a292 100644
--- a/drivers/net/mvneta.c
+++ b/drivers/net/mvneta.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * (C) Copyright 2014 - Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
  *
@@ -10,17 +11,6 @@
  *   (C) Copyright 2014
  *   Pengutronix, Michael Grzeschik <mgr@pengutronix.de>
  *   Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
-
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
- * GNU General Public License for more details.
- *
  */
 
 #include <common.h>
diff --git a/drivers/net/orion-gbe.c b/drivers/net/orion-gbe.c
index 431ec5c31..0ae94e684 100644
--- a/drivers/net/orion-gbe.c
+++ b/drivers/net/orion-gbe.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * (C) Copyright 2014
  *   Pengutronix, Michael Grzeschik <mgr@pengutronix.de>
@@ -10,21 +11,6 @@
  *
  *     based on - Driver for MV64360X ethernet ports
  *     Copyright (C) 2002 rabeeh@galileo.co.il
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
- * MA 02110-1301 USA
  */
 #include <common.h>
 #include <dma.h>
diff --git a/drivers/net/orion-gbe.h b/drivers/net/orion-gbe.h
index e5b18b1eb..d59b5f677 100644
--- a/drivers/net/orion-gbe.h
+++ b/drivers/net/orion-gbe.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
 /*
  * (C) Copyright 2014
  *   Pengutronix, Michael Grzeschik <mgr@pengutronix.de>
@@ -10,21 +11,6 @@
  *
  *     based on - Driver for MV64360X ethernet ports
  *     Copyright (C) 2002 rabeeh@galileo.co.il
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
- * MA 02110-1301 USA
  */
 
 #ifndef __ORION_GBE_
diff --git a/drivers/net/rtl8169.c b/drivers/net/rtl8169.c
index 9ec017838..ba257509e 100644
--- a/drivers/net/rtl8169.c
+++ b/drivers/net/rtl8169.c
@@ -1,17 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (C) 2014 Lucas Stach <l.stach@pengutronix.de>
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms and conditions of the GNU General Public License,
- * version 2, as published by the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program.  If not, see <http://www.gnu.org/licenses/>.
  */
 
 #include <common.h>
diff --git a/drivers/net/smc91111.c b/drivers/net/smc91111.c
index e08e3dd1b..d503535c2 100644
--- a/drivers/net/smc91111.c
+++ b/drivers/net/smc91111.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*------------------------------------------------------------------------
  . smc91111.c
  . This is a driver for SMSC's 91C111 single-chip Ethernet device.
@@ -10,16 +11,6 @@
  .	 Developed by Simple Network Magic Corporation (SNMC)
  . Copyright (C) 1996 by Erik Stahlman (ES)
  .
- . This program is free software; you can redistribute it and/or modify
- . it under the terms of the GNU General Public License as published by
- . the Free Software Foundation; either version 2 of the License, or
- . (at your option) any later version.
- .
- . This program is distributed in the hope that it will be useful,
- . but WITHOUT ANY WARRANTY; without even the implied warranty of
- . MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
- . GNU General Public License for more details.
- .
  . Information contained in this file was obtained from the LAN91C111
  . manual from SMC.  To get a copy, if you really want one, you can find
  . information under www.smsc.com.
diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
index 45175bb32..0d5dcb31e 100644
--- a/drivers/net/smc911x.c
+++ b/drivers/net/smc911x.c
@@ -1,21 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * SMSC LAN9[12]1[567] Network driver
  *
  * (c) 2007 Pengutronix, Sascha Hauer <s.hauer@pengutronix.de>
- *
- * See file CREDITS for list of people who contributed to this
- * project.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
  */
 
 #include <common.h>
diff --git a/drivers/net/smc911x.h b/drivers/net/smc911x.h
index 3bf2af9c3..b6d4a03fe 100644
--- a/drivers/net/smc911x.h
+++ b/drivers/net/smc911x.h
@@ -1,21 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
 /*
  * SMSC LAN9[12]1[567] Network driver
  *
  * (c) 2007 Pengutronix, Sascha Hauer <s.hauer@pengutronix.de>
- *
- * See file CREDITS for list of people who contributed to this
- * project.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
  */
 
 /* Below are the register offsets and bit definitions
diff --git a/drivers/net/tap.c b/drivers/net/tap.c
index 4277956ed..1fbfa085b 100644
--- a/drivers/net/tap.c
+++ b/drivers/net/tap.c
@@ -1,20 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * tap.c - A tap ethernet driver for barebox
  *
  * Copyright (c) 2007 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- *
- * See file CREDITS for list of people who contributed to this
- * project.
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
 
 #include <common.h>
diff --git a/drivers/net/xgmac.c b/drivers/net/xgmac.c
index 47ab6e72e..136d78804 100644
--- a/drivers/net/xgmac.c
+++ b/drivers/net/xgmac.c
@@ -1,18 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright 2010-2011 Calxeda, Inc.
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms of the GNU General Public License as published by the Free
- * Software Foundation; either version 2 of the License, or (at your option)
- * any later version.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- *
- * You should have received a copy of the GNU General Public License along with
- * this program.  If not, see <http://www.gnu.org/licenses/>.
  */
 
 #include <common.h>
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
