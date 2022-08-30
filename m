Delivery-date: Tue, 30 Aug 2022 09:42:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSvtF-001ULk-Rz
	for lore@lore.pengutronix.de; Tue, 30 Aug 2022 09:42:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSvtD-0003lF-CA
	for lore@pengutronix.de; Tue, 30 Aug 2022 09:42:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LCYeuqMG6jXRGHjtRVAI/ORo3+EcJwo0R71BCP/QRHQ=; b=EXn4k72bqF0cqTZewHMCrHOyYq
	nb/vaxIbTlRGk8BTmjRcAMoBj++Nj78M03CKl40RPldGE3hUzXVKDUGvS6R4fKUh3luFeFS+fQehv
	ufKcZMI2b+lWksZ7H/o3D69QZWUjWOvshuenIFoI6elLUG+bDeTAvOQORpQYuJsQJKNVjszW4Zq9x
	C73dcUE/6ZOVdEJvSEB0ExYjMKqhMwkp9LIyKT76drANMEBmS649ZVEY9KFOCVSoFT1VcBz08n9wq
	UwP2d9oNZc/jA/fCzFfr8vljOrsh4oyrbSagjsi+1YIFp5A6qMvaeVi8Wrt9YyMpg7ZFh+zidI2l2
	xEwsxyrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvrf-00Eq67-2F; Tue, 30 Aug 2022 07:40:51 +0000
Received: from smtpout-2.cvg.de ([2003:49:a034:1067:5::2])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvq9-00Ep7D-6d
	for barebox@lists.infradead.org; Tue, 30 Aug 2022 07:39:20 +0000
Received: from mail-mta-3.intern.sigma-chemnitz.de (mail-mta-3.intern.sigma-chemnitz.de [192.168.12.71])
	by mail-out-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27U7cdM9806697
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Tue, 30 Aug 2022 09:38:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1661845119;
	bh=LCYeuqMG6jXRGHjtRVAI/ORo3+EcJwo0R71BCP/QRHQ=; l=1914;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=Q/pUIJDdfq4WMvcc8UE7Ml5RKssfGKXKuycs9S+dgXWoRstcPPV+ybV5odMboawIt
	 k7qXHfmISPqOXVUZu/3DMZkhKlw385IiWvHXXpg+9wm3zGCiRFvCQV3C8oWfXi18N4
	 VWdIXn7U8zK9kMVoEi5tVTic0JbtCqrE/FuvuMHVFYfUZMwsCS5/2/jFOj91XlHBGW
	 DTtSRNbiSiPStuO3qZa65QauxZfPU8kHt6AqgKC9cEtoe33d+zViRHuQkkOEZMdkDp
	 CBo+/IxggyJOdJjrA/T846QF8mSbQRa3Sam/5CzQ68GgV0viRDES3jx8/Q6yi2C6wn
	 BM284iuCm/cxg==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 27U7cP3X2895740
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Tue, 30 Aug 2022 09:38:28 +0200
Received: from mail-msa-3.intern.sigma-chemnitz.de ( [192.168.12.73]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 78BD2D6CB11; Tue, 30 Aug 2022 09:38:21 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-3.intern.sigma-chemnitz.de (8.15.2/8.15.2) with ESMTPS id 27U7cJNj949557
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Tue, 30 Aug 2022 09:38:20 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oSvpD-00BJ2l-SA;
	Tue, 30 Aug 2022 09:38:19 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Tue, 30 Aug 2022 09:37:58 +0200
Message-Id: <20220830073816.2694734-4-enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220830073816.2694734-1-enrico.scholz@sigma-chemnitz.de>
References: <20220830073816.2694734-1-enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_003917_676675_53F39995 
X-CRM114-Status: GOOD (  11.10  )
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
X-Spam-Status: No, score=-103.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED,USER_IN_WELCOMELIST,
	USER_IN_WHITELIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v4 03/21] cmd:tftp: add '-P' option to set tftp server port number
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 commands/tftp.c | 22 +++++++++++++++++++---
 1 file changed, 19 insertions(+), 3 deletions(-)

diff --git a/commands/tftp.c b/commands/tftp.c
index 48ff00c6217c..6ac822c9e832 100644
--- a/commands/tftp.c
+++ b/commands/tftp.c
@@ -21,15 +21,24 @@ static int do_tftpb(int argc, char *argv[])
 	char *source, *dest, *freep;
 	int opt;
 	int tftp_push = 0;
+	int port = -1;
 	int ret;
 	IPaddr_t ip;
 	char ip4_str[sizeof("255.255.255.255")];
+	char mount_opts[sizeof("port=12345")];
 
-	while ((opt = getopt(argc, argv, "p")) > 0) {
+	while ((opt = getopt(argc, argv, "pP:")) > 0) {
 		switch(opt) {
 		case 'p':
 			tftp_push = 1;
 			break;
+		case 'P':
+			port = simple_strtoul(optarg, NULL, 0);
+			if (port <= 0 || port > 0xffff) {
+				pr_err("invalid port '%s'\n", optarg);
+				return COMMAND_ERROR_USAGE;
+			}
+			break;
 		default:
 			return COMMAND_ERROR_USAGE;
 		}
@@ -59,7 +68,13 @@ static int do_tftpb(int argc, char *argv[])
 
 	ip = net_get_serverip();
 	sprintf(ip4_str, "%pI4", &ip);
-	ret = mount(ip4_str, "tftp", TFTP_MOUNT_PATH, NULL);
+
+	if (port >= 0)
+		sprintf(mount_opts, "port=%u", port);
+	else
+		mount_opts[0] = '\0';
+
+	ret = mount(ip4_str, "tftp", TFTP_MOUNT_PATH, mount_opts);
 	if (ret)
 		goto err_rmdir;
 
@@ -84,12 +99,13 @@ BAREBOX_CMD_HELP_TEXT("server address is taken from the environment (ethX.server
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-p", "push to TFTP server")
+BAREBOX_CMD_HELP_OPT ("-P PORT", "tftp server port number")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(tftp)
 	.cmd		= do_tftpb,
 	BAREBOX_CMD_DESC("load (or save) a file using TFTP")
-	BAREBOX_CMD_OPTS("[-p] SOURCE [DEST]")
+	BAREBOX_CMD_OPTS("[-p] [-P <port>] SOURCE [DEST]")
 	BAREBOX_CMD_GROUP(CMD_GRP_NET)
 	BAREBOX_CMD_HELP(cmd_tftp_help)
 BAREBOX_CMD_END
-- 
2.37.2



