Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lES3i-0003Xq-Mk
 for barebox@lists.infradead.org; Tue, 23 Feb 2021 07:24:39 +0000
Received: from geraet.fritz.box (unknown [87.123.107.144])
 (Authenticated sender: ahmad@a3f.at)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 70E761BF209
 for <barebox@lists.infradead.org>; Tue, 23 Feb 2021 07:24:32 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Tue, 23 Feb 2021 08:24:27 +0100
Message-Id: <20210223072427.166689-2-ahmad@a3f.at>
In-Reply-To: <20210223072427.166689-1-ahmad@a3f.at>
References: <20210223072427.166689-1-ahmad@a3f.at>
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
Subject: [PATCH 2/2] kbuild: add '-fcf-protection=none' to barebox build
 options
To: barebox@lists.infradead.org

Ubuntu 19.10 enables this by default for x86 architectures. The option
instructs the compiler to generate special nop instruction at all places
where execution may jump to. This not only means the incoming setjmp
implementations will need to be adjusted[1], but in case the option is
extended to expose similar features of other microarches, this could
lead to breakages there with newer compilers. Only safe way to use it
seems to disable it wholesale and enable it selectively for platforms that
are aware of it. So do the disabling part.

[1]: https://github.com/ipxe/ipxe/commit/e8393c372

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 Makefile | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Makefile b/Makefile
index fa7fbbeb35f0..261c68c1865d 100644
--- a/Makefile
+++ b/Makefile
@@ -625,6 +625,10 @@ KBUILD_CFLAGS	+= $(call cc-option,-fno-strict-overflow)
 # Make sure -fstack-check isn't enabled (like gentoo apparently did)
 KBUILD_CFLAGS  += $(call cc-option,-fno-stack-check)
 
+# ensure -fcf-protection is disabled as it is incompatible with our sjlj
+# Platforms that have their setjmp appropriately implemented may override this
+KBUILD_CFLAGS += $(call cc-option,-fcf-protection=none)
+
 KBUILD_CFLAGS   += $(call cc-disable-warning, address-of-packed-member)
 
 # Align the bit size of userspace programs with the kernel
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
