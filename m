Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyX5p-0006w4-MW
 for barebox@lists.infradead.org; Mon, 03 Feb 2020 08:28:30 +0000
Received: from geraet.fritz.box (unknown [46.183.103.8])
 (Authenticated sender: ahmad@a3f.at)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 9648E1BF20C
 for <barebox@lists.infradead.org>; Mon,  3 Feb 2020 08:28:25 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon,  3 Feb 2020 09:27:59 +0100
Message-Id: <20200203082759.7014-2-ahmad@a3f.at>
In-Reply-To: <20200203082759.7014-1-ahmad@a3f.at>
References: <20200203082759.7014-1-ahmad@a3f.at>
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
Subject: [PATCH 2/2] sandbox: hostfile: fix UB-inducing shift
To: barebox@lists.infradead.org

On 32-bit hosts, UBSan reports:

====================================================================
UBSAN: Undefined behaviour in ./arch/sandbox/board/hostfile.c:135:12
shift exponent 32 is too large for 32-bit type 'long unsigned int'
====================================================================

Fix this by using a unsigned long long for base. The upper 32-bit
won't be set, but device tree fixups can now read them.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/sandbox/mach-sandbox/include/mach/hostfile.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/sandbox/mach-sandbox/include/mach/hostfile.h b/arch/sandbox/mach-sandbox/include/mach/hostfile.h
index 627fe28e765b..54f690be5f7f 100644
--- a/arch/sandbox/mach-sandbox/include/mach/hostfile.h
+++ b/arch/sandbox/mach-sandbox/include/mach/hostfile.h
@@ -3,7 +3,7 @@
 
 struct hf_info {
 	int fd;
-	unsigned long base;
+	unsigned long long base;
 	size_t size;
 	const char *devname;
 	const char *filename;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
