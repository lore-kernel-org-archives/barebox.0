Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P8BjA-0005qp-FW
	for barebox@lists.infradead.org; Tue, 19 Oct 2010 12:55:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Oct 2010 14:55:23 +0200
Message-Id: <1287492930-15716-36-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1287492930-15716-1-git-send-email-s.hauer@pengutronix.de>
References: <1287492930-15716-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 35/42] remove dead ldiv code
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/Makefile |    1 -
 lib/ldiv.c   |   55 -------------------------------------------------------
 2 files changed, 0 insertions(+), 56 deletions(-)
 delete mode 100644 lib/ldiv.c

diff --git a/lib/Makefile b/lib/Makefile
index 0c62917..8b986d2 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -1,7 +1,6 @@
 obj-y			+= ctype.o
 obj-y			+= rbtree.o
 obj-y			+= display_options.o
-obj-y			+= ldiv.o
 obj-y			+= string.o
 obj-y			+= vsprintf.o
 obj-y			+= div64.o
diff --git a/lib/ldiv.c b/lib/ldiv.c
deleted file mode 100644
index 5d231a2..0000000
--- a/lib/ldiv.c
+++ /dev/null
@@ -1,55 +0,0 @@
-/* Copyright (C) 1992, 1997 Free Software Foundation, Inc.
-   This file is part of the GNU C Library.
-
-   The GNU C Library is free software; you can redistribute it and/or
-   modify it under the terms of the GNU Library General Public License as
-   published by the Free Software Foundation; either version 2 of the
-   License, or (at your option) any later version.
-
-   The GNU C Library is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
-   Library General Public License for more details.
-
-   You should have received a copy of the GNU Library General Public
-   License along with the GNU C Library; see the file COPYING.LIB.  If not,
-   write to the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
-   Boston, MA 02111-1307, USA.  */
-
-typedef struct {
-	long    quot;
-	long    rem;
-} ldiv_t;
-/* Return the `ldiv_t' representation of NUMER over DENOM.  */
-ldiv_t
-ldiv (long int numer, long int denom)
-{
-  ldiv_t result;
-
-  result.quot = numer / denom;
-  result.rem = numer % denom;
-
-  /* The ANSI standard says that |QUOT| <= |NUMER / DENOM|, where
-     NUMER / DENOM is to be computed in infinite precision.  In
-     other words, we should always truncate the quotient towards
-     zero, never -infinity.  Machine division and remainer may
-     work either way when one or both of NUMER or DENOM is
-     negative.  If only one is negative and QUOT has been
-     truncated towards -infinity, REM will have the same sign as
-     DENOM and the opposite sign of NUMER; if both are negative
-     and QUOT has been truncated towards -infinity, REM will be
-     positive (will have the opposite sign of NUMER).  These are
-     considered `wrong'.  If both are NUM and DENOM are positive,
-     RESULT will always be positive.  This all boils down to: if
-     NUMER >= 0, but REM < 0, we got the wrong answer.  In that
-     case, to get the right answer, add 1 to QUOT and subtract
-     DENOM from REM.  */
-
-  if (numer >= 0 && result.rem < 0)
-    {
-      ++result.quot;
-      result.rem -= denom;
-    }
-
-  return result;
-}
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
