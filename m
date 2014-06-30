Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X1b0P-0007wy-Ey
 for barebox@lists.infradead.org; Mon, 30 Jun 2014 12:48:22 +0000
Received: from [69.196.158.250] (port=53516 helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
 id 1X1b03-0002AK-Fe
 for barebox@lists.infradead.org; Mon, 30 Jun 2014 08:47:59 -0400
Date: Mon, 30 Jun 2014 08:43:39 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.LFD.2.11.1406300842390.3550@localhost>
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
Subject: [PATCH] sdma.h: Typo, "interupt" -> "interrupt"
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


Fix only two "interupt" misspellings in entire barebox codebase.

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/arch/ppc/mach-mpc5xxx/include/mach/sdma.h b/arch/ppc/mach-mpc5xxx/include/mach/sdma.h
index 5e7ff5f..6a25d79 100644
--- a/arch/ppc/mach-mpc5xxx/include/mach/sdma.h
+++ b/arch/ppc/mach-mpc5xxx/include/mach/sdma.h
@@ -82,11 +82,11 @@ ALL PARAMETERS ARE ALL LONGWORDS (FOUR BYTES EACH).
     sdma->IntPend = (1 << tasknum);                    \
 }

-/* get interupt pending bit of a task */
+/* get interrupt pending bit of a task */
 #define SDMA_GET_PENDINGBIT(tasknum)                   \
 	((*(vu_long *)(MPC5XXX_SDMA + 0x14)) & (1<<(tasknum)))

-/* get interupt mask bit of a task */
+/* get interrupt mask bit of a task */
 #define SDMA_GET_MASKBIT(tasknum)                      \
 	((*(vu_long *)(MPC5XXX_SDMA + 0x18)) & (1<<(tasknum)))


-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
