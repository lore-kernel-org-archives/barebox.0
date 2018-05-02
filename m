Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns2.lah-a2.de ([84.19.187.99] helo=lah-a2.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fDrk8-00077V-Uh
 for barebox@lists.infradead.org; Wed, 02 May 2018 13:24:27 +0000
Received: from localhost (p5B019D47.dip0.t-ipconnect.de [91.1.157.71])
 by lah-a2.de (Postfix) with ESMTPSA id 7277C4087356
 for <barebox@lists.infradead.org>; Wed,  2 May 2018 15:21:20 +0200 (CEST)
From: Andreas Schmidt <mail@schmidt-andreas.de>
Date: Wed,  2 May 2018 15:23:56 +0200
Message-Id: <20180502132356.4207-1-mail@schmidt-andreas.de>
In-Reply-To: <20180502110214.zsdcwbt3qdgy2y7u@pengutronix.de>
References: <20180502110214.zsdcwbt3qdgy2y7u@pengutronix.de>
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
Subject: [PATCH v2] blspec: add checking of optional key machine-id
To: barebox@lists.infradead.org

For filtering of Bootloader Spec entries, Bootloader Spec
specify an optional key machine-id. By set the
global.boot.machine-id variable the checking of machine-id
key in Bootloader Spec entries will be activate. If the
variable and key match, appropriate boot entry will be
booting. If it not match boot entry will be ignore and
barebox check the next boot entry.

Signed-off-by: Andreas Schmidt <mail@schmidt-andreas.de>
---

Changes since v1:
  - change pr_info to pr_debug in case of missmatching this machine-id
  - print both machine-ids in debug message

Hi Sascha,
yes you are right. The message has to be improve for better understanding.
I oriented me on device-tree compatibility and used the equal message.

While improving I realised, that my decision to use pr_info was not very well.
Because, in case of device-tree compatibility the usual case is matching. 
But in case of Bootloader Spec entries with machine-id only one of X entries
will/shuld match usaully. Bootloader would print some unnecessary info messages
each boot.

I changed the output to pr_debug, to avoid unnecessary outputs while normal
booting. And I add both machine ids to the message to make debuging easier.

Regards,
Andreas
---
 Documentation/user/booting-linux.rst |  6 ++++++
 common/blspec.c                      | 31 ++++++++++++++++++++++++++++++-
 2 files changed, 36 insertions(+), 1 deletion(-)

diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
index b5e4320ef..408f87d8e 100644
--- a/Documentation/user/booting-linux.rst
+++ b/Documentation/user/booting-linux.rst
@@ -212,6 +212,12 @@ The entry can be listed with the -l option:
 When on barebox the SD card shows up as ``mmc1`` then this entry can be booted with
 ``boot mmc1`` or with setting ``global.boot.default`` to ``mmc1``.
 
+``machine-id`` is an optional key. If ``global.boot.machine_id`` variable is set to
+non-empty value, then barebox accepts only Bootloader Spec entries with ``machine-id``
+key. In case if value of global variable and Bootloader Spec key match each other,
+barebox will choose the boot entry for booting. All other Bootloader Spec entries will
+be ignored.
+
 A bootloader spec entry can also reside on an NFS server in which case a RFC2224
 compatible NFS URI string must be passed to the boot command:
 
diff --git a/common/blspec.c b/common/blspec.c
index 6171461a7..2c682e199 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -419,6 +419,30 @@ out:
 	return ret;
 }
 
+/*
+ * entry_is_match_machine_id - check if a bootspec entry is match with
+ *                            the machine id given by global variable.
+ *
+ * returns true if the entry is match, false otherwise
+ */
+
+static bool entry_is_match_machine_id(struct blspec_entry *entry)
+{
+	int ret = true;
+	const char *env_machineid = getenv_nonempty("global.boot.machine_id");
+
+	if (env_machineid) {
+		const char *machineid = blspec_entry_var_get(entry, "machine-id");
+		if (!machineid || strcmp(machineid, env_machineid)) {
+			pr_debug("ignoring entry with missmatched machine-id " \
+				"\"%s\" != \"%s\"\n", env_machineid, machineid);
+			ret = false;
+		}
+	}
+
+	return ret;
+}
+
 /*
  * blspec_scan_directory - scan over a directory
  *
@@ -504,6 +528,11 @@ int blspec_scan_directory(struct bootentries *bootentries, const char *root)
 			continue;
 		}
 
+		if (!entry_is_match_machine_id(entry)) {
+			blspec_entry_free(&entry->entry);
+			continue;
+		}
+
 		found++;
 
 		if (entry->cdev && entry->cdev->dev) {
@@ -756,4 +785,4 @@ static int blspec_init(void)
 {
 	return bootentry_register_provider(blspec_bootentry_provider);
 }
-device_initcall(blspec_init);
\ No newline at end of file
+device_initcall(blspec_init);
-- 
2.14.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
