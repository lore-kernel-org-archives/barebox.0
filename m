Delivery-date: Mon, 16 Feb 2026 10:17:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vrujq-002Gy8-0M
	for lore@lore.pengutronix.de;
	Mon, 16 Feb 2026 10:17:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vrujn-0007mq-Gq
	for lore@pengutronix.de; Mon, 16 Feb 2026 10:17:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/cP3+vH7HPjj9qjDTPCRyk+zFQ+rQDtosClxVn9iXm0=; b=ZdVDwlFE6r+f8O2WjbTFOnh42Z
	hzooD6kV6JZ+r389yEGRLJrkbmtLCLwT9ZvHe/JLcdC5fsb6051jqQrdST02GXJlawd+DX8TfhL1v
	j3zO4wABW6O7DyQP6y/F8B1D86mkKLSoLYGsCbKhu9/+8CNRnIWMIWTV7Oo5OwJxiypf1MhRTg8rz
	5VDEOQDOGLLQ7kDjPoVf8kHT6YOX0XepQ1choXf3Eo8CXfLk/Y810oY4rw2ekVPBO5GwnaHn1+6a1
	QZZSfj/V1uSsAqqMLstQYM/Vk2i6vaa7HUJ+9zLlWlQ8Wi20wqysXNmCAqmZi5S06ejrFP7zH1K5w
	0vXMPNsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruiu-00000006Eke-3AJv;
	Mon, 16 Feb 2026 09:16:56 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruio-00000006EaW-1CbH
	for barebox@bombadil.infradead.org;
	Mon, 16 Feb 2026 09:16:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=/cP3+vH7HPjj9qjDTPCRyk+zFQ+rQDtosClxVn9iXm0=; b=NvFWiovP2+L3rC8X6J2gJg5SKT
	II6ySP1lYr6rDB/4fT1Yjtavyl8zTWNp9kP3NYiFxRyePPcUfT4YCTM7KPvqB8KrsEgdF8ckzpDxj
	IpW5pqDaAZ9UbjmAoZF6wvh9/dG8vQL8isbxh5UWSp98LUeHDhowguOMDD4eyRm8uXqVyZJVbeBMM
	2FHZi5ASMx7Vwp/mWlRdzt8/fEEF3K5IJSTMprG5UW3AZv2kpQODkLasSP2HgD0lTC9TP7Dwp1LHj
	AwW6uVmFcK3HzxExCyWDopZ7Ar4mjfGO0347aHHIkV7A6CwSMrml2L100Gw8LIgDj0CHB6idKocae
	rnDgyvQA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruij-0000000EIEm-0dTl
	for barebox@lists.infradead.org;
	Mon, 16 Feb 2026 09:16:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruig-0006YW-IL; Mon, 16 Feb 2026 10:16:42 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruie-0012Xy-2p;
	Mon, 16 Feb 2026 10:16:42 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruH0-0000000Eudd-3Srf;
	Mon, 16 Feb 2026 09:48:06 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Date: Mon, 16 Feb 2026 09:44:24 +0100
Message-ID: <20260216084758.3548990-25-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
References: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_091645_765406_5B87F684 
X-CRM114-Status: GOOD (  11.50  )
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
Subject: [PATCH master 24/39] efi: runtime: fix variable store bounds check to account for alignment
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

efi_var_mem_ins() checks whether the new variable fits in the buffer,
but doesn't account for the up-to-7 bytes of ALIGN(..., 8) padding
that is applied when computing the final buffer length. This means a
variable insertion at the boundary of available space can write past
efi_var_buf_rtsize.

Use ALIGN() in the bounds check to match the actual space consumption.

Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/runtime/efi_var_mem.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/efi/runtime/efi_var_mem.c b/efi/runtime/efi_var_mem.c
index 83b5c53b063b..9752f1ca5fa4 100644
--- a/efi/runtime/efi_var_mem.c
+++ b/efi/runtime/efi_var_mem.c
@@ -192,8 +192,8 @@ efi_status_t __efi_runtime efi_var_mem_ins(
 	var_name_len = u16_strlen(variable_name) + 1;
 	data = var->name + var_name_len;
 
-	if ((uintptr_t)data - (uintptr_t)efi_var_buf + size1 + size2 >
-	    efi_var_buf_rtsize)
+	if (ALIGN((uintptr_t)data + size1 + size2, 8) -
+	    (uintptr_t)efi_var_buf > efi_var_buf_rtsize)
 		return EFI_OUT_OF_RESOURCES;
 
 	var->attr = attributes;
-- 
2.47.3



