Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XmMfX-00038a-E3
 for barebox@lists.infradead.org; Thu, 06 Nov 2014 13:00:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  6 Nov 2014 13:59:37 +0100
Message-Id: <1415278778-20826-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1415278778-20826-1-git-send-email-s.hauer@pengutronix.de>
References: <1415278778-20826-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/11] globalvar: Add support for printing all global variables
To: barebox@lists.infradead.org

This could previously only be done with 'devinfo global'. While
this is still possible this adds a more direct access via the
globalvar command. This variant also adds a '*' in front of
the variable if the corresponding non volatile variable exists.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/global.c   | 5 +++++
 common/globalvar.c  | 5 +++++
 include/globalvar.h | 1 +
 3 files changed, 11 insertions(+)

diff --git a/commands/global.c b/commands/global.c
index f14df38..581913d 100644
--- a/commands/global.c
+++ b/commands/global.c
@@ -37,6 +37,11 @@ static int do_global(int argc, char *argv[])
 		}
 	}
 
+	if (argc == optind) {
+		globalvar_print();
+		return 0;
+	}
+
 	argc -= optind;
 	argv += optind;
 
diff --git a/common/globalvar.c b/common/globalvar.c
index ec23c24..9a793ac 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -197,6 +197,11 @@ void nvvar_print(void)
 	device_param_print(&nv_device);
 }
 
+void globalvar_print(void)
+{
+	device_param_print(&global_device);
+}
+
 /*
  * globalvar_get_match
  *
diff --git a/include/globalvar.h b/include/globalvar.h
index 56b23fd..8b2caf1 100644
--- a/include/globalvar.h
+++ b/include/globalvar.h
@@ -77,6 +77,7 @@ int nvvar_load(void);
 void nvvar_print(void);
 int nvvar_add(const char *name, const char *value);
 int nvvar_remove(const char *name);
+void globalvar_print(void);
 
 #else
 static inline int globalvar_add_simple(const char *name, const char *value)
-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
