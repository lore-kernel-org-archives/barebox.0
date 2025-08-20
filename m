Delivery-date: Wed, 20 Aug 2025 12:30:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uog5G-002aQ6-1N
	for lore@lore.pengutronix.de;
	Wed, 20 Aug 2025 12:30:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uog5E-0007VS-Jg
	for lore@pengutronix.de; Wed, 20 Aug 2025 12:30:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2laCSSDzrhU8Fn56UVoxzaE7vMGjFxDmF5y7IjD8m84=; b=L/XZ7DEI/Z9cMaERXfSclENXMR
	Qpv3ndD3gyicPwm+vCk8Ow2MrnwAKIYq8jRlemD0wdLmoEaujJqOTp96xjvWA1K3yFh+bibpvxDr5
	1CTBgzQtQnzsrAqdNtxkHa2EFzAHZfpcWNXMK48VtiltMBljp/tWdYj+NTdE5JmFP5UPvByfRSaHP
	cmsPkfeZ2eg/X0nBJpNDgUQbO7AB2n28AHDvPZeQWunatmNT2IOBBBWedn7/onpCYHo+MZa/TVkNY
	GU19RCMV4zMIsrr5ioaqcr3PT8cMIfADbvvaNpbFDsVwHXpv9FYtTMXvV9j2vKIpoLxbnqWtpWBZR
	mSuDUbrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uog4l-0000000D9L8-29ho;
	Wed, 20 Aug 2025 10:29:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uofQy-0000000D0r2-37yu
	for barebox@bombadil.infradead.org;
	Wed, 20 Aug 2025 09:48:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=2laCSSDzrhU8Fn56UVoxzaE7vMGjFxDmF5y7IjD8m84=; b=nsX1fKmfyq7qVxkGePUkYTafyV
	xFk8SkvrVzxzhstm+SdQX8McgHgQ9Jdwk/vCUtUX9z6PY755TPt/06zdIYx+MDr6148a1jHCCPUWn
	XBLVXrxNVKLAjgREQ+mEFVFaM5tkqK/BgLP19TK6AiDHwP9EfCpvceQpYm9M2FSPAu3CqZWsG7ll9
	nd3xV5RD666erCpqlFhMiGexDYptxsVp2640+brQMKMdf9BW1b4bL6HVAYXk9Sl3eUX7cRmg3EU3+
	BDxKSGJzoput1hm115JiiZ5/FStuprBsvlLq9itRd5YJ40Q5KX2h6zCzT7mCCXuDNMv5JNo/BoXuS
	L523I0/A==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uofQw-00000000HWf-0CMB
	for barebox@lists.infradead.org;
	Wed, 20 Aug 2025 09:48:43 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1uofQq-0000DY-MX; Wed, 20 Aug 2025 11:48:36 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 20 Aug 2025 11:48:43 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250820-v2024-05-0-topic-fit-overlay-v6-11-9d1b3bab2ee2@pengutronix.de>
References: <20250820-v2024-05-0-topic-fit-overlay-v6-0-9d1b3bab2ee2@pengutronix.de>
In-Reply-To: <20250820-v2024-05-0-topic-fit-overlay-v6-0-9d1b3bab2ee2@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_104842_219101_5D15D75D 
X-CRM114-Status: GOOD (  11.52  )
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
Subject: [PATCH v6 11/12] FIT: fit_open: save the filename
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is in preparation of buffering fit_open() calls to not load the
same fit twice if it is still open.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 common/image-fit.c  | 5 +++--
 include/image-fit.h | 1 +
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/common/image-fit.c b/common/image-fit.c
index afd82637444a479c8cbb41c5d779da6a013c0386..c9d08d25f723665e5203d8e8372255a39bf739de 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -999,9 +999,8 @@ struct fit_handle *fit_open(const char *_filename, bool verbose,
 		return ERR_PTR(ret);
 	}
 
-	free(filename);
-
 	handle->fit = handle->fit_alloc;
+	handle->filename = filename;
 
 	ret = fit_do_open(handle);
 	if (ret) {
@@ -1016,6 +1015,8 @@ static void __fit_close(struct fit_handle *handle)
 {
 	if (handle->root)
 		of_delete_node(handle->root);
+
+	free(handle->filename);
 	free(handle->fit_alloc);
 }
 
diff --git a/include/image-fit.h b/include/image-fit.h
index f8321aa87e11fcea642593e790a37df72a2e93b1..68f70f4365cb7a650596263086f7de2209d5957e 100644
--- a/include/image-fit.h
+++ b/include/image-fit.h
@@ -13,6 +13,7 @@ struct fit_handle {
 	const void *fit;
 	void *fit_alloc;
 	size_t size;
+	char *filename;
 
 	bool verbose;
 	enum bootm_verify verify;

-- 
2.39.5



