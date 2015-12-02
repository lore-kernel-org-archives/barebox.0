Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a47me-0001Qz-O7
 for barebox@lists.infradead.org; Wed, 02 Dec 2015 13:49:42 +0000
From: Markus Pargmann <mpa@pengutronix.de>
Date: Wed,  2 Dec 2015 14:48:47 +0100
Message-Id: <1449064131-12659-6-git-send-email-mpa@pengutronix.de>
In-Reply-To: <1449064131-12659-1-git-send-email-mpa@pengutronix.de>
References: <1449064131-12659-1-git-send-email-mpa@pengutronix.de>
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
Subject: [PATCH 5/9] lib: Import reed solomon code from kernel
To: barebox@lists.infradead.org

reed solomon code is used by RAMOOPS to check and fix data stored in
volatile memory.

Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
---
 include/linux/rslib.h           | 109 ++++++++++++
 lib/Kconfig                     |  15 ++
 lib/Makefile                    |   1 +
 lib/reed_solomon/Makefile       |   6 +
 lib/reed_solomon/decode_rs.c    | 271 +++++++++++++++++++++++++++++
 lib/reed_solomon/encode_rs.c    |  54 ++++++
 lib/reed_solomon/reed_solomon.c | 377 ++++++++++++++++++++++++++++++++++++++++
 7 files changed, 833 insertions(+)
 create mode 100644 include/linux/rslib.h
 create mode 100644 lib/reed_solomon/Makefile
 create mode 100644 lib/reed_solomon/decode_rs.c
 create mode 100644 lib/reed_solomon/encode_rs.c
 create mode 100644 lib/reed_solomon/reed_solomon.c

diff --git a/include/linux/rslib.h b/include/linux/rslib.h
new file mode 100644
index 000000000000..746580c1939c
--- /dev/null
+++ b/include/linux/rslib.h
@@ -0,0 +1,109 @@
+/*
+ * include/linux/rslib.h
+ *
+ * Overview:
+ *   Generic Reed Solomon encoder / decoder library
+ *
+ * Copyright (C) 2004 Thomas Gleixner (tglx@linutronix.de)
+ *
+ * RS code lifted from reed solomon library written by Phil Karn
+ * Copyright 2002 Phil Karn, KA9Q
+ *
+ * $Id: rslib.h,v 1.4 2005/11/07 11:14:52 gleixner Exp $
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+
+#ifndef _RSLIB_H_
+#define _RSLIB_H_
+
+#include <linux/list.h>
+
+/**
+ * struct rs_control - rs control structure
+ *
+ * @mm:		Bits per symbol
+ * @nn:		Symbols per block (= (1<<mm)-1)
+ * @alpha_to:	log lookup table
+ * @index_of:	Antilog lookup table
+ * @genpoly:	Generator polynomial
+ * @nroots:	Number of generator roots = number of parity symbols
+ * @fcr:	First consecutive root, index form
+ * @prim:	Primitive element, index form
+ * @iprim:	prim-th root of 1, index form
+ * @gfpoly:	The primitive generator polynominal
+ * @gffunc:	Function to generate the field, if non-canonical representation
+ * @users:	Users of this structure
+ * @list:	List entry for the rs control list
+*/
+struct rs_control {
+	int 		mm;
+	int 		nn;
+	uint16_t	*alpha_to;
+	uint16_t	*index_of;
+	uint16_t	*genpoly;
+	int 		nroots;
+	int 		fcr;
+	int 		prim;
+	int 		iprim;
+	int		gfpoly;
+	int		(*gffunc)(int);
+	int		users;
+	struct list_head list;
+};
+
+/* General purpose RS codec, 8-bit data width, symbol width 1-15 bit  */
+#ifdef CONFIG_REED_SOLOMON_ENC8
+int encode_rs8(struct rs_control *rs, uint8_t *data, int len, uint16_t *par,
+	       uint16_t invmsk);
+#endif
+#ifdef CONFIG_REED_SOLOMON_DEC8
+int decode_rs8(struct rs_control *rs, uint8_t *data, uint16_t *par, int len,
+		uint16_t *s, int no_eras, int *eras_pos, uint16_t invmsk,
+	       uint16_t *corr);
+#endif
+
+/* General purpose RS codec, 16-bit data width, symbol width 1-15 bit  */
+#ifdef CONFIG_REED_SOLOMON_ENC16
+int encode_rs16(struct rs_control *rs, uint16_t *data, int len, uint16_t *par,
+		uint16_t invmsk);
+#endif
+#ifdef CONFIG_REED_SOLOMON_DEC16
+int decode_rs16(struct rs_control *rs, uint16_t *data, uint16_t *par, int len,
+		uint16_t *s, int no_eras, int *eras_pos, uint16_t invmsk,
+		uint16_t *corr);
+#endif
+
+/* Create or get a matching rs control structure */
+struct rs_control *init_rs(int symsize, int gfpoly, int fcr, int prim,
+			   int nroots);
+struct rs_control *init_rs_non_canonical(int symsize, int (*func)(int),
+                                         int fcr, int prim, int nroots);
+
+/* Release a rs control structure */
+void free_rs(struct rs_control *rs);
+
+/** modulo replacement for galois field arithmetics
+ *
+ *  @rs:	the rs control structure
+ *  @x:		the value to reduce
+ *
+ *  where
+ *  rs->mm = number of bits per symbol
+ *  rs->nn = (2^rs->mm) - 1
+ *
+ *  Simple arithmetic modulo would return a wrong result for values
+ *  >= 3 * rs->nn
+*/
+static inline int rs_modnn(struct rs_control *rs, int x)
+{
+	while (x >= rs->nn) {
+		x -= rs->nn;
+		x = (x >> rs->mm) + (x & rs->nn);
+	}
+	return x;
+}
+
+#endif
diff --git a/lib/Kconfig b/lib/Kconfig
index fbf9f0f34849..f2f3b5775ace 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -22,6 +22,21 @@ config XZ_DECOMPRESS
 	bool "include xz uncompression support"
 	select UNCOMPRESS
 
+config REED_SOLOMON
+	bool
+
+config REED_SOLOMON_ENC8
+	bool
+
+config REED_SOLOMON_DEC8
+	bool
+
+config REED_SOLOMON_ENC16
+	bool
+
+config REED_SOLOMON_DEC16
+	bool
+
 config GENERIC_FIND_NEXT_BIT
 	def_bool n
 
diff --git a/lib/Makefile b/lib/Makefile
index abb34cfbdbeb..6ffa3e010434 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -56,3 +56,4 @@ obj-y			+= gcd.o
 obj-y			+= hexdump.o
 obj-$(CONFIG_FONTS)	+= fonts/
 obj-$(CONFIG_BAREBOX_LOGO)     += logo/
+obj-y			+= reed_solomon/
diff --git a/lib/reed_solomon/Makefile b/lib/reed_solomon/Makefile
new file mode 100644
index 000000000000..c3d7136827ed
--- /dev/null
+++ b/lib/reed_solomon/Makefile
@@ -0,0 +1,6 @@
+#
+# This is a modified version of reed solomon lib,
+#
+
+obj-$(CONFIG_REED_SOLOMON) += reed_solomon.o
+
diff --git a/lib/reed_solomon/decode_rs.c b/lib/reed_solomon/decode_rs.c
new file mode 100644
index 000000000000..0ec3f257ffdf
--- /dev/null
+++ b/lib/reed_solomon/decode_rs.c
@@ -0,0 +1,271 @@
+/*
+ * lib/reed_solomon/decode_rs.c
+ *
+ * Overview:
+ *   Generic Reed Solomon encoder / decoder library
+ *
+ * Copyright 2002, Phil Karn, KA9Q
+ * May be used under the terms of the GNU General Public License (GPL)
+ *
+ * Adaption to the kernel by Thomas Gleixner (tglx@linutronix.de)
+ *
+ * $Id: decode_rs.c,v 1.7 2005/11/07 11:14:59 gleixner Exp $
+ *
+ */
+
+/* Generic data width independent code which is included by the
+ * wrappers.
+ */
+{
+	int deg_lambda, el, deg_omega;
+	int i, j, r, k, pad;
+	int nn = rs->nn;
+	int nroots = rs->nroots;
+	int fcr = rs->fcr;
+	int prim = rs->prim;
+	int iprim = rs->iprim;
+	uint16_t *alpha_to = rs->alpha_to;
+	uint16_t *index_of = rs->index_of;
+	uint16_t u, q, tmp, num1, num2, den, discr_r, syn_error;
+	/* Err+Eras Locator poly and syndrome poly The maximum value
+	 * of nroots is 8. So the necessary stack size will be about
+	 * 220 bytes max.
+	 */
+	uint16_t lambda[nroots + 1], syn[nroots];
+	uint16_t b[nroots + 1], t[nroots + 1], omega[nroots + 1];
+	uint16_t root[nroots], reg[nroots + 1], loc[nroots];
+	int count = 0;
+	uint16_t msk = (uint16_t) rs->nn;
+
+	/* Check length parameter for validity */
+	pad = nn - nroots - len;
+	BUG_ON(pad < 0 || pad >= nn);
+
+	/* Does the caller provide the syndrome ? */
+	if (s != NULL)
+		goto decode;
+
+	/* form the syndromes; i.e., evaluate data(x) at roots of
+	 * g(x) */
+	for (i = 0; i < nroots; i++)
+		syn[i] = (((uint16_t) data[0]) ^ invmsk) & msk;
+
+	for (j = 1; j < len; j++) {
+		for (i = 0; i < nroots; i++) {
+			if (syn[i] == 0) {
+				syn[i] = (((uint16_t) data[j]) ^
+					  invmsk) & msk;
+			} else {
+				syn[i] = ((((uint16_t) data[j]) ^
+					   invmsk) & msk) ^
+					alpha_to[rs_modnn(rs, index_of[syn[i]] +
+						       (fcr + i) * prim)];
+			}
+		}
+	}
+
+	for (j = 0; j < nroots; j++) {
+		for (i = 0; i < nroots; i++) {
+			if (syn[i] == 0) {
+				syn[i] = ((uint16_t) par[j]) & msk;
+			} else {
+				syn[i] = (((uint16_t) par[j]) & msk) ^
+					alpha_to[rs_modnn(rs, index_of[syn[i]] +
+						       (fcr+i)*prim)];
+			}
+		}
+	}
+	s = syn;
+
+	/* Convert syndromes to index form, checking for nonzero condition */
+	syn_error = 0;
+	for (i = 0; i < nroots; i++) {
+		syn_error |= s[i];
+		s[i] = index_of[s[i]];
+	}
+
+	if (!syn_error) {
+		/* if syndrome is zero, data[] is a codeword and there are no
+		 * errors to correct. So return data[] unmodified
+		 */
+		count = 0;
+		goto finish;
+	}
+
+ decode:
+	memset(&lambda[1], 0, nroots * sizeof(lambda[0]));
+	lambda[0] = 1;
+
+	if (no_eras > 0) {
+		/* Init lambda to be the erasure locator polynomial */
+		lambda[1] = alpha_to[rs_modnn(rs,
+					      prim * (nn - 1 - eras_pos[0]))];
+		for (i = 1; i < no_eras; i++) {
+			u = rs_modnn(rs, prim * (nn - 1 - eras_pos[i]));
+			for (j = i + 1; j > 0; j--) {
+				tmp = index_of[lambda[j - 1]];
+				if (tmp != nn) {
+					lambda[j] ^=
+						alpha_to[rs_modnn(rs, u + tmp)];
+				}
+			}
+		}
+	}
+
+	for (i = 0; i < nroots + 1; i++)
+		b[i] = index_of[lambda[i]];
+
+	/*
+	 * Begin Berlekamp-Massey algorithm to determine error+erasure
+	 * locator polynomial
+	 */
+	r = no_eras;
+	el = no_eras;
+	while (++r <= nroots) {	/* r is the step number */
+		/* Compute discrepancy at the r-th step in poly-form */
+		discr_r = 0;
+		for (i = 0; i < r; i++) {
+			if ((lambda[i] != 0) && (s[r - i - 1] != nn)) {
+				discr_r ^=
+					alpha_to[rs_modnn(rs,
+							  index_of[lambda[i]] +
+							  s[r - i - 1])];
+			}
+		}
+		discr_r = index_of[discr_r];	/* Index form */
+		if (discr_r == nn) {
+			/* 2 lines below: B(x) <-- x*B(x) */
+			memmove (&b[1], b, nroots * sizeof (b[0]));
+			b[0] = nn;
+		} else {
+			/* 7 lines below: T(x) <-- lambda(x)-discr_r*x*b(x) */
+			t[0] = lambda[0];
+			for (i = 0; i < nroots; i++) {
+				if (b[i] != nn) {
+					t[i + 1] = lambda[i + 1] ^
+						alpha_to[rs_modnn(rs, discr_r +
+								  b[i])];
+				} else
+					t[i + 1] = lambda[i + 1];
+			}
+			if (2 * el <= r + no_eras - 1) {
+				el = r + no_eras - el;
+				/*
+				 * 2 lines below: B(x) <-- inv(discr_r) *
+				 * lambda(x)
+				 */
+				for (i = 0; i <= nroots; i++) {
+					b[i] = (lambda[i] == 0) ? nn :
+						rs_modnn(rs, index_of[lambda[i]]
+							 - discr_r + nn);
+				}
+			} else {
+				/* 2 lines below: B(x) <-- x*B(x) */
+				memmove(&b[1], b, nroots * sizeof(b[0]));
+				b[0] = nn;
+			}
+			memcpy(lambda, t, (nroots + 1) * sizeof(t[0]));
+		}
+	}
+
+	/* Convert lambda to index form and compute deg(lambda(x)) */
+	deg_lambda = 0;
+	for (i = 0; i < nroots + 1; i++) {
+		lambda[i] = index_of[lambda[i]];
+		if (lambda[i] != nn)
+			deg_lambda = i;
+	}
+	/* Find roots of error+erasure locator polynomial by Chien search */
+	memcpy(&reg[1], &lambda[1], nroots * sizeof(reg[0]));
+	count = 0;		/* Number of roots of lambda(x) */
+	for (i = 1, k = iprim - 1; i <= nn; i++, k = rs_modnn(rs, k + iprim)) {
+		q = 1;		/* lambda[0] is always 0 */
+		for (j = deg_lambda; j > 0; j--) {
+			if (reg[j] != nn) {
+				reg[j] = rs_modnn(rs, reg[j] + j);
+				q ^= alpha_to[reg[j]];
+			}
+		}
+		if (q != 0)
+			continue;	/* Not a root */
+		/* store root (index-form) and error location number */
+		root[count] = i;
+		loc[count] = k;
+		/* If we've already found max possible roots,
+		 * abort the search to save time
+		 */
+		if (++count == deg_lambda)
+			break;
+	}
+	if (deg_lambda != count) {
+		/*
+		 * deg(lambda) unequal to number of roots => uncorrectable
+		 * error detected
+		 */
+		count = -EBADMSG;
+		goto finish;
+	}
+	/*
+	 * Compute err+eras evaluator poly omega(x) = s(x)*lambda(x) (modulo
+	 * x**nroots). in index form. Also find deg(omega).
+	 */
+	deg_omega = deg_lambda - 1;
+	for (i = 0; i <= deg_omega; i++) {
+		tmp = 0;
+		for (j = i; j >= 0; j--) {
+			if ((s[i - j] != nn) && (lambda[j] != nn))
+				tmp ^=
+				    alpha_to[rs_modnn(rs, s[i - j] + lambda[j])];
+		}
+		omega[i] = index_of[tmp];
+	}
+
+	/*
+	 * Compute error values in poly-form. num1 = omega(inv(X(l))), num2 =
+	 * inv(X(l))**(fcr-1) and den = lambda_pr(inv(X(l))) all in poly-form
+	 */
+	for (j = count - 1; j >= 0; j--) {
+		num1 = 0;
+		for (i = deg_omega; i >= 0; i--) {
+			if (omega[i] != nn)
+				num1 ^= alpha_to[rs_modnn(rs, omega[i] +
+							i * root[j])];
+		}
+		num2 = alpha_to[rs_modnn(rs, root[j] * (fcr - 1) + nn)];
+		den = 0;
+
+		/* lambda[i+1] for i even is the formal derivative
+		 * lambda_pr of lambda[i] */
+		for (i = min(deg_lambda, nroots - 1) & ~1; i >= 0; i -= 2) {
+			if (lambda[i + 1] != nn) {
+				den ^= alpha_to[rs_modnn(rs, lambda[i + 1] +
+						       i * root[j])];
+			}
+		}
+		/* Apply error to data */
+		if (num1 != 0 && loc[j] >= pad) {
+			uint16_t cor = alpha_to[rs_modnn(rs,index_of[num1] +
+						       index_of[num2] +
+						       nn - index_of[den])];
+			/* Store the error correction pattern, if a
+			 * correction buffer is available */
+			if (corr) {
+				corr[j] = cor;
+			} else {
+				/* If a data buffer is given and the
+				 * error is inside the message,
+				 * correct it */
+				if (data && (loc[j] < (nn - nroots)))
+					data[loc[j] - pad] ^= cor;
+			}
+		}
+	}
+
+finish:
+	if (eras_pos != NULL) {
+		for (i = 0; i < count; i++)
+			eras_pos[i] = loc[i] - pad;
+	}
+	return count;
+
+}
diff --git a/lib/reed_solomon/encode_rs.c b/lib/reed_solomon/encode_rs.c
new file mode 100644
index 000000000000..0b5b1a6728ec
--- /dev/null
+++ b/lib/reed_solomon/encode_rs.c
@@ -0,0 +1,54 @@
+/*
+ * lib/reed_solomon/encode_rs.c
+ *
+ * Overview:
+ *   Generic Reed Solomon encoder / decoder library
+ *
+ * Copyright 2002, Phil Karn, KA9Q
+ * May be used under the terms of the GNU General Public License (GPL)
+ *
+ * Adaption to the kernel by Thomas Gleixner (tglx@linutronix.de)
+ *
+ * $Id: encode_rs.c,v 1.5 2005/11/07 11:14:59 gleixner Exp $
+ *
+ */
+
+/* Generic data width independent code which is included by the
+ * wrappers.
+ * int encode_rsX (struct rs_control *rs, uintX_t *data, int len, uintY_t *par)
+ */
+{
+	int i, j, pad;
+	int nn = rs->nn;
+	int nroots = rs->nroots;
+	uint16_t *alpha_to = rs->alpha_to;
+	uint16_t *index_of = rs->index_of;
+	uint16_t *genpoly = rs->genpoly;
+	uint16_t fb;
+	uint16_t msk = (uint16_t) rs->nn;
+
+	/* Check length parameter for validity */
+	pad = nn - nroots - len;
+	if (pad < 0 || pad >= nn)
+		return -ERANGE;
+
+	for (i = 0; i < len; i++) {
+		fb = index_of[((((uint16_t) data[i])^invmsk) & msk) ^ par[0]];
+		/* feedback term is non-zero */
+		if (fb != nn) {
+			for (j = 1; j < nroots; j++) {
+				par[j] ^= alpha_to[rs_modnn(rs, fb +
+							 genpoly[nroots - j])];
+			}
+		}
+		/* Shift */
+		memmove(&par[0], &par[1], sizeof(uint16_t) * (nroots - 1));
+		if (fb != nn) {
+			par[nroots - 1] = alpha_to[rs_modnn(rs,
+							    fb + genpoly[0])];
+		} else {
+			par[nroots - 1] = 0;
+		}
+	}
+	return 0;
+}
diff --git a/lib/reed_solomon/reed_solomon.c b/lib/reed_solomon/reed_solomon.c
new file mode 100644
index 000000000000..f9ea907bfef9
--- /dev/null
+++ b/lib/reed_solomon/reed_solomon.c
@@ -0,0 +1,377 @@
+/*
+ * lib/reed_solomon/reed_solomon.c
+ *
+ * Overview:
+ *   Generic Reed Solomon encoder / decoder library
+ *
+ * Copyright (C) 2004 Thomas Gleixner (tglx@linutronix.de)
+ *
+ * Reed Solomon code lifted from reed solomon library written by Phil Karn
+ * Copyright 2002 Phil Karn, KA9Q
+ *
+ * $Id: rslib.c,v 1.7 2005/11/07 11:14:59 gleixner Exp $
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ * Description:
+ *
+ * The generic Reed Solomon library provides runtime configurable
+ * encoding / decoding of RS codes.
+ * Each user must call init_rs to get a pointer to a rs_control
+ * structure for the given rs parameters. This structure is either
+ * generated or a already available matching control structure is used.
+ * If a structure is generated then the polynomial arrays for
+ * fast encoding / decoding are built. This can take some time so
+ * make sure not to call this function from a time critical path.
+ * Usually a module / driver should initialize the necessary
+ * rs_control structure on module / driver init and release it
+ * on exit.
+ * The encoding puts the calculated syndrome into a given syndrome
+ * buffer.
+ * The decoding is a two step process. The first step calculates
+ * the syndrome over the received (data + syndrome) and calls the
+ * second stage, which does the decoding / error correction itself.
+ * Many hw encoders provide a syndrome calculation over the received
+ * data + syndrome and can call the second stage directly.
+ *
+ */
+
+#include <linux/kernel.h>
+#include <linux/rslib.h>
+#include <malloc.h>
+#include <module.h>
+#include <linux/string.h>
+#include <stdio.h>
+#include <asm-generic/errno.h>
+
+/* This list holds all currently allocated rs control structures */
+static LIST_HEAD (rslist);
+
+/**
+ * rs_init - Initialize a Reed-Solomon codec
+ * @symsize:	symbol size, bits (1-8)
+ * @gfpoly:	Field generator polynomial coefficients
+ * @gffunc:	Field generator function
+ * @fcr:	first root of RS code generator polynomial, index form
+ * @prim:	primitive element to generate polynomial roots
+ * @nroots:	RS code generator polynomial degree (number of roots)
+ *
+ * Allocate a control structure and the polynom arrays for faster
+ * en/decoding. Fill the arrays according to the given parameters.
+ */
+static struct rs_control *rs_init(int symsize, int gfpoly, int (*gffunc)(int),
+                                  int fcr, int prim, int nroots)
+{
+	struct rs_control *rs;
+	int i, j, sr, root, iprim;
+
+	/* Allocate the control structure */
+	rs = kmalloc(sizeof (struct rs_control), GFP_KERNEL);
+	if (rs == NULL)
+		return NULL;
+
+	INIT_LIST_HEAD(&rs->list);
+
+	rs->mm = symsize;
+	rs->nn = (1 << symsize) - 1;
+	rs->fcr = fcr;
+	rs->prim = prim;
+	rs->nroots = nroots;
+	rs->gfpoly = gfpoly;
+	rs->gffunc = gffunc;
+
+	/* Allocate the arrays */
+	rs->alpha_to = kmalloc(sizeof(uint16_t) * (rs->nn + 1), GFP_KERNEL);
+	if (rs->alpha_to == NULL)
+		goto errrs;
+
+	rs->index_of = kmalloc(sizeof(uint16_t) * (rs->nn + 1), GFP_KERNEL);
+	if (rs->index_of == NULL)
+		goto erralp;
+
+	rs->genpoly = kmalloc(sizeof(uint16_t) * (rs->nroots + 1), GFP_KERNEL);
+	if(rs->genpoly == NULL)
+		goto erridx;
+
+	/* Generate Galois field lookup tables */
+	rs->index_of[0] = rs->nn;	/* log(zero) = -inf */
+	rs->alpha_to[rs->nn] = 0;	/* alpha**-inf = 0 */
+	if (gfpoly) {
+		sr = 1;
+		for (i = 0; i < rs->nn; i++) {
+			rs->index_of[sr] = i;
+			rs->alpha_to[i] = sr;
+			sr <<= 1;
+			if (sr & (1 << symsize))
+				sr ^= gfpoly;
+			sr &= rs->nn;
+		}
+	} else {
+		sr = gffunc(0);
+		for (i = 0; i < rs->nn; i++) {
+			rs->index_of[sr] = i;
+			rs->alpha_to[i] = sr;
+			sr = gffunc(sr);
+		}
+	}
+	/* If it's not primitive, exit */
+	if(sr != rs->alpha_to[0])
+		goto errpol;
+
+	/* Find prim-th root of 1, used in decoding */
+	for(iprim = 1; (iprim % prim) != 0; iprim += rs->nn);
+	/* prim-th root of 1, index form */
+	rs->iprim = iprim / prim;
+
+	/* Form RS code generator polynomial from its roots */
+	rs->genpoly[0] = 1;
+	for (i = 0, root = fcr * prim; i < nroots; i++, root += prim) {
+		rs->genpoly[i + 1] = 1;
+		/* Multiply rs->genpoly[] by  @**(root + x) */
+		for (j = i; j > 0; j--) {
+			if (rs->genpoly[j] != 0) {
+				rs->genpoly[j] = rs->genpoly[j -1] ^
+					rs->alpha_to[rs_modnn(rs,
+					rs->index_of[rs->genpoly[j]] + root)];
+			} else
+				rs->genpoly[j] = rs->genpoly[j - 1];
+		}
+		/* rs->genpoly[0] can never be zero */
+		rs->genpoly[0] =
+			rs->alpha_to[rs_modnn(rs,
+				rs->index_of[rs->genpoly[0]] + root)];
+	}
+	/* convert rs->genpoly[] to index form for quicker encoding */
+	for (i = 0; i <= nroots; i++)
+		rs->genpoly[i] = rs->index_of[rs->genpoly[i]];
+	return rs;
+
+	/* Error exit */
+errpol:
+	kfree(rs->genpoly);
+erridx:
+	kfree(rs->index_of);
+erralp:
+	kfree(rs->alpha_to);
+errrs:
+	kfree(rs);
+	return NULL;
+}
+
+
+/**
+ *  free_rs - Free the rs control structure, if it is no longer used
+ *  @rs:	the control structure which is not longer used by the
+ *		caller
+ */
+void free_rs(struct rs_control *rs)
+{
+	rs->users--;
+	if(!rs->users) {
+		list_del(&rs->list);
+		kfree(rs->alpha_to);
+		kfree(rs->index_of);
+		kfree(rs->genpoly);
+		kfree(rs);
+	}
+}
+
+/**
+ * init_rs_internal - Find a matching or allocate a new rs control structure
+ *  @symsize:	the symbol size (number of bits)
+ *  @gfpoly:	the extended Galois field generator polynomial coefficients,
+ *		with the 0th coefficient in the low order bit. The polynomial
+ *		must be primitive;
+ *  @gffunc:	pointer to function to generate the next field element,
+ *		or the multiplicative identity element if given 0.  Used
+ *		instead of gfpoly if gfpoly is 0
+ *  @fcr:  	the first consecutive root of the rs code generator polynomial
+ *		in index form
+ *  @prim:	primitive element to generate polynomial roots
+ *  @nroots:	RS code generator polynomial degree (number of roots)
+ */
+static struct rs_control *init_rs_internal(int symsize, int gfpoly,
+                                           int (*gffunc)(int), int fcr,
+                                           int prim, int nroots)
+{
+	struct list_head	*tmp;
+	struct rs_control	*rs;
+
+	/* Sanity checks */
+	if (symsize < 1)
+		return NULL;
+	if (fcr < 0 || fcr >= (1<<symsize))
+    		return NULL;
+	if (prim <= 0 || prim >= (1<<symsize))
+    		return NULL;
+	if (nroots < 0 || nroots >= (1<<symsize))
+		return NULL;
+
+	/* Walk through the list and look for a matching entry */
+	list_for_each(tmp, &rslist) {
+		rs = list_entry(tmp, struct rs_control, list);
+		if (symsize != rs->mm)
+			continue;
+		if (gfpoly != rs->gfpoly)
+			continue;
+		if (gffunc != rs->gffunc)
+			continue;
+		if (fcr != rs->fcr)
+			continue;
+		if (prim != rs->prim)
+			continue;
+		if (nroots != rs->nroots)
+			continue;
+		/* We have a matching one already */
+		rs->users++;
+		goto out;
+	}
+
+	/* Create a new one */
+	rs = rs_init(symsize, gfpoly, gffunc, fcr, prim, nroots);
+	if (rs) {
+		rs->users = 1;
+		list_add(&rs->list, &rslist);
+	}
+out:
+	return rs;
+}
+
+/**
+ * init_rs - Find a matching or allocate a new rs control structure
+ *  @symsize:	the symbol size (number of bits)
+ *  @gfpoly:	the extended Galois field generator polynomial coefficients,
+ *		with the 0th coefficient in the low order bit. The polynomial
+ *		must be primitive;
+ *  @fcr:  	the first consecutive root of the rs code generator polynomial
+ *		in index form
+ *  @prim:	primitive element to generate polynomial roots
+ *  @nroots:	RS code generator polynomial degree (number of roots)
+ */
+struct rs_control *init_rs(int symsize, int gfpoly, int fcr, int prim,
+                           int nroots)
+{
+	return init_rs_internal(symsize, gfpoly, NULL, fcr, prim, nroots);
+}
+
+/**
+ * init_rs_non_canonical - Find a matching or allocate a new rs control
+ *                         structure, for fields with non-canonical
+ *                         representation
+ *  @symsize:	the symbol size (number of bits)
+ *  @gffunc:	pointer to function to generate the next field element,
+ *		or the multiplicative identity element if given 0.  Used
+ *		instead of gfpoly if gfpoly is 0
+ *  @fcr:  	the first consecutive root of the rs code generator polynomial
+ *		in index form
+ *  @prim:	primitive element to generate polynomial roots
+ *  @nroots:	RS code generator polynomial degree (number of roots)
+ */
+struct rs_control *init_rs_non_canonical(int symsize, int (*gffunc)(int),
+                                         int fcr, int prim, int nroots)
+{
+	return init_rs_internal(symsize, 0, gffunc, fcr, prim, nroots);
+}
+
+#ifdef CONFIG_REED_SOLOMON_ENC8
+/**
+ *  encode_rs8 - Calculate the parity for data values (8bit data width)
+ *  @rs:	the rs control structure
+ *  @data:	data field of a given type
+ *  @len:	data length
+ *  @par:	parity data, must be initialized by caller (usually all 0)
+ *  @invmsk:	invert data mask (will be xored on data)
+ *
+ *  The parity uses a uint16_t data type to enable
+ *  symbol size > 8. The calling code must take care of encoding of the
+ *  syndrome result for storage itself.
+ */
+int encode_rs8(struct rs_control *rs, uint8_t *data, int len, uint16_t *par,
+	       uint16_t invmsk)
+{
+#include "encode_rs.c"
+}
+EXPORT_SYMBOL_GPL(encode_rs8);
+#endif
+
+#ifdef CONFIG_REED_SOLOMON_DEC8
+/**
+ *  decode_rs8 - Decode codeword (8bit data width)
+ *  @rs:	the rs control structure
+ *  @data:	data field of a given type
+ *  @par:	received parity data field
+ *  @len:	data length
+ *  @s:		syndrome data field (if NULL, syndrome is calculated)
+ *  @no_eras:	number of erasures
+ *  @eras_pos:	position of erasures, can be NULL
+ *  @invmsk:	invert data mask (will be xored on data, not on parity!)
+ *  @corr:	buffer to store correction bitmask on eras_pos
+ *
+ *  The syndrome and parity uses a uint16_t data type to enable
+ *  symbol size > 8. The calling code must take care of decoding of the
+ *  syndrome result and the received parity before calling this code.
+ *  Returns the number of corrected bits or -EBADMSG for uncorrectable errors.
+ */
+int decode_rs8(struct rs_control *rs, uint8_t *data, uint16_t *par, int len,
+	       uint16_t *s, int no_eras, int *eras_pos, uint16_t invmsk,
+	       uint16_t *corr)
+{
+#include "decode_rs.c"
+}
+EXPORT_SYMBOL_GPL(decode_rs8);
+#endif
+
+#ifdef CONFIG_REED_SOLOMON_ENC16
+/**
+ *  encode_rs16 - Calculate the parity for data values (16bit data width)
+ *  @rs:	the rs control structure
+ *  @data:	data field of a given type
+ *  @len:	data length
+ *  @par:	parity data, must be initialized by caller (usually all 0)
+ *  @invmsk:	invert data mask (will be xored on data, not on parity!)
+ *
+ *  Each field in the data array contains up to symbol size bits of valid data.
+ */
+int encode_rs16(struct rs_control *rs, uint16_t *data, int len, uint16_t *par,
+	uint16_t invmsk)
+{
+#include "encode_rs.c"
+}
+EXPORT_SYMBOL_GPL(encode_rs16);
+#endif
+
+#ifdef CONFIG_REED_SOLOMON_DEC16
+/**
+ *  decode_rs16 - Decode codeword (16bit data width)
+ *  @rs:	the rs control structure
+ *  @data:	data field of a given type
+ *  @par:	received parity data field
+ *  @len:	data length
+ *  @s:		syndrome data field (if NULL, syndrome is calculated)
+ *  @no_eras:	number of erasures
+ *  @eras_pos:	position of erasures, can be NULL
+ *  @invmsk:	invert data mask (will be xored on data, not on parity!)
+ *  @corr:	buffer to store correction bitmask on eras_pos
+ *
+ *  Each field in the data array contains up to symbol size bits of valid data.
+ *  Returns the number of corrected bits or -EBADMSG for uncorrectable errors.
+ */
+int decode_rs16(struct rs_control *rs, uint16_t *data, uint16_t *par, int len,
+		uint16_t *s, int no_eras, int *eras_pos, uint16_t invmsk,
+		uint16_t *corr)
+{
+#include "decode_rs.c"
+}
+EXPORT_SYMBOL_GPL(decode_rs16);
+#endif
+
+EXPORT_SYMBOL_GPL(init_rs);
+EXPORT_SYMBOL_GPL(init_rs_non_canonical);
+EXPORT_SYMBOL_GPL(free_rs);
+
+MODULE_LICENSE("GPL");
+MODULE_DESCRIPTION("Reed Solomon encoder/decoder");
+MODULE_AUTHOR("Phil Karn, Thomas Gleixner");
+
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
