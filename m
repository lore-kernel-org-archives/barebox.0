Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo4.mail-out.ovh.net ([46.105.72.36]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDAjk-0000WL-Pi
 for barebox@lists.infradead.org; Wed, 06 Mar 2013 09:34:14 +0000
Received: from mail413.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id DBFB3104E775
 for <barebox@lists.infradead.org>; Wed,  6 Mar 2013 10:45:15 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed,  6 Mar 2013 10:29:35 +0100
Message-Id: <1362562189-17783-6-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1362562189-17783-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130306092643.GF4401@game.jcrosoft.org>
 <1362562189-17783-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 06/20] app: add some utils
To: barebox@lists.infradead.org

 - getchar_timeout
 - term (try to detect terminal size, position, ansi helper)
 - list

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 apps/Makefile                |    1 +
 apps/include/utils/ansi.h    |   37 ++++++++++++++
 apps/include/utils/getchar.h |   22 ++++++++
 apps/include/utils/list.h    |  114 ++++++++++++++++++++++++++++++++++++++++++
 apps/include/utils/termcap.h |   23 +++++++++
 apps/utils/Makefile          |    2 +
 apps/utils/getchar.c         |   43 ++++++++++++++++
 apps/utils/termcap.c         |   97 +++++++++++++++++++++++++++++++++++
 8 files changed, 339 insertions(+)
 create mode 100644 apps/include/utils/ansi.h
 create mode 100644 apps/include/utils/getchar.h
 create mode 100644 apps/include/utils/list.h
 create mode 100644 apps/include/utils/termcap.h
 create mode 100644 apps/utils/Makefile
 create mode 100644 apps/utils/getchar.c
 create mode 100644 apps/utils/termcap.c

diff --git a/apps/Makefile b/apps/Makefile
index c5c5c48..28efb0d 100644
--- a/apps/Makefile
+++ b/apps/Makefile
@@ -16,6 +16,7 @@ $(obj)/include/barebox/syscalls.h: $(srctree)/include/apps/syscalls.h
 	$(call cmd,shipped)
 
 obj-y += libc/
+obj-y += utils/
 
 barebox-app-header += $(obj)/include/types.h
 barebox-app-header += $(obj)/include/barebox/syscalls.h
diff --git a/apps/include/utils/ansi.h b/apps/include/utils/ansi.h
new file mode 100644
index 0000000..64f81a8
--- /dev/null
+++ b/apps/include/utils/ansi.h
@@ -0,0 +1,37 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ *
+ * As a special exception, if other files instantiate templates or use macros
+ * or inline functions from this file, or you compile this file and link it
+ * with other works to produce a work based on this file, this file does not
+ * by itself cause the resulting work to be covered by the GNU General Public
+ * License. However the source code for this file must still be made available
+ * in accordance with section (3) of the GNU General Public License.
+
+ * This exception does not invalidate any other reasons why a work based on
+ * this file might be covered by the GNU General Public License.
+ */
+
+#ifndef __UTILS_ANSI_H__
+#define __UTILS_ANSI_H__
+
+#define ansi_escape_m(d)		printf("\e[%dm", d);
+#define ansi_save_cusror()		printf("\e[s")
+#define ansi_restore_cusror()		printf("\e[u")
+#define ansi_set_cursor(row, col)	printf("\e[%d;%dH", row, col)
+#define ansi_reverse(on)		ansi_escape_m((on) ? 7 : 27)
+#define ansi_start_reverse()		ansi_escape_m(7)
+#define ansi_end_reverse()		ansi_escape_m(27)
+#define ansi_cursor_enable(on)		printf( "\e[?25%c", ( on ) ? 'h' : 'l' );
+#define ansi_clear()			printf("\e[2J\e[;H");
+#define ansi_bold(on)			ansi_escape_m((on) ? 1 : 22)
+#define ansi_blink(on)			ansi_escape_m((on) ? 5 : 25)
+#define ansi_start_bold()		ansi_escape_m(1)
+#define ansi_end_bold()			ansi_escape_m(22)
+#define ansi_start_altcharset()		ansi_escape_m(14)
+#define ansi_end_altcharset()		ansi_escape_m(10)
+#define ansi_set_color(fg,bg)		printf("\e[%d;%dm", fg, bg)
+
+#endif /* __UTILS_ANSI_H__ */
diff --git a/apps/include/utils/getchar.h b/apps/include/utils/getchar.h
new file mode 100644
index 0000000..074d6b2
--- /dev/null
+++ b/apps/include/utils/getchar.h
@@ -0,0 +1,22 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ *
+ * As a special exception, if other files instantiate templates or use macros
+ * or inline functions from this file, or you compile this file and link it
+ * with other works to produce a work based on this file, this file does not
+ * by itself cause the resulting work to be covered by the GNU General Public
+ * License. However the source code for this file must still be made available
+ * in accordance with section (3) of the GNU General Public License.
+
+ * This exception does not invalidate any other reasons why a work based on
+ * this file might be covered by the GNU General Public License.
+ */
+
+#ifndef __UTILS_GETCHAR_H__
+#define __UTILS_GETCHAR_H__
+
+int getchar_timeout(int ms);
+
+#endif /* __UTILS_GETCHAR_H__ */
diff --git a/apps/include/utils/list.h b/apps/include/utils/list.h
new file mode 100644
index 0000000..8a18dae
--- /dev/null
+++ b/apps/include/utils/list.h
@@ -0,0 +1,114 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ *
+ * As a special exception, if other files instantiate templates or use macros
+ * or inline functions from this file, or you compile this file and link it
+ * with other works to produce a work based on this file, this file does not
+ * by itself cause the resulting work to be covered by the GNU General Public
+ * License. However the source code for this file must still be made available
+ * in accordance with section (3) of the GNU General Public License.
+
+ * This exception does not invalidate any other reasons why a work based on
+ * this file might be covered by the GNU General Public License.
+ */
+
+#ifndef __UTILS_LIST_H__
+#define __UTILS_LIST_H__
+
+struct list_entry {
+	struct list_entry *prev;
+	struct list_entry *next;
+};
+
+struct list {
+	struct list_entry head;
+};
+
+#define LIST_HEAD_INIT(name) \
+	{ \
+		.head = { \
+			.prev = &(name).head, \
+			.next = &(name).head \
+		} \
+	}
+
+#define LIST_HEAD(name) \
+	struct list name = LIST_HEAD_INIT(name)
+
+#define container_of(ptr, type, member) \
+	((type *) (((void *)(ptr)) - ((void *) &(((type *)0)->member))))
+
+#define list_entry(ptr, type, member) \
+	container_of(ptr, type, member)
+
+#define list_first_entry(ptr, type, member) \
+	list_entry((ptr)->head.next, type, member)
+
+#define list_last_entry(head, type, member) \
+	list_entry((head)->head.prev, type, member)
+
+#define list_for_each(pos, list) \
+	for (pos = (list).head.next; pos != &(list).head; pos = pos->next)
+
+#define list_foreach_safe(pos, n, list) \
+	for (pos = (list).head.next, *n = pos->next; \
+		pos != &(list).head; pos = n, n = pos->next)
+
+#define list_for_each_entry(pos, list, member)				\
+	for (pos = list_entry((list)->head.next, typeof(*pos), member);	\
+	      &pos->member != (&(list)->head);				\
+	     pos = list_entry(pos->member.next, typeof(*pos), member))
+
+
+#define list_for_each_entry_safe(pos, n, list, member)			\
+	for (pos = list_entry((list)->head.next, typeof(*pos), member),	\
+		n = list_entry(pos->member.next, typeof(*pos), member);	\
+	     &pos->member != (&(list)->head);				\
+	     pos = n, n = list_entry(n->member.next, typeof(*n), member))
+
+
+static inline bool list_empty(struct list *list)
+{
+	struct list_entry *head = &list->head;
+
+	return head->next == head;
+}
+
+static inline void __list_add(struct list_entry *new,
+			      struct list_entry *prev,
+			      struct list_entry *next)
+{
+	next->prev = new;
+	new->next = next;
+	new->prev = prev;
+	prev->next = new;
+}
+
+static inline void list_add(struct list_entry *new, struct list *list)
+{
+	struct list_entry *head = &list->head;
+
+	__list_add(new, head, head->next);
+}
+
+static inline void list_add_tail(struct list_entry *new, struct list *list)
+{
+	struct list_entry *head = &list->head;
+
+	__list_add(new, head->prev, head);
+}
+
+static inline void list_del(struct list_entry *entry)
+{
+	struct list_entry *prev = entry->prev;
+	struct list_entry *next = entry->next;
+
+	next->prev = prev;
+	prev->next = next;
+	entry->next = NULL;
+	entry->prev = NULL;
+}
+	
+#endif /* __UTILS_LIST_H__ */
diff --git a/apps/include/utils/termcap.h b/apps/include/utils/termcap.h
new file mode 100644
index 0000000..b4305a2
--- /dev/null
+++ b/apps/include/utils/termcap.h
@@ -0,0 +1,23 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ *
+ * As a special exception, if other files instantiate templates or use macros
+ * or inline functions from this file, or you compile this file and link it
+ * with other works to produce a work based on this file, this file does not
+ * by itself cause the resulting work to be covered by the GNU General Public
+ * License. However the source code for this file must still be made available
+ * in accordance with section (3) of the GNU General Public License.
+
+ * This exception does not invalidate any other reasons why a work based on
+ * this file might be covered by the GNU General Public License.
+ */
+
+#ifndef __TERMCAP_H__
+#define __TERMCAP_H__
+
+int term_get_size(int *row, int *col);
+int term_get_cursor_pos(int *row, int *col);
+
+#endif /* __TERMCAP_H__ */
diff --git a/apps/utils/Makefile b/apps/utils/Makefile
new file mode 100644
index 0000000..f5b7476
--- /dev/null
+++ b/apps/utils/Makefile
@@ -0,0 +1,2 @@
+app-y += termcap.o
+app-y += getchar.o
diff --git a/apps/utils/getchar.c b/apps/utils/getchar.c
new file mode 100644
index 0000000..e511613
--- /dev/null
+++ b/apps/utils/getchar.c
@@ -0,0 +1,43 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ *
+ * As a special exception, if other files instantiate templates or use macros
+ * or inline functions from this file, or you compile this file and link it
+ * with other works to produce a work based on this file, this file does not
+ * by itself cause the resulting work to be covered by the GNU General Public
+ * License. However the source code for this file must still be made available
+ * in accordance with section (3) of the GNU General Public License.
+
+ * This exception does not invalidate any other reasons why a work based on
+ * this file might be covered by the GNU General Public License.
+ */
+
+#include <types.h>
+#include <stdio.h>
+#include <time.h>
+#include <ctype.h>
+#include <errno.h>
+#include <utils/getchar.h>
+
+int getchar_timeout(int ms)
+{
+	struct timespec req, rem;
+	int ret;
+
+	req.tv_nsec = 10;
+	req.tv_sec = 0;
+	ms *= 100;
+
+	while (!tstc()) {
+		ret = nanosleep(&req, &rem);
+		if (ret)
+			return ret;
+
+		if (!ms--)
+			return -ETIMEDOUT;
+	}
+
+	return getchar();
+}
diff --git a/apps/utils/termcap.c b/apps/utils/termcap.c
new file mode 100644
index 0000000..dd24f66
--- /dev/null
+++ b/apps/utils/termcap.c
@@ -0,0 +1,97 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ *
+ * As a special exception, if other files instantiate templates or use macros
+ * or inline functions from this file, or you compile this file and link it
+ * with other works to produce a work based on this file, this file does not
+ * by itself cause the resulting work to be covered by the GNU General Public
+ * License. However the source code for this file must still be made available
+ * in accordance with section (3) of the GNU General Public License.
+
+ * This exception does not invalidate any other reasons why a work based on
+ * this file might be covered by the GNU General Public License.
+ */
+
+#include <types.h>
+#include <stdio.h>
+#include <ctype.h>
+#include <errno.h>
+#include <utils/getchar.h>
+#include <utils/termcap.h>
+#include <utils/ansi.h>
+
+#define TIMEOUT_GETC	10
+#define MAX_COL_ROW	9999
+
+static int getnum(char end)
+{
+	int i = 0;
+	int c;
+
+	while ((c = getchar_timeout(TIMEOUT_GETC)) > -1) {
+		if (c == end)
+			return i;
+
+		if (c < 0)
+			return c;
+
+		if (!isdigit(c))
+			return -1;
+
+		i *= 10;
+		i += c - '0';
+	}
+
+	return -1;
+}
+
+int term_get_cursor_pos(int *row, int *col)
+{
+	int c;
+	int __row;
+
+	/* request cursos position */
+	printf("\e[6n");
+
+	/* reply \e[%d;%dR */
+	c = getchar_timeout(TIMEOUT_GETC);
+	if (c != '\e')
+		return -1;
+
+	c = getchar_timeout(TIMEOUT_GETC);
+	if (c != '[')
+		return -1;
+
+	__row = getnum(';');
+	if (__row < 0)
+		return __row;
+
+	c = getnum('R');
+	if (c < 0)
+		return c;
+
+	*row = __row;
+	*col = c;
+
+	return 0;
+}
+
+int term_get_size(int *row, int *col)
+{
+	ansi_save_cusror();
+
+	/* reset scroll */
+	printf("\e[r");
+
+	/* move the cursos to the bottom-right */
+	ansi_set_cursor(MAX_COL_ROW, MAX_COL_ROW);
+
+	term_get_cursor_pos(row, col);
+
+	/* restore cursor */
+	ansi_restore_cusror();
+
+	return 0;
+}
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
