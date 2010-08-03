Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 29.mail-out.ovh.net ([87.98.216.213])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OgH4W-0002QC-AD
	for barebox@lists.infradead.org; Tue, 03 Aug 2010 12:58:21 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue,  3 Aug 2010 14:53:37 +0200
Message-Id: <1280840019-11421-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20100803125142.GA9556@game.jcrosoft.org>
References: <20100803125142.GA9556@game.jcrosoft.org>
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
Subject: [PATCH 1/3] initcall: add postconsole_initcall
To: barebox@lists.infradead.org

this will allow us to print information as soon as the console will be enable

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 include/init.h |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/include/init.h b/include/init.h
index eb606f3..c5dea07 100644
--- a/include/init.h
+++ b/include/init.h
@@ -11,6 +11,7 @@ typedef int (*initcall_t)(void);
 #define core_initcall(fn)		__define_initcall("0",fn,0)
 #define postcore_initcall(fn)		__define_initcall("1",fn,1)
 #define console_initcall(fn)		__define_initcall("2",fn,2)
+#define postconsole_initcall(fn)	__define_initcall("3",fn,3)
 #define coredevice_initcall(fn)		__define_initcall("4",fn,4)
 #define fs_initcall(fn)			__define_initcall("5",fn,5)
 #define device_initcall(fn)		__define_initcall("6",fn,6)
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
