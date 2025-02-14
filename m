Delivery-date: Fri, 14 Feb 2025 10:59:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tisTc-002Dfq-2N
	for lore@lore.pengutronix.de;
	Fri, 14 Feb 2025 10:59:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tisTb-0005Hz-Fp
	for lore@pengutronix.de; Fri, 14 Feb 2025 10:59:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=3OPkwt7p85OI5pANspcVPZ0hUtNWuJl4C9KiiPOms1M=; b=zJqBZGSFUWaXXi5w+mJE+4+ERC
	3OYpZNEO5Adukyko9MiNKQbDlYRx6s27uHKpi8r+3iWF8PxzM7Yf2Kw00MVgZ/HQfzMm/X5R60gft
	DaW1NTTL7FnYvMv+IqX/J74pk09Jew6aP4HPaXpNcqITa2xCIMbG1KOvqfQVjQRYOvj5sGiW8oGP4
	78It6Bqn+xRYRTkqZ76gkz7YX1bi2fbfr77P1YziGg0YrfTJ8nl3pZVlsURLp6z6gg52EOhEPtFyv
	ZJZc6OEVJrZ1ZtJ40ddRZAS289KQQsRFi8yvIWBDTrcxHERCEuRtHKU++F0edaNUXp67HFv+ArEwn
	7NPpwgoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tisSu-0000000EPel-0n0p;
	Fri, 14 Feb 2025 09:58:32 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tisLW-0000000EOSJ-3Vma
	for barebox@bombadil.infradead.org;
	Fri, 14 Feb 2025 09:50:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=3OPkwt7p85OI5pANspcVPZ0hUtNWuJl4C9KiiPOms1M=; b=VFyDK1hprX6weB8RVPYAIaeeyG
	zfq4ztxkl2hKCj0yfyKdj4sbTjaKCcE+JRd2dZ7OqnMBGNIMomSiy/uGhO7QAM/t20E/DznuMbn1B
	DxBSQijghuEzaXhka5na+58Ty2FIHwDWJ/aCk9SWmxb1t87rAcCzndaKONp/n14V7fgBnyRQI60Ay
	AKmHu4RIMTO++rMXumCwyS6MDudsx0Qk1QJRUxDIquWG8v8+g65qq0S9UtMe7CkCAqtXiyjQ/GGRQ
	CcRtpoFV3+9avBcpUCDkJYWxxcMyJUJxWp/SMvUQQHYCKEYjpJSZWqj9HkF5rZPbPLxyFlyXFgAGO
	22p2kLlA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tisLT-00000001Dqh-3vrn
	for barebox@lists.infradead.org;
	Fri, 14 Feb 2025 09:50:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tisLT-0003QL-F9; Fri, 14 Feb 2025 10:50:51 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tisLT-000tZm-0t;
	Fri, 14 Feb 2025 10:50:51 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tisLT-00BxHL-0b;
	Fri, 14 Feb 2025 10:50:51 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 14 Feb 2025 10:50:50 +0100
Message-Id: <20250214095050.2849460-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250214_095052_122837_86E5C429 
X-CRM114-Status: GOOD (  15.48  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] nfs: add $global.net.nfsport override
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Since commit 3ea30d9ce892 ("nfs: parse nfsport and mount port from file
system options"), it's possible to hard code the ports used for NFS,
which is especially useful when talking to a non-kernel NFS daemon
like unfsd.

Add a way to change the NFS port for the /mnt/nfs automount automount to
make this feature more accessible.

A simple one-time configuration can now look like this:

  $ nv user=afa
  $ nv net.server=mydevmachine
  $ nv net.nfsport=2049
  $ nv boot.default=/mnt/nfs

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/nfs.c | 55 ++++++++++++++++++++++++++++++++++++-------------------
 1 file changed, 36 insertions(+), 19 deletions(-)

diff --git a/fs/nfs.c b/fs/nfs.c
index 9785a313d831..fb76c205db26 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -34,6 +34,7 @@
 #include <byteorder.h>
 #include <globalvar.h>
 #include <parseopt.h>
+#include <magicvar.h>
 
 #define SUNRPC_PORT     111
 
@@ -1390,6 +1391,7 @@ static const struct super_operations nfs_ops = {
 };
 
 static char *rootnfsopts;
+static int nfsport_default;
 
 static void nfs_set_rootarg(struct nfs_priv *npriv, struct fs_device *fsdev)
 {
@@ -1467,30 +1469,41 @@ static int nfs_probe(struct device *dev)
 	/* Need a priviliged source port */
 	net_udp_bind(npriv->con, 1000);
 
-	parseopt_hu(fsdev->options, "mountport", &npriv->mount_port);
-	if (!npriv->mount_port) {
-		ret = rpc_lookup_req(npriv, PROG_MOUNT, 3);
-		if (ret < 0) {
-			printf("lookup mount port failed with %d\n", ret);
-			goto err2;
+	if (nfsport_default == 0) {
+		parseopt_hu(fsdev->options, "mountport", &npriv->mount_port);
+		if (!npriv->mount_port) {
+			ret = rpc_lookup_req(npriv, PROG_MOUNT, 3);
+			if (ret < 0) {
+				printf("lookup mount port failed with %d\n", ret);
+				goto err2;
+			}
+			npriv->mount_port = ret;
+		} else {
+			npriv->manual_mount_port = 1;
 		}
-		npriv->mount_port = ret;
-	} else {
-		npriv->manual_mount_port = 1;
-	}
-	debug("mount port: %hu\n", npriv->mount_port);
 
-	parseopt_hu(fsdev->options, "port", &npriv->nfs_port);
-	if (!npriv->nfs_port) {
-		ret = rpc_lookup_req(npriv, PROG_NFS, 3);
-		if (ret < 0) {
-			printf("lookup nfs port failed with %d\n", ret);
-			goto err2;
+		parseopt_hu(fsdev->options, "port", &npriv->nfs_port);
+		if (!npriv->nfs_port) {
+			ret = rpc_lookup_req(npriv, PROG_NFS, 3);
+			if (ret < 0) {
+				printf("lookup nfs port failed with %d\n", ret);
+				goto err2;
+			}
+			npriv->nfs_port = ret;
+		} else {
+			npriv->manual_nfs_port = 1;
 		}
-		npriv->nfs_port = ret;
 	} else {
-		npriv->manual_nfs_port = 1;
+		if (nfsport_default > U16_MAX) {
+			printf("invalid NFS port: %d\n", nfsport_default);
+			return -EINVAL;
+		}
+
+		npriv->mount_port = npriv->nfs_port = nfsport_default;
+		npriv->manual_nfs_port = npriv->manual_mount_port = 1;
 	}
+
+	debug("mount port: %hu\n", npriv->mount_port);
 	debug("nfs port: %d\n", npriv->nfs_port);
 
 	ret = nfs_mount_req(npriv);
@@ -1555,7 +1568,11 @@ static int nfs_init(void)
 	rootnfsopts = xstrdup("v3,tcp");
 
 	globalvar_add_simple_string("linux.rootnfsopts", &rootnfsopts);
+	globalvar_add_simple_int("net.nfsport", &nfsport_default, "%d");
 
 	return register_fs_driver(&nfs_driver);
 }
 coredevice_initcall(nfs_init);
+
+BAREBOX_MAGICVAR(global.net.nfsport,
+		 "Sets both NFS -o {port.mountport}= to the specified non-zero value");
-- 
2.39.5



