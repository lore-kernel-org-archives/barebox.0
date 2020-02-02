Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from calrissian.rohieb.name ([81.20.132.56] helo=rohieb.name)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyHPZ-00061O-Q8
 for barebox@lists.infradead.org; Sun, 02 Feb 2020 15:43:51 +0000
From: Roland Hieber <rohieb@rohieb.name>
Date: Sun,  2 Feb 2020 16:42:59 +0100
Message-Id: <20200202154301.18383-5-rohieb@rohieb.name>
In-Reply-To: <20200202154301.18383-1-rohieb@rohieb.name>
References: <20190207223906.24394-1-rohieb@rohieb.name>
 <20200202154301.18383-1-rohieb@rohieb.name>
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
Subject: [PATCH v2 4/6] include: add SPDX LGPL-2.1-or-later license tags where
 applicable
To: barebox@lists.infradead.org
Cc: Roland Hieber <rohieb@rohieb.name>

Signed-off-by: Roland Hieber <rohieb@rohieb.name>
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
2.24.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
