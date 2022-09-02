Delivery-date: Fri, 02 Sep 2022 12:06:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oU3ZJ-004HpV-R6
	for lore@lore.pengutronix.de; Fri, 02 Sep 2022 12:06:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oU3ZK-0008Sy-Jf
	for lore@pengutronix.de; Fri, 02 Sep 2022 12:06:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=diQCUFaqRjPmMRfjerntz/N6TgZnhd6AaWsB48hQFH0=; b=TzL3gR77WM8yccDSiqfTgU9eFq
	8U19F6irv9I8SVUPTmHM6mozeJ+pd4Mcu+/Q5u0bFyWDGPKfrrpoQVC+ZLHXdKoLvHxXcsSaP8Eb5
	cdASP9DxUyf3lK3ye8Sca1HJnExz3oU20iuX1/FGBW03NCHBvDLsV18lfEZ98X8lRoU34BKsQjpgz
	ShqLSxlBTJRjfGHz6leL/LSiylFUiKSJKgxQ+2C7OXkIioBpVt/Tuek9yYZPkfN/M/c/mHahlJjRb
	kHnl6I5iPimfOvf5CS8sGTOtNB6xCaIpUG5IXeUgagTyAWXlEfOknkKWTMLNoSRJyzkAhQ/0qvii7
	j1tggFlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oU3Xv-0037Nk-5c; Fri, 02 Sep 2022 10:05:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oU3Xq-0037LK-Nc
	for barebox@lists.infradead.org; Fri, 02 Sep 2022 10:05:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oU3Xo-000892-RJ; Fri, 02 Sep 2022 12:05:00 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oU3Xm-003TAp-9Q; Fri, 02 Sep 2022 12:05:00 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oU3Xn-00Athc-59; Fri, 02 Sep 2022 12:04:59 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  2 Sep 2022 12:04:58 +0200
Message-Id: <20220902100458.2597350-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220902_030502_788498_DD84BDE1 
X-CRM114-Status: GOOD (  10.60  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] commands: mm: don't ignore pread() errors for larger access sizes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Error check was before pread was called and because ret was initialized,
compiler didn't warn about it. Fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/mm.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/commands/mm.c b/commands/mm.c
index 9ce883964485..8fe87a80a18e 100644
--- a/commands/mm.c
+++ b/commands/mm.c
@@ -16,7 +16,7 @@
 
 static int do_mem_mm(int argc, char *argv[])
 {
-	int ret = 0;
+	int ret;
 	int fd;
 	char *filename = "/dev/mem";
 	int mode = O_RWSIZE_4;
@@ -65,9 +65,9 @@ static int do_mem_mm(int argc, char *argv[])
 			goto out_write;
 		break;
 	case O_RWSIZE_4:
+		ret = pread(fd, &val32, 4, adr);
 		if (ret < 0)
 			goto out_read;
-		ret = pread(fd, &val32, 4, adr);
 		val32 &= ~mask;
 		val32 |= (value & mask);
 		ret = pwrite(fd, &val32, 4, adr);
@@ -75,9 +75,9 @@ static int do_mem_mm(int argc, char *argv[])
 			goto out_write;
 		break;
 	case O_RWSIZE_8:
+		ret = pread(fd, &val64, 8, adr);
 		if (ret < 0)
 			goto out_read;
-		ret = pread(fd, &val64, 8, adr);
 		val64 &= ~mask;
 		val64 |= (value & mask);
 		ret = pwrite(fd, &val64, 8, adr);
-- 
2.30.2



