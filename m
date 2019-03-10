Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h35HH-0004iv-Qc
 for barebox@lists.infradead.org; Sun, 10 Mar 2019 20:42:39 +0000
Date: Sun, 10 Mar 2019 21:42:25 +0100
From: Roland Hieber <rhi@pengutronix.de>
Message-ID: <20190310204225.4sh6lam2drv66ok6@pengutronix.de>
References: <20190207223906.24394-1-rohieb@rohieb.name>
 <068ce15e-1a72-9b02-2b1f-40a5d32523a0@rempel-privat.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <068ce15e-1a72-9b02-2b1f-40a5d32523a0@rempel-privat.de>
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
Subject: Re: [PATCH 1/6] include: add SPDX GPL-2.0-only license tags where
 applicable
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org

Hi,

this thread has been open for some time now without any more responses.
The only motion against it was from Oleksij, who asked me remove the
license headers in favour of having only the SPDX-License-Identifier
tags.  I replied that I think both the human-understandable license
headers and the machine-readable tags have their own value, but there
was no further argument. Oleksij, do you agree, or do you have further
arguments?

 - Roland

On Fri, Feb 08, 2019 at 06:48:26AM +0100, Oleksij Rempel wrote:
> Hi Roland,
> 
> please remove deprecated license headers in same patch.
> 
> Am 07.02.19 um 23:39 schrieb Roland Hieber:
> > Interpret "GPLv2" as "GPLv2 only".
> > 
> > Signed-off-by: Roland Hieber <rohieb@rohieb.name>
> > ---
> >  include/aimage.h            | 1 +
> >  include/aiodev.h            | 1 +
> >  include/binfmt.h            | 1 +
> >  include/bootstrap.h         | 1 +
> >  include/bpkfs.h             | 1 +
> >  include/ddr_spd.h           | 1 +
> >  include/dhcp.h              | 1 +
> >  include/digest.h            | 1 +
> >  include/dma.h               | 1 +
> >  include/firmware.h          | 1 +
> >  include/getopt.h            | 1 +
> >  include/local_mac_address.h | 1 +
> >  include/menu.h              | 1 +
> >  include/of_graph.h          | 1 +
> >  include/of_mtd.h            | 1 +
> >  include/of_net.h            | 1 +
> >  include/password.h          | 1 +
> >  include/pbl.h               | 1 +
> >  include/poller.h            | 1 +
> >  include/shell.h             | 1 +
> >  include/uimagefs.h          | 1 +
> >  include/w1_mac_address.h    | 1 +
> >  include/xymodem.h           | 1 +
> >  23 files changed, 23 insertions(+)
> > 
> > diff --git a/include/aimage.h b/include/aimage.h
> > index 9702b7d35c..0c7dda39ce 100644
> > --- a/include/aimage.h
> > +++ b/include/aimage.h
> > @@ -1,15 +1,16 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> >  /*
> >   * (C) Copyright 2011 Jean-Christhophe PLAGNIOL-VILLARD <plagniol@jcrosoft.com>
> >   *
> >   * Android boot image
> >   *
> >   * Under GPLv2 only
> >   */
> >  
> >  #ifndef __AIMAGE_H__
> >  #define __AIMAGE_H__
> >  
> >  #define BOOT_MAGIC	"ANDROID!"
> >  #define BOOT_MAGIC_SIZE	8
> >  #define BOOT_NAME_SIZE	16
> >  #define BOOT_ARGS_SIZE	512
> > diff --git a/include/aiodev.h b/include/aiodev.h
> > index 5e38b4fab5..5f41554ad1 100644
> > --- a/include/aiodev.h
> > +++ b/include/aiodev.h
> > @@ -1,15 +1,16 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> >  /*
> >   * core.c - Code implementing core functionality of AIODEV susbsystem
> >   *
> >   * Copyright (c) 2015 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
> >   * Copyright (c) 2015 Zodiac Inflight Innovation
> >   *
> >   * See file CREDITS for list of people who contributed to this
> >   * project.
> >   *
> >   * This program is free software; you can redistribute it and/or modify
> >   * it under the terms of the GNU General Public License version 2
> >   * as published by the Free Software Foundation.
> >   *
> >   * This program is distributed in the hope that it will be useful,
> >   * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > diff --git a/include/binfmt.h b/include/binfmt.h
> > index 46b627e36d..b1fd2a72e8 100644
> > --- a/include/binfmt.h
> > +++ b/include/binfmt.h
> > @@ -1,15 +1,16 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> >  /*
> >   * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> >   *
> >   * GPL v2
> >   */
> >  
> >  #ifndef __BFMT_H__
> >  #define __BFMT_H__
> >  
> >  #include <filetype.h>
> >  #include <linux/list.h>
> >  
> >  struct binfmt_hook {
> >  	enum filetype type;
> >  	int (*hook)(struct binfmt_hook *b, char *file, int argc, char **argv);
> > diff --git a/include/bootstrap.h b/include/bootstrap.h
> > index d3ee6be47c..6100f7be2f 100644
> > --- a/include/bootstrap.h
> > +++ b/include/bootstrap.h
> > @@ -1,15 +1,16 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> >  /*
> >   * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
> >   *
> >   * Under GPLv2
> >   */
> >  
> >  #ifndef __BOOSTRAP_H__
> >  #define __BOOSTRAP_H__
> >  
> >  #include <common.h>
> >  
> >  #define bootstrap_err(fmt, arg...) printf(fmt, ##arg)
> >  
> >  typedef void (*kernel_entry_func)(int zero, int arch, void *params);
> >  void bootstrap_boot(kernel_entry_func func, bool barebox);
> > diff --git a/include/bpkfs.h b/include/bpkfs.h
> > index ccb56c1419..49fbd5d48e 100644
> > --- a/include/bpkfs.h
> > +++ b/include/bpkfs.h
> > @@ -1,15 +1,16 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> >  /*
> >   * Copyright (c) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> >   *
> >   * under GPLv2 only
> >   */
> >  
> >  #ifndef __BPKFS_H__
> >  #define __BPKFS_H__
> >  
> >  #include <linux/types.h>
> >  #include <linux/list.h>
> >  
> >  #define BPKFS_TYPE_BL	0x50424c00
> >  #define BPKFS_TYPE_BLV	0x50424c56
> >  #define BPKFS_TYPE_DSC	0x44456343
> > diff --git a/include/ddr_spd.h b/include/ddr_spd.h
> > index 01fe73c615..18bb7c2751 100644
> > --- a/include/ddr_spd.h
> > +++ b/include/ddr_spd.h
> > @@ -1,15 +1,16 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> >  /*
> >   * Copyright 2008 Freescale Semiconductor, Inc.
> >   *
> >   * This program is free software; you can redistribute it and/or
> >   * modify it under the terms of the GNU General Public License
> >   * Version 2 as published by the Free Software Foundation.
> >   */
> >  
> >  #ifndef _DDR_SPD_H_
> >  #define _DDR_SPD_H_
> >  
> >  /*
> >   * Format from "JEDEC Appendix X: Serial Presence Detects for DDR2 SDRAM",
> >   * SPD Revision 1.2
> >   */
> > diff --git a/include/dhcp.h b/include/dhcp.h
> > index 0dced8e9fa..55ffb10789 100644
> > --- a/include/dhcp.h
> > +++ b/include/dhcp.h
> > @@ -1,15 +1,16 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> >  /*
> >   * Copyright (C) 2015 PHYTEC Messtechnik GmbH,
> >   * Author: Wadim Egorov <w.egorov@phytec.de>
> >   *
> >   * This program is free software; you can redistribute it and/or modify
> >   * it under the terms of the GNU General Public License version 2 as
> >   * published by the Free Software Foundation.
> >   */
> >  
> >  #ifndef __DHCP_H__
> >  #define __DHCP_H__
> >  
> >  #define DHCP_DEFAULT_RETRY 20
> >  
> >  struct dhcp_req_param {
> > diff --git a/include/digest.h b/include/digest.h
> > index a1cdbb2d7a..d001057527 100644
> > --- a/include/digest.h
> > +++ b/include/digest.h
> > @@ -1,15 +1,16 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> >  /*
> >   * (C) Copyright 2008-2010 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> >   *
> >   * See file CREDITS for list of people who contributed to this
> >   * project.
> >   *
> >   * This program is free software; you can redistribute it and/or
> >   * modify it under the terms of the GNU General Public License as
> >   * published by the Free Software Foundation; version 2 of
> >   * the License.
> >   *
> >   * This program is distributed in the hope that it will be useful,
> >   * but WITHOUT ANY WARRANTY; without even the implied warranty of
> >   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
> >   * GNU General Public License for more details.
> > diff --git a/include/dma.h b/include/dma.h
> > index 7f95782635..c7ff5b8944 100644
> > --- a/include/dma.h
> > +++ b/include/dma.h
> > @@ -1,15 +1,16 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> >  /*
> >   * Copyright (C) 2012 by Marc Kleine-Budde <mkl@pengutronix.de>
> >   *
> >   * This file is released under the GPLv2
> >   *
> >   */
> >  
> >  #ifndef __DMA_H
> >  #define __DMA_H
> >  
> >  #include <malloc.h>
> >  #include <xfuncs.h>
> >  
> >  #include <dma-dir.h>
> >  #include <asm/dma.h>
> > diff --git a/include/firmware.h b/include/firmware.h
> > index 284e0f9705..e3b1bd98be 100644
> > --- a/include/firmware.h
> > +++ b/include/firmware.h
> > @@ -1,15 +1,16 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> >  /*
> >   * Copyright (c) 2013 Juergen Beisert <kernel@pengutronix.de>, Pengutronix
> >   *
> >   * This program is free software; you can redistribute it and/or modify
> >   * it under the terms of the GNU General Public License version 2
> >   * as published by the Free Software Foundation.
> >   *
> >   * This program is distributed in the hope that it will be useful,
> >   * but WITHOUT ANY WARRANTY; without even the implied warranty of
> >   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> >   * GNU General Public License for more details.
> >   */
> >  
> >  #ifndef FIRMWARE_H
> >  #define FIRMWARE_H
> > diff --git a/include/getopt.h b/include/getopt.h
> > index 4f48ba8fd9..b215cfa2b7 100644
> > --- a/include/getopt.h
> > +++ b/include/getopt.h
> > @@ -1,15 +1,16 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> >  /*
> >   * getopt.h - a simple getopt(3) implementation.
> >   *
> >   * Copyright (c) 2007 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
> >   *
> >   * This program is free software; you can redistribute it and/or modify
> >   * it under the terms of the GNU General Public License version 2
> >   * as published by the Free Software Foundation.
> >   *
> >   * This program is distributed in the hope that it will be useful,
> >   * but WITHOUT ANY WARRANTY; without even the implied warranty of
> >   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> >   * GNU General Public License for more details.
> >   *
> >   */
> > diff --git a/include/local_mac_address.h b/include/local_mac_address.h
> > index 3d1ec66b1f..12cdf319c8 100644
> > --- a/include/local_mac_address.h
> > +++ b/include/local_mac_address.h
> > @@ -1,15 +1,16 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> >  /*
> >   * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
> >   *
> >   * Under GPLv2 only
> >   */
> >  
> >  #ifndef __LOCAL_MAC_ADDRESS_H__
> >  #define __LOCAL_MAC_ADDRESS_H__
> >  
> >  #include <net.h>
> >  
> >  /**
> >   * local_mac_address_register - use random number with fix
> >   * OUI provided device to provide an Ethernet address
> >   * @ethid: ethernet device id
> > diff --git a/include/menu.h b/include/menu.h
> > index 2fef064499..97545a1740 100644
> > --- a/include/menu.h
> > +++ b/include/menu.h
> > @@ -1,15 +1,16 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> >  /*
> >   * (C) Copyright 2009-2010 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> >   *
> >   * See file CREDITS for list of people who contributed to this
> >   * project.
> >   *
> >   * This program is free software; you can redistribute it and/or
> >   * modify it under the terms of the GNU General Public License as
> >   * published by the Free Software Foundation; version 2 of
> >   * the License.
> >   *
> >   * This program is distributed in the hope that it will be useful,
> >   * but WITHOUT ANY WARRANTY; without even the implied warranty of
> >   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> >   * GNU General Public License for more details.
> > diff --git a/include/of_graph.h b/include/of_graph.h
> > index 254dd2ca28..7a6c556bf3 100644
> > --- a/include/of_graph.h
> > +++ b/include/of_graph.h
> > @@ -1,15 +1,16 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> >  /*
> >   * OF graph binding parsing helpers
> >   *
> >   * Copyright (C) 2012 - 2013 Samsung Electronics Co., Ltd.
> >   * Author: Sylwester Nawrocki <s.nawrocki@samsung.com>
> >   *
> >   * Copyright (C) 2012 Renesas Electronics Corp.
> >   * Author: Guennadi Liakhovetski <g.liakhovetski@gmx.de>
> >   *
> >   * This program is free software; you can redistribute it and/or modify
> >   * it under the terms of version 2 of the GNU General Public License as
> >   * published by the Free Software Foundation.
> >   */
> >  #ifndef __LINUX_OF_GRAPH_H
> >  #define __LINUX_OF_GRAPH_H
> > diff --git a/include/of_mtd.h b/include/of_mtd.h
> > index 9f5b8a2796..9396523a79 100644
> > --- a/include/of_mtd.h
> > +++ b/include/of_mtd.h
> > @@ -1,15 +1,16 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> >  /*
> >   * Copyright 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> >   *
> >   * OF helpers for mtd.
> >   *
> >   * This file is released under the GPLv2
> >   */
> >  
> >  #ifndef __LINUX_OF_MTD_H
> >  #define __LINUX_OF_MTD_H
> >  
> >  #include <of.h>
> >  
> >  int of_get_nand_ecc_mode(struct device_node *np);
> >  int of_get_nand_ecc_step_size(struct device_node *np);
> > diff --git a/include/of_net.h b/include/of_net.h
> > index 0f6ef200d5..8b5a1435ad 100644
> > --- a/include/of_net.h
> > +++ b/include/of_net.h
> > @@ -1,14 +1,15 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> >  /*
> >   * OF helpers for network devices.
> >   *
> >   * This file is released under the GPLv2
> >   */
> >  
> >  #ifndef __LINUX_OF_NET_H
> >  #define __LINUX_OF_NET_H
> >  
> >  #include <of.h>
> >  int of_get_phy_mode(struct device_node *np);
> >  const void *of_get_mac_address(struct device_node *np);
> >  
> >  #endif /* __LINUX_OF_NET_H */
> > diff --git a/include/password.h b/include/password.h
> > index 8b9961815f..4b4e7c9497 100644
> > --- a/include/password.h
> > +++ b/include/password.h
> > @@ -1,15 +1,16 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> >  /*
> >   * Copyright (c) 2008-2010 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> >   *
> >   * See file CREDITS for list of people who contributed to this
> >   * project.
> >   *
> >   * This program is free software; you can redistribute it and/or modify
> >   * it under the terms of the GNU General Public License version 2
> >   * as published by the Free Software Foundation.
> >   *
> >   * This program is distributed in the hope that it will be useful,
> >   * but WITHOUT ANY WARRANTY; without even the implied warranty of
> >   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> >   * GNU General Public License for more details.
> >   *
> > diff --git a/include/pbl.h b/include/pbl.h
> > index 787bd8293f..594d8d0273 100644
> > --- a/include/pbl.h
> > +++ b/include/pbl.h
> > @@ -1,15 +1,16 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> >  /*
> >   * Copyright (c) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> >   *
> >   * Under GPLv2
> >   */
> >  
> >  #ifndef __PBL_H__
> >  #define __PBL_H__
> >  
> >  extern unsigned long free_mem_ptr;
> >  extern unsigned long free_mem_end_ptr;
> >  
> >  void pbl_barebox_uncompress(void *dest, void *compressed_start, unsigned int len);
> >  
> >  #ifdef __PBL__
> > diff --git a/include/poller.h b/include/poller.h
> > index 35a2271d69..9b2e7e1d7b 100644
> > --- a/include/poller.h
> > +++ b/include/poller.h
> > @@ -1,15 +1,16 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> >  /*
> >   * Copyright (C) 2010 Marc Kleine-Budde <mkl@pengutronix.de>
> >   *
> >   * This file is released under the GPLv2
> >   *
> >   */
> >  
> >  #ifndef POLLER_H
> >  #define POLLER_H
> >  
> >  #include <linux/list.h>
> >  
> >  struct poller_struct {
> >  	void (*func)(struct poller_struct *poller);
> >  	int registered;
> > diff --git a/include/shell.h b/include/shell.h
> > index 65dad0e1d1..b446743337 100644
> > --- a/include/shell.h
> > +++ b/include/shell.h
> > @@ -1,15 +1,16 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> >  /*
> >   * (C) Copyright 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> >   *
> >   * Under GPLv2 only
> >   */
> >  
> >  #ifndef __SHELL_H__
> >  #define __SHELL_H__
> >  
> >  int shell_get_last_return_code(void);
> >  
> >  int run_shell(void);
> >  
> >  #ifdef CONFIG_SHELL_HUSH
> >  char *shell_expand(char *str);
> > diff --git a/include/uimagefs.h b/include/uimagefs.h
> > index 3f58589b73..9a32a77c16 100644
> > --- a/include/uimagefs.h
> > +++ b/include/uimagefs.h
> > @@ -1,15 +1,16 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> >  /*
> >   * Copyright (c) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> >   *
> >   * under GPLv2 only
> >   */
> >  
> >  #ifndef __UIMAGEFS_H__
> >  #define __UIMAGEFS_H__
> >  
> >  #include <linux/types.h>
> >  #include <linux/list.h>
> >  #include <image.h>
> >  #include <ioctl.h>
> >  
> >  #define UIMAGEFS_METADATA	_IOR('U', 100, struct image_header)
> > diff --git a/include/w1_mac_address.h b/include/w1_mac_address.h
> > index cd4be765f7..2d499a3690 100644
> > --- a/include/w1_mac_address.h
> > +++ b/include/w1_mac_address.h
> > @@ -1,15 +1,16 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> >  /*
> >   * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
> >   *
> >   * Under GPLv2 only
> >   */
> >  
> >  #ifndef __W1_MAC_ADDRESS_H__
> >  #define __W1_MAC_ADDRESS_H__
> >  
> >  /**
> >   * w1_local_mac_address_register - use the first 3 byte of the id of a 1-wire
> >   * or 6 if no OUI provided device to provide an Ethernet address
> >   * @ethid: ethernet device id
> >   * @oui: Ethernet OUI (3 bytes)
> >   * @w1_dev: 1-wire device name
> > diff --git a/include/xymodem.h b/include/xymodem.h
> > index 917cecc003..82a36bfe7d 100644
> > --- a/include/xymodem.h
> > +++ b/include/xymodem.h
> > @@ -1,15 +1,16 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> >  /*
> >   * Handles the X-Modem, Y-Modem and Y-Modem/G protocols
> >   *
> >   * Copyright (C) 2008 Robert Jarzmik
> >   *
> >   * This program is free software; you can redistribute it and/or modify
> >   * it under the terms of the GNU General Public License as published by
> >   * the Free Software Foundation; either version 2 of the License, or
> >   * (at your option) any later version.
> >   *
> >   * This program is distributed in the hope that it will be useful,
> >   * but WITHOUT ANY WARRANTY; without even the implied warranty of
> >   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> >   * GNU General Public License for more details.
> >   */
> > 
> 
> 
> -- 
> Regards,
> Oleksij
> 




> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- 
Roland Hieber                     | r.hieber@pengutronix.de     |
Pengutronix e.K.                  | https://www.pengutronix.de/ |
Peiner Str. 6-8, 31137 Hildesheim | Phone: +49-5121-206917-5086 |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
