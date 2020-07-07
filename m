Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jso5I-00074X-Co
 for barebox@lists.infradead.org; Tue, 07 Jul 2020 13:56:33 +0000
Received: by mail-lj1-x244.google.com with SMTP id q4so14271416lji.2
 for <barebox@lists.infradead.org>; Tue, 07 Jul 2020 06:56:30 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Tue,  7 Jul 2020 16:56:08 +0300
Message-Id: <20200707135608.31901-1-pmamonov@gmail.com>
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
Subject: RFC: types conflicts
To: s.hauer@pengutronix.de, antonynpavlov@gmail.com
Cc: barebox@lists.infradead.org, Peter Mamonov <pmamonov@gmail.com>

Hello,

I tried to build MicroPython using barebox toolchain and found a number of
conflicts between barebox and compiler headers. Below you will find the patch
which demostrates some of them. In this particular example the problem arises
due to simultaneous inclusion of some compiler headers along with barebox
version of `strings.h`, which in turn includes barebox analogs of those headers
from `include/linux`. I belive there should be a segregation between headers in
`include` and in `include/linux`, i.e. headers from `include/` should not
reference <linux/*.h> headers. Yet I understand this is somewhat problematic.
What do you think?

Regards,
Peter

---
 commands/Makefile         |  1 +
 commands/types_conflict.c | 12 ++++++++++++
 2 files changed, 13 insertions(+)
 create mode 100644 commands/types_conflict.c

diff --git a/commands/Makefile b/commands/Makefile
index 817fc36e96..4e0cf34560 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -1,3 +1,4 @@
+obj-y				+= types_conflict.o
 obj-$(CONFIG_STDDEV)		+= stddev.o
 obj-$(CONFIG_CMD_DIGEST)	+= digest.o
 obj-$(CONFIG_COMPILE_HASH)	+= hashsum.o
diff --git a/commands/types_conflict.c b/commands/types_conflict.c
new file mode 100644
index 0000000000..70fee8d6f4
--- /dev/null
+++ b/commands/types_conflict.c
@@ -0,0 +1,12 @@
+#include <stdbool.h>
+#include <stdint.h>
+#include <stddef.h>
+
+#include <string.h>
+
+int test(void);
+
+int test()
+{
+	return 0;
+}
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
