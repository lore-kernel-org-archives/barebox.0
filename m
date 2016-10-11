Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x241.google.com ([2a00:1450:4010:c07::241])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1btt1C-0005q5-GD
 for barebox@lists.infradead.org; Tue, 11 Oct 2016 09:06:42 +0000
Received: by mail-lf0-x241.google.com with SMTP id l131so2549178lfl.0
 for <barebox@lists.infradead.org>; Tue, 11 Oct 2016 02:06:17 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 11 Oct 2016 12:06:11 +0300
Message-Id: <20161011090611.29865-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] sandbox: drop unused header files
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/sandbox/include/asm/processor.h | 25 -------------------------
 arch/sandbox/include/asm/ptrace.h    |  1 -
 2 files changed, 26 deletions(-)
 delete mode 100644 arch/sandbox/include/asm/processor.h
 delete mode 100644 arch/sandbox/include/asm/ptrace.h

diff --git a/arch/sandbox/include/asm/processor.h b/arch/sandbox/include/as=
m/processor.h
deleted file mode 100644
index 075ec74..0000000
--- a/arch/sandbox/include/asm/processor.h
+++ /dev/null
@@ -1,25 +0,0 @@
-/*
- * (C) Copyright 2002
- * Daniel Engstr=F6m, Omicron Ceti AB, daniel@omicron.se
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
- */
-
-#ifndef __ASM_PROCESSOR_H_
-#define __ASM_PROCESSOR_H_ 1
-/* Currently this header is unused in the i386 port
- * but some generic files #include <asm/processor.h>
- * so this file is a placeholder. */
-#endif
diff --git a/arch/sandbox/include/asm/ptrace.h b/arch/sandbox/include/asm/p=
trace.h
deleted file mode 100644
index 2997587..0000000
--- a/arch/sandbox/include/asm/ptrace.h
+++ /dev/null
@@ -1 +0,0 @@
-/* dummy */
-- =

2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
