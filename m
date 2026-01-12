Delivery-date: Mon, 12 Jan 2026 09:56:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfDjL-000Sp9-0u
	for lore@lore.pengutronix.de;
	Mon, 12 Jan 2026 09:56:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfDjK-0002Il-AA
	for lore@pengutronix.de; Mon, 12 Jan 2026 09:56:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fAPtpQz0S8z+EUw18Nq+CiMaOVIoelAw54KEEHnw1rs=; b=V2c7wGBxoA98jTAodQPETOWY9b
	9JNFTDmbY+ZZOcbnzLWfXQRkCVSWtxZfiziyGG0hrEQt1y6rnrfhwWkqdG9i+dGNSZkyjtNUDmWSW
	8AqIZbfb5am/vlPnrrX3i25K1ZURPXzeJ/ZkybC/yZ9QyntdCgffHEQAPYzffBUQfCol0t1Bp0Z+c
	p9pZf6pz9HDqasVWh/c4BsigBQhO04lCBgWJtcMJGabSSWOyIeKO5lZ2JibPE80j+mnZpleVJW3Cw
	mOxYecXgHcCuL0uyCFiZtcZwAYMHlVuuGsIb4GRMbcZA2u1KXSOMIW4pyU/Oz/Dm4ori5ocnBBZgj
	EC7AwTxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfDiq-000000052Cw-0FMj;
	Mon, 12 Jan 2026 08:56:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfDin-000000052B7-18WU
	for barebox@lists.infradead.org;
	Mon, 12 Jan 2026 08:56:22 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vfDil-0001zv-NR; Mon, 12 Jan 2026 09:56:19 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 12 Jan 2026 09:56:05 +0100
Message-ID: <20260112085617.2952747-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260112085617.2952747-1-a.fatoum@barebox.org>
References: <20260112085617.2952747-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_005621_305305_0E8FFB15 
X-CRM114-Status: GOOD (  10.09  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] commands: md: fix OOB read when mmapping
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

md -s /dev/mmappable.device will read out-of-bounds if the byte count to
read exceeds the device size.

Limit the size read from the memmap to fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 commands/md.c    | 4 ++++
 common/ratp/md.c | 4 ++++
 2 files changed, 8 insertions(+)

diff --git a/commands/md.c b/commands/md.c
index f3758f571fb2..401538d4d8be 100644
--- a/commands/md.c
+++ b/commands/md.c
@@ -25,6 +25,7 @@ static int do_mem_md(int argc, char *argv[])
 	loff_t	start = 0, size = 0x100;
 	int	r, now;
 	int	ret = 0;
+	struct stat st;
 	int fd;
 	char *filename = "/dev/mem";
 	int mode = O_RWSIZE_4;
@@ -54,6 +55,9 @@ static int do_mem_md(int argc, char *argv[])
 		return 1;
 	}
 
+	if (!fstat(fd, &st) && st.st_size != FILE_SIZE_STREAM)
+		size = min(size, st.st_size);
+
 	map = memmap(fd, PROT_READ);
 	if (map != MAP_FAILED) {
 		ret = memory_display(map + start, start, size,
diff --git a/common/ratp/md.c b/common/ratp/md.c
index 8221afaebc22..f3302dedafb7 100644
--- a/common/ratp/md.c
+++ b/common/ratp/md.c
@@ -61,6 +61,7 @@ static int do_ratp_mem_md(const char *filename,
 			  loff_t size,
 			  uint8_t *output)
 {
+	struct stat st;
 	int r, now, t;
 	int ret = 0;
 	int fd;
@@ -73,6 +74,9 @@ static int do_ratp_mem_md(const char *filename,
 		return -errno;
 	}
 
+	if (!fstat(fd, &st) && st.st_size != FILE_SIZE_STREAM)
+		size = min(size, st.st_size);
+
 	map = memmap(fd, PROT_READ);
 	if (map != MAP_FAILED) {
 		memcpy(output, (uint8_t *)(map + start), size);
-- 
2.47.3



