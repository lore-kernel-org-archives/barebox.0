Delivery-date: Thu, 11 Jun 2026 23:23:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXmrq-004ptJ-10
	for lore@lore.pengutronix.de;
	Thu, 11 Jun 2026 23:23:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXmrp-00060c-NZ
	for lore@pengutronix.de; Thu, 11 Jun 2026 23:23:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=m7/Jj33wgKHC/qoJdioARnqAcbtQ0gpZ71BXup++2Oo=; b=xU/DAnlDxwiXa/8fWSZL9yF9p+
	Xjetacs/qKK+NDiSnqdvM/h9Zdy0YQ9mySbVLwCYbu4z0G+tQJbsoDJ0d/+DDczOQTfHX3Yn9K+ax
	gba5Eg/AwJ0VrsCiEZP0HWnIWSR3FfGjI9GHcWnPVwqix1AN0SGu84mLxf/7bvqXtX+faK7oarXMN
	3p1dR7PsvwI823KJV4BZHXtRQL8pvXkyEj60VFSOEi2KAFtW3B+x9uN1B4gdtI6j5Zhzp+rUzrOGV
	r3lpxkzWwMUei6enGKFghL8KYCmdSXXLPdu5z3OCamS53gtwV1jXdni8EFTx2t+oGp6gpgAJr3oQG
	Cs9KELnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXmqs-0000000A5Zh-3oYJ;
	Thu, 11 Jun 2026 21:22:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXmqr-0000000A5Yq-2BQ7
	for barebox@lists.infradead.org;
	Thu, 11 Jun 2026 21:22:14 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=localhost.localdomain)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wXmqp-0005kh-Q4; Thu, 11 Jun 2026 23:22:11 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Thu, 11 Jun 2026 23:22:00 +0200
Message-ID: <20260611212206.4103255-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_142213_554748_AB58C55A 
X-CRM114-Status: UNSURE (   8.20  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH master 1/2] efi: loader: release bootm OS staging buffer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The initial location of the OS image is currently kept reserved until
it's reclaimed after exiting boot services. This is unnecessary though
as the relevant parts of the PE are copied out anyway.

Therefore, free the original OS image to leave more space to the
decompresser.

Fixes: 229bc3b37e64 ("efi: loader: implement bootm handler")
Assisted-by: Codex:gpt-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 efi/loader/bootm.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/efi/loader/bootm.c b/efi/loader/bootm.c
index e1f1d508c59e..a68db742e173 100644
--- a/efi/loader/bootm.c
+++ b/efi/loader/bootm.c
@@ -267,6 +267,14 @@ static int efi_loader_bootm(struct image_data *data)
 		goto out;
 	}
 
+	/*
+	 * efi_load_pe() copied the executable image into EFI-managed memory.
+	 * The bootm staging buffer is no longer needed, and keeping it in the
+	 * memory map can block payloads from using their normal load address.
+	 */
+	release_sdram_region(data->os_res);
+	data->os_res = NULL;
+
 	efiret = efi_set_load_options(handle, load_option_size, load_option);
 	if (efiret)
 		goto out;
-- 
2.47.3



