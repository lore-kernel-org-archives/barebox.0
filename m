Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo4.mail-out.ovh.net ([46.105.33.73]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDAjn-0000XO-6A
 for barebox@lists.infradead.org; Wed, 06 Mar 2013 09:34:32 +0000
Received: from mail413.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 9D7AF104E766
 for <barebox@lists.infradead.org>; Wed,  6 Mar 2013 10:45:17 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed,  6 Mar 2013 10:29:40 +0100
Message-Id: <1362562189-17783-11-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 11/20] app: printf: add version from contiki
To: barebox@lists.infradead.org

the strformat is taken from contiki OS which is under 3-clause BSD license
no wide char support

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 apps/libc/Kconfig             |    9 +
 apps/libc/Makefile            |    1 +
 apps/libc/contiki/Makefile    |    1 +
 apps/libc/contiki/strformat.c |  621 +++++++++++++++++++++++++++++++++++++++++
 apps/libc/contiki/strformat.h |   25 ++
 apps/libc/contiki/vsprintf.c  |  116 ++++++++
 6 files changed, 773 insertions(+)
 create mode 100644 apps/libc/contiki/Makefile
 create mode 100644 apps/libc/contiki/strformat.c
 create mode 100644 apps/libc/contiki/strformat.h
 create mode 100644 apps/libc/contiki/vsprintf.c

diff --git a/apps/libc/Kconfig b/apps/libc/Kconfig
index 25b35ee..8d4fbd6 100644
--- a/apps/libc/Kconfig
+++ b/apps/libc/Kconfig
@@ -24,6 +24,10 @@ config APP_PRINTF_STACK_SIZE
 
 choice
 	prompt "printf implementation"
+	default APPS_PRINTF_HELENOS
+
+config APPS_PRINTF_CONTIKI
+	bool "contiki"
 
 config APPS_PRINTF_HELENOS
 	bool "helen os"
@@ -32,4 +36,9 @@ config APPS_PRINTF_HELENOS
 
 endchoice
 
+config APP_PRINTF_STACK_SIZE
+	hex "printf stack size"
+	default 0x1000
+	depends on APPS_PRINTF_CONTIKI
+
 endmenu
diff --git a/apps/libc/Makefile b/apps/libc/Makefile
index c84f00e..832833c 100644
--- a/apps/libc/Makefile
+++ b/apps/libc/Makefile
@@ -15,6 +15,7 @@ app-y += unistd.o
 app-$(CONFIG_APPS_MALLOC_DUMMY) += dummy_malloc.o
 app-$(CONFIG_APPS_MALLOC_TLSF) += tlsf_malloc.o tlsf.o
 app-y += string.o
+obj-$(CONFIG_APPS_PRINTF_CONTIKI) += contiki/
 obj-$(CONFIG_APPS_PRINTF_HELENOS) += helenos/
 obj-y += sys/
 app-y += time.o
diff --git a/apps/libc/contiki/Makefile b/apps/libc/contiki/Makefile
new file mode 100644
index 0000000..e77ee5c
--- /dev/null
+++ b/apps/libc/contiki/Makefile
@@ -0,0 +1 @@
+app-y += vsprintf.o strformat.o
diff --git a/apps/libc/contiki/strformat.c b/apps/libc/contiki/strformat.c
new file mode 100644
index 0000000..82f0535
--- /dev/null
+++ b/apps/libc/contiki/strformat.c
@@ -0,0 +1,621 @@
+/*
+ * from contiki 3-clause BSD license
+ */
+#include <strformat.h>
+
+#ifdef __APP__
+#define HAVE_DOUBLE
+#endif
+
+#define HAVE_LONGLONG
+#ifndef LARGEST_SIGNED
+#ifdef HAVE_LONGLONG
+#define LARGEST_SIGNED long long int
+#else
+#define LARGEST_SIGNED long int
+#endif
+#endif
+
+#ifndef LARGEST_UNSIGNED
+#ifdef HAVE_LONGLONG
+#define LARGEST_UNSIGNED unsigned long long int
+#else
+#define LARGEST_UNSIGNED unsigned long int
+#endif
+#endif
+
+#ifndef POINTER_INT
+#define POINTER_INT unsigned long
+#endif
+
+typedef unsigned int FormatFlags;
+
+#define MAKE_MASK(shift,size) (((1 << size) - 1) << (shift))
+
+#define JUSTIFY_SHIFT	0
+#define JUSTIFY_SIZE	1
+#define JUSTIFY_RIGHT	0x0000
+#define JUSTIFY_LEFT	0x0001
+#define JUSTIFY_MASK	MAKE_MASK(JUSTIFY_SHIFT,JUSTIFY_SIZE)
+
+
+/* How a positive number is prefixed */
+#define POSITIVE_SHIFT	(JUSTIFY_SHIFT + JUSTIFY_SIZE)
+#define POSITIVE_NONE	(0x0000 << POSITIVE_SHIFT)
+#define POSITIVE_SPACE	(0x0001 << POSITIVE_SHIFT)
+#define POSITIVE_PLUS	(0x0003 << POSITIVE_SHIFT)
+#define POSITIVE_MASK	MAKE_MASK(POSITIVE_SHIFT, POSITIVE_SIZE)
+
+#define POSITIVE_SIZE	2
+
+#define ALTERNATE_FORM_SHIFT (POSITIVE_SHIFT + POSITIVE_SIZE)
+#define ALTERNATE_FORM_SIZE 1
+#define ALTERNATE_FORM  (0x0001 << ALTERNATE_FORM_SHIFT)
+
+
+#define PAD_SHIFT	(ALTERNATE_FORM_SHIFT + ALTERNATE_FORM_SIZE)
+#define PAD_SIZE	1
+#define PAD_SPACE	(0x0000 << PAD_SHIFT)
+#define PAD_ZERO	(0x0001 << PAD_SHIFT)
+
+#define SIZE_SHIFT	(PAD_SHIFT + PAD_SIZE)
+#define SIZE_SIZE	3
+#define SIZE_CHAR	(0x0001 << SIZE_SHIFT)
+#define SIZE_SHORT	(0x0002 << SIZE_SHIFT)
+#define SIZE_INT	(0x0000 << SIZE_SHIFT)
+#define SIZE_LONG	(0x0003 << SIZE_SHIFT)
+#define SIZE_LONGLONG	(0x0004 << SIZE_SHIFT)
+#define SIZE_MASK	MAKE_MASK(SIZE_SHIFT,SIZE_SIZE)
+
+#define CONV_SHIFT	(SIZE_SHIFT + SIZE_SIZE)
+#define CONV_SIZE	3
+#define CONV_INTEGER	(0x0001 << CONV_SHIFT)
+#define CONV_FLOAT	(0x0002 << CONV_SHIFT)
+#define CONV_POINTER	(0x0003 << CONV_SHIFT)
+#define CONV_STRING	(0x0004 << CONV_SHIFT)
+#define CONV_CHAR	(0x0005 << CONV_SHIFT)
+#define CONV_PERCENT	(0x0006 << CONV_SHIFT)
+#define CONV_WRITTEN	(0x0007 << CONV_SHIFT)
+#define CONV_MASK	MAKE_MASK(CONV_SHIFT, CONV_SIZE)
+
+#define RADIX_SHIFT	(CONV_SHIFT + CONV_SIZE)
+#define RADIX_SIZE	2
+#define RADIX_DECIMAL	(0x0001 << RADIX_SHIFT)
+#define RADIX_OCTAL	(0x0002 << RADIX_SHIFT)
+#define RADIX_HEX	(0x0003 << RADIX_SHIFT)
+#define RADIX_MASK	MAKE_MASK(RADIX_SHIFT,RADIX_SIZE)
+
+#define SIGNED_SHIFT	(RADIX_SHIFT + RADIX_SIZE)
+#define SIGNED_SIZE	1
+#define SIGNED_NO	(0x0000 << SIGNED_SHIFT)
+#define SIGNED_YES	(0x0001 << SIGNED_SHIFT)
+#define SIGNED_MASK	MAKE_MASK(SIGNED_SHIFT,SIGNED_SIZE)
+
+#define CAPS_SHIFT	(SIGNED_SHIFT + SIGNED_SIZE)
+#define CAPS_SIZE	1
+#define CAPS_NO		(0x0000 << CAPS_SHIFT)
+#define CAPS_YES	(0x0001 << CAPS_SHIFT)
+#define CAPS_MASK	MAKE_MASK(CAPS_SHIFT,CAPS_SIZE)
+
+#define FLOAT_SHIFT	(CAPS_SHIFT + CAPS_SIZE)
+#define FLOAT_SIZE	2
+#define FLOAT_NORMAL	(0x0000 << FLOAT_SHIFT)
+#define FLOAT_EXPONENT	(0x0001 << FLOAT_SHIFT)
+#define FLOAT_DEPENDANT	(0x0002 << FLOAT_SHIFT)
+#define FLOAT_HEX	(0x0003 << FLOAT_SHIFT)
+#define FLOAT_MASK	MAKE_MASK(FLOAT_SHIFT, FLOAT_SIZE)
+
+static FormatFlags
+parse_flags(const char **posp)
+{
+  FormatFlags flags = 0;
+  const char *pos = *posp;
+  while (1) {
+    switch(*pos) {
+    case '-':
+      flags |= JUSTIFY_LEFT;
+      break;
+    case '+':
+      flags |= POSITIVE_PLUS;
+      break;
+    case ' ':
+      flags |= POSITIVE_SPACE;
+      break;
+    case '#':
+      flags |= ALTERNATE_FORM;
+      break;
+    case '0':
+      flags |= PAD_ZERO;
+      break;
+    default:
+      *posp = pos;
+      return flags;
+    }
+    pos++;
+  }
+      
+}
+
+static unsigned int
+parse_uint(const char **posp)
+{
+  unsigned v = 0;
+  const char *pos = *posp;
+  char ch;
+  while((ch = *pos) >= '0' && ch <= '9') {
+    v = v * 10 + (ch - '0');
+    pos++;
+  }
+  *posp = pos;
+  return v;
+}
+
+#define MAXCHARS_HEX ((sizeof(LARGEST_UNSIGNED) * 8) / 4 )
+
+/* Largest number of characters needed for converting an unsigned integer.
+ */
+#define MAXCHARS ((sizeof(LARGEST_UNSIGNED) * 8  + 2) / 3 )
+
+static unsigned int
+output_uint_decimal(char **posp, LARGEST_UNSIGNED v)
+{
+  unsigned int len;
+  char *pos = *posp;
+  while (v > 0) {
+    *--pos = (v % 10) + '0';
+    v /= 10;
+  }
+  len = *posp - pos;
+  *posp = pos;
+  return len;
+}
+
+static unsigned int
+output_uint_hex(char **posp, LARGEST_UNSIGNED v, unsigned int flags)
+{
+  unsigned int len;
+  const char *hex = (flags & CAPS_YES) ?"0123456789ABCDEF":"0123456789abcdef";
+  char *pos = *posp;
+  while (v > 0) {
+    *--pos = hex[(v % 16)];
+    v /= 16;
+  }
+  len = *posp - pos;
+  *posp = pos;
+  return len;
+}
+
+static unsigned int
+output_uint_octal(char **posp, LARGEST_UNSIGNED v)
+{
+  unsigned int len;
+  char *pos = *posp;
+  while (v > 0) {
+    *--pos = (v % 8) + '0';
+    v /= 8;
+  }
+  len = *posp - pos;
+  *posp = pos;
+  return len;
+}
+
+static StrFormatResult
+fill_space(const StrFormatContext *ctxt, unsigned int len)
+{
+  StrFormatResult res;
+  static const char buffer[16] = "                ";
+  while(len > 16) {
+    res = ctxt->write_str(ctxt->user_data, buffer, 16);
+    if (res != STRFORMAT_OK) return res;
+    len -= 16;
+  }
+  if (len == 0) return STRFORMAT_OK;
+  return ctxt->write_str(ctxt->user_data, buffer, len);
+}
+
+static StrFormatResult
+fill_zero(const StrFormatContext *ctxt, unsigned int len)
+{
+  StrFormatResult res;
+  static const char buffer[16] = "0000000000000000";
+  while(len > 16) {
+    res = ctxt->write_str(ctxt->user_data, buffer, 16);
+    if (res != STRFORMAT_OK) return res;
+    len -= 16;
+  }
+  if (len == 0) return STRFORMAT_OK;
+  return ctxt->write_str(ctxt->user_data, buffer, len);
+}
+
+#define CHECKCB(res) {if ((res) != STRFORMAT_OK) {va_end(ap); return -1;}}
+
+int
+format_str(const StrFormatContext *ctxt, const char *format, ...)
+{
+  int ret;
+  va_list ap;
+  va_start(ap, format);
+  ret = format_str_v(ctxt, format, ap);
+  va_end(ap);
+  return ret;
+}
+
+int
+format_str_v(const StrFormatContext *ctxt, const char *format, va_list ap)
+{
+  unsigned int written = 0;
+  const char *pos = format;
+  while(*pos != '\0') {
+    FormatFlags flags;
+    unsigned int minwidth = 0;
+    int precision = -1; /* Negative means no precision */
+    char ch;
+    const char *start = pos;
+    while( (ch = *pos) != '\0' && ch != '%') pos++;
+    if (pos != start) {
+      CHECKCB(ctxt->write_str(ctxt->user_data, start, pos - start));
+      written += pos - start;
+    }
+    if (*pos == '\0') {
+      va_end(ap);
+      return written;
+    }
+    pos++;
+    if (*pos == '\0') {
+      va_end(ap);
+      return written;
+    }
+    flags = parse_flags(&pos);
+
+    /* parse width */
+    if (*pos >= '1' && *pos <= '9') {
+      minwidth = parse_uint(&pos);
+    } else if (*pos == '*') {
+      int w = va_arg(ap,int);
+      if (w < 0) {
+	flags |= JUSTIFY_LEFT;
+	minwidth = w;
+      } else {
+	minwidth = w;
+      }
+      pos ++;
+    }
+
+    /* parse precision */
+    if (*pos == '.') {
+      pos++;
+      if (*pos >= '0' && *pos <= '9') {
+	precision = parse_uint(&pos);
+      } else if (*pos == '*') {
+	pos++;
+	precision = va_arg(ap,int);
+      }
+    }
+    if (*pos == 'l') {
+      pos++;
+      if (*pos == 'l') {
+	flags |= SIZE_LONGLONG;
+	pos++;
+      } else {
+	flags |= SIZE_LONG;
+      }
+    } else if (*pos == 'h') {
+      pos++;
+      if (*pos == 'h') {
+	flags |= SIZE_CHAR;
+	pos++;
+      } else {
+	flags |= SIZE_SHORT;
+      }
+    }
+
+    /* parse conversion specifier */
+    switch(*pos) {
+    case 'd':
+    case 'i':
+      flags |= CONV_INTEGER | RADIX_DECIMAL | SIGNED_YES;
+      break;
+    case 'u':
+      flags |= CONV_INTEGER | RADIX_DECIMAL | SIGNED_NO;
+      break;
+    case 'o':
+      flags |= CONV_INTEGER | RADIX_OCTAL | SIGNED_NO;
+      break;
+    case 'x':
+      flags |= CONV_INTEGER | RADIX_HEX | SIGNED_NO;
+      break;
+    case 'X':
+      flags |= CONV_INTEGER | RADIX_HEX | SIGNED_NO | CAPS_YES;
+      break;
+#ifdef HAVE_DOUBLE
+    case 'f':
+      flags |= CONV_FLOAT | FLOAT_NORMAL;
+      break;
+    case 'F':
+      flags |= CONV_FLOAT | FLOAT_NORMAL | CAPS_YES;
+      break;
+    case 'e':
+      flags |= CONV_FLOAT | FLOAT_EXPONENT;
+      break;
+    case 'E':
+      flags |= CONV_FLOAT | FLOAT_EXPONENT | CAPS_YES;
+      break;
+    case 'g':
+      flags |= CONV_FLOAT | FLOAT_DEPENDANT;
+      break;
+    case 'G':
+      flags |= CONV_FLOAT | FLOAT_DEPENDANT | CAPS_YES;
+      break;
+    case 'a':
+      flags |= CONV_FLOAT | FLOAT_HEX;
+      break;
+    case 'A':
+      flags |= CONV_FLOAT | FLOAT_HEX | CAPS_YES;
+      break;
+#endif
+    case 'c':
+      flags |= CONV_CHAR;
+      break;
+    case 's':
+      flags |= CONV_STRING;
+      break;
+    case 'p':
+      flags |= CONV_POINTER;
+      break;
+    case 'n':
+      flags |= CONV_WRITTEN;
+      break;
+    case '%':
+      flags |= CONV_PERCENT;
+      break;
+    case '\0':
+      va_end(ap);
+      return written;
+    }
+    pos++;
+    switch(flags & CONV_MASK) {
+    case CONV_PERCENT:
+      CHECKCB(ctxt->write_str(ctxt->user_data, "%", 1));
+      written++;
+      break;
+    case CONV_INTEGER:
+      {
+	/* unsigned integers */
+	char *prefix = 0; /* sign, "0x" or "0X" */
+	unsigned int prefix_len = 0;
+	char buffer[MAXCHARS];
+	char *conv_pos = buffer + MAXCHARS;
+	unsigned int conv_len = 0;
+	unsigned int width = 0;
+	unsigned int precision_fill;
+	unsigned int field_fill;
+	LARGEST_UNSIGNED uvalue = 0;
+	int negative = 0;
+      
+	if (precision < 0) precision = 1;
+	else flags &= ~PAD_ZERO;
+      
+	if (flags & SIGNED_YES) {
+	  /* signed integers */
+	  LARGEST_SIGNED value = 0;
+	  switch(flags & SIZE_MASK) {
+	  case SIZE_CHAR:
+	    value = (signed char)va_arg(ap, int);
+	    break;
+	  case SIZE_SHORT:
+	    value = (short)va_arg(ap, int);
+	    break;
+	  case SIZE_INT:
+	    value = va_arg(ap, int);
+	    break;
+#ifndef HAVE_LONGLONG
+	  case SIZE_LONGLONG:	/* Treat long long the same as long */
+#endif
+	  case SIZE_LONG:
+	    value = va_arg(ap, long);
+	    break;
+#ifdef HAVE_LONGLONG
+	  case SIZE_LONGLONG:
+	    value = va_arg(ap, long long);
+	    break;
+#endif
+	  }
+	  if (value < 0) {
+	    uvalue = -value;
+	    negative = 1;
+	  } else {
+	    uvalue = value;
+	  }
+	} else {
+	
+	  switch(flags & SIZE_MASK) {
+	  case SIZE_CHAR:
+	    uvalue = (unsigned char)va_arg(ap,unsigned int);
+	    break;
+	  case SIZE_SHORT:
+	    uvalue = (unsigned short)va_arg(ap,unsigned int);
+	    break;
+	  case SIZE_INT:
+	    uvalue = va_arg(ap,unsigned int);
+	    break;
+#ifndef HAVE_LONGLONG
+	  case SIZE_LONGLONG:	/* Treat long long the same as long */
+#endif
+	  case SIZE_LONG:
+	    uvalue = va_arg(ap,unsigned long);
+	    break;
+#ifdef HAVE_LONGLONG
+	  case SIZE_LONGLONG:
+	    uvalue = va_arg(ap,unsigned long long);
+	    break;
+#endif
+	  }
+	}
+	
+	switch(flags & (RADIX_MASK)) {
+	case RADIX_DECIMAL:
+	  conv_len = output_uint_decimal(&conv_pos,uvalue);
+	  break;
+	case RADIX_OCTAL:
+	  conv_len = output_uint_octal(&conv_pos,uvalue);
+	  break;
+	case RADIX_HEX:
+	  conv_len = output_uint_hex(&conv_pos,uvalue, flags);
+	  break;
+	}
+
+	width += conv_len;
+	precision_fill = (precision > conv_len) ? precision - conv_len : 0;
+	if ((flags & (RADIX_MASK | ALTERNATE_FORM))
+	    == (RADIX_OCTAL | ALTERNATE_FORM)) {
+	  if (precision_fill < 1) precision_fill = 1;
+	}
+
+	width += precision_fill;
+	
+	if ((flags & (RADIX_MASK | ALTERNATE_FORM))
+	    == (RADIX_HEX | ALTERNATE_FORM) && uvalue != 0) {
+	  prefix_len = 2;
+	  if (flags & CAPS_YES) {
+	    prefix = "0X";
+	  } else {
+	    prefix = "0x";
+	  }
+	}
+
+	if (flags & SIGNED_YES) {
+	  if (negative) {
+	    prefix = "-";
+	    prefix_len = 1;
+	  } else {
+	    switch(flags & POSITIVE_MASK) {
+	    case POSITIVE_SPACE:
+	      prefix = " ";
+	      prefix_len = 1;
+	      break;
+	    case POSITIVE_PLUS:
+	      prefix = "+";
+	      prefix_len = 1;
+	      break;
+	    }
+	  }
+	}
+
+	width += prefix_len;
+
+	field_fill = (minwidth > width) ? minwidth - width : 0;
+
+	if ((flags & JUSTIFY_MASK) == JUSTIFY_RIGHT) {
+	  if (flags & PAD_ZERO) {
+	    precision_fill += field_fill;
+        field_fill = 0;  /* Do not double count padding */
+	  } else {
+	    CHECKCB(fill_space(ctxt,field_fill));
+	  }
+	}
+
+	if (prefix_len > 0)
+	  CHECKCB(ctxt->write_str(ctxt->user_data, prefix, prefix_len));
+	written += prefix_len;
+	
+	CHECKCB(fill_zero(ctxt,precision_fill));
+	written += precision_fill;
+	
+	CHECKCB(ctxt->write_str(ctxt->user_data, conv_pos,conv_len));
+	written += conv_len;
+	
+	if ((flags & JUSTIFY_MASK) == JUSTIFY_LEFT) {
+	  CHECKCB(fill_space(ctxt,field_fill));
+	}
+	written += field_fill;
+      }
+      break;
+    case CONV_STRING:
+      {
+	unsigned int field_fill;
+	unsigned int len;
+	char *str = va_arg(ap,char *);
+	if (str) {
+	  char *pos = str;
+	  while(*pos != '\0') pos++;
+	  len = pos - str;
+	} else {
+	  str = "(null)";
+	  len = 6;
+	}
+	if (precision >= 0 && precision < len) len = precision;
+	field_fill = (minwidth > len) ? minwidth - len : 0;
+	if ((flags & JUSTIFY_MASK) == JUSTIFY_RIGHT) {
+	  CHECKCB(fill_space(ctxt,field_fill));
+	}
+	CHECKCB(ctxt->write_str(ctxt->user_data, str,len));
+	written += len;
+	if ((flags & JUSTIFY_MASK) == JUSTIFY_LEFT) {
+	  CHECKCB(fill_space(ctxt,field_fill));
+	}
+	written += field_fill;
+      }
+      break;
+    case CONV_POINTER:
+      {
+	LARGEST_UNSIGNED uvalue =
+	  (LARGEST_UNSIGNED)(POINTER_INT)va_arg(ap,void *);
+	char buffer[MAXCHARS_HEX + 2];
+	char *conv_pos = buffer + MAXCHARS_HEX + 2;
+	unsigned int conv_len;
+	unsigned int field_fill;
+	
+	conv_len = output_uint_hex(&conv_pos,uvalue,flags);
+	if (conv_len == 0) {
+	  *--conv_pos = '0';
+	  conv_len++;
+	}
+	*--conv_pos = 'x';
+	*--conv_pos = '0';
+	conv_len += 2;
+
+	field_fill = (minwidth > conv_len) ? minwidth - conv_len : 0;
+	
+	if ((flags & JUSTIFY_MASK) == JUSTIFY_RIGHT) {
+	  CHECKCB(fill_space(ctxt,field_fill));
+	}
+	
+	CHECKCB(ctxt->write_str(ctxt->user_data, conv_pos,conv_len));
+	written += conv_len;
+	
+	if ((flags & JUSTIFY_MASK) == JUSTIFY_LEFT) {
+	  CHECKCB(fill_space(ctxt,field_fill));
+	}
+	written += field_fill;
+      }
+      break;
+    case CONV_CHAR:
+      {
+	char ch = va_arg(ap,int);
+	unsigned int field_fill = (minwidth > 1) ? minwidth - 1 : 0;
+	if ((flags & JUSTIFY_MASK) == JUSTIFY_RIGHT) {
+	  CHECKCB(fill_space(ctxt,field_fill));
+	  written += field_fill;
+	}
+	
+	CHECKCB(ctxt->write_str(ctxt->user_data, &ch, 1));
+	written++;
+	
+	if ((flags & JUSTIFY_MASK) == JUSTIFY_LEFT) {
+	  CHECKCB(fill_space(ctxt,field_fill));
+	}
+	written+= field_fill;
+      }
+      break;
+    case CONV_WRITTEN:
+      {
+	int *p = va_arg(ap,int*);
+	*p = written;
+      }
+      break;
+
+    }
+  }
+  
+  return written;
+}
diff --git a/apps/libc/contiki/strformat.h b/apps/libc/contiki/strformat.h
new file mode 100644
index 0000000..d953c3e
--- /dev/null
+++ b/apps/libc/contiki/strformat.h
@@ -0,0 +1,25 @@
+#ifndef __STRFORMAT_H__
+#define __STRFORMAT_H__
+
+#include <stdarg.h>
+
+#define STRFORMAT_OK 0
+#define STRFORMAT_FAILED 1
+typedef unsigned int StrFormatResult;
+
+/* The data argument may only be considered valid during the function call */
+typedef StrFormatResult (*StrFormatWrite)(void *user_data, const char *data, unsigned int len);
+
+typedef struct _StrFormatContext
+{
+  StrFormatWrite write_str;
+  void *user_data;
+} StrFormatContext;
+
+int format_str(const StrFormatContext *ctxt, const char *format, ...)
+     __attribute__ ((__format__ (__printf__, 2,3)));
+     
+int
+format_str_v(const StrFormatContext *ctxt, const char *format, va_list ap);
+
+#endif /* __STRFORMAT_H__ */
diff --git a/apps/libc/contiki/vsprintf.c b/apps/libc/contiki/vsprintf.c
new file mode 100644
index 0000000..1df7a4d
--- /dev/null
+++ b/apps/libc/contiki/vsprintf.c
@@ -0,0 +1,116 @@
+/*
+ * Coypyright Jean-Chritophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ */
+
+#include <sys/types.h>
+#include <stdarg.h>
+#include <limits.h>
+#include <string.h>
+#include <malloc.h>
+
+#include "strformat.h"
+
+struct FmtBuffer {
+	char *pos;
+	size_t left;
+};
+
+static StrFormatResult buffer_str(void *user_data, const char *data, unsigned int len)
+{
+	struct FmtBuffer *buffer = (struct FmtBuffer*)user_data;
+
+	if (len >= buffer->left) {
+		len = buffer->left;
+		len--;
+	}
+
+	memcpy(buffer->pos, data, len);
+	buffer->pos += len;
+	buffer->left -= len;
+
+	return STRFORMAT_OK;
+}
+
+int vsnprintf(char *buf, size_t size, const char *fmt, va_list args)
+{
+	struct FmtBuffer buffer;
+	StrFormatContext ctxt;
+	int res;
+
+	ctxt.write_str = buffer_str;
+	ctxt.user_data = &buffer;
+	buffer.pos = buf;
+	buffer.left = size;
+	res = format_str_v(&ctxt, fmt, args);
+	*buffer.pos = '\0';
+
+	return res;
+}
+
+int vscnprintf(char *buf, size_t size, const char *fmt, va_list args)
+{
+	int i;
+
+	i = vsnprintf(buf, size, fmt, args);
+	return (i >= size) ? (size - 1) : i;
+}
+
+int vsprintf(char *buf, const char *fmt, va_list args)
+{
+	return vsnprintf(buf, INT_MAX, fmt, args);
+}
+
+int sprintf(char * buf, const char *fmt, ...)
+{
+	va_list args;
+	int i;
+
+	va_start(args, fmt);
+	i = vsprintf(buf, fmt, args);
+	va_end(args);
+
+	return i;
+}
+
+int snprintf(char * buf, size_t size, const char *fmt, ...)
+{
+	va_list args;
+	int i;
+
+	va_start(args, fmt);
+	i = vsnprintf(buf, size, fmt, args);
+	va_end(args);
+
+	return i;
+}
+
+char *vasprintf(const char *fmt, va_list ap)
+{
+	unsigned int len;
+	char *p;
+	va_list aq;
+
+	va_copy(aq, ap);
+	len = vsnprintf(NULL, 0, fmt, aq);
+	va_end(aq);
+
+	p = malloc(len + 1);
+	if (!p)
+		return NULL;
+
+	vsnprintf(p, len + 1, fmt, ap);
+
+	return p;
+}
+
+char *asprintf(const char *fmt, ...)
+{
+	va_list ap;
+	char *p;
+
+	va_start(ap, fmt);
+	p = vasprintf(fmt, ap);
+	va_end(ap);
+
+	return p;
+}
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
