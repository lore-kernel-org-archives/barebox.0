Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns2.lah-a2.de ([84.19.187.99] helo=lah-a2.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fColr-0001l2-EC
 for barebox@lists.infradead.org; Sun, 29 Apr 2018 16:01:53 +0000
Received: from localhost (p5B019D47.dip0.t-ipconnect.de [91.1.157.71])
 by lah-a2.de (Postfix) with ESMTPSA id 46E87408C931
 for <barebox@lists.infradead.org>; Sun, 29 Apr 2018 17:58:49 +0200 (CEST)
From: Andreas Schmidt <mail@schmidt-andreas.de>
Date: Sun, 29 Apr 2018 18:01:25 +0200
Message-Id: <20180429160125.3193-1-mail@schmidt-andreas.de>
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
Subject: [PATCH] blspec: add checking of optional key machine-id
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
Hi,
we use the same barebox for all our devices. The devices have
same CPU-module but different interface boards. So the bootloader
has to choose the right boot entry. To determine the right boot entry we
decide to use Bootloader Spec. But we have a issue: Currently, only oftree 
compatibility is checking by barebox for Bootloader Spec entries. But all 
our ofstrees are compatible with our barebox, because we use only one. So
we need a additional possibility to check witch Bootloader Spec entry
is the right one for appropriate device. I guess, for such an use case
Bootloader Spec specify "machine-id" key. This patch implement the support
for machine-id key.
The machine-id key is optional. I decide to activate the checking of this
key only if "global.boot.machine_id" variable is set to non-empty value.
If "global.boot.machine_id" not set machine-id key will be ignored, 
independent if it exists in Bootloader Spec entry or not.

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
index 6171461a7..4ffb25dd6 100644
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
+			pr_info("ignoring entry with missmatched machine-id \"%s\"\n",
+				env_machineid);
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
