Delivery-date: Wed, 09 Apr 2025 11:53:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2S7t-00AMfQ-0F
	for lore@lore.pengutronix.de;
	Wed, 09 Apr 2025 11:53:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2S7s-0003V2-HY
	for lore@pengutronix.de; Wed, 09 Apr 2025 11:53:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=fAIUvDxfqH+t3TFv7aiS0euK64Fe4EwGdg/s7r/yn8A=; b=aLDfUCrWSPT29wS7gNnQ2P40P8
	amsxAy/df0CyLOLnwVVYXBdoiL/9kK3eTvxo3zpyfXpFMLiSoytXBZnovwLsqnzEnjvurJqFl6/eF
	XucCCRufJ9z/fmCHI0xnsH1YcetFudn0Z1zsfr+Rko40i8KMsxiNAxvI/TmtOhQkZQHXmtK54G3Tz
	Coe39AMWiD1r0ykdRMV469XrIptq3f1Rh7tNfBDSuig5FDBCfzLSQZa/r7m8tJxR59Wy/XypEqCGl
	t4+9+2VuAdTFidoicKBB/l4nBFdHvOeFBc4PIvLIAtIRMXWnAULFa0K63ZdvidlVCPMtnvioiNyAN
	/REMpffw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2S7H-00000006kpH-20aa;
	Wed, 09 Apr 2025 09:53:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2S28-00000006kDX-0qhy
	for barebox@lists.infradead.org;
	Wed, 09 Apr 2025 09:47:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2S24-0001dt-PB; Wed, 09 Apr 2025 11:47:44 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2S24-00457v-1s;
	Wed, 09 Apr 2025 11:47:44 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2S24-00C1bB-1Y;
	Wed, 09 Apr 2025 11:47:44 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  9 Apr 2025 11:47:41 +0200
Message-Id: <20250409094740.2861331-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250409_024748_660329_1A307999 
X-CRM114-Status: GOOD (  10.01  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] commands: avb_pvalue: fix print out of wrong arguments in error message
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

read_varname is always NULL whenever write_varname is non-NULL.

Replace it by the correct string to indicate where the failure occurred.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/avb_pvalue.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/commands/avb_pvalue.c b/commands/avb_pvalue.c
index adc44321fb54..d91c311de5ec 100644
--- a/commands/avb_pvalue.c
+++ b/commands/avb_pvalue.c
@@ -55,7 +55,7 @@ static int do_avb_pvalue(int argc, char *argv[])
 		if (filename) {
 			ret = read_file_2(filename, &size, &buf, FILESIZE_MAX);
 			if (ret) {
-				printf("Cannot read %s: %pe\n", read_varname, ERR_PTR(ret));
+				printf("Cannot read %s: %pe\n", filename, ERR_PTR(ret));
 				return COMMAND_ERROR;
 			}
 		} else {
@@ -67,7 +67,7 @@ static int do_avb_pvalue(int argc, char *argv[])
 		}
 		ret = avb_write_persistent_value(write_varname, size, buf);
 		if (ret) {
-			printf("Cannot write variable %s: %pe\n", read_varname, ERR_PTR(ret));
+			printf("Cannot write variable %s: %pe\n", write_varname, ERR_PTR(ret));
 			goto err;
 		}
 	}
-- 
2.39.5



