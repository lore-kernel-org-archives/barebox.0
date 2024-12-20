Delivery-date: Fri, 20 Dec 2024 12:14:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tOay9-00AQXd-10
	for lore@lore.pengutronix.de;
	Fri, 20 Dec 2024 12:14:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tOay9-0007jF-6N
	for lore@pengutronix.de; Fri, 20 Dec 2024 12:14:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CHttRh8tMhHfJ5GyEFPPJnQV0M+URQj8Buw3p/n1jCA=; b=Qe1Wu+MHape0thNMkPs46QV4A/
	KnX7N3IRu8E3vl992+bJIC4+yr6Bz1GqeLoFMTu2av0sStBFV6atMiFWGtMdLJlkxbNuui2fE2vGz
	AXCnLZXwvVYfEkVRmhQnvDAWyG2s+MXje2aGGajo4ld2Lg3hafYZE47bGuBnKZ8OYXdQpZCw9Zhcb
	JpjL6qYHco6odPmyFwc/iLP31e6zoQ3HHRpkZIEu+WEZQZY1MdMwK5UoWCQsV5uz3sWJaRAObFfc/
	n9U9pHIj/xj7LAY8rhkjQIiobnUdfLU2Mq/12p/cbHWczkf+09S3CqLs9+kKV8sJF9RGNF7ansWVm
	KjpVAOBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOaxh-00000004iZ7-2yhx;
	Fri, 20 Dec 2024 11:14:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOacC-00000004eCg-0L8R
	for barebox@lists.infradead.org;
	Fri, 20 Dec 2024 10:52:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tOacA-0002W5-LS; Fri, 20 Dec 2024 11:52:14 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tOac9-004MSh-2G;
	Fri, 20 Dec 2024 11:52:14 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tOacA-001FPQ-1F;
	Fri, 20 Dec 2024 11:52:14 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ejo@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 20 Dec 2024 11:52:13 +0100
Message-Id: <20241220105213.297539-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241220105213.297539-1-a.fatoum@pengutronix.de>
References: <20241220105213.297539-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241220_025216_111644_661712EE 
X-CRM114-Status: GOOD (  14.34  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH RESEND 2/2] commands: addpart: allow force creation of overlapping partition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

While we have the guard rails for good reason, a user on the shell
should be able to override them and create partitions as they see fit,
e.g. if they have a MBR they don't care about anyway, it should still
be possible to force create a new fixed partition that overlaps it
and pass that to Fastboot for example.

Let's add a new -f (force) parameter that enables this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/Kconfig      | 3 ++-
 commands/partition.c  | 8 ++++++--
 include/cmdlinepart.h | 1 +
 3 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 7d45a13becd9..67116ec9fcf0 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -612,7 +612,7 @@ config CMD_PARTITION
 	help
 	  addpart - add a partition description to a device
 
-	  Usage: addpart [-n] DEVICE PART
+	  Usage: addpart [-nf] DEVICE PART
 
 	  The size and the offset can be given in decimal (without any prefix) and
 	  in hex (prefixed with 0x). Both can have an optional suffix K, M or G.
@@ -622,6 +622,7 @@ config CMD_PARTITION
 
 	  Options:
 		  -n	do not use the device name as prefix of the partition name
+		  -f	force partition creation, even if it overlaps existing ones
 		  DEVICE	device being worked on
 		  PART	SIZE1[@OFFSET1](NAME1)[RO],SIZE2[@OFFSET2](NAME2)[RO],...
 
diff --git a/commands/partition.c b/commands/partition.c
index 1b655f853b3b..3176398497dc 100644
--- a/commands/partition.c
+++ b/commands/partition.c
@@ -33,11 +33,14 @@ static int do_addpart(int argc, char *argv[])
 	int opt;
 	unsigned int flags = CMDLINEPART_ADD_DEVNAME;
 
-	while ((opt = getopt(argc, argv, "n")) > 0) {
+	while ((opt = getopt(argc, argv, "nf")) > 0) {
 		switch (opt) {
 		case 'n':
 			flags &= ~CMDLINEPART_ADD_DEVNAME;
 			break;
+		case 'f':
+			flags |= CMDLINEPART_FORCE;
+			break;
 		}
 	}
 
@@ -59,6 +62,7 @@ BAREBOX_CMD_HELP_START(addpart)
 
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-n", "do not use the device name as prefix of the partition name")
+BAREBOX_CMD_HELP_OPT ("-f", "force partition creation, even if it overlaps existing ones")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Create partitions on device DEVICE using the partition description")
 BAREBOX_CMD_HELP_TEXT("from PART.")
@@ -74,7 +78,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(addpart)
 	.cmd = do_addpart,
 	BAREBOX_CMD_DESC("add a partition description to a device")
-	BAREBOX_CMD_OPTS("[-n] DEVICE PART")
+	BAREBOX_CMD_OPTS("[-nf] DEVICE PART")
 	BAREBOX_CMD_GROUP(CMD_GRP_PART)
 	BAREBOX_CMD_HELP(cmd_addpart_help)
 BAREBOX_CMD_END
diff --git a/include/cmdlinepart.h b/include/cmdlinepart.h
index 9f5bdf610a11..1f9af22d3b76 100644
--- a/include/cmdlinepart.h
+++ b/include/cmdlinepart.h
@@ -3,6 +3,7 @@
 #define __CMD_LINE_PART_H
 
 #define CMDLINEPART_ADD_DEVNAME (1 << 0)
+#define CMDLINEPART_FORCE	(1 << 1)
 
 int cmdlinepart_do_parse_one(const char *devname, const char *partstr,
 				 const char **endp, loff_t *offset,
-- 
2.39.5



