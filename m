Delivery-date: Mon, 20 Oct 2025 18:24:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vAsgm-009x3z-2P
	for lore@lore.pengutronix.de;
	Mon, 20 Oct 2025 18:24:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vAsgm-0004vz-1X
	for lore@pengutronix.de; Mon, 20 Oct 2025 18:24:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ZzdLPj8PVTf55Ed8+33ayfjvFDhGYrz20qrLy4NES1M=; b=szQjbFtde5Uz+xwK0Qr8VChQ2q
	Nx7m9U2+STFa834VlTg/35vvpZssyT4N3/z0ATWhFCYGTnNK4wrLaK8vY3jcPgdtvk3Wtyfeo88AI
	/RuW85R6aNP62silDCgy8c0GiB0sO0hVpMk20xEryN3uusAkzLjJIz2aatQz0Ozr0cIIjEWTSEs1q
	NXscq1LHOKKNRZNUMgtS+FTKXbtka2znof/Yn4Y4sAbJrrhAe5jac5nFuN/2eCNDf9AXFEou8Xf1b
	+Yv20g/UPZgMuU/XfUE3FD4RiU1e/cUtcW9uuFnnkkkE87wZSUtxmLKCnenasRfh25tq+Z/GRy37X
	Ep2KNZNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAVof-0000000BAlk-1IdF;
	Sun, 19 Oct 2025 15:59:29 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAVod-0000000BAlN-2hXV
	for barebox@lists.infradead.org;
	Sun, 19 Oct 2025 15:59:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id C3D6460210;
	Sun, 19 Oct 2025 15:59:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 728C3C4CEE7;
	Sun, 19 Oct 2025 15:59:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760889552;
	bh=ulZpVorq2icgcddu1R4xtqJZuiuYXaK+DZSBbcKbAzc=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=l9eHNHgjpH6YMPgG+GEsLl8RIkhBGPEIJ6EtZBt16nhYJOIiPEPyJYB/LlEXjSbn3
	 c1xzd8+A0DFGugk1mirGoW90GQotAOjFmEqPFNzGlHpyaOaNtJ7bgjtxBODd4AKSGQ
	 PbTlBhUrCmah4V2ltQNRr/5OkOrhrlpK90DkPP6zExugTYsbkQHtWjKzmsCwg4y1Ey
	 nUi2iOk8o3xR+dpFAWXxz5lx/ca2wqxxdnJvGH5xxH1Fr1IWWMghO7IYRvaXx1rDgL
	 D2GPpiTswS5brsmAW1obSYdH+/E659YcHM1i7fnhQFddeYoBAl2MqeFV3SMGvSksZc
	 vYYDHydhBe4mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C388CCD195;
	Sun, 19 Oct 2025 15:59:12 +0000 (UTC)
From: Maud Spierings via B4 Relay <devnull+maud_spierings.hotmail.com@kernel.org>
Date: Sun, 19 Oct 2025 17:07:06 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251019-parted-v1-1-93b0501b40d9@hotmail.com>
X-B4-Tracking: v=1; b=H4sIAJn+9GgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDA0NL3YLEopLUFN0kgxQzY3NTC4NUCwMloOKCotS0zAqwQdGxtbUAumA
 11VgAAAA=
X-Change-ID: 20251019-parted-b0d637580e80
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Maud Spierings <maud_spierings@hotmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760889551; l=4234;
 i=maud_spierings@hotmail.com; s=20241110; h=from:subject:message-id;
 bh=zwCyK/H57AcW4GRaqumO/cCqsSvtqE+QFRdZGe7QVtY=;
 b=Cq0wrdXfV8pKG59DgQZXsq2sdKKXiQMzT81p9XkBjc/NgTKF8WPZFlsTriKrgGfAPvFWNtRYf
 B4dmktAzqP0CquYjQ57cuVy/iFhILNeDtGvjq9cob2mbggFSh3OZhq4
X-Developer-Key: i=maud_spierings@hotmail.com; a=ed25519;
 pk=CeFKVnZvRfX2QjB1DpdiAe2N+MEjwLEB9Yhx/OAcxRc=
X-Endpoint-Received: by B4 Relay for maud_spierings@hotmail.com/20241110
 with auth_id=273
X-Original-From: Maud Spierings <maud_spierings@hotmail.com>
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
X-Spam-Status: No, score=-102.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,USER_IN_WELCOMELIST,
	USER_IN_WHITELIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] parted: add max option to mkpart <end>
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
At first it was considered to make <end> an optional argument. But this
would make chaining parted subcommands very difficult to manage.
Therefore I chose to make "max" an option so this can still be done like
so:

parted /dev/mmc0 mklabel gpt mkpart env bbenv 1MiB 2MiB mkpart boot fat32 2MiB 66MiB mkpart root ext4 66MiB max print

I get a checkpatch error about assignment in an if statement, the issue
is that there is an error print in parted_strtoull(), so if it checks
for a regular value but it is "max" it will print an error even though
there is none.

removing that print and adding it to every place where it is used seems
excessive too. What would be a good alternative approach?

Another option I have considered is making end=0 mean fill to the end,
if that is preferred I will make it so in v2
---
 commands/parted.c | 56 +++++++++++++++++++++++++++++++++++--------------------
 1 file changed, 36 insertions(+), 20 deletions(-)

diff --git a/commands/parted.c b/commands/parted.c
index 7ec56da4c15f..0e858eb881ba 100644
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
@@ -150,40 +154,51 @@ static int do_mkpart(struct block_device *blk, int argc, char *argv[])
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
+	} else if (!(ret = parted_strtoull(argv[4], &end, &mult))) {
+		if (!mult)
+			mult = gunit;
+		end *= mult;
+
+		/* If not on sector boundaries round end down */
+		end = ALIGN_DOWN(end, SZ_1M);
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
+	} else {
+		return ret;
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
@@ -424,6 +439,7 @@ BAREBOX_CMD_HELP_TEXT("<type> must be \"gpt\" or \"msdos\"")
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




