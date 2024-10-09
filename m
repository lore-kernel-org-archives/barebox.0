Delivery-date: Wed, 09 Oct 2024 17:02:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1syYD1-002Ga2-2m
	for lore@lore.pengutronix.de;
	Wed, 09 Oct 2024 17:02:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1syYD1-00081o-5p
	for lore@pengutronix.de; Wed, 09 Oct 2024 17:02:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7yZMEfh2j8uwdzWWJh3gzjT0n4p92odZtkc5RALBcRc=; b=Lqd9E32BA+icTnc/llJ1xkQhNs
	tE/1Q5xljAVdO3DKKIz+RQEW5wgXSLhuMyRhgSPqSEX0VpqHlcxyoUnNt809hsk1yvdCGETPIJOJR
	FdPwO30TvI6ZLuEs0ZMRt1qRLc4FI5Zt7RTpPJsxzrNoEedqp+xLprJp1kXQryT+KzSSKGSU6PlUl
	xMj0Ye2MTUbLIoNzR1Rui/H4/3uuRjNZdOEvyHR17HEQnCoXr/1sX22nzw9Y5KKHPsIUhaSA2P2oU
	ERM55t6I6uwx08wKDaSlD4U2xNqwzhcENERkBmFfr3V9OqdvQ2ChqFIy4UVOIPInpYPgdo8Xck8HB
	WVqwh4Eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syYCU-00000009hkB-22iS;
	Wed, 09 Oct 2024 15:02:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syYCR-00000009hij-1rvk
	for barebox@lists.infradead.org;
	Wed, 09 Oct 2024 15:02:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1syYCP-0007wb-I3
	for barebox@lists.infradead.org; Wed, 09 Oct 2024 17:02:01 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1syYCP-000czG-5W
	for barebox@lists.infradead.org; Wed, 09 Oct 2024 17:02:01 +0200
Received: from localhost ([::1] helo=dude04.red.stw.pengutronix.de)
	by dude04.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1syYCP-00AtmH-0G
	for barebox@lists.infradead.org;
	Wed, 09 Oct 2024 17:02:01 +0200
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed,  9 Oct 2024 17:01:59 +0200
Message-Id: <20241009150159.2597633-1-m.grzeschik@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241009_080203_505468_9BE9145F 
X-CRM114-Status: GOOD (  11.79  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] commands: mmc: write_reliability: bail out early if already set
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Some cards may have HS_CTRL_REL set as 0. This is obsolete
per-spec, but seems to indicate that write reliability was
factory-set. Therefore, just bail out early before checking the
parm.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 commands/mmc.c | 23 +++++++++++++++--------
 1 file changed, 15 insertions(+), 8 deletions(-)

diff --git a/commands/mmc.c b/commands/mmc.c
index 718558f18b..dafc3a755f 100644
--- a/commands/mmc.c
+++ b/commands/mmc.c
@@ -138,6 +138,7 @@ static int do_mmc_write_reliability(int argc, char *argv[])
 	const char *devpath;
 	struct mci *mci;
 	u8 *ext_csd;
+	int ret;
 
 	if (argc - optind != 1) {
 		printf("Usage: mmc write_reliability /dev/mmcX\n");
@@ -166,6 +167,15 @@ static int do_mmc_write_reliability(int argc, char *argv[])
 		goto error;
 	}
 
+	/* Some cards may have HS_CTRL_REL set as 0. This is obsolete
+	 * per-spec, but seems to indicate that write reliability was
+	 * factory-set. Therefore, just bail out early here
+	 */
+	if ((ext_csd[EXT_CSD_WR_REL_SET] & 0x1f) == 0x1f) {
+		printf("reliable write already set\n");
+		goto out;
+	}
+
 	if (!(ext_csd[EXT_CSD_WR_REL_PARAM] & EXT_CSD_HS_CTRL_REL)) {
 		printf("Device doesn't support WR_REL_SET writes\n");
 		goto error;
@@ -175,16 +185,13 @@ static int do_mmc_write_reliability(int argc, char *argv[])
 	 * Host has one opportunity to write all of the bits. Separate writes to
 	 * individual bits are not permitted so set all bits for now.
 	 */
-	if ((ext_csd[EXT_CSD_WR_REL_SET] & 0x1f) != 0x1f) {
-		int ret;
-
-		ret = mci_switch(mci, EXT_CSD_WR_REL_SET, 0x1f);
-		if (ret) {
-			printf("Failure to write to EXT_CSD_WR_REL_SET\n");
-			goto error;
-		}
+	ret = mci_switch(mci, EXT_CSD_WR_REL_SET, 0x1f);
+	if (ret) {
+		printf("Failure to write to EXT_CSD_WR_REL_SET\n");
+		goto error;
 	}
 
+out:
 	dma_free(ext_csd);
 
 	return COMMAND_SUCCESS;
-- 
2.39.5



