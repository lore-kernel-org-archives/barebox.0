Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ew0-f49.google.com ([209.85.215.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QpI7A-0005cL-Gk
	for barebox@lists.infradead.org; Fri, 05 Aug 2011 10:58:55 +0000
Received: by ewy3 with SMTP id 3so1581986ewy.36
	for <barebox@lists.infradead.org>; Fri, 05 Aug 2011 03:58:50 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri,  5 Aug 2011 14:58:31 +0400
Message-Id: <1312541922-696-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1312541922-696-1-git-send-email-antonynpavlov@gmail.com>
References: <1312541922-696-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 01/12] MIPS: initial commit: add empty but required header
	files
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/include/asm/barebox.h |   24 ++++++++++++++++++++++++
 arch/mips/include/asm/bitops.h  |   32 ++++++++++++++++++++++++++++++++
 arch/mips/include/asm/common.h  |   29 +++++++++++++++++++++++++++++
 arch/mips/include/asm/module.h  |   24 ++++++++++++++++++++++++
 arch/mips/include/asm/string.h  |   31 +++++++++++++++++++++++++++++++
 5 files changed, 140 insertions(+), 0 deletions(-)
 create mode 100644 arch/mips/include/asm/barebox.h
 create mode 100644 arch/mips/include/asm/bitops.h
 create mode 100644 arch/mips/include/asm/common.h
 create mode 100644 arch/mips/include/asm/module.h
 create mode 100644 arch/mips/include/asm/string.h

diff --git a/arch/mips/include/asm/barebox.h b/arch/mips/include/asm/barebox.h
new file mode 100644
index 0000000..b42c9ff
--- /dev/null
+++ b/arch/mips/include/asm/barebox.h
@@ -0,0 +1,24 @@
+/*
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
+ */
+
+#ifndef _ASM_MIPS_BAREBOX_H_
+#define _ASM_MIPS_BAREBOX_H_
+
+/* nothing special yet */
+
+#endif /* _ASM_MIPS_BAREBOX_H_ */
diff --git a/arch/mips/include/asm/bitops.h b/arch/mips/include/asm/bitops.h
new file mode 100644
index 0000000..36d34b6
--- /dev/null
+++ b/arch/mips/include/asm/bitops.h
@@ -0,0 +1,32 @@
+/*
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
+ */
+
+/**
+ * @file
+ * @brief mips bit operations
+ *
+ * This file is required only to make all sources happy including
+ * 'linux/bitops.h'
+ */
+
+#ifndef _ASM_MIPS_BITOPS_H_
+#define _ASM_MIPS_BITOPS_H_
+
+/* nothing special yet */
+
+#endif /* _ASM_MIPS_BITOPS_H_ */
diff --git a/arch/mips/include/asm/common.h b/arch/mips/include/asm/common.h
new file mode 100644
index 0000000..e37b6c5
--- /dev/null
+++ b/arch/mips/include/asm/common.h
@@ -0,0 +1,29 @@
+/*
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
+ */
+
+/**
+ * @file
+ * @brief mips common declarations
+ */
+
+#ifndef _ASM_MIPS_COMMON_H_
+#define _ASM_MIPS_COMMON_H_
+
+/* nothing special yet */
+
+#endif /* _ASM_MIPS_COMMON_H_ */
diff --git a/arch/mips/include/asm/module.h b/arch/mips/include/asm/module.h
new file mode 100644
index 0000000..3046220
--- /dev/null
+++ b/arch/mips/include/asm/module.h
@@ -0,0 +1,24 @@
+/*
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
+ */
+
+#ifndef _ASM_MIPS_MODULE_H_
+#define _ASM_MIPS_MODULE_H_
+
+/* nothing special yet */
+
+#endif /* _ASM_MIPS_MODULE_H_ */
diff --git a/arch/mips/include/asm/string.h b/arch/mips/include/asm/string.h
new file mode 100644
index 0000000..9e334a2
--- /dev/null
+++ b/arch/mips/include/asm/string.h
@@ -0,0 +1,31 @@
+/*
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
+ */
+
+/**
+ * @file
+ * @brief mips specific string optimizations
+ *
+ * Thanks to the Linux kernel here we can add many micro optimized string
+ * functions. But currently it makes no sense, to do so.
+ */
+#ifndef __ASM_MIPS_STRING_H
+#define __ASM_MIPS_STRING_H
+
+/* nothing special yet */
+
+#endif
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
