Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x241.google.com ([2607:f8b0:400e:c00::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f2Ra0-0006X4-N7
 for barebox@lists.infradead.org; Sun, 01 Apr 2018 01:14:46 +0000
Received: by mail-pf0-x241.google.com with SMTP id l27so7646832pfk.12
 for <barebox@lists.infradead.org>; Sat, 31 Mar 2018 18:14:32 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 31 Mar 2018 18:13:56 -0700
Message-Id: <20180401011358.11621-3-andrew.smirnov@gmail.com>
In-Reply-To: <20180401011358.11621-1-andrew.smirnov@gmail.com>
References: <20180401011358.11621-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/3] clk: Forward declare struct of_device_id in linux/clk.h
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Forward declare struct of_device_id in linux/clk.h in order to avoid
warnings like the following:

warning: 'struct of_device_id' declared inside parameter list will not be visible outside
of this definition or declaration
 int of_clk_init(struct device_node *root, const struct of_device_id *matches);
                                                        ^~~~~~~~~~~~

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 include/linux/clk.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/linux/clk.h b/include/linux/clk.h
index 081a85972..c6465b1c9 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -323,6 +323,7 @@ struct clk *clk_register_composite(const char *name,
 
 struct device_node;
 struct of_phandle_args;
+struct of_device_id;
 
 #if defined(CONFIG_COMMON_CLK_OF_PROVIDER)
 
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
