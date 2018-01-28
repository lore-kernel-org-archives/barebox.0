Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x244.google.com ([2a00:1450:400c:c0c::244])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1efmha-0000BI-EY
 for barebox@lists.infradead.org; Sun, 28 Jan 2018 13:08:56 +0000
Received: by mail-wr0-x244.google.com with SMTP id v31so4311404wrc.11
 for <barebox@lists.infradead.org>; Sun, 28 Jan 2018 05:08:43 -0800 (PST)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Sun, 28 Jan 2018 14:08:28 +0100
Message-Id: <20180128130828.10357-1-aleksander@aleksander.es>
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
Subject: [PATCH] of: base: fix segfault in of_get_machine_compatible()
To: barebox@lists.infradead.org
Cc: Aleksander Morgado <aleksander@aleksander.es>

This is running the barebox sandbox:

  Thread 1 "barebox" received signal SIGSEGV, Segmentation fault.
  0x0000555555579e2b in _strchr (s=s@entry=0x0, c=c@entry=44) at lib/string.c:251
  251		for(; *s != (char) c; ++s)
  (gdb) bt
  #0  0x0000555555579e2b in _strchr (s=s@entry=0x0, c=c@entry=44) at lib/string.c:251
  #1  0x000055555556fd91 in of_get_machine_compatible () at drivers/of/base.c:2380
  #2  0x000055555556fda8 in of_init_hostname () at drivers/of/base.c:2389
  #3  0x000055555555f9e6 in start_barebox () at common/startup.c:106
  #4  0x00005555555a291a in main ()
  (gdb) fr 1
  #1  0x000055555556fd91 in of_get_machine_compatible () at drivers/of/base.c:2380
  2380		p = strchr(name, ',');

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 drivers/of/base.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 6a582177b..10b62890b 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2376,6 +2376,8 @@ const char *of_get_machine_compatible(void)
 
 	prop = of_find_property(root_node, "compatible", NULL);
 	name = of_prop_next_string(prop, NULL);
+	if (!name)
+		return NULL;
 
 	p = strchr(name, ',');
 	return p ? p + 1 : name;
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
