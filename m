Delivery-date: Fri, 13 Mar 2026 14:33:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12eI-000DKp-2Z
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:33:54 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12dz-00082L-7A
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:33:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5Aod9OuN6+OxEPUdvi6NKvU7EWSPr7KE70hbdo2sqtQ=; b=NL912twQdqz1e9ONNvEktIvVDh
	qbxXUPWHeLZ9IxYm0IOx9KMNqaBNKPt1PaHzXdI9cKB/1nvRU8T2AoGtOToJVs079oivg9t8BJGY5
	hx7OsaNOMB7n6csHTxZmJ8H+kkbeSJiWHDq17CWskgvIlbIhxfMn8N01mhxn/jdHkidlg3dtcCxjW
	X4RZlaUrDj+68gDBJeyAo5C0Pvm7mmg8VrUsdO8QYexzZvyy4DAuiJ6vYSLiJpblZxnwjGLPS97ed
	aRmAC5CPVyj7UA33j73Sw4qG+ulv3OVk1WGbT0Z3ZWeqyx766F5PLHQqZZ6tt3QOfFji5HlRRfTjl
	sQJFCYVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12dC-00000000Feo-2XjY;
	Fri, 13 Mar 2026 13:32:46 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d7-00000000FWg-0QK2
	for barebox@bombadil.infradead.org;
	Fri, 13 Mar 2026 13:32:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=5Aod9OuN6+OxEPUdvi6NKvU7EWSPr7KE70hbdo2sqtQ=; b=Yl6ve8eGa7X3XhtOz/BhJcQmid
	GfeAnDpFvtioWt4lmIm8fh/3snfXIFJ6KqpDRjFSDc2cVmQv2r2ACm7I/lMnM+fSNPGsuYganCTTa
	672IpXRxXcpkGzYL8kWflbA8f1HCwf2Lcu9lHeuw4iULtHdMlE+BA3Tq2TM3uqdrSVc6e05pTjvVQ
	akPwAsOSdfNgeMWXAAYvDrxEV1BzWkbF314Dd5h/16loTXLhc4UnbzfkMyX3+fdrcsLaYMPe4NKb2
	MtOdKaQquvBTs5gGkZHr5oP7mn01G3vSM0KeByZ2WtMtewaReW09my430f8ryX59kYiIlbbS6KGKD
	JO8xwdxg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12cy-00000003OSf-3Bfi
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:32:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12cy-0006oD-7f; Fri, 13 Mar 2026 14:32:32 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12cy-0005Sv-04;
	Fri, 13 Mar 2026 14:32:32 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XM-00000009ULB-2ewB;
	Fri, 13 Mar 2026 14:26:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Date: Fri, 13 Mar 2026 14:25:37 +0100
Message-ID: <20260313132631.2257573-54-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
References: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_133234_119533_76BD22B1 
X-CRM114-Status: UNSURE (   9.57  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,RCVD_IN_VALIDITY_RPBL_BLOCKED,
	RCVD_IN_VALIDITY_SAFE_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=no
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 53/58] of: fdt: fix heap-buffer-overflow in fdt_machine_is_compatible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

fdt_machine_is_compatible() reads the FDT property header fields
(len, nameoff) without first checking that the full struct fdt_property
fits within the FDT buffer. While the tag field (4 bytes) is validated
by dt_ptr_ok(fdt, tagp), the subsequent access to fdt_prop->len and
fdt_prop->nameoff (at offsets +4 and +8) can read past the buffer when
the FDT is truncated between the tag and the property header fields.

Add a dt_ptr_ok(fdt, fdt_prop) check before accessing the property
fields, matching the existing pattern in __of_unflatten_dtb().

Found by fuzz-fdt-compatible with AddressSanitizer.

(cherry picked from commit ef2e9ab5611cc5c8d4faec35f95915a4e204d3b2)

Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
Link: https://lore.barebox.org/20260302135258.197132-3-a.fatoum@barebox.org
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/fdt.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index b529b4d1fe3d..2ef7658bc4ab 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -801,6 +801,9 @@ int fdt_machine_is_compatible(const struct fdt_header *fdt, size_t fdt_size, con
 
 		case FDT_PROP:
 			fdt_prop = (const void *)fdt + dt_struct;
+			if (!dt_ptr_ok(fdt, fdt_prop))
+				return 0;
+
 			len = fdt32_to_cpu(fdt_prop->len);
 
 			name = dt_string(&f, dt_strings, fdt32_to_cpu(fdt_prop->nameoff));
-- 
2.47.3



