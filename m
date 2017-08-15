Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dhcBU-0002qK-Fi
 for barebox@lists.infradead.org; Tue, 15 Aug 2017 13:47:12 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.84_2)
 (envelope-from <jbe@pengutronix.de>) id 1dhcB6-0007jB-2j
 for barebox@lists.infradead.org; Tue, 15 Aug 2017 15:46:40 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <jbe@pengutronix.de>) id 1dhcB5-0003yY-Nq
 for barebox@lists.infradead.org; Tue, 15 Aug 2017 15:46:39 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Tue, 15 Aug 2017 15:46:31 +0200
Message-Id: <20170815134636.21236-3-jbe@pengutronix.de>
In-Reply-To: <20170815134636.21236-1-jbe@pengutronix.de>
References: <20170815134636.21236-1-jbe@pengutronix.de>
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
Subject: [PATCH 2/7] state: keep backward compatibility
To: barebox@lists.infradead.org

Previous 'state' variable set variants do not know and use metadata. The
'direct' storage backend's read function honors this, but not its
counterpart the write function. This makes an update of the 'state'
variable set impossible.
This change makes backward compatibility explicit, else it complains in
the read function as well. With some more debug output it helps the
developer to do things right.

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 common/Kconfig                       |  8 ++++++++
 common/state/backend_bucket_direct.c | 28 +++++++++++++++++++---------
 2 files changed, 27 insertions(+), 9 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index bc7cb0fe7..57418cadc 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -937,6 +937,14 @@ config STATE_CRYPTO
 	  See Documentation/devicetree/bindings/barebox/barebox,state.rst
 	  for more information.
 
+config STATE_BACKWARD_COMPATIBLE
+	bool "backward compatible 'direct storage backend'"
+	depends on STATE
+	help
+	  With this option enabled the 'direct' storage backend keeps backward
+	  compatibility with older revisions of the state framework. Newer
+	  revisions expect an additional 'meta header' and fail otherwise.
+
 config BOOTCHOOSER
 	bool "bootchooser infrastructure"
 	depends on !SHELL_NONE
diff --git a/common/state/backend_bucket_direct.c b/common/state/backend_bucket_direct.c
index 4465ed0e4..958696ed9 100644
--- a/common/state/backend_bucket_direct.c
+++ b/common/state/backend_bucket_direct.c
@@ -69,6 +69,11 @@ static int state_backend_bucket_direct_read(struct state_backend_storage_bucket
 	if (meta.magic == direct_magic) {
 		read_len = meta.written_length;
 	} else {
+		if (!IS_ENABLED(CONFIG_STATE_BACKWARD_COMPATIBLE)) {
+			dev_err(direct->dev, "No meta data header found\n");
+			dev_dbg(direct->dev, "Enable backward compatibility or increase stride size\n");
+			return -EINVAL;
+		}
 		read_len = direct->max_size;
 		ret = lseek(direct->fd, direct->offset, SEEK_SET);
 		if (ret < 0) {
@@ -103,21 +108,26 @@ static int state_backend_bucket_direct_write(struct state_backend_storage_bucket
 	int ret;
 	struct state_backend_storage_bucket_direct_meta meta;
 
-	if (len > direct->max_size - sizeof(meta))
-		return -E2BIG;
-
 	ret = lseek(direct->fd, direct->offset, SEEK_SET);
 	if (ret < 0) {
 		dev_err(direct->dev, "Failed to seek file, %d\n", ret);
 		return ret;
 	}
 
-	meta.magic = direct_magic;
-	meta.written_length = len;
-	ret = write_full(direct->fd, &meta, sizeof(meta));
-	if (ret < 0) {
-		dev_err(direct->dev, "Failed to write metadata to file, %d\n", ret);
-		return ret;
+	/* write the meta data only if there is head room */
+	if (len <= direct->max_size - sizeof(meta)) {
+		meta.magic = direct_magic;
+		meta.written_length = len;
+		ret = write_full(direct->fd, &meta, sizeof(meta));
+		if (ret < 0) {
+			dev_err(direct->dev, "Failed to write metadata to file, %d\n", ret);
+			return ret;
+		}
+	} else {
+		if (!IS_ENABLED(CONFIG_STATE_BACKWARD_COMPATIBLE)) {
+			dev_dbg(direct->dev, "Too small stride size: must skip metadata! Increase stride size\n");
+			return -EINVAL;
+		}
 	}
 
 	ret = write_full(direct->fd, buf, len);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
