Delivery-date: Fri, 26 Jun 2026 10:51:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd2HY-00A1AE-2Q
	for lore@lore.pengutronix.de;
	Fri, 26 Jun 2026 10:51:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd2HX-00020H-3u
	for lore@pengutronix.de; Fri, 26 Jun 2026 10:51:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Yj482IzaBVIk0PeqL/kBuWD679s/dd6PDi9AIwd6yWs=; b=PiyF/HbkvjgC+YUXt9O5+IUIFh
	YbNO/bEO79jLZxKMdsZndqStptcWX4K4xcMwGV7CwWuVpJHl19e1o5GaCGePIIrCDpT3pJoL4VvMU
	O9EotOEQ2XLlggp70ux+BKCGwa5sMrEEX+sG228XDo8Av2LFAeBwSvDM1yF3NW9tcQFO3vgpO6GHA
	k3qJtl3EIiBDYSujAMe2e/1ef+ZLaRUPDK75iG1RBLbJ8qjBFCQShjrUKK3U3eDXpkj3KN6DQbgkG
	Q3u/4G7CypDEFNzpSzXeq0Q6tfMeB7nBlvl9QXOsxzbQwNj74//pMj+G6hds9Wtv1cLUaG26K9DBR
	NOWjOU8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd2Ck-0000000AtUv-3kRi;
	Fri, 26 Jun 2026 08:46:30 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd2Ce-0000000AtG8-2Mo2
	for barebox@bombadil.infradead.org;
	Fri, 26 Jun 2026 08:46:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Yj482IzaBVIk0PeqL/kBuWD679s/dd6PDi9AIwd6yWs=; b=MFg40jEJP89FIGqvxpraRLxuqj
	TUW2OhyjeCeBaGbQls5B0GQYolzCbOwqItk6hIZEtvXZX2lGoPtEhZ5mitL9FRmaiHzaJ9ideTMI1
	z9PGwomNvyzj0Ic4eAZtEywY02ddLui1Tk0P6yfW5DLGOVL+T1cU7HDgRGVAB2IFCkNfazbMI/0dS
	AObMD+wO0WFRU9llMyGO+lgex6P79ESuh2jmMQ3Qc9w18e4+hBHZjQ2ZP7jgoBQs1KyEyDJif91Tp
	iVHzpbHNQjp+HX8D5SMNFwUWhAIQ3Xv4RbP5IWYrHiJfkp7zMrZLkBxb2u6MiqHGGUjhV0cvR+vqY
	btmzWhAg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wd2CZ-00000004cmB-2kRf
	for barebox@lists.infradead.org;
	Fri, 26 Jun 2026 08:46:23 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wd2CX-0003ZP-4j; Fri, 26 Jun 2026 10:46:17 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 26 Jun 2026 10:42:37 +0200
Message-ID: <20260626084608.1388806-27-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260626084608.1388806-1-a.fatoum@barebox.org>
References: <20260626084608.1388806-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_094620_092175_2D3D96B1 
X-CRM114-Status: UNSURE (   7.86  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 26/26] commands: parted: exit if block size if not 512
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

While the partition parser can now deal with non-512-byte block sizes,
the partition writer still needs some more love beyond just replacing
SECTOR_SIZE/SECTOR_SHIFT.

Until that is afforded, exit with a descriptive error message.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 commands/createnv.c | 7 +++++++
 commands/parted.c   | 7 +++++++
 2 files changed, 14 insertions(+)

diff --git a/commands/createnv.c b/commands/createnv.c
index 6083ab7c2c8f..5d9dc5732c8a 100644
--- a/commands/createnv.c
+++ b/commands/createnv.c
@@ -69,6 +69,13 @@ static int do_createnv(int argc, char *argv[])
 		goto err;
 	}
 
+	if (BLOCKSIZE(blk) != SECTOR_SIZE) {
+		printf("parted: device has block size of %u, but only 512 currently supported\n",
+		       BLOCKSIZE(blk));
+		ret = -ENOTSUPP;
+		goto err;
+	}
+
 	buf = xzalloc(2 * BLOCKSIZE(blk));
 
 	ret = cdev_read(cdev, buf, 2 * BLOCKSIZE(blk), 0, 0);
diff --git a/commands/parted.c b/commands/parted.c
index 3f531faaef3f..829796748827 100644
--- a/commands/parted.c
+++ b/commands/parted.c
@@ -392,6 +392,13 @@ static int do_parted(int argc, char *argv[])
 		goto err;
 	}
 
+	if (BLOCKSIZE(blk) != SECTOR_SIZE) {
+		printf("parted: device has block size of %u, but only 512 currently supported\n",
+		       BLOCKSIZE(blk));
+		ret = -ENOTSUPP;
+		goto err;
+	}
+
 	argc -= 2;
 	argv += 2;
 
-- 
2.47.3



