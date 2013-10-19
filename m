Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22c.google.com ([2a00:1450:4013:c00::22c])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VXVX1-0002ne-R1
 for barebox@lists.infradead.org; Sat, 19 Oct 2013 12:21:24 +0000
Received: by mail-ee0-f44.google.com with SMTP id b47so2645922eek.17
 for <barebox@lists.infradead.org>; Sat, 19 Oct 2013 05:21:02 -0700 (PDT)
Received: from mamamia.internal (a89-182-1-5.net-htp.de. [89.182.1.5])
 by mx.google.com with ESMTPSA id b42sm17147502eem.9.2013.10.19.05.21.00
 for <barebox@lists.infradead.org>
 (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
 Sat, 19 Oct 2013 05:21:01 -0700 (PDT)
From: Andre Heider <a.heider@gmail.com>
Date: Sat, 19 Oct 2013 14:20:48 +0200
Message-Id: <1382185254-29183-2-git-send-email-a.heider@gmail.com>
In-Reply-To: <1382185130-28995-1-git-send-email-a.heider@gmail.com>
References: <1382185130-28995-1-git-send-email-a.heider@gmail.com>
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
Subject: [PATCH 03/10] common: add a macro to align an array on the stack
To: barebox@lists.infradead.org

The macro can be used for temporary stack buffers which need to meet
a minimum alignment requirement.

This will be used by bcm2835 mailbox users, where all buffers need to
be aligned.

Signed-off-by: Andre Heider <a.heider@gmail.com>
---
 include/common.h | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/include/common.h b/include/common.h
index 0f0ba08..00f1642 100644
--- a/include/common.h
+++ b/include/common.h
@@ -192,6 +192,17 @@ int run_shell(void);
 #define ARRAY_SIZE(arr)		(sizeof(arr) / sizeof((arr)[0]) + __must_be_array(arr))
 #define ARRAY_AND_SIZE(x)	(x), ARRAY_SIZE(x)
 
+/*
+ * The STACK_ALIGN_ARRAY macro is used to allocate a buffer on the stack that
+ * meets a minimum alignment requirement.
+ *
+ * Note that the size parameter is the number of array elements to allocate,
+ * not the number of bytes.
+ */
+#define STACK_ALIGN_ARRAY(type, name, size, align)		\
+	char __##name[sizeof(type) * (size) + (align) - 1];	\
+	type *name = (type *)ALIGN((uintptr_t)__##name, align)
+
 /**
  * container_of - cast a member of a structure out to the containing structure
  * @ptr:	the pointer to the member.
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
