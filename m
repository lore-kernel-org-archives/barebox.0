Delivery-date: Wed, 10 Jan 2024 10:17:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNUhv-00BQzN-2r
	for lore@lore.pengutronix.de;
	Wed, 10 Jan 2024 10:17:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNUhv-00081A-9M
	for lore@pengutronix.de; Wed, 10 Jan 2024 10:17:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=X4v8ii77sEjmDy1yjXaf/P5ltwP2x7BB1u1baE77iMs=; b=Arvcxspji2F2HGUTbBVVukgqjk
	ybp9YV9Rye6ekGNB7qB6rN90e6+lOSyMK47HFXsFkvbxN3EMlmXPYEBHeApbhVUVWur0KDQuSuqw8
	4bq5p65ivhJuTR23giMOLH1PTchrfa983IAa6xa+S6fyhTyumdUFoQbsiqMhGg8KTrjXAYXTS6Add
	Crt5nLkU3NJzsj/01Q28AZ4dog6Y1wCEo8afZMN2gH51aK5dztwHOih5LktaG4Edr9dV9Os8UV4Ix
	I2guUs19uetqHthhvOHwtbyy5Iwi1r02GQKOZ0MJUQSmdFDMxjpu+TKzKWJC9BU3xyKz305WepJHi
	5L7jgBpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNUgb-00Ar2C-0U;
	Wed, 10 Jan 2024 09:15:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNUgX-00Aqzy-2P
	for barebox@lists.infradead.org;
	Wed, 10 Jan 2024 09:15:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNUgV-0007hJ-Tn; Wed, 10 Jan 2024 10:15:39 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNUgV-001fac-HM; Wed, 10 Jan 2024 10:15:39 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNUgV-00D8NG-1S;
	Wed, 10 Jan 2024 10:15:39 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 10 Jan 2024 10:15:38 +0100
Message-Id: <20240110091538.3130283-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240110_011541_778706_83224933 
X-CRM114-Status: GOOD (  14.22  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] fixup! pblimage: pblimage: Add LS1028a support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

soc_index is not only used for comparisons, but also as index into the
socs[] array. However, the array starts with SOC_TYPE_LS1046A and the
enum with SOC_TYPE_INVALID leading to socs[SOC_TYPE_LS1046A].soc
== SOC_TYPE_LS1028A and socs[SOC_TYPE_LS1028A] to overflow the array.

This broke LS1046A boot and LS1028A seems to have only worked by chance,
because the memory after socs[] happened to be zeroed.

Fix this by reordering the enum and while at it remove the redundancy in
having both the index and the soc member be the same value.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/pblimage.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/scripts/pblimage.c b/scripts/pblimage.c
index 8cb473d5bcf2..ef09b0f96084 100644
--- a/scripts/pblimage.c
+++ b/scripts/pblimage.c
@@ -57,30 +57,28 @@ static uint32_t pbi_crc_cmd1;
 static uint32_t pbi_crc_cmd2;
 
 enum soc_type {
-	SOC_TYPE_INVALID,
+	SOC_TYPE_INVALID = -1,
 	SOC_TYPE_LS1046A,
 	SOC_TYPE_LS1028A,
 };
 
 struct soc_type_entry {
 	const char *name;
-	enum soc_type soc;
 	bool big_endian;
 };
 
 static struct soc_type_entry socs[] = {
-	{
+	[SOC_TYPE_LS1046A] = {
 		.name = "ls1046a",
-		.soc = SOC_TYPE_LS1046A,
 		.big_endian = true,
-	}, {
+	},
+	[SOC_TYPE_LS1028A] = {
 		.name = "ls1028a",
-		.soc = SOC_TYPE_LS1028A,
 		.big_endian = false,
 	},
 };
 
-static enum soc_type soc_type;
+static enum soc_type soc_type = SOC_TYPE_INVALID;
 
 static char *rcwfile;
 static char *pbifile;
@@ -413,7 +411,7 @@ int main(int argc, char *argv[])
 
 	for (i = 0; i < ARRAY_SIZE(socs); i++) {
 		if (!strcmp(socs[i].name, cputypestr)) {
-			soc_type = socs[i].soc;
+			soc_type = i;
 			break;
 		}
 	}
-- 
2.39.2



