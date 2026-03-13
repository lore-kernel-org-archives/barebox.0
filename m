Delivery-date: Fri, 13 Mar 2026 14:35:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12fX-000DXl-2f
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:35:11 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12fF-00019d-34
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:35:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ctR94n/dHtw+pOAvoMT918PLdNV2nfcrz4gq0jlKBJQ=; b=V4DqF7ZKAtw36f7m58xr+/j7mN
	m6yU1hJH63xRZ2S8RcmzIb4Odd4munkZixvHUDaiBuPxYljh/ecr6+H/s+VJjVcD18lGid745gr41
	CvFCsMPiNdTFaZNatH3u3wX+swu+CPsTP9CvqS4Fc+3WpA8aqxTJ8zgN7nsZuxl/qKRS2sszz4oKQ
	WLlAA8Dwr7oGAYLjFkk4XSk5ROCfNwm/I/xAiMXEdoN8RTqA/jpyLaQRjMnJWqRnOP46Utdft0Og2
	Kgo6bRMA2QUer7zVcxA7ywLsgKskpHw6K/CKy5RgQbr1ccO7SMhy/gLICWyAh7qXybF+KeOxd5m6s
	vXc1m+mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12dn-00000000Ggz-39U3;
	Fri, 13 Mar 2026 13:33:23 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12dI-00000000Fok-290L
	for barebox@bombadil.infradead.org;
	Fri, 13 Mar 2026 13:32:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=ctR94n/dHtw+pOAvoMT918PLdNV2nfcrz4gq0jlKBJQ=; b=Bns1YlC+0e6/Ft2S5ZHdSQ2cq7
	BmV4snnacFov4JvOu+/4x7q53rzs0aZsqoN+Hy456fOjPIvJjImJpj00AZukokV/ld7XFk9LJa4DN
	icTraFlI2zzVpZqscak7+Rso7WCxt6UitPj9JuGcg+5r3G7+YUJwxfXOZZ5bV7D2e0d/VDLuYtydc
	s0pYJqBM8qAmYd23BW/3kAdrB3cHIeGAyBDcKZ/mp2U8ufIudcTQ1eVbCHSfxTpTIqMkshT8CJ4we
	vmU+BKrcKWWNhoCGMwCp5yN76r2Z6J3K3AFrGWIRMU8YwUDwGHxtqcSSeczQMmyioii72GmeMzV6O
	Vxfbr1sg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d4-00000003OSk-13eD
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:32:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12d1-0006wj-Bl; Fri, 13 Mar 2026 14:32:35 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12d1-0005VA-0T;
	Fri, 13 Mar 2026 14:32:35 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XL-00000009ULB-2UaH;
	Fri, 13 Mar 2026 14:26:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Date: Fri, 13 Mar 2026 14:25:14 +0100
Message-ID: <20260313132631.2257573-31-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
References: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_133238_536992_4AA49C32 
X-CRM114-Status: UNSURE (   8.98  )
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
Subject: [PATCH v2025.09.y 30/58] efi: fix potential NULL dereference
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add NULL check for name buffer before writing to it.  When called with
name=NULL (for length query), the loop would dereference a NULL pointer.

(cherry picked from commit c54a80c2e557dafb970d21df9fd4a025908bee16)

Reported-by: clang-analyzer 19.1.7
Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Link: https://lore.barebox.org/20260216084758.3548990-2-a.fatoum@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 efi/efivar-filename.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/efi/efivar-filename.c b/efi/efivar-filename.c
index 51d0130fa774..7660d6cb0c57 100644
--- a/efi/efivar-filename.c
+++ b/efi/efivar-filename.c
@@ -78,6 +78,9 @@ int __efivarfs_parse_filename(const char *filename, efi_guid_t *vendor,
 	if (ret)
 		return ret;
 
+	if (!name)
+		return 0;
+
 	for (i = 0; i < *namelen - 1; i++)
 		name[i] = filename[i];
 
-- 
2.47.3



