Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kMvAg-0005Bi-FR
 for barebox@lists.infradead.org; Mon, 28 Sep 2020 15:34:36 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 28 Sep 2020 17:34:28 +0200
Message-Id: <20200928153431.1095-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 1/4] vsprintf: constify pointers where appropriate
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

No functional change, but makes code bit more future proof when it is
extended.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/vsprintf.c | 25 +++++++++++++++----------
 1 file changed, 15 insertions(+), 10 deletions(-)

diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index 6fe0283e8466..3e5f4db75ac8 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -41,7 +41,8 @@ static int skip_atoi(const char **s)
 #define SMALL	32		/* Must be 32 == 0x20 */
 #define SPECIAL	64		/* 0x */
 
-static char *number(char *buf, char *end, unsigned long long num, int base, int size, int precision, int type)
+static char *number(char *buf, const char *end, unsigned long long num, int base, int size,
+		    int precision, int type)
 {
 	/* we are called with base 8, 10 or 16, only, thus don't need "G..."  */
 	static const char digits[16] = "0123456789ABCDEF"; /* "GHIJKLMNOPQRSTUVWXYZ"; */
@@ -146,7 +147,8 @@ static char *number(char *buf, char *end, unsigned long long num, int base, int
 #define PAGE_SIZE 4096
 #endif
 
-static char *string(char *buf, char *end, char *s, int field_width, int precision, int flags)
+static char *string(char *buf, const char *end, const char *s, int field_width,
+		    int precision, int flags)
 {
 	int len, i;
 
@@ -176,7 +178,8 @@ static char *string(char *buf, char *end, char *s, int field_width, int precisio
 }
 
 #ifndef __PBL__
-static char *symbol_string(char *buf, char *end, void *ptr, int field_width, int precision, int flags)
+static char *symbol_string(char *buf, const char *end, const void *ptr, int field_width,
+			   int precision, int flags)
 {
 	unsigned long value = (unsigned long) ptr;
 #ifdef CONFIG_KALLSYMS
@@ -191,7 +194,7 @@ static char *symbol_string(char *buf, char *end, void *ptr, int field_width, int
 }
 
 static noinline_for_stack
-char *ip4_addr_string(char *buf, char *end, const u8 *addr, int field_width,
+char *ip4_addr_string(char *buf, const char *end, const u8 *addr, int field_width,
 		      int precision, int flags, const char *fmt)
 {
 	char ip4_addr[sizeof("255.255.255.255")];
@@ -212,8 +215,8 @@ char *ip4_addr_string(char *buf, char *end, const u8 *addr, int field_width,
 }
 
 static noinline_for_stack
-char *uuid_string(char *buf, char *end, const u8 *addr, int field_width,
-		int precision, int flags, const char *fmt)
+char *uuid_string(char *buf, const char *end, const u8 *addr, int field_width,
+		  int precision, int flags, const char *fmt)
 {
 	char uuid[sizeof("xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx")];
 	char *p = uuid;
@@ -259,8 +262,8 @@ char *uuid_string(char *buf, char *end, const u8 *addr, int field_width,
 }
 
 static noinline_for_stack
-char *address_val(char *buf, char *end, const void *addr,
-		int field_width, int precision, int flags, const char *fmt)
+char *address_val(char *buf, const char *end, const void *addr,
+		  int field_width, int precision, int flags, const char *fmt)
 {
 	unsigned long long num;
 
@@ -314,7 +317,8 @@ char *address_val(char *buf, char *end, const void *addr,
  * function pointers are really function descriptors, which contain a
  * pointer to the real address.
  */
-static char *pointer(const char *fmt, char *buf, char *end, void *ptr, int field_width, int precision, int flags)
+static char *pointer(const char *fmt, char *buf, const char *end, const void *ptr,
+		     int field_width, int precision, int flags)
 {
 	switch (*fmt) {
 	case 'S':
@@ -350,7 +354,8 @@ static char *pointer(const char *fmt, char *buf, char *end, void *ptr, int field
 	return number(buf, end, (unsigned long) ptr, 16, field_width, precision, flags);
 }
 #else
-static char *pointer(const char *fmt, char *buf, char *end, void *ptr, int field_width, int precision, int flags)
+static char *pointer(const char *fmt, char *buf, const char *end, const void *ptr,
+		     int field_width, int precision, int flags)
 {
 	flags |= SMALL;
 	if (field_width == -1) {
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
