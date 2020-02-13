Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2DN4-0007sm-Dn
 for barebox@lists.infradead.org; Thu, 13 Feb 2020 12:13:34 +0000
From: Roland Hieber <rhi@pengutronix.de>
Date: Thu, 13 Feb 2020 13:12:52 +0100
Message-Id: <20200213121254.17491-6-rhi@pengutronix.de>
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
Subject: [PATCH v3 5/7] include: add SPDX LGPL-2.1-or-later license tags where
 applicable
To: Barebox Mailing List <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Roland Hieber <rohieb@rohieb.name>

From: Roland Hieber <rohieb@rohieb.name>

Signed-off-by: Roland Hieber <rohieb@rohieb.name>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/fnmatch.h | 17 ++---------------
 include/glob.h    | 17 ++---------------
 2 files changed, 4 insertions(+), 30 deletions(-)

diff --git a/include/fnmatch.h b/include/fnmatch.h
index c0fd6a920710..c13beb9011fb 100644
--- a/include/fnmatch.h
+++ b/include/fnmatch.h
@@ -1,20 +1,7 @@
+/* SPDX-License-Identifier: LGPL-2.1-or-later */
 /* Copyright (C) 1991,92,93,96,97,98,99,2001 Free Software Foundation, Inc.
    This file is part of the GNU C Library.
-
-   The GNU C Library is free software; you can redistribute it and/or
-   modify it under the terms of the GNU Lesser General Public
-   License as published by the Free Software Foundation; either
-   version 2.1 of the License, or (at your option) any later version.
-
-   The GNU C Library is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
-   Lesser General Public License for more details.
-
-   You should have received a copy of the GNU Lesser General Public
-   License along with the GNU C Library; if not, write to the Free
-   Software Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA
-   02111-1307 USA.  */
+*/
 
 #ifndef	_FNMATCH_H
 #define	_FNMATCH_H	1
diff --git a/include/glob.h b/include/glob.h
index 777815251312..5f532e6652c3 100644
--- a/include/glob.h
+++ b/include/glob.h
@@ -1,20 +1,7 @@
+/* SPDX-License-Identifier: LGPL-2.1-or-later */
 /* Copyright (C) 1991,92,95,96,97,98,2000,2001 Free Software Foundation, Inc.
    This file is part of the GNU C Library.
-
-   The GNU C Library is free software; you can redistribute it and/or
-   modify it under the terms of the GNU Lesser General Public
-   License as published by the Free Software Foundation; either
-   version 2.1 of the License, or (at your option) any later version.
-
-   The GNU C Library is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
-   Lesser General Public License for more details.
-
-   You should have received a copy of the GNU Lesser General Public
-   License along with the GNU C Library; if not, write to the Free
-   Software Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA
-   02111-1307 USA.  */
+*/
 
 #ifndef	_GLOB_H
 #define	_GLOB_H	1
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
