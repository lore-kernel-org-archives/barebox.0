Delivery-date: Fri, 28 Jan 2022 09:02:17 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nDMD3-00FlmM-Nz
	for lore@lore.pengutronix.de; Fri, 28 Jan 2022 09:02:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nDMD2-0007nf-4K
	for lore@pengutronix.de; Fri, 28 Jan 2022 09:02:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=L4l+xq89EI9WvJKGAZc3vnFtLi9zLJpBZI2QyMm9t9c=; b=T12QuBjTLnVPvB
	KGUxFdJtHgJg1+QRklRIGYhqOtL3NKdHtWaodJtwBji4v1vr7g7693Y+W+ID3tE8uvCXa5lg7zZuA
	Y4rZmEE/RxpTV3DMKeSEftO88AVde27hdLgebl8WQ/i3hXnxGsacD9aP8VU76ZZ7SFf/5Nj/2/z6F
	b+E7O6SR92NVmBHuSueHsEir8CkRyUcBPbBDUzlBgnk7wCl5sr0Ho7IXkYlqJrRlJcfnuM/sBitCN
	BArMQooqvJMO6mkYWp0CqaG1q1dTVPOQyvStAs+HegByLXT4A7HbTlEWIx/DsrrfWjspN7cOmIW3J
	Ctz+yZrwJFxhNwpXgs8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nDMBd-000vhU-B3; Fri, 28 Jan 2022 08:00:49 +0000
Received: from cpanel.siel.si ([46.19.9.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nDMBY-000vh3-ET
 for barebox@lists.infradead.org; Fri, 28 Jan 2022 08:00:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com; 
 s=default;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=j0vNKS9EsHi4eBZMNFjFGTc92WKCVU0KIqeL8saWEV0=; b=S81S7BXAxZI7YWtm/zbtGN1Y3g
 3HIZX+MjtIS4igzinoixGh+L+m8Ds+4oIkVkZMcJnUqlBmSYCghY819BSL444nN+xprzsy2tD+fqq
 alwlJC/G7GC5LnK6LPO3bACLIDo744UrJ3zy+MB0G3qh1mXkezimLITDxwaVY8h5Uuc9AZzdaQYfx
 Fn3eB+Qf6T4kq4b73GRdoSvoTZ5YkWkxWLDJbcqu0RBvmb7jaDUAnpoDgI94R+qt9PB5PfNnrY/gf
 84hGO238NNPGL2JtpMY/DcbJlTW5L8QNwo29BFcVHfZGZ7Kic2dFd7llNDj/JSpvKsSIKr6/yvX9p
 1GCeJeUw==;
Received: from [89.212.21.243] (port=48078 helo=localhost.localdomain)
 by cpanel.siel.si with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
 (envelope-from <andrej.picej@norik.com>) id 1nDMBJ-00FIMn-7B
 for barebox@lists.infradead.org; Fri, 28 Jan 2022 09:00:36 +0100
From: Andrej Picej <andrej.picej@norik.com>
To: barebox@lists.infradead.org
Date: Fri, 28 Jan 2022 09:00:33 +0100
Message-Id: <20220128080033.167251-1-andrej.picej@norik.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel.siel.si
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cpanel.siel.si: authenticated_id:
 andrej.picej@norik.com
X-Authenticated-Sender: cpanel.siel.si: andrej.picej@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220128_000044_849450_7CC9569E 
X-CRM114-Status: UNSURE (   6.43  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] scripts/common: fix write_file when opened with mmap
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Usage of bareboximd with -c option (Create checksum for FILE and write
it to the crc32 tag) was broken. Possibly by applying 2154de1cf36c
(bareboximd: Use mmap when possibly). The script fails with:

    $ ./scripts/bareboximd -c images/<barebox-image.img>
    Cannot write to images/<barebox-mage.img>: Bad address
    CRC: write crc token to images/<barebox-image.img> failed: -14
    Bad address

This has to do with the usage of "mmap" and "open" with O_TRUNC flag
which truncates the file length to 0. Writing to files fails with:
EFAULT (14) buf is outside your accessible address space.
Remove the truncate flag and truncate manually after writing the data.

This fixes the bareboximd script, which is now again usable with -c
option.

Signed-off-by: Anze Lesnik <anze.lesnik@norik.com>
Signed-off-by: Andrej Picej <andrej.picej@norik.com>
---
 scripts/common.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/scripts/common.c b/scripts/common.c
index 3f8dcd2d38..331988d593 100644
--- a/scripts/common.c
+++ b/scripts/common.c
@@ -107,7 +107,7 @@ int write_file(const char *filename, const void *buf, size_t size)
 	int fd, ret = 0;
 	int now;
 
-	fd = open(filename, O_WRONLY | O_TRUNC | O_CREAT,
+	fd = open(filename, O_WRONLY | O_CREAT,
 		  S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH);
 	if (fd < 0) {
 		fprintf(stderr, "Cannot open %s: %s\n", filename, strerror(errno));
@@ -126,6 +126,11 @@ int write_file(const char *filename, const void *buf, size_t size)
 		buf += now;
 	}
 
+	if (ftruncate(fd, now) < 0) {
+		fprintf(stderr, "Cannot truncate file: %s", strerror(errno));
+		ret = -errno;
+	}
+
 out:
 	close(fd);
 
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

