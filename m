Delivery-date: Mon, 15 Aug 2022 10:46:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNVkO-006EU1-QJ
	for lore@lore.pengutronix.de; Mon, 15 Aug 2022 10:46:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNVkO-0000mD-Qc
	for lore@pengutronix.de; Mon, 15 Aug 2022 10:46:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VuH+tDGnY39nq+1994CHFckSEClF9VXHYkvTI4IBwEA=; b=or2WssP7yUMyrjgt7XQm+qVocW
	dULulsJ0LfkIYt4WO+jmMSEFsIU7apazGq479XVFwzWRIbbVa9utIECxe9bZX6OpD5ZBmB+FCmVQh
	X35ilKVkqAEOfyJKxROtmtGyy1G1OmGEiI630HB0vRtEFDRRsFF14j0vSEqD3WnRZsfESbmaRxyDe
	jurKxoyLxAMciyGG/Ot/ddqIOkzuk1Oe1Mv57QStkAnKPr34KxiZZ3ZvTXmd86pMhRAshfnw85fKH
	WTwVgw3I2oFPOmQPg+5dTm4fTs8oLmP9hKcvajrHwFHWAwb5tIvM+Z5Hhvbjm0bEqEKROsVVnXogo
	ukkm94EA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNVij-00DLBS-Lk; Mon, 15 Aug 2022 08:45:14 +0000
Received: from smtpout-2.cvg.de ([2003:49:a034:1067:5::2])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNVgw-00DJgF-6u
	for barebox@lists.infradead.org; Mon, 15 Aug 2022 08:43:28 +0000
Received: from mail-mta-3.intern.sigma-chemnitz.de (mail-mta-3.intern.sigma-chemnitz.de [192.168.12.71])
	by mail-out-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27F8gbBo661993
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Mon, 15 Aug 2022 10:42:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1660552957;
	bh=VuH+tDGnY39nq+1994CHFckSEClF9VXHYkvTI4IBwEA=; l=1914;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=nc9qSxf3iQltc4/ONnSLgjlOwVQNcFIKaNDDOLh36pqk4ohC8UIs8/H8bF+133UOY
	 3DWvl5pRN5hjKfTlVClofYseocI4DwDENOBLtZqMFx3qLxCWcsaRghckz5hMJbtSkM
	 Vs5h202V/qJDA/jpGCxdsLkVFkqFtXSplMEHwZBn9R+5QnCGKkPAnAOsSfyNtOwYkW
	 VDV/QO5VkzWFJndSGLEkQinICFKQZKinnOr+q2TtN5+H4x0eVRAZq1iJYyJSHbvj/e
	 deJKF2Z/ofOyIpgDZieQGV9jVwQSH0jGVfJ6MKB1nsfGmfpU0GZDLDh70tn0myogmU
	 paEtWTOTuF3GA==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 27F8gXeE2540862
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Mon, 15 Aug 2022 10:42:33 +0200
Received: from mail-msa-3.intern.sigma-chemnitz.de ( [192.168.12.73]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 06F28F3CD3; Mon, 15 Aug 2022 10:42:27 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-3.intern.sigma-chemnitz.de (8.15.2/8.15.2) with ESMTPS id 27F8gPmf811075
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Mon, 15 Aug 2022 10:42:27 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oNVg1-000EIq-QS;
	Mon, 15 Aug 2022 10:42:25 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Mon, 15 Aug 2022 10:42:09 +0200
Message-Id: <3715a37c0ec44b42533c960240a68e81ff569676.1660552646.git.enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <cover.1660552646.git.enrico.scholz@sigma-chemnitz.de>
References: <cover.1660552646.git.enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220815_014324_319766_7B435630 
X-CRM114-Status: GOOD (  10.77  )
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
X-Spam-Status: No, score=-103.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 05/18] cmd:tftp: add '-P' option to set tftp server port number
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
2.37.1



