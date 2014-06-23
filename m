Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x22e.google.com ([2a00:1450:400c:c00::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzAfM-0004Lk-S6
 for barebox@lists.infradead.org; Mon, 23 Jun 2014 20:16:37 +0000
Received: by mail-wg0-f46.google.com with SMTP id y10so7034931wgg.5
 for <barebox@lists.infradead.org>; Mon, 23 Jun 2014 13:16:14 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Mon, 23 Jun 2014 22:10:29 +0200
Message-Id: <1403554235-12674-2-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1403554235-12674-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1403554235-12674-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 1/7] ARM: mvebu: set model and default hostname for Dove
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

Set default model and hostname based on SoC name.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 arch/arm/mach-mvebu/dove.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/mach-mvebu/dove.c b/arch/arm/mach-mvebu/dove.c
index f081e50e7bf1..bcbf4b8ad7bd 100644
--- a/arch/arm/mach-mvebu/dove.c
+++ b/arch/arm/mach-mvebu/dove.c
@@ -71,6 +71,9 @@ static int dove_init_soc(void)
 {
 	unsigned long phys_base, phys_size;
 
+	barebox_set_model("Marvell Dove");
+	barebox_set_hostname("dove");
+
 	dove_remap_mc_regs();
 	dove_memory_find(&phys_base, &phys_size);
 	arm_add_mem_device("ram0", phys_base, phys_size);
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
