Delivery-date: Tue, 10 Oct 2023 16:35:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqDpI-003BMt-Q2
	for lore@lore.pengutronix.de; Tue, 10 Oct 2023 16:35:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqDpF-00009g-LK
	for lore@pengutronix.de; Tue, 10 Oct 2023 16:35:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PO4kDo08JJ+VFygVZJ2y/PFlBNmEuAt1Sg4R8OviTyo=; b=DL3rWlF0p0gJC8iYEHSJFobx5B
	OrlMvijOPLU6+4CgGvlfEmURo1B6j/35PKQDuX5pTf0l4Hsirq12eegk/zcogC2e2/mpfziQ3K2QG
	n0Phc081VeTPsvLjaYHW8rNKrBf1qDaljuXLoTv+UDon2pUA1M0IWzpWsZJJxUX93y5JwBTtCgSpk
	UxMQuuTONzBAgBvIHTmB2Xt9OheaSdajt6rQgiXKg82iiLROGyDA6007s8YkFXXlaFQXWJoSGk/0y
	NShtfV8k5MwZWiqBccHDFReUiYeNSk9ENKsN4+rqgFBG0c/eSWAKd0t8aAazBmRBXjsgbCgz1RoFF
	OiB31SEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqDns-00DZmD-2L;
	Tue, 10 Oct 2023 14:33:44 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqDno-00DZga-1o
	for barebox@bombadil.infradead.org;
	Tue, 10 Oct 2023 14:33:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=PO4kDo08JJ+VFygVZJ2y/PFlBNmEuAt1Sg4R8OviTyo=; b=dKKwpYB0cNQJyANwysZPp2OBxL
	IdAiUdyEe47Y1scGXlLjfxpjWyEyD+QCHmimuif4MnJixE7MH/uNkPD8H3TkH+V/3SbIEsdszG3EL
	tJiyAnnFAcavLkGzUPQN1qj/SdUb56aRACK+wEpUvj7VmaL0Brw3LMC7QPwQBn3QPav6C1SOnwzvK
	wGH6ooXoUfxiwj3upn8AtWmZQWr3soIyBDxMzEOK3CF5HmVbAdHzfVsCsqv9ZNA1GwaeKs3rngjRN
	VLJBGRmFIE7XCLHuB/UdSC8B14ph+E/zSG47zPAO4rX0nFyCu3dX5sEADASTqR6zPI8vRwakft4KJ
	SEICRlDA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqDng-00GvFw-32
	for barebox@lists.infradead.org;
	Tue, 10 Oct 2023 14:33:39 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qqDnV-0007Dl-Lh
	for barebox@lists.infradead.org; Tue, 10 Oct 2023 16:33:21 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 10 Oct 2023 16:33:08 +0200
Message-Id: <20231010143314.2031253-21-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231010143314.2031253-1-m.felsch@pengutronix.de>
References: <20231010143314.2031253-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231010_153334_540777_FA21AC38 
X-CRM114-Status: UNSURE (   9.53  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 20/26] scripts: imx-image: hab_sign: refactor function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Refactor the code to make it possible to write multiple CSF blocks. This
is required for the upcoming FlexSPI CSF data fix.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 scripts/imx/imx-image.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index e9eded7f0828..4372ff85067b 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -660,7 +660,8 @@ static int nop(const struct config_data *data)
  * The cst is expected to be executable as 'cst' or if exists, the content
  * of the environment variable 'CST' is used.
  */
-static int hab_sign(struct config_data *data)
+static int hab_sign(struct config_data *data, const char *csfcmds,
+		    unsigned int csf_slot)
 {
 	int fd, outfd, ret, lockfd;
 	char *csffile, *command;
@@ -674,7 +675,7 @@ static int hab_sign(struct config_data *data)
 	if (!cst)
 		cst = "cst";
 
-	ret = asprintf(&csffile, "%s.csfbin", data->outfile);
+	ret = asprintf(&csffile, "%s.slot%u.csfbin", data->outfile, csf_slot);
 	if (ret < 0)
 		exit(1);
 
@@ -743,7 +744,7 @@ static int hab_sign(struct config_data *data)
 		return -errno;
 	}
 
-	fwrite(data->csf, 1, strlen(data->csf) + 1, f);
+	fwrite(csfcmds, 1, strlen(csfcmds) + 1, f);
 
 	pclose(f);
 
@@ -814,6 +815,8 @@ static int hab_sign(struct config_data *data)
 		if (flexspi_image(data))
 			offset += FLEXSPI_HEADER_LEN;
 
+		offset += csf_slot * CSF_LEN;
+
 		offset = roundup(offset, 0x1000);
 		if (data->signed_hdmi_firmware_file)
 			offset += PLUGIN_HDMI_SIZE;
@@ -1104,7 +1107,7 @@ int main(int argc, char *argv[])
 	}
 
 	if (data.csf && data.sign_image) {
-		ret = hab_sign(&data);
+		ret = hab_sign(&data, data.csf, 0);
 		if (ret)
 			exit(1);
 	}
-- 
2.39.2



