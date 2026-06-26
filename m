Delivery-date: Fri, 26 Jun 2026 10:46:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd2D6-00A0zu-0B
	for lore@lore.pengutronix.de;
	Fri, 26 Jun 2026 10:46:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd2Cw-0005Cj-Je
	for lore@pengutronix.de; Fri, 26 Jun 2026 10:46:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FkIa/wXBu55/t4geWoocQSFZiqX2scZtjMJ+Z3rgQDY=; b=l4CW4v3eyLYHVheKE+O1FNK8/2
	ummK7cL8eO9LO8O7c5vHUaSIE6QqYTLpz1svnPSZlBh23I/GHUNWABmU0/lKMprbU0soNzohcj7nh
	WYvofAqWzXGLoshXJzhhTshFhuQsYrhCtBvjrumuTzW3BVImt16ViLz0/aZFAx1oDlWsQ9/b7w9xo
	7BDmk5UWe2n8R1SFDC/os9TpSYk/e0/qz2+oYXBeKOL2MqZQul5bZY+Nh42ioDfkTMKyr2MuT5yW3
	+CE/iiGjjaSFqsDj+HK2MDZh0WZLGrqnN3wK9F5V+Uho1GFGAfRHqtzpD4q/0dcbQ67xWR3ThUonq
	anavP6iA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd2Ce-0000000AtHc-3M3s;
	Fri, 26 Jun 2026 08:46:24 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd2Cb-0000000AtDJ-2E9s
	for barebox@bombadil.infradead.org;
	Fri, 26 Jun 2026 08:46:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=FkIa/wXBu55/t4geWoocQSFZiqX2scZtjMJ+Z3rgQDY=; b=bCZpsLj5wSGPtOSQnpE1f4FzFS
	gnjCuTkWFxeFhcG7rpOh2ElD1KE92gSkZkjHfBvvssZpW01j2JIoYGeNw/pX77U003LvGzRjAHmPv
	jw5z9oDFTxdBMnKMMW86pDoOMf1ZG/dk9KP/oIPpuyF+aPlyvDXl/DwQbESCXHvK4Bnq2tZMEy6g5
	4LkwRJpccSx8/B7dfWk/vNMQAzgBy4R6/5hojKHdxXtLOzw0psDQnt2X85oLrvYUW2PYRyYIh/6L7
	UUc7m26HUwNpZ9yWnf4WhEjiepZc1FcJzfcun8sWyrh4zfD1RDMazGPaZwcHVTly0kxm5nY9JLiXg
	gfy7FqaQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wd2CY-00000004cls-1Q1B
	for barebox@lists.infradead.org;
	Fri, 26 Jun 2026 08:46:20 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wd2CU-0003ZP-Ew; Fri, 26 Jun 2026 10:46:14 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 26 Jun 2026 10:42:24 +0200
Message-ID: <20260626084608.1388806-14-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260626084608.1388806-1-a.fatoum@barebox.org>
References: <20260626084608.1388806-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_094618_432158_A3D9F5E0 
X-CRM114-Status: GOOD (  10.37  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 13/26] bootscan: use block size for partition table probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With 4k byte sectors, LBA1, which would contain the GPT magic string
would start at offset 4096, which is well outside the 2048 bytes that
FILE_TYPE_SAFE_BUFSIZE expands to.

Fix this by always reading at least the first two LBAs with the block
size reported by the block device.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/bootscan.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/common/bootscan.c b/common/bootscan.c
index 5b70024a75aa..60eeb06b65c2 100644
--- a/common/bootscan.c
+++ b/common/bootscan.c
@@ -8,6 +8,7 @@
 #include <fs.h>
 #include <linux/stat.h>
 #include <linux/err.h>
+#include <linux/minmax.h>
 #include <mtd/ubi-user.h>
 #include <uapi/spec/dps.h>
 
@@ -86,6 +87,7 @@ int boot_scan_cdev(struct bootscanner *scanner,
 		   bool autodiscover)
 {
 	int ret, found = 0;
+	unsigned int blocksize;
 	size_t bufsize, readsize;
 	void *buf;
 	enum filetype type, filetype;
@@ -98,7 +100,8 @@ int boot_scan_cdev(struct bootscanner *scanner,
 		return 0;
 	}
 
-	bufsize = FILE_TYPE_SAFE_BUFSIZE;
+	blocksize = cdev_blocksize(cdev);
+	bufsize = max_t(size_t, FILE_TYPE_SAFE_BUFSIZE, 2 * blocksize);
 
 	buf = xzalloc(bufsize);
 
@@ -110,7 +113,7 @@ int boot_scan_cdev(struct bootscanner *scanner,
 
 	readsize = ret;
 
-	type = file_detect_partition_table(buf, readsize, SECTOR_SIZE);
+	type = file_detect_partition_table(buf, readsize, blocksize);
 	filetype = file_detect_type(buf, readsize);
 	free(buf);
 
-- 
2.47.3



