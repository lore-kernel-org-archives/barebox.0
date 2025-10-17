Delivery-date: Fri, 17 Oct 2025 14:04:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v9jCa-008ofA-2y
	for lore@lore.pengutronix.de;
	Fri, 17 Oct 2025 14:04:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v9jCa-0003Ir-Aq
	for lore@pengutronix.de; Fri, 17 Oct 2025 14:04:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=atfafBOVsh9jEUh89uxe4ACf0nXaZRWyVMGUsWP+E9U=; b=bvi5enLoSKDAS6hLOPLYH4fTcp
	IE5dRlZ5r4AvJPKDcJOJ4Q50NN0pKWF3ZTFD/NHjlGNOeXvGLWxzfhfXgEEdxq8GgUEGOqF0E85LR
	IU8bgnoJbAkJxGNw+WE8dxqLLI+NCT8QKw2FMI02KD4tB1dlWJhDrjNXRtWDMHx09STCrjBzUzJBa
	JtWIh5NhgCHVOIoUaTnZcIe3J2f2g9DrgZXkkGOapcAe+c7WGB8DNfWmCxRQp2ftWVagCbYc+1BIO
	Xx1mZ4rlnuARn84yGw31hp31gD4aNygEMs83a9XD0lMeiN32yYFX2feMFdaWOAsaLbs2RV51u//i0
	eD0JMJYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9jC2-00000007kmY-28OP;
	Fri, 17 Oct 2025 12:04:22 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9jC1-00000007kkx-0jOU
	for barebox@bombadil.infradead.org;
	Fri, 17 Oct 2025 12:04:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=atfafBOVsh9jEUh89uxe4ACf0nXaZRWyVMGUsWP+E9U=; b=rNz21nrSY47Cw+0MozwzcUworw
	2yCjU9uryL5PFpLwm+u1zNrL0BNw12/3aI2SQNyD8AhpFgTZVHxBxObQkUhLBTSko1L+ZIP0KC+xQ
	T0xsR39ACVz4lz9ZkUQ4HSyJO47PWQrVYsR7WmUX5l8+Gp/t1K0D8KCyyiibfb2pln3anilyciMYL
	RBj0KEHy8pxjoLzMe6miZgA3DdQgBhfEwZG7iAjwd2PNBOhsHAFvDqw+SGACvEdlavKcCglxAHs20
	6Mbk54oNWWeWtXTGptuHpJ8DwztjiU/n0E6rSj/GnAXQUVwILmRYuUO7Tfj/OZ99Pl8HiNXB3//Pa
	4hU4l+Mw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9jBy-00000007YaZ-1Aum
	for barebox@lists.infradead.org;
	Fri, 17 Oct 2025 12:04:20 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1v9jBr-000320-EZ
	for barebox@lists.infradead.org; Fri, 17 Oct 2025 14:04:11 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 17 Oct 2025 14:03:35 +0200
Message-ID: <20251017120406.1348897-3-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251017120406.1348897-1-m.felsch@pengutronix.de>
References: <20251017120406.1348897-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251017_130418_451846_7E01CEB0 
X-CRM114-Status: GOOD (  12.33  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] lib: hexdump: make use of pr_debug
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The hexdump library was ported from Linux which supports different
printk() level. Because the barebox print* facility is different
compared to the one from Linux the barebox printk() doesn't support
levels. Therefore the level is always set to an empty string.

Furthermore all barebox printk() calls aren't recorded by the internal
barebox_logbuf because they are mostly used for command prints. Linux on
the other hand record each printk() print.

Not recording the output can be an issue on systems which don't have a
hw-console but a USB-ACM console, because the hexdump call may already
occurred before the console was ready.

Make use of pr_debug() instead to record the output within the
barebox_logbuf to be available later on via dmesg. Using pr_debug()
should be fine since it is mostly used for debugging/development
purpose.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 lib/hexdump.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/lib/hexdump.c b/lib/hexdump.c
index 940c4eec64e9..ab5e3cf727ec 100644
--- a/lib/hexdump.c
+++ b/lib/hexdump.c
@@ -284,16 +284,13 @@ void dev_print_hex_dump(struct device *dev, const char *level,
 
 		switch (prefix_type) {
 		case DUMP_PREFIX_ADDRESS:
-			printk("%s%s%s%p: %s\n", level, name, prefix_str,
-			       ptr + i, linebuf);
+			pr_debug("%s%s%p: %s\n", name, prefix_str, ptr + i, linebuf);
 			break;
 		case DUMP_PREFIX_OFFSET:
-			printk("%s%s%s%.8x: %s\n", level, name, prefix_str,
-			       i, linebuf);
+			pr_debug("%s%s%.8x: %s\n", name, prefix_str, i, linebuf);
 			break;
 		default:
-			printk("%s%s%s%s\n", level, name, prefix_str,
-			       linebuf);
+			pr_debug("%s%s%s\n", name, prefix_str, linebuf);
 			break;
 		}
 	}
-- 
2.47.3



