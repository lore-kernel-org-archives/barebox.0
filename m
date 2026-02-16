Delivery-date: Mon, 16 Feb 2026 10:18:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vrukO-002H1e-1Y
	for lore@lore.pengutronix.de;
	Mon, 16 Feb 2026 10:18:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vrukF-0008J1-6w
	for lore@pengutronix.de; Mon, 16 Feb 2026 10:18:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YYzRy3xNeYjQMDflNXQEDQJU3OA7h8VoNSegb5ly5/8=; b=yFBwKMQu5dlS4JjtXT8qulO66d
	P64S/dQNUq9JOeuUzkyavA/G1xb75JvAQm4uQRITfiXkrobzf0XP9XbHJUCSGZBviFZpEMAJH4MbX
	kTvOTQ308Lnxd7I0K/yKGKqpavufkRaoVfRS3kVoYwTzXEX9K8UqE30OYmJZQZswGLt8WG3hM/NOd
	rATB2NoSc6z+sSzaPU0qvJh3hsXYBnw6NJ4uydTp9rRsWDILaMVAYJrnIQEB+hXmeFenQdfhJLV2U
	ZN+LJVgJxUt0mlKP7bwRyTZuMmO/cD2VVBOTyoolEDsd13zdgj+i96FIMXY4/vDVGgNUcGSb2J8YB
	bYVXw2LQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruj4-00000006Euf-27JK;
	Mon, 16 Feb 2026 09:17:06 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruio-00000006EaX-1Fae
	for barebox@bombadil.infradead.org;
	Mon, 16 Feb 2026 09:16:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=YYzRy3xNeYjQMDflNXQEDQJU3OA7h8VoNSegb5ly5/8=; b=XXMqVOfY6n8x4ioSyDbWCEqK5u
	Ckxavd1uR8vOv0CRYBntn7hFDOwfwvfeM3yvT1n3tGWSaGrEqfMeGpwhYEHTzWm/fCUQcCMjH+VwK
	vcstkgJtod23p3SyLJPqmcSunxLsPuty1JkETXtClzbLXgRKKY3yMegQ83imLrV6OCPoWNyXibyVp
	U/VVw1nz2rUh5juklFuYwDSLJxn9JDMe8qbdKWNKGyxyRRy15I0j77Sd7M4UNLOhpULlZiPRBOfZ4
	q4oOFvQBidU3Bp+bWnyH1q1bHBDChHHgdmTqIJCzejg0U3AzIm/QBNoXmkZvUNilcEaSLaa33d6Cd
	KfHibaWQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruii-0000000EIEl-1ujB
	for barebox@lists.infradead.org;
	Mon, 16 Feb 2026 09:16:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruig-0006XU-4n; Mon, 16 Feb 2026 10:16:42 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruie-0012Xj-1e;
	Mon, 16 Feb 2026 10:16:41 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruH0-0000000Eudd-1FOe;
	Mon, 16 Feb 2026 09:48:06 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Date: Mon, 16 Feb 2026 09:44:12 +0100
Message-ID: <20260216084758.3548990-13-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
References: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_091645_210740_D701FE7E 
X-CRM114-Status: UNSURE (   9.38  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master 12/39] efi: loader: fix return type and memory leak in efi_smbios_register
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The function returns efi_status_t but returned -EINVAL (a POSIX error
code) on SMBIOS table write failure. Additionally, the EFI pages
allocated for the table were leaked on this error path.

Return EFI_LOAD_ERROR and free the allocated pages.

Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/loader/smbios.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/efi/loader/smbios.c b/efi/loader/smbios.c
index 81ba77c24017..d8a708978e11 100644
--- a/efi/loader/smbios.c
+++ b/efi/loader/smbios.c
@@ -40,7 +40,8 @@ static efi_status_t efi_smbios_register(void *data)
 
 	if (!write_smbios_table(buf)) {
 		pr_err("Failed to write SMBIOS table\n");
-		return -EINVAL;
+		efi_free_pages(memory, efi_size_in_pages(TABLE_SIZE));
+		return EFI_LOAD_ERROR;
 	}
 
 	/* Install SMBIOS information as configuration table */
-- 
2.47.3



