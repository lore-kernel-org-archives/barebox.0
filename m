Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PvHUT-0003Mn-87
	for barebox@lists.infradead.org; Thu, 03 Mar 2011 22:59:32 +0000
Received: by mail-ww0-f49.google.com with SMTP id 40so1440124wwj.18
	for <barebox@lists.infradead.org>; Thu, 03 Mar 2011 14:59:24 -0800 (PST)
From: franck.jullien@gmail.com
Date: Thu,  3 Mar 2011 23:58:55 +0100
Message-Id: <4d701d4c.9009d80a.2cd3.5e9e@mx.google.com>
In-Reply-To: <n>
References: <n>
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
Subject: [PATCH 41/54] Add arch/nios2/include/asm/opcodes.h
To: barebox@lists.infradead.org

From: Franck JULLIEN <franck.jullien@gmail.com>

Add arch/nios2/include/asm/opcodes.h

---
 arch/nios2/include/asm/opcodes.h |  131 ++++++++++++++++++++++++++++++++++++++
 1 files changed, 131 insertions(+), 0 deletions(-)
 create mode 100644 arch/nios2/include/asm/opcodes.h

diff --git a/arch/nios2/include/asm/opcodes.h b/arch/nios2/include/asm/opcodes.h
new file mode 100644
index 0000000..211f8ba
--- /dev/null
+++ b/arch/nios2/include/asm/opcodes.h
@@ -0,0 +1,131 @@
+/*
+ * (C) Copyright 2004, Psyent Corporation <www.psyent.com>
+ * Scott McNutt <smcnutt@psyent.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
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
+ */
+
+#ifndef __ASM_NIOS2_OPCODES_H_
+#define __ASM_NIOS2_OPCODES_H_
+
+#define OPCODE_OP(inst)	((inst) & 0x3f)
+#define OPCODE_OPX(inst) (((inst)>>11) & 0x3f)
+#define OPCODE_RA(inst) (((inst)>>27) & 01f)
+#define OPCODE_RB(inst) (((inst)>>22) & 01f)
+#define OPCODE_RC(inst) (((inst)>>17) & 01f)
+
+/* I-TYPE (immediate) and J-TYPE (jump) opcodes
+ */
+#define OPCODE_CALL	0x00
+#define OPCODE_LDBU	0x03
+#define OPCODE_ADDI	0x04
+#define OPCODE_STB	0x05
+#define OPCODE_BR	0x06
+#define OPCODE_LDB	0x07
+#define OPCODE_CMPGEI	0x08
+#define OPCODE_LDHU	0x0B
+#define OPCODE_ANDI	0x0C
+#define OPCODE_STH	0x0D
+#define OPCODE_BGE	0x0E
+#define OPCODE_LDH	0x0F
+#define OPCODE_CMPLTI	0x10
+#define OPCODE_XORI	0x1C
+#define OPCODE_ORI	0x14
+#define OPCODE_STW	0x15
+#define OPCODE_BLT	0x16
+#define OPCODE_LDW	0x17
+#define OPCODE_CMPNEI	0x18
+#define OPCODE_BNE	0x1E
+#define OPCODE_CMPEQI	0x20
+#define OPCODE_LDBUIO	0x23
+#define OPCODE_MULI	0x24
+#define OPCODE_STBIO	0x25
+#define OPCODE_BEQ	0x26
+#define OPCODE_LDBIO	0x27
+#define OPCODE_CMPGEUI	0x28
+#define OPCODE_ANDHI	0x2C
+#define OPCODE_STHIO	0x2D
+#define OPCODE_BGEU	0x2E
+#define OPCODE_LDHIO	0x2F
+#define OPCODE_CMPLTUI	0x30
+#define OPCODE_CUSTOM	0x32
+#define OPCODE_INITD	0x33
+#define OPCODE_ORHI	0x34
+#define OPCODE_STWIO	0x35
+#define OPCODE_BLTU	0x36
+#define OPCODE_LDWIO	0x37
+#define OPCODE_RTYPE	0x3A
+#define OPCODE_LDHUIO	0x2B
+#define OPCODE_FLUSHD	0x3B
+#define OPCODE_XORHI	0x3C
+
+/* R-Type (register) OPX field encodings
+ */
+#define OPCODE_ERET	0x01
+#define OPCODE_ROLI	0x02
+#define OPCODE_ROL	0x03
+#define OPCODE_FLUSHP	0x04
+#define OPCODE_RET	0x05
+#define OPCODE_NOR	0x06
+#define OPCODE_MULXUU	0x07
+#define OPCODE_CMPGE	0x08
+#define OPCODE_BRET	0x09
+#define OPCODE_ROR	0x0B
+#define OPCODE_FLUSHI	0x0C
+#define OPCODE_JMP	0x0D
+#define OPCODE_AND	0x0E
+
+#define OPCODE_CMPLT	0x10
+#define OPCODE_SLLI	0x12
+#define OPCODE_SLL	0x13
+#define OPCODE_OR	0x16
+#define OPCODE_MULXSU	0x17
+#define OPCODE_CMPNE	0x18
+#define OPCODE_SRLI	0x1A
+#define OPCODE_SRL	0x1B
+#define OPCODE_NEXTPC	0x1C
+#define OPCODE_CALLR	0x1D
+#define OPCODE_XOR	0x1E
+#define OPCODE_MULXSS	0x1F
+
+#define OPCODE_CMPEQ	0x20
+#define OPCODE_CMPLTU	0x30
+#define OPCODE_ADD	0x31
+#define OPCODE_DIVU	0x24
+#define OPCODE_DIV	0x25
+#define OPCODE_RDCTL	0x26
+#define OPCODE_MUL	0x27
+#define OPCODE_CMPGEU	0x28
+#define OPCODE_TRAP	0x2D
+#define OPCODE_WRCTL	0x2E
+
+#define OPCODE_BREAK	0x34
+#define OPCODE_SYNC	0x36
+#define OPCODE_INITI	0x29
+#define OPCODE_SUB	0x39
+#define OPCODE_SRAI	0x3A
+#define OPCODE_SRA	0x3B
+
+/*Full instruction encodings for R-Type, without the R's ;-)
+ *
+ * TODO: BREAK, BRET, ERET, RET, SYNC (as needed)
+ */
+#define OPC_TRAP	0x003b683a
+
+#endif /* __ASM_NIOS2_OPCODES_H_ */
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
