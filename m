Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gSKXB-0003j0-Pr
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 11:31:09 +0000
Received: from unicorn.hi.pengutronix.de
 ([2001:67c:670:100:a61f:72ff:fe69:16d] helo=unicorn)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1gSKWz-0001xB-1c
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 12:30:53 +0100
Received: from str by unicorn with local (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1gSKWy-0000Ai-Ad
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 12:30:52 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu, 29 Nov 2018 12:30:42 +0100
Message-Id: <20181129113048.31857-10-s.trumtrar@pengutronix.de>
In-Reply-To: <20181129113048.31857-1-s.trumtrar@pengutronix.de>
References: <20181129113048.31857-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 09/15] scripts: link-barebox: force error on kallsyms failure
To: Barebox List <barebox@lists.infradead.org>

Based on linux v4.5 patch: a043934207c5eb271deeaed2e9bd019c3be92cad

    scripts/link-vmlinux.sh: force error on kallsyms failure

    Since the output of the invocation of scripts/kallsyms is piped directly
    into the assembler, error messages it emits are visible on stderr, but
    a non-zero return code is ignored, and the build simply proceeds in that
    case. However, the resulting kernel is most likely broken, and will crash
    at boot.

    So instead, capture the output of kallsyms in a separate .S file, and pass
    that to the assembler in a separate step.

    Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
    Signed-off-by: Michal Marek <mmarek@suse.com>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 scripts/link-barebox.sh | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/scripts/link-barebox.sh b/scripts/link-barebox.sh
index bff2363a19d5..20375792a7f7 100755
--- a/scripts/link-barebox.sh
+++ b/scripts/link-barebox.sh
@@ -94,9 +94,10 @@ kallsyms()
 	local aflags="${AFLAGS} ${AFLAGS_KERNEL}			\
 		      ${NOSTDINC_FLAGS} ${BAREBOXINCLUDE} ${CPPFLAGS}"
 
-	${NM} -n ${1} | \
-		${KALLSYMS} ${kallsymopt} | \
-		${CC} ${aflags} -c -o ${2} -x assembler-with-cpp -
+	local afile="`basename ${2} .o`.S"
+
+	${NM} -n ${1} | ${KALLSYMS} ${kallsymopt} > ${afile}
+	${CC} ${aflags} -c -o ${2} -x assembler-with-cpp ${afile}
 }
 
 # Create map file with all symbols from ${1}
-- 
2.19.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
