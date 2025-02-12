Delivery-date: Wed, 12 Feb 2025 15:10:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiDRI-001SN8-0K
	for lore@lore.pengutronix.de;
	Wed, 12 Feb 2025 15:10:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiDRG-0001WM-MN
	for lore@pengutronix.de; Wed, 12 Feb 2025 15:10:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HqpK2gClXpUDy1FoIYeFW7ZxSfqH/28YCTd+0KtWeec=; b=cHrWVM7MrNSLUBSJoy54qoiuix
	osHDws+jneHA8i3DgHRiTrUySD1AItv4dWvN6wBB4E08d2tRR6AQbiSe/99M0h/YYm3NE5rEJm5ir
	1Oa42Rjj2rzwvzumSM1Xz6nk4fEZy90J+WpJHOG558IC6t8cHVO/aZWjpfH7Hb86qI/8WjElnK2F4
	zMFctMroxrjT0UDEGjkdHrkUYHAFZPOuyz+XvYxqLIqibaGKCihjXRkU+zmgei67k5KbMgnmIfvqF
	gfRUAOQijg5HbY2Op1ba/C0QGzz1G1lgZH/xBvt5htFsJBR2iVvvBB7/R8PrrxW0p6nDaAz/T0HA/
	gvOOqEYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiDQs-00000007c95-3IhI;
	Wed, 12 Feb 2025 14:09:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tiDQq-00000007c4y-115V
	for barebox@lists.infradead.org;
	Wed, 12 Feb 2025 14:09:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDQh-00012C-2p; Wed, 12 Feb 2025 15:09:31 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDQg-000b1x-2A;
	Wed, 12 Feb 2025 15:09:30 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDQg-00AeO5-1q;
	Wed, 12 Feb 2025 15:09:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Feb 2025 15:09:19 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250212-k3-emmc-v2-6-8dd1bb0ce60a@pengutronix.de>
References: <20250212-k3-emmc-v2-0-8dd1bb0ce60a@pengutronix.de>
In-Reply-To: <20250212-k3-emmc-v2-0-8dd1bb0ce60a@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1739369370; l=2619;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=6N8IgnaS/s2NWc8qNiH9aylXS7tZD9uMYG3ZUNhaupE=;
 b=i19y1rX8kjwkYhYabgY/zHEI0VGeNpGNkD5Ib72YIcllZiKxmg81ZCJWS4IZ853Ns0gDWbl7M
 dGqfzaKr4T7BQjP6cXdFP8l8PPn0b/VJOkA0c2VH3Ri+5JafzMuj+UF
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250212_060940_289021_3A691C8D 
X-CRM114-Status: GOOD (  12.67  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 06/20] fip: use uuid_equal() and uuid_is_null()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have uuid_equal() and uuid_is_null(), use that rather than open coded
memcmp().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/fiptool.c | 10 ++++------
 lib/fip.c          |  4 ++--
 2 files changed, 6 insertions(+), 8 deletions(-)

diff --git a/commands/fiptool.c b/commands/fiptool.c
index 45d534e470..b917c62a97 100644
--- a/commands/fiptool.c
+++ b/commands/fiptool.c
@@ -219,8 +219,7 @@ static __maybe_unused int create_cmd(struct fip_state *fip, int argc, char *argv
 			parse_blob_opt(optarg, &uuid,
 			    filename, sizeof(filename));
 
-			if (memcmp(&uuid, &uuid_null, sizeof(uuid_t)) == 0 ||
-			    filename[0] == '\0')
+			if (uuid_is_null(&uuid) || filename[0] == '\0')
 				return COMMAND_ERROR_USAGE;
 
 			desc = lookup_image_desc_from_uuid(fip, &uuid);
@@ -286,7 +285,7 @@ static __maybe_unused int update_cmd(struct fip_state *fip, int argc, char *argv
 			parse_blob_opt(optarg, &uuid,
 			    filename, sizeof(filename));
 
-			if (memcmp(&uuid, &uuid_null, sizeof(uuid_t)) == 0 ||
+			if (uuid_is_null(&uuid) ||
 			    filename[0] == '\0')
 				return COMMAND_ERROR_USAGE;
 
@@ -368,8 +367,7 @@ static int unpack_cmd(struct fip_state *fip, int argc, char *argv[])
 			parse_blob_opt(optarg, &uuid,
 			    filename, sizeof(filename));
 
-			if (memcmp(&uuid, &uuid_null, sizeof(uuid_t)) == 0 ||
-			    filename[0] == '\0')
+			if (uuid_is_null(&uuid) || filename[0] == '\0')
 				return COMMAND_ERROR_USAGE;
 
 			desc = lookup_image_desc_from_uuid(fip, &uuid);
@@ -478,7 +476,7 @@ static __maybe_unused int remove_cmd(struct fip_state *fip, int argc, char *argv
 			parse_blob_opt(optarg, &uuid,
 			    filename, sizeof(filename));
 
-			if (memcmp(&uuid, &uuid_null, sizeof(uuid_t)) == 0)
+			if (uuid_is_null(&uuid))
 				return COMMAND_ERROR_USAGE;
 
 			desc = lookup_image_desc_from_uuid(fip, &uuid);
diff --git a/lib/fip.c b/lib/fip.c
index 63f1469086..774de2ad1d 100644
--- a/lib/fip.c
+++ b/lib/fip.c
@@ -127,7 +127,7 @@ struct fip_image_desc *lookup_image_desc_from_uuid(struct fip_state *fip,
 	struct fip_image_desc *desc;
 
 	fip_for_each_desc(fip, desc)
-		if (memcmp(&desc->uuid, uuid, sizeof(uuid_t)) == 0)
+		if (uuid_equal(&desc->uuid, uuid))
 			return desc;
 	return NULL;
 }
@@ -210,7 +210,7 @@ int parse_fip(struct fip_state *fip,
 		struct fip_image_desc *desc;
 
 		/* Found the ToC terminator, we are done. */
-		if (memcmp(&toc_entry->uuid, &uuid_null, sizeof(uuid_t)) == 0) {
+		if (uuid_is_null(&toc_entry->uuid)) {
 			terminated = 1;
 			break;
 		}

-- 
2.39.5



