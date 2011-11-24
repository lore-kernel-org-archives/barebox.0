Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RTYeu-0004JN-NX
 for barebox@lists.infradead.org; Thu, 24 Nov 2011 12:44:09 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1RTYej-0006pZ-8r
 for barebox@lists.infradead.org; Thu, 24 Nov 2011 13:43:57 +0100
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <jbe@pengutronix.de>) id 1RTYei-0002Lt-BX
 for barebox@lists.infradead.org; Thu, 24 Nov 2011 13:43:56 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Thu, 24 Nov 2011 13:43:49 +0100
Message-Id: <1322138631-8963-12-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1322138631-8963-1-git-send-email-jbe@pengutronix.de>
References: <1322138631-8963-1-git-send-email-jbe@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 11/13] ATA/DISK: Remove the now unused header <ata.h>
To: barebox@lists.infradead.org

This file is obsolete now.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 include/ata.h |   39 ---------------------------------------
 1 files changed, 0 insertions(+), 39 deletions(-)
 delete mode 100644 include/ata.h

diff --git a/include/ata.h b/include/ata.h
deleted file mode 100644
index d56399e..0000000
--- a/include/ata.h
+++ /dev/null
@@ -1,39 +0,0 @@
-/*
- * Copyright (C) 2009 Juergen Beisert, Pengutronix
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
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
- * MA 02111-1307 USA
- *
- */
-
-/**
- * @file
- * @brief Declarations to communicate with ATA types of drives
- */
-
-#include <types.h>
-#include <driver.h>
-
-/**
- * Access functions from drives through the specified interface
- */
-struct ata_interface {
-	/** write a count of sectors from a buffer to the drive */
-	int (*write)(struct device_d*, uint64_t, unsigned, const void*);
-	/** read a count of sectors from the drive into the buffer */
-	int (*read)(struct device_d*, uint64_t, unsigned, void*);
-	/** private interface data */
-	void *priv;
-};
-- 
1.7.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
