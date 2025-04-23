Delivery-date: Wed, 23 Apr 2025 19:41:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7e6A-004c1s-0J
	for lore@lore.pengutronix.de;
	Wed, 23 Apr 2025 19:41:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7e69-0003Pp-5B
	for lore@pengutronix.de; Wed, 23 Apr 2025 19:41:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NVSuaqYGnWjHklDHVuf4HZQj8bpYZXXqtwFaJqGYZ2A=; b=fWTMqK6Z+2Ya2yj38El4kKkn+5
	nZtv3uU7D7wlbrCSwor73L7Euaghl5ef8q3Ta0uzj8XmWQ7Vb+NODcBCm+L8VrzDGOYsA5Mr6mzCv
	3Vb+zCPVZjHSpaXaJTuBCwzJZ3cxa9XPJseu26ZwORDzpbCCj0kWfKu8znAfNyia0c+OhVwwNdE1K
	Fsf24cuViBd3w/V2+2XfjBpRTmylk/8M2oyzzcj1vU7evVAcgka65knFsDhyX7wlRg20j8Ydoh6Lg
	yMPqdkzj2miM67e1l/z8w5rVDUBLPN2wHrbSRjjU5vKXBBFz4tW6SoxNy5tm5q6qnqY5V3ETTedvz
	IDno3Trw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7e5P-0000000BIPI-0s4t;
	Wed, 23 Apr 2025 17:40:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7amy-0000000AmGp-0MoD
	for barebox@lists.infradead.org;
	Wed, 23 Apr 2025 14:09:26 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1u7amv-0003Wg-0b
	for barebox@lists.infradead.org; Wed, 23 Apr 2025 16:09:21 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 23 Apr 2025 16:09:12 +0200
Message-Id: <20250423140913.1530237-3-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250423140913.1530237-1-m.felsch@pengutronix.de>
References: <20250423140913.1530237-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250423_070924_128005_3E65D60B 
X-CRM114-Status: GOOD (  15.61  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/4] defaultenv-2: add support to automatically create an initial GPT table
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds the support to automatically create a minimal GPT table.

gpt-add: A script to add a minimal GPT table compatible to i.MX3/5/6/7
devices. The initial GPT only contains a barebox-environment partition.
The script checks for the bootsource to decide the GPT location.

gpt-rm: A script to remove the GPT header and the protective MBR. The
script checks for the bootsource to decide which GPT should be scrubbed.

bbenv-gpt: An initscript which checks for a barebox-environment
partition if booted from MMC. If no parition was found the script
triggers the gpt-add script.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
v2:
- new

 defaultenv/defaultenv-2-base/bin/gpt-add    | 40 +++++++++++++++++++++
 defaultenv/defaultenv-2-base/bin/gpt-rm     | 10 ++++++
 defaultenv/defaultenv-2-base/init/bbenv-gpt | 16 +++++++++
 3 files changed, 66 insertions(+)
 create mode 100644 defaultenv/defaultenv-2-base/bin/gpt-add
 create mode 100644 defaultenv/defaultenv-2-base/bin/gpt-rm
 create mode 100644 defaultenv/defaultenv-2-base/init/bbenv-gpt

diff --git a/defaultenv/defaultenv-2-base/bin/gpt-add b/defaultenv/defaultenv-2-base/bin/gpt-add
new file mode 100644
index 000000000000..fa61b1929e20
--- /dev/null
+++ b/defaultenv/defaultenv-2-base/bin/gpt-add
@@ -0,0 +1,40 @@
+#!/bin/sh
+
+bootdev="/dev/${bootsource}${bootsource_instance}"
+yesno=""
+
+if [ ${bootsource} != "mmc" ]; then
+	exit 0
+fi
+
+# If successful, there is already a GPT or MBR header
+# TODO: Add hush redirect support to avoid user confusion
+if parted ${bootdev} print; then
+	exit 0
+fi
+
+readline "Create an initial GPT for barebox? [y|N]: " yesno
+
+# No per default
+if [ "${yesno}" == "" ]; then
+	exit 0
+elif [ "${yesno}" == "n" ]; then
+	exit 0
+fi
+
+# Check for other user input than 'y'
+if [ "${yesno}" != "y" ]; then
+	echo "Unkown value, only 'y' and 'n' are supported"
+	exit 1
+fi
+
+# Make a default GPT table, with the GPT partition entrie array starting at 2MiB
+# to have enough space for barebox at the beginning and to overcome legacy
+# platforms like i.MX3/5/6.
+parted ${bootdev} mklabel gpt 2MiB || gpt-rm
+
+# Add a barebox environment partition with the size of 1MiB which should be
+# enough for development.
+parted ${bootdev} mkpart barebox-environment bbenv 3MiB 4MiB || gpt-rm
+
+parted ${bootdev} refresh
diff --git a/defaultenv/defaultenv-2-base/bin/gpt-rm b/defaultenv/defaultenv-2-base/bin/gpt-rm
new file mode 100644
index 000000000000..e45c79395504
--- /dev/null
+++ b/defaultenv/defaultenv-2-base/bin/gpt-rm
@@ -0,0 +1,10 @@
+#!/bin/sh
+
+bootdev="/dev/${bootsource}${bootsource_instance}"
+
+if [ ${bootsource} != "mmc" ]; then
+	exit 0
+fi
+
+# Remove protective MBR and GPT from boot device
+memset -d ${bootdev} 0x100 0x0 0x300
diff --git a/defaultenv/defaultenv-2-base/init/bbenv-gpt b/defaultenv/defaultenv-2-base/init/bbenv-gpt
new file mode 100644
index 000000000000..6756cac9885e
--- /dev/null
+++ b/defaultenv/defaultenv-2-base/init/bbenv-gpt
@@ -0,0 +1,16 @@
+#!/bin/sh
+
+bbenvpart="/dev/${bootsource}${bootsource_instance}.barebox-environment"
+
+if [ ${bootsource} != "mmc" ]; then
+	exit 0
+fi
+
+# TODO:
+# Add command support to search for a given GPT PartUUID on a block device to
+# be partition name independent.
+if [ -e ${bbenvpart} ]; then
+	exit 0
+fi
+
+gpt-add
-- 
2.39.5



