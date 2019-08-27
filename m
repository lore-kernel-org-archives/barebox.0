Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2cWq-0000LZ-Ma
 for barebox@lists.infradead.org; Tue, 27 Aug 2019 14:33:04 +0000
Received: from geraet.pengutronix.de (hazel.nat.pengutronix.de [85.220.165.66])
 (Authenticated sender: ahmad@a3f.at)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 31272E0003
 for <barebox@lists.infradead.org>; Tue, 27 Aug 2019 14:32:47 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Tue, 27 Aug 2019 16:32:36 +0200
Message-Id: <20190827143239.15682-4-ahmad@a3f.at>
In-Reply-To: <20190827143239.15682-1-ahmad@a3f.at>
References: <20190827143239.15682-1-ahmad@a3f.at>
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
Subject: [PATCH 3/6] sandbox: redefine optarg and optind to avoid collisions
To: barebox@lists.infradead.org

If we don't do this, the barebox main may fail to parse arguments.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/sandbox/Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index 85c70b5e8059..2a75b81cf632 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -23,7 +23,8 @@ CFLAGS += -Dmalloc=barebox_malloc -Dcalloc=barebox_calloc \
 		-Dglob=barebox_glob -Dglobfree=barebox_globfree \
 		-Dioctl=barebox_ioctl -Dfstat=barebox_fstat \
 		-Dopendir=barebox_opendir -Dreaddir=barebox_readdir \
-		-Dclosedir=barebox_closedir
+		-Dclosedir=barebox_closedir \
+		-Doptarg=barebox_optarg -Doptind=barebox_optind
 
 machdirs := $(patsubst %,arch/sandbox/mach-%/,$(machine-y))
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
