Delivery-date: Wed, 12 Feb 2025 15:10:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiDRD-001SLZ-11
	for lore@lore.pengutronix.de;
	Wed, 12 Feb 2025 15:10:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiDRB-0001Qn-FG
	for lore@pengutronix.de; Wed, 12 Feb 2025 15:10:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3VRYwdx8/ZXnr989eISc1tcaSpd/Ab+abnQB4pw80ug=; b=E3StE1Wav9CoC4R5ZRjdb9QExG
	D+tXQW+4yH+ObwVIJfEj4tdjolAC8ewHfD9m1yISic5+o6OMPQOI55QpV5WahBmY35bw2+y2XrXyW
	z1Ald0N2VzuoRAaoCGFB75yMi8fY+zS6otar0F3sOg3rAWSGQQ98TQDDDeIwjUOb2mrjeh8gDuYkn
	uQRUjYZF0kWPdx5vy0eCnNsuSgw5UqmKOWDm0FO7lCIOhZV3Pm5DxDG22j6MXDyutGq19H4EP1FQb
	sIJJWWzoQCKgjaDdOmstAZF1l8rWN74taPDrb7CoeZjFgyhfcnF17zKmG+H8pGHVExtaRSFo6P6Wp
	taue+GSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiDQm-00000007c0W-0ep3;
	Wed, 12 Feb 2025 14:09:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tiDQi-00000007bxx-1HQ5
	for barebox@lists.infradead.org;
	Wed, 12 Feb 2025 14:09:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDQh-000129-2U; Wed, 12 Feb 2025 15:09:31 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDQg-000b1y-2A;
	Wed, 12 Feb 2025 15:09:30 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDQg-00AeO5-1r;
	Wed, 12 Feb 2025 15:09:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Feb 2025 15:09:20 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250212-k3-emmc-v2-7-8dd1bb0ce60a@pengutronix.de>
References: <20250212-k3-emmc-v2-0-8dd1bb0ce60a@pengutronix.de>
In-Reply-To: <20250212-k3-emmc-v2-0-8dd1bb0ce60a@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1739369370; l=995;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=bTvN0UmS8jyiDq233zxIQA42fOF4SMpnx7TAYHuhrIw=;
 b=gZRqXnihWFUzqgn0/mDY/s6gtlWCQY+dy1sMPjf5tnzzeDZCtcPa8fpSydCMyP+14bwAuCXbm
 x4RH0KdEuHcD2UPWJGCl5WhtnfeYBalxT6MRlF0lMrsP/30GmV/Csr5
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250212_060932_370193_51B0F69D 
X-CRM114-Status: GOOD (  11.29  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 07/20] fiptool: do not typedef structs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/fiptool.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/commands/fiptool.c b/commands/fiptool.c
index b917c62a97..eb7d9b5ac7 100644
--- a/commands/fiptool.c
+++ b/commands/fiptool.c
@@ -24,11 +24,11 @@
 #include <fip.h>
 #include <fiptool.h>
 
-typedef struct cmd {
+struct cmd {
 	char              *name;
 	int              (*handler)(struct fip_state *fip, int, char **);
 	void             (*usage)(int);
-} cmd_t;
+};
 
 
 static int write_image_to_file(const struct fip_image *image, const char *filename)
@@ -532,7 +532,7 @@ static __maybe_unused int remove_cmd(struct fip_state *fip, int argc, char *argv
 }
 
 /* Available subcommands. */
-static cmd_t cmds[] = {
+static struct cmd cmds[] = {
 	{ .name = "info",    .handler = info_cmd,    },
 	{ .name = "uuid",    .handler = uuid_cmd,    },
 	{ .name = "unpack",  .handler = unpack_cmd,  },

-- 
2.39.5



