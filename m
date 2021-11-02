Delivery-date: Tue, 02 Nov 2021 14:25:00 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mhtme-00044V-TM
	for lore@lore.pengutronix.de; Tue, 02 Nov 2021 14:25:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mhtmd-0006bC-TF
	for lore@pengutronix.de; Tue, 02 Nov 2021 14:25:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=J4fH0kyQcGrIrT4VxUzy0kfGftxkNsAlN5Oqt9YhLNc=; b=jEg3GBjmG2VMWp
	ApBMmdNNHA1LVO1oJauTNK5OuueJ5Qxk6pkKPWWghzFKOhFZy1lB+f9XrWS/B0/u2e6lshLayX2uc
	DcwnQGBj5u4+xH78qaEcKhrOMoCwmRf4AurFa5xWoDCXIZp6b6anK3aNuSRAKC+rxkxqS6ddAev8J
	LUbdcRYALQaxxJZ0XfqTfSmyNHYPRxNbhGcGVHyZOIXhxXFWrN3VsRZ9iNKfq00cnXIR+P6tYY8HU
	2mJ95eqrTNk+rdE/h/NLAQAC1tlT+Hftsj8jO0Ek8At9dZ2H6ElC+tNPX6RQVwZzfN7uELgQK+wOv
	wgWHWcexBagC0YL7Ns/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mhtku-001nVX-Lr; Tue, 02 Nov 2021 13:23:12 +0000
Received: from smtpout140.security-mail.net ([85.31.212.146]
 helo=fx601.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mhtkp-001nT6-0t
 for barebox@lists.infradead.org; Tue, 02 Nov 2021 13:23:09 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx601.security-mail.net (Postfix) with ESMTP id A156E3ACE9A
 for <barebox@lists.infradead.org>; Tue,  2 Nov 2021 14:23:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1635859381;
 bh=xEz9FVU2Ep2DcPVG0X1UepDRc4R3npANBeHpEeEKRKM=;
 h=From:To:Cc:Subject:Date;
 b=HZi+JZPUgMIFAwUKkPmwNYOko5A3l44VwM9+FbOBcgATQQWYsmwWFV2jkSXGP80X1
 KEx6e3D/pZeXQhZm6EsntUpuzQQDpgRKg9p4PFd43bn6IBIEDYlW4UrrqLZPJ5Sw6B
 NIcTVhnE/pjM+G/9XJEY4/VvcL86zPG1IrUMiiv0=
Received: from fx601 (localhost [127.0.0.1])
 by fx601.security-mail.net (Postfix) with ESMTP id 35F9E3ACE8E
 for <barebox@lists.infradead.org>; Tue,  2 Nov 2021 14:23:01 +0100 (CET)
X-Virus-Scanned: E-securemail
Secumail-id: <12298.61813bb4.e3762.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by fx601.security-mail.net (Postfix) with ESMTPS id E540C3ACE9A
 for <barebox@lists.infradead.org>; Tue,  2 Nov 2021 14:23:00 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTPS id C507227E0350;
 Tue,  2 Nov 2021 14:23:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id AE7B827E0385;
 Tue,  2 Nov 2021 14:23:00 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu AE7B827E0385
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1635859380;
 bh=ZyGe4dXCJRhJjQ7zWZq/4aGsDQs2UpcJhR7NppbuDLk=;
 h=From:To:Date:Message-Id;
 b=W/sovAJJ0GjnwopFWZlJrj0utrzDAfTVqPPg+KW+C28wrlhc4rSGdL6mN8YSFee6q
 wbBfht6FG/0i0rbw+KjJSqs0AS0hAUndl8VWSfAvrp+XUS914kiX67BoQEnj5b5rTp
 8JxImX3tr+9ylHyKTq9gxHwNfhuYA/ipMnpCtD/Q=
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 1rgRw4g1Tl0f; Tue,  2 Nov 2021 14:23:00 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 9580A27E0350;
 Tue,  2 Nov 2021 14:23:00 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Tue,  2 Nov 2021 14:22:47 +0100
Message-Id: <20211102132247.24080-1-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: by Secumail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211102_062307_408261_05696116 
X-CRM114-Status: GOOD (  12.25  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] memory commands: Improve command documentation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The quad write flags was missing from memory command usage.
Make the -s/-d options expecting an argument more clean from the usage line.
Reword some command help to make them more easier to use. For instance the
memcpy command help was a bit misleading on the uses for SRC/DEST with a
source/dest file. Some users were being confused by SRC/DEST being offsets.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 commands/md.c     | 4 ++--
 commands/memcmp.c | 2 +-
 commands/memcpy.c | 6 ++++--
 commands/memset.c | 2 +-
 commands/mm.c     | 2 +-
 commands/mw.c     | 7 ++++++-
 6 files changed, 15 insertions(+), 8 deletions(-)

diff --git a/commands/md.c b/commands/md.c
index d80c7cca0c..7a96634e27 100644
--- a/commands/md.c
+++ b/commands/md.c
@@ -88,7 +88,7 @@ out:
 
 
 BAREBOX_CMD_HELP_START(md)
-BAREBOX_CMD_HELP_TEXT("Display (hex dump) a memory region.")
+BAREBOX_CMD_HELP_TEXT("Display (hex dump) a memory REGION.")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-b",  "byte access")
@@ -108,7 +108,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(md)
 	.cmd		= do_mem_md,
 	BAREBOX_CMD_DESC("memory display")
-	BAREBOX_CMD_OPTS("[-bwlsx] REGION")
+	BAREBOX_CMD_OPTS("[-bwlqx] [-s FILE] REGION")
 	BAREBOX_CMD_GROUP(CMD_GRP_MEM)
 	BAREBOX_CMD_HELP(cmd_md_help)
 BAREBOX_CMD_END
diff --git a/commands/memcmp.c b/commands/memcmp.c
index 2b3783d66a..8122b99f17 100644
--- a/commands/memcmp.c
+++ b/commands/memcmp.c
@@ -97,7 +97,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(memcmp)
 	.cmd		= do_memcmp,
 	BAREBOX_CMD_DESC("memory compare")
-	BAREBOX_CMD_OPTS("[-bwlsd] ADDR1 ADDR2 COUNT")
+	BAREBOX_CMD_OPTS("[-bwlq] [-s FILE] [-d FILE] ADDR1 ADDR2 COUNT")
 	BAREBOX_CMD_GROUP(CMD_GRP_MEM)
 	BAREBOX_CMD_HELP(cmd_memcmp_help)
 BAREBOX_CMD_END
diff --git a/commands/memcpy.c b/commands/memcpy.c
index 2477bba359..1b480f27f0 100644
--- a/commands/memcpy.c
+++ b/commands/memcpy.c
@@ -72,7 +72,9 @@ out:
 }
 
 BAREBOX_CMD_HELP_START(memcpy)
-BAREBOX_CMD_HELP_TEXT("Copy memory at SRC of COUNT bytes to DEST")
+BAREBOX_CMD_HELP_TEXT("Copy memory of COUNT bytes from offsets SRC to DEST.")
+BAREBOX_CMD_HELP_TEXT("If source is a file, COUNT can be left unspecified")
+BAREBOX_CMD_HELP_TEXT("in which case the whole file is copied.")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-b", "byte access")
@@ -86,7 +88,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(memcpy)
 	.cmd		= do_memcpy,
 	BAREBOX_CMD_DESC("memory copy")
-	BAREBOX_CMD_OPTS("[-bwlsd] SRC DEST COUNT")
+	BAREBOX_CMD_OPTS("[-bwlq] [-s FILE] [-d FILE] SRC DEST COUNT")
 	BAREBOX_CMD_GROUP(CMD_GRP_MEM)
 	BAREBOX_CMD_HELP(cmd_memcpy_help)
 BAREBOX_CMD_END
diff --git a/commands/memset.c b/commands/memset.c
index 716cba26de..e4412533f1 100644
--- a/commands/memset.c
+++ b/commands/memset.c
@@ -84,7 +84,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(memset)
 	.cmd		= do_memset,
 	BAREBOX_CMD_DESC("memory fill")
-	BAREBOX_CMD_OPTS("[-bwld] ADDR DATA COUNT")
+	BAREBOX_CMD_OPTS("[-bwlq [-d FILE] ADDR DATA COUNT")
 	BAREBOX_CMD_GROUP(CMD_GRP_MEM)
 	BAREBOX_CMD_HELP(cmd_memset_help)
 BAREBOX_CMD_END
diff --git a/commands/mm.c b/commands/mm.c
index f6d66320fb..9ce8839644 100644
--- a/commands/mm.c
+++ b/commands/mm.c
@@ -116,7 +116,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(mm)
 	.cmd		= do_mem_mm,
 	BAREBOX_CMD_DESC("memory modify with mask")
-	BAREBOX_CMD_OPTS("[-bwld] ADDR VAL MASK")
+	BAREBOX_CMD_OPTS("[-bwlq] [-d FILE] ADDR VAL MASK")
 	BAREBOX_CMD_GROUP(CMD_GRP_MEM)
 	BAREBOX_CMD_HELP(cmd_mm_help)
 BAREBOX_CMD_END
diff --git a/commands/mw.c b/commands/mw.c
index 5bd4bdd58f..5dcef7e2fc 100644
--- a/commands/mw.c
+++ b/commands/mw.c
@@ -110,12 +110,17 @@ BAREBOX_CMD_HELP_OPT ("-l",  "long access (32 bit)")
 BAREBOX_CMD_HELP_OPT ("-q",  "quad access (64 bit)")
 BAREBOX_CMD_HELP_OPT ("-d FILE",  "write file (default /dev/mem)")
 BAREBOX_CMD_HELP_OPT ("-x",       "swap bytes")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Memory regions can be specified in two different forms: START+SIZE")
+BAREBOX_CMD_HELP_TEXT("or START-END, If START is omitted it defaults to 0x100")
+BAREBOX_CMD_HELP_TEXT("Sizes can be specified as decimal, or if prefixed with 0x as hexadecimal.")
+BAREBOX_CMD_HELP_TEXT("An optional suffix of k, M or G is for kbytes, Megabytes or Gigabytes.")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(mw)
 	.cmd		= do_mem_mw,
 	BAREBOX_CMD_DESC("memory write")
-	BAREBOX_CMD_OPTS("[-bwldx] REGION DATA...")
+	BAREBOX_CMD_OPTS("[-bwlqx] [-d FILE] REGION DATA...")
 	BAREBOX_CMD_GROUP(CMD_GRP_MEM)
 	BAREBOX_CMD_HELP(cmd_mw_help)
 BAREBOX_CMD_END
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

