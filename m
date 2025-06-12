Delivery-date: Thu, 12 Jun 2025 10:53:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPdgn-006SCF-2O
	for lore@lore.pengutronix.de;
	Thu, 12 Jun 2025 10:53:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPdgm-0000jI-UR
	for lore@pengutronix.de; Thu, 12 Jun 2025 10:53:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NNWlryGR8bSSEQ3NcnT/IKxmMRjkrHsoA0jDod+b4UQ=; b=wguuuW9ZiuxNqa5B6gq4h9WuPP
	6IlFhals8o+En1wu5h4cQVUcxcH9MxPdQa9lafbJTxOdI/j2q8JYITEvH590/Gq42NOz2zrJ8qVCI
	U8mcOWTEdRj4avFlYQbgKfbHXMjh5LaELwBse9ARkVKUUiUVFIaj9F/Vbjji3kwTs0aVribPN6RH4
	Pw3NZJJ4t9AM1AEm+C9qm29IWvRtSFx0U9li09yyKxbXhmumQ4zPZ6q7rSDBATMangMBHpI+qQZRl
	YfDQ0QID50P44AiFwqUcP10H1dskqXQIdk1ZHgyQ/96Cylo8crk3Ofa5YLKiK9ydMnbOrdggkLEy7
	vHpTzrBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPdgI-0000000CilO-2aoq;
	Thu, 12 Jun 2025 08:53:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPcz0-0000000CYhv-36Ho
	for barebox@lists.infradead.org;
	Thu, 12 Jun 2025 08:08:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uPcyz-0007MA-FH; Thu, 12 Jun 2025 10:08:21 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uPcyz-0035bE-0R;
	Thu, 12 Jun 2025 10:08:21 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uPcyz-008oS9-02;
	Thu, 12 Jun 2025 10:08:21 +0200
Date: Thu, 12 Jun 2025 10:08:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Andrei Lalaev <andrey.lalaev@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <aEqK9IXf94hx9QnX@pengutronix.de>
References: <20250611175645.144025-1-andrey.lalaev@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250611175645.144025-1-andrey.lalaev@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250612_010822_778476_7129C24A 
X-CRM114-Status: GOOD (  25.73  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] common: fastboot: send FAIL if variable does not exist
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Andrei,

On Wed, Jun 11, 2025 at 07:56:45PM +0200, Andrei Lalaev wrote:
> According to doc [1], new implementations should send FAIL if the
> variable specified in the getvar command does not exist.
> 
> [1]: https://android.googlesource.com/platform/system/core/+show/refs/heads/main/fastboot/README.md#121
> 
> Signed-off-by: Andrei Lalaev <andrey.lalaev@gmail.com>
> ---
>  common/fastboot.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/common/fastboot.c b/common/fastboot.c
> index 56bc4e82c4..3df3c227a3 100644
> --- a/common/fastboot.c
> +++ b/common/fastboot.c
> @@ -372,7 +372,7 @@ static void cb_getvar(struct fastboot *fb, const char *cmd)
>  		goto out;
>  
>  skip_partitions:
> -	fastboot_tx_print(fb, FASTBOOT_MSG_OKAY, "");
> +	fastboot_tx_print(fb, FASTBOOT_MSG_FAIL, "");

With this a "fastboot getvar all" fails.

I fixed this up as below.

Sascha

----------------------8<-------------------------------

>From dd377c937f8bd14842e8e1c119bd3323f85570f8 Mon Sep 17 00:00:00 2001
From: Andrei Lalaev <andrey.lalaev@gmail.com>
Date: Wed, 11 Jun 2025 19:56:45 +0200
Subject: [PATCH] common: fastboot: send FAIL if variable does not exist

According to doc [1], new implementations should send FAIL if the
variable specified in the getvar command does not exist.

[1]: https://android.googlesource.com/platform/system/core/+show/refs/heads/main/fastboot/README.md#121

Signed-off-by: Andrei Lalaev <andrey.lalaev@gmail.com>
Link: https://lore.barebox.org/20250611175645.144025-1-andrey.lalaev@gmail.com
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/fastboot.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/common/fastboot.c b/common/fastboot.c
index 7227149dfb..f678fe8ccb 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -348,8 +348,10 @@ static void cb_getvar(struct fastboot *fb, const char *cmd)
 	if (fastboot_tx_print_var(fb, &fb->variables, cmd))
 		goto out;
 
-	if (!all && !partition)
-		goto skip_partitions;
+	if (!all && !partition) {
+		fastboot_tx_print(fb, FASTBOOT_MSG_FAIL, "no such variable: %s", cmd);
+		goto out;
+	}
 
 	file_list_for_each_entry(fb->files, fentry) {
 		int ret;
@@ -371,8 +373,11 @@ static void cb_getvar(struct fastboot *fb, const char *cmd)
 	if (fastboot_tx_print_var(fb, &partition_list, cmd))
 		goto out;
 
-skip_partitions:
-	fastboot_tx_print(fb, FASTBOOT_MSG_OKAY, "");
+	if (all)
+		fastboot_tx_print(fb, FASTBOOT_MSG_OKAY, "");
+	else
+		fastboot_tx_print(fb, FASTBOOT_MSG_FAIL, "no such variable: %s", cmd);
+
 out:
 	fastboot_free_variables(&partition_list);
 }
-- 
2.39.5


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


