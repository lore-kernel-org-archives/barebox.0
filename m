Delivery-date: Mon, 20 Oct 2025 19:34:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vAtmV-009y9j-0h
	for lore@lore.pengutronix.de;
	Mon, 20 Oct 2025 19:34:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vAtmU-0004Lm-Kn
	for lore@pengutronix.de; Mon, 20 Oct 2025 19:34:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Qh/VZBMSiaSRw8Ckse+nSBYm+lyHQ6IMmkH68EZdb3M=; b=OH4ScrUoV5edowjFuOodZkH59Q
	xVeeNmzMy8/FE6ugBv7/XdmuZAwx3NV4uNVmfgbSA9cGjE3fiAIzDUA/V//D+aV9OY+KOqbZcimvc
	5v4GEjej9wiQTDNFvlIt5UT5GT3fSPypNNbeiNm96r5P4DO5bMIIA5eoaVXqxDIDbTPrBwkdjE9v+
	PgpM+HDgg01MXjcP0X862XKbJEDCxlZnaCU/othuyQrWtKjuUlS1yYobwDpKhsQtnba2D3sR5SUIn
	g3C3Sac84rOF88L3u7MnERprIGLXLglyiZKp7bEAqD5g/oG+5Pt4QZvGNc7cl407/6l+OKzfE0CUJ
	e1hTY6Bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAtls-0000000EVKH-3Nc7;
	Mon, 20 Oct 2025 17:34:12 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAtlq-0000000EVJK-2ddb
	for barebox@lists.infradead.org;
	Mon, 20 Oct 2025 17:34:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id BCCE348C37;
	Mon, 20 Oct 2025 17:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CACDC4CEFE;
	Mon, 20 Oct 2025 17:34:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760981649;
	bh=FlYrA1A5GZDDip7pdhDECGaNXvqW9fUAkAjKcz+xFuY=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=DW7PZnA52JYs3r6NbvG7DW5jZyENR+axGCOj5XlvYtWEm0vdOlopiuXzyk+CPRWXW
	 89k4o1saGVLLZaSha9/f495F58RrxqkfdMchim21v9Ht/Sifz9jlrWNzUTdpPJtjpn
	 vXHvZeiHNElqdf1XGo3oF18cKyGs5j/of7WONqBVLJPgxO29NvSm/x+PWeA9tD1TPD
	 Kwwd3FEWu4fnSQk+691J3ea2GG6+RFmZfMlN6gNX4coZ6BToo9qk2QjoLuc4imvKR5
	 IN3S18QurwOWm9HM48BOeXL4nDszCstPPkQjr5kcrk7EfgFzUTYmHsm6pFAprjEkVB
	 RepRJFxvzqQDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8C7D9CCD193;
	Mon, 20 Oct 2025 17:34:09 +0000 (UTC)
From: Maud Spierings via B4 Relay <devnull+maud_spierings.hotmail.com@kernel.org>
Date: Mon, 20 Oct 2025 19:34:06 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251020-parted-v2-1-63b8490ec9f4@hotmail.com>
X-B4-Tracking: v=1; b=H4sIAI1y9mgC/2XMQQ6CMBCF4auQWVszA1apK+9hWBQ6yiRCSds0G
 sLdrWxd/i8v3wqRg3CEa7VC4CxR/FyiPlQwjHZ+shJXGmqsNSEZtdiQ2Kke3bm56Ba5RSjnJfB
 D3jt070qPEpMPn93N9Fv/iEyKlGl61Ej9CZ25jT5NVl7HwU/Qbdv2Bd39dIKeAAAA
X-Change-ID: 20251019-parted-b0d637580e80
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Maud Spierings <maud_spierings@hotmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760981648; l=3588;
 i=maud_spierings@hotmail.com; s=20241110; h=from:subject:message-id;
 bh=vKyxeMOFHKeRteYbOIinQ83si/JuCrpetNr2ni6B0BE=;
 b=JXc+B8SfltPukohjANtkXBvIsvyvG7SN27hVjRNiZsm3pJi0QXME/K1yQXSFLQTDi/qQ6qDK8
 WR6pGjpZAk/BgGC9mw95dZ5L5JJmlvaMY9HwXgxfNgHPwGxCy6pjugo
X-Developer-Key: i=maud_spierings@hotmail.com; a=ed25519;
 pk=CeFKVnZvRfX2QjB1DpdiAe2N+MEjwLEB9Yhx/OAcxRc=
X-Endpoint-Received: by B4 Relay for maud_spierings@hotmail.com/20241110
 with auth_id=273
X-Original-From: Maud Spierings <maud_spierings@hotmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_103410_714483_7EB5B8D9 
X-CRM114-Status: GOOD (  18.84  )
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
Reply-To: maud_spierings@hotmail.com
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-102.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,USER_IN_WELCOMELIST,
	USER_IN_WHITELIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2] parted: add max option to mkpart <end>
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Maud Spierings <maud_spierings@hotmail.com>

Add the option to specify "max" as the end location, this will fill the
block device up to the end of its available space.

A secondary effect is that it is now possible to use two different size
units for start and end

mkpart root ext4 66MiB 3866111KiB

previously it would read 66MiB as 66KiB as it only used the last read
unit.

Signed-off-by: Maud Spierings <maud_spierings@hotmail.com>
---
Changes in v2:
- Remove rounding down of the end point to the nearest MiB boundary
- remove the else if and make it the else continue to get rid of
  assignment in if condition.
- Link to v1: https://lore.kernel.org/r/20251019-parted-v1-1-93b0501b40d9@hotmail.com
---
 commands/parted.c | 55 +++++++++++++++++++++++++++++++++++--------------------
 1 file changed, 35 insertions(+), 20 deletions(-)

diff --git a/commands/parted.c b/commands/parted.c
index 7ec56da4c15f..f03dc37c05b3 100644
--- a/commands/parted.c
+++ b/commands/parted.c
@@ -138,6 +138,10 @@ static int do_mkpart(struct block_device *blk, int argc, char *argv[])
 	int ret;
 	uint64_t mult;
 
+	pdesc = pdesc_get(blk);
+	if (!pdesc)
+		return -EINVAL;
+
 	if (argc < 5) {
 		printf("Error: Missing required arguments\n");
 		return -EINVAL;
@@ -150,40 +154,50 @@ static int do_mkpart(struct block_device *blk, int argc, char *argv[])
 	if (ret)
 		return ret;
 
-	ret = parted_strtoull(argv[4], &end, &mult);
-	if (ret)
-		return ret;
-
 	if (!mult)
 		mult = gunit;
-
 	start *= mult;
-	end *= mult;
 
-	/* If not on sector boundaries move start up and end down */
+	/* If not on sector boundaries round start up */
 	start = ALIGN(start, SZ_1M);
-	end = ALIGN_DOWN(end, SZ_1M);
 
 	/* convert to LBA */
 	start >>= SECTOR_SHIFT;
-	end >>= SECTOR_SHIFT;
+
+	if (!strcmp(argv[4], "max")) {
+		/* gpt requires 34 blocks at the end */
+		if (pdesc->parser->type == filetype_gpt)
+			end = blk->num_blocks - 35;
+		else if (pdesc->parser->type == filetype_mbr)
+			end = blk->num_blocks - 1;
+		else
+			return -ENOSYS;
+	} else {
+		ret = parted_strtoull(argv[4], &end, &mult);
+		if (ret)
+			return ret;
+
+		if (!mult)
+			mult = gunit;
+		end *= mult;
+
+		/* convert to LBA */
+		end >>= SECTOR_SHIFT;
+
+		/*
+		 * When unit is >= KB then subtract one sector for user
+		 * convenience. It allows to start the next partition where the
+		 * previous ends
+		 */
+		if (mult >= 1000)
+			end -= 1;
+	}
 
 	if (end == start) {
 		printf("Error: After alignment the partition has zero size\n");
 		return -EINVAL;
 	}
 
-	/*
-	 * When unit is >= KB then substract one sector for user convenience.
-	 * It allows to start the next partition where the previous ends
-	 */
-	if (mult >= 1000)
-		end -= 1;
-
-	pdesc = pdesc_get(blk);
-	if (!pdesc)
-		return -EINVAL;
-
 	ret = partition_create(pdesc, name, fs_type, start, end);
 
 	if (!ret)
@@ -424,6 +438,7 @@ BAREBOX_CMD_HELP_TEXT("<type> must be \"gpt\" or \"msdos\"")
 BAREBOX_CMD_HELP_TEXT("<fstype> can be one of  \"ext2\", \"ext3\", \"ext4\", \"fat16\", \"fat32\" or \"bbenv\"")
 BAREBOX_CMD_HELP_TEXT("<name> for MBR partition tables can be one of \"primary\", \"extended\" or")
 BAREBOX_CMD_HELP_TEXT("\"logical\". For GPT this is a name string.")
+BAREBOX_CMD_HELP_TEXT("<end> can be \"max\" it will take all remaining space")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(parted)

---
base-commit: 8defba1d0ab1aef9dd5d57710e18d0d02e2c48e2
change-id: 20251019-parted-b0d637580e80

Best regards,
-- 
Maud Spierings <maud_spierings@hotmail.com>




