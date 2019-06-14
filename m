Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-eopbgr770040.outbound.protection.outlook.com
 ([40.107.77.40] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbsun-0002ko-IC
 for barebox@lists.infradead.org; Fri, 14 Jun 2019 20:35:14 +0000
From: Cory Tusar <Cory.Tusar@zii.aero>
Date: Fri, 14 Jun 2019 20:35:11 +0000
Message-ID: <20190614203438.18900-3-cory.tusar@zii.aero>
References: <20190614203438.18900-1-cory.tusar@zii.aero>
In-Reply-To: <20190614203438.18900-1-cory.tusar@zii.aero>
Content-Language: en-US
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
Subject: [PATCH 2/2] common: blspec: Both environment and config file
 machine-id must match
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Cc: Chris Healy <Chris.Healy@zii.aero>

The original logic for determining whether or not to consider a blspec
entry as "matching" would return a false positive for cases in which a
machine-id was specified in a particular blspec configuration file, but
no such value was present in the environment.

This commit modifies that logic such that a machine-id is considered to
be "matching" ONLY if the values are identical in both the environment
and configuration file, OR if there is no machine-id specified in either
the environment or the configuration file.

Instances where a machine-id is specified in only one location will no
longer be considered a match, nor will instances where the UUID values
themselves differ.

Tested on a number of ZII platforms where we use a machine-id value to
differentiate between active and inactive OS partitions.

Signed-off-by: Cory Tusar <cory.tusar@zii.aero>
---
 common/blspec.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/common/blspec.c b/common/blspec.c
index 41f2a4c53..59859c9b3 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -430,16 +430,14 @@ out:
 
 static bool entry_is_match_machine_id(struct blspec_entry *entry)
 {
-	int ret = true;
 	const char *env_machineid = getenv_nonempty("global.boot.machine_id");
+	const char *machineid = blspec_entry_var_get(entry, "machine-id");
+	bool ret = !!env_machineid == !!machineid;
 
-	if (env_machineid) {
-		const char *machineid = blspec_entry_var_get(entry, "machine-id");
-		if (!machineid || strcmp(machineid, env_machineid)) {
-			pr_debug("ignoring entry with missmatched machine-id " \
-				"\"%s\" != \"%s\"\n", env_machineid, machineid);
-			ret = false;
-		}
+	if (env_machineid && machineid && strcmp(env_machineid, machineid)) {
+		pr_info("ignoring entry with mismatched machine-id " \
+			"\"%s\" != \"%s\"\n", env_machineid, machineid);
+		ret = false;
 	}
 
 	return ret;
-- 
2.21.0

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
