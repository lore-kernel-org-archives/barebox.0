Delivery-date: Wed, 12 May 2021 07:51:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lghmp-0005OM-0w
	for lore@lore.pengutronix.de; Wed, 12 May 2021 07:51:59 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lghmm-0006jX-A9
	for lore@pengutronix.de; Wed, 12 May 2021 07:51:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dQbeZcZL8UsTRQuAMj6uHq6Ludf5VXt3GorfDH4vx1w=; b=fLyW3mwqLf+sn5
	NFD6c2N/rmcdutJybKBGYHFANDDG6ra/qteIu8YDqJ5LoHGDRppMAVcOP2jPZRW99KwK1lK6U7O2G
	I7WCLxwr5OPXeqKLOrCae/18W24dICMMhNJPVvi8xix9r3kmPf3SI+m+sNlFxUbaVQYE6OPTIQgBb
	sG4P/G01YstW1f4n0+/s0GP5a5enwx+IFvFcZvbcjkFw6fT0PErn/a8iUGVrJqUDeYykpBCqW74Ja
	PzqcH7TWvnvhTR4LnsDJw7A10wGYsRD46dWBbGrBR4GM1NVO1Z256XMDx7muC4V4WTW/qavlYipSD
	YZ5Hw82fJTt2Je8ActNA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lghlc-0026bn-NM; Wed, 12 May 2021 05:50:44 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lghlY-0026bV-4X
 for barebox@desiato.infradead.org; Wed, 12 May 2021 05:50:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=JCG1sRjfB4Dn7OtQRW1yvW56/dQLIkicRJ2MAhiDc/A=; b=xqvj0aHs1FQfNRHwu2+SHu9VNk
 3FMKV+nF7iRwXf3zmALys2GOjK50NshczbbUde5MQX4GNoxbwhc81U30dzYUC7ZUbil+84+rIUFKv
 IBCHvx5oPN72CNg+LAtRuRQ6wnvKbIps2Arp+91M7RvcypYo0G57klFRuFd8f6wyLEt1sPoGFFv9i
 mKv6FZQKUyEZZ1+YEv8sw+qfNcPzF1iIIGJeD/akz0n/SEOyCYxaDeyY8jnlzIuDf+lP6hQHAYSBK
 uiirmPXH5y/eeStMCBugbM0T/T0B/ukucuNBnDULhYOvRsYgU85J0C4hbyXS5HMaV85i8aGuvHGHM
 pF47/tfA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lghlV-00A85k-F4
 for barebox@lists.infradead.org; Wed, 12 May 2021 05:50:38 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lghlT-0006Tz-UP; Wed, 12 May 2021 07:50:35 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lghlT-0003su-MG; Wed, 12 May 2021 07:50:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 12 May 2021 07:50:34 +0200
Message-Id: <20210512055034.14752-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210511_225037_525167_7571065B 
X-CRM114-Status: GOOD (  11.07  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: at91: boot_test_cmd: Fix compiler warning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Use a signed type to test against negative return values from write().
While at it, reduce the scope of 'tmp'.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-at91/boot_test_cmd.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm/mach-at91/boot_test_cmd.c b/arch/arm/mach-at91/boot_test_cmd.c
index 4fd1998ad0..7bb40f2e40 100644
--- a/arch/arm/mach-at91/boot_test_cmd.c
+++ b/arch/arm/mach-at91/boot_test_cmd.c
@@ -24,7 +24,6 @@ static int do_at91_boot_test(int argc, char *argv[])
 	int ret = 1;
 	char *sram = "/dev/sram0";
 	u32 read_size, write_size;
-	u32 tmp = 0;
 
 	while ((opt = getopt(argc, argv, "j:s:")) > 0) {
 		switch (opt) {
@@ -64,7 +63,7 @@ static int do_at91_boot_test(int argc, char *argv[])
 	}
 
 	while (write_size) {
-		tmp = write(fd, buf, write_size);
+		int tmp = write(fd, buf, write_size);
 		if (tmp < 0) {
 			perror("write");
 			goto err_open;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

