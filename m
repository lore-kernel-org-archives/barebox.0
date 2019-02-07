Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from calrissian.rohieb.name ([81.20.132.56] helo=rohieb.name)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1grsKs-0005jL-Ns
 for barebox@lists.infradead.org; Thu, 07 Feb 2019 22:40:01 +0000
From: Roland Hieber <rohieb@rohieb.name>
Date: Thu,  7 Feb 2019 23:39:04 +0100
Message-Id: <20190207223906.24394-4-rohieb@rohieb.name>
In-Reply-To: <20190207223906.24394-1-rohieb@rohieb.name>
References: <20190207223906.24394-1-rohieb@rohieb.name>
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
Subject: [PATCH 4/6] include: add SPDX LGPL-2.1-or-later license tags where
 applicable
To: barebox@lists.infradead.org
Cc: rhi@pengutronix.de, Roland Hieber <rohieb@rohieb.name>

Signed-off-by: Roland Hieber <rohieb@rohieb.name>
---
 include/fnmatch.h | 1 +
 include/glob.h    | 1 +
 2 files changed, 2 insertions(+)

diff --git a/include/fnmatch.h b/include/fnmatch.h
index c0fd6a9207..297bd899a1 100644
--- a/include/fnmatch.h
+++ b/include/fnmatch.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: LGPL-2.1-or-later */
 /* Copyright (C) 1991,92,93,96,97,98,99,2001 Free Software Foundation, Inc.
    This file is part of the GNU C Library.
 
    The GNU C Library is free software; you can redistribute it and/or
    modify it under the terms of the GNU Lesser General Public
    License as published by the Free Software Foundation; either
    version 2.1 of the License, or (at your option) any later version.
 
    The GNU C Library is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
    Lesser General Public License for more details.
 
    You should have received a copy of the GNU Lesser General Public
    License along with the GNU C Library; if not, write to the Free
diff --git a/include/glob.h b/include/glob.h
index 7778152513..cbbf91b94f 100644
--- a/include/glob.h
+++ b/include/glob.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: LGPL-2.1-or-later */
 /* Copyright (C) 1991,92,95,96,97,98,2000,2001 Free Software Foundation, Inc.
    This file is part of the GNU C Library.
 
    The GNU C Library is free software; you can redistribute it and/or
    modify it under the terms of the GNU Lesser General Public
    License as published by the Free Software Foundation; either
    version 2.1 of the License, or (at your option) any later version.
 
    The GNU C Library is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
    Lesser General Public License for more details.
 
    You should have received a copy of the GNU Lesser General Public
    License along with the GNU C Library; if not, write to the Free
-- 
2.19.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
