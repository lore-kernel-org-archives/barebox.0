Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHuh0-0004ED-Dj
 for barebox@lists.infradead.org; Mon, 14 Sep 2020 20:03:15 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Sep 2020 22:03:09 +0200
Message-Id: <20200914200309.32513-2-a.fatoum@pengutronix.de>
In-Reply-To: <20200914200309.32513-1-a.fatoum@pengutronix.de>
References: <20200914200309.32513-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/2] README: use lower-case barebox spelling
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

This is a bit of a churn, but at least the top level README can use the
correct casing.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 README | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/README b/README
index c4c8abbb4b62..d206e301391a 100644
--- a/README
+++ b/README
@@ -1,9 +1,9 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
-Barebox
+barebox
 -------
 
-Barebox is a bootloader that follows the tradition of Das U-Boot, while
+barebox is a bootloader that follows the tradition of Das U-Boot, while
 adopting modern design ideas from the Linux kernel.
 
 
@@ -72,10 +72,10 @@ Features
   except the ones really needed: moving the cursor and typing characters.
 
 
-Building Barebox
+Building barebox
 ----------------
 
-Barebox uses the Linux kernel's build system. It consists of two parts:
+barebox uses the Linux kernel's build system. It consists of two parts:
 the Makefile infrastructure (kbuild), plus a configuration system
 (kconfig). So building barebox is very similar to building the Linux
 kernel.
@@ -109,7 +109,7 @@ If everything goes well, the result is a file called barebox:
   # ls -l barebox
     -rwxr-xr-x 1 rsc ptx 114073 Jun 26 22:34 barebox
 
-Barebox usually needs an environment for storing the configuration data.
+barebox usually needs an environment for storing the configuration data.
 You can generate an environment using the example environment contained
 in board/sandbox/env:
 
@@ -188,7 +188,7 @@ Documentation/        -> Sphinx generated documentation. Call "make docs" to
 Release Strategy
 ----------------
 
-Barebox is developed with git. On a monthly schedule, tarball releases are
+barebox is developed with git. On a monthly schedule, tarball releases are
 branched from the repository and released on the project web site. Here
 are the release rules:
 
@@ -228,15 +228,15 @@ are the release rules:
 Contributing
 ------------
 
-For any questions regarding Barebox, send a mail to the mailing list at
+For any questions regarding barebox, send a mail to the mailing list at
 <barebox@lists.infradead.org>. The archives for this list are available
 publicly at <http://lists.infradead.org/pipermail/barebox/> and
 <https://www.mail-archive.com/barebox@lists.infradead.org/>.
 
-The same list should also be used to send patches. Barebox uses a similar
+The same list should also be used to send patches. barebox uses a similar
 process as the Linux kernel, so most of the Linux guide for submitting patches
 <https://www.kernel.org/doc/html/latest/process/submitting-patches.html> also
-applies to Barebox (except the step for selecting your recipient - we don't
+applies to barebox (except the step for selecting your recipient - we don't
 have a MAINTAINERS file, instead all patches go to the list).
 
 
@@ -246,7 +246,7 @@ License
 Copyright (C) 2000 - 2005 Wolfgang Denk, DENX Software Engineering, wd@denx.de.
 Copyright (C) 2018 Sascha Hauer, Pengutronix, and individual contributors
 
-Barebox is free software: you can redistribute it and/or modify it under the
+barebox is free software: you can redistribute it and/or modify it under the
 terms of the GNU General Public License, version 2, as published by the Free
 Software Foundation.
 
@@ -266,6 +266,6 @@ the above copyright and warranty notices:
 This eases machine processing of licensing information based on the SPDX
 License Identifiers that are available at http://spdx.org/licenses/.
 
-Also note that some files in the Barebox source tree are available under
+Also note that some files in the barebox source tree are available under
 several different GPLv2-compatible open-source licenses. This fact is noted
 clearly in the file headers of the respective files.
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
