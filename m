Delivery-date: Fri, 26 Jun 2026 10:47:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd2DN-00A12D-17
	for lore@lore.pengutronix.de;
	Fri, 26 Jun 2026 10:47:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd2DM-000615-09
	for lore@pengutronix.de; Fri, 26 Jun 2026 10:47:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fLm0QA6V2IrlERnE/qocxbB0w7J6aYpnxbpPahllP3s=; b=lvxduItnSSFkdw4/t8qITk+i8F
	XUfd08yKS5Nd8k2eEx9iJ2hnt0oCZK2jKuIQv6VU+SgjPLkJFxaBB4k4ImMke3ZCGC+aMCjWhJyqL
	WkM/k0hxebWlFG1N3lY6cNRe82xk9kNsiUQ40OHH3sSKHMukdpmWRB57GW4YB5pDUiwWwMqWKFfIk
	ubVrMNl1bILqXV27PWE7NkvR/CHg4RDYI7Z5yMdfnexd7APBfqvXIfd4+tPZajPtIHPmlTadskByV
	cw0Uo68cwuO0rbEoXmuwF2e5+e6sRmyOZXiF++xmlWM2q97OoH6jGK0dBetf7DgH36TccxM9o5dUe
	5Fv7azCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd2Cg-0000000AtLE-3i1X;
	Fri, 26 Jun 2026 08:46:28 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd2Cd-0000000AtEr-0GcR
	for barebox@bombadil.infradead.org;
	Fri, 26 Jun 2026 08:46:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=fLm0QA6V2IrlERnE/qocxbB0w7J6aYpnxbpPahllP3s=; b=RTNXWYA7L9/SEJdWMyavrr3Emv
	1iZI7NisP+fbAQYRP3MpEy+JBnn/ip4j2eGaJmVIziKNzpYWL8tC8Ox+PUp98s2UYcuv7PG8aPOJ7
	eNJ5LoFw1VF8XmHzWebQDcQyQAk4DBgO3g7qy7/2HMILVXgclFaNUj2ogIpJsz241TokZCivcSaAy
	fwueeZ4OCefX8sgU/NU8CV6YABz9sEweFTlUnhNpOwNUPj7Cwfn4CnS7tPIyaLLzn0XPmrMKBWwVK
	q5G9qZQLBA/77i3uF35i8RfaT88A7tMO85ZO4EFP2p60jgaDpHzDBoGs7nhFStRe7dumNF4Fe9z5E
	PpVoKoew==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wd2CY-00000004cm1-254V
	for barebox@lists.infradead.org;
	Fri, 26 Jun 2026 08:46:21 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wd2CV-0003ZP-N8; Fri, 26 Jun 2026 10:46:15 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 26 Jun 2026 10:42:30 +0200
Message-ID: <20260626084608.1388806-20-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260626084608.1388806-1-a.fatoum@barebox.org>
References: <20260626084608.1388806-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_094618_671688_7090D474 
X-CRM114-Status: UNSURE (   9.03  )
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
Subject: [PATCH 19/26] partitions: dos: allocate correctly sized buffer for dos_partition_desc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

512 bytes is likely more than was ever required for this struct.
Allocate instead exactly as many bytes as needed.

Assisted-by: Codex:gpt-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/partitions/dos.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/partitions/dos.c b/common/partitions/dos.c
index ce2e21357d52..1526b97dec67 100644
--- a/common/partitions/dos.c
+++ b/common/partitions/dos.c
@@ -318,7 +318,7 @@ static void dos_partition_free(struct partition_desc *pd)
 
 static __maybe_unused struct partition_desc *dos_partition_create_table(struct block_device *blk)
 {
-	struct dos_partition_desc *dpd = xzalloc(512);
+	struct dos_partition_desc *dpd = xzalloc(sizeof(*dpd));
 
 	partition_desc_init(&dpd->pd, blk);
 
-- 
2.47.3



