Delivery-date: Tue, 20 Jan 2026 11:50:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vi9Jn-003MJR-0Q
	for lore@lore.pengutronix.de;
	Tue, 20 Jan 2026 11:50:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vi9Jm-0000vZ-4a
	for lore@pengutronix.de; Tue, 20 Jan 2026 11:50:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UIRgMaLwuH1DWzkXwVd2AB/kIN1s79D83O8SFTi+/u4=; b=vF0R7mIuwigFZkUmVQ2FRtkqyU
	qQebSAa7hR6AZ8JEjXJZRWt6N5s3wGN7mSyYypoNf023WkyglKMMcNPiebPzDgE4a4qKitQhF+6tF
	6DK5Jue5F/hhs4oOgTHwK+9aiGcSHx1qDFOsseNZijCD6jdmfpqisiolppcE2Q+Sem3+soWWVeFxr
	oTjKyvf6gF9Tizoj9MpKJtHZy3Nl1OQtMLSAZp4cP6on0TnMKaB1dbRytwSmPv7Sw+FXoyUQ0x9Pl
	qgskdHsTSyMO2Eh604kKzwi6TSNUlDzyajUMx6tq5uDkb8gU1MJL6kogfmgD6w1cNIJpmlgTPSg7S
	csUGUKEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi9JE-00000003ecV-3hve;
	Tue, 20 Jan 2026 10:50:04 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi9JC-00000003ec7-32PA
	for barebox@bombadil.infradead.org;
	Tue, 20 Jan 2026 10:50:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=UIRgMaLwuH1DWzkXwVd2AB/kIN1s79D83O8SFTi+/u4=; b=Vpp7kwTgSj9twSNwRXP7F5jnXS
	MBf2lgVxt9iEtSJldgtc570Z0Zs1q9wsXPy4by4DMu+NmNT0tRnSbxkC40jcSbtdf6HcqNTWenmAd
	jTdi/XOfahrkwhdbAQr1MGN/GPRBchlKsqt1h8AYEGzmP66ruBDXq0eZMMFZc49snB79JnbBIK8pI
	llFe67OINA2pEthii1jB4ZNtas39emLnVgpPbc9kQu8RjRJU9vmoCr+PSDXvfdWVJKtfojmD+gAhk
	wua63HiOcYgVWLlqW3Ae2U2qNf6y3ww7bzfLgRu5jN8rtDLUiucVgFuQGrYCRbBzgDrWSICXAt2XH
	ga+DpMpw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi9J9-0000000DqSV-2Urr
	for barebox@lists.infradead.org;
	Tue, 20 Jan 2026 10:50:01 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vi9J8-0000mK-0g; Tue, 20 Jan 2026 11:49:58 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Leonard=20G=C3=B6hrs?= <l.goehrs@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Tue, 20 Jan 2026 11:49:53 +0100
Message-ID: <20260120104957.41978-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260120104957.41978-1-a.fatoum@barebox.org>
References: <20260120104957.41978-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_104959_800385_D166E5DD 
X-CRM114-Status: GOOD (  10.69  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] efi: loader: remove dependency on LIBFDT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

LIBFDT is often available, because CONFIG_BOARD_GENERIC_DT pulls it in,
but in the normal case, we unflatten DT and have no need for libfdt at
all.

Remove the libfdt dependency from the EFI loader code by opencoding the
magic check.

Fixes: 229bc3b37e64 ("efi: loader: implement bootm handler")
Reported-by: Leonard Göhrs <l.goehrs@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 efi/loader/bootm.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/efi/loader/bootm.c b/efi/loader/bootm.c
index dffe53bcf9c8..da664847def8 100644
--- a/efi/loader/bootm.c
+++ b/efi/loader/bootm.c
@@ -124,15 +124,20 @@ static efi_status_t copy_fdt(void **fdtp)
  */
 static efi_status_t efi_install_fdt(void *fdt)
 {
+	const struct fdt_header *hdr = fdt;
 	/*
 	 * The EBBR spec requires that we have either an FDT or an ACPI table
 	 * but not both.
 	 */
 	efi_status_t ret;
 
-	/* Install device tree */
-	if (fdt_check_header(fdt)) {
-		pr_err("invalid device tree\n");
+	if (hdr->magic != cpu_to_fdt32(FDT_MAGIC)) {
+		pr_err("bad magic: 0x%08x\n", fdt32_to_cpu(hdr->magic));
+		return EFI_LOAD_ERROR;
+	}
+
+	if (hdr->version != cpu_to_fdt32(17)) {
+		pr_err("bad dt version: 0x%08x\n", fdt32_to_cpu(hdr->version));
 		return EFI_LOAD_ERROR;
 	}
 
-- 
2.47.3



