Delivery-date: Mon, 02 Mar 2026 14:53:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vx3iD-007Itv-2L
	for lore@lore.pengutronix.de;
	Mon, 02 Mar 2026 14:53:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vx3iE-0008DR-2A
	for lore@pengutronix.de; Mon, 02 Mar 2026 14:53:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=388vN60t1EzyRaQNeq4Do436OEnUVj/N7UJ8ZAkHd64=; b=Gfeq/Xa+VpGyDxbXd+CbyuwzDx
	e16pOKySvVzo+2XcvC05OnUwmDke6HbB4DwRLDYgpRGpqT+h/pSXG0JTSRoPQVMWN7szBs236LGwM
	JFmGXmHW+qcdn5kfxbVaItvgJzfuZq/1Rv6AOvVp53MlLU2IfnM28aNfr1EF/SwpKwC98JsN3JuE2
	EuGB2u7kgue4OhZkZWPkdIFScDN0JLcxE/DPbeNrl54EohdbqIxC/naLAe/fUKDD/0dhBeLtfcTDW
	wkN/IUoN+DHgLShFQBCzFRUhBcT/nJYO5lsOaNiC5KZWQgde3EvklyMWpIKXFdxs00oyBvmFCIABA
	WeIwOaKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vx3hr-0000000DAKK-25lq;
	Mon, 02 Mar 2026 13:53:07 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vx3hq-0000000DAIu-0jFr
	for barebox@bombadil.infradead.org;
	Mon, 02 Mar 2026 13:53:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=388vN60t1EzyRaQNeq4Do436OEnUVj/N7UJ8ZAkHd64=; b=q7W80js7GERPc2PUURtEJj8SjD
	H4C1Qs8Acl5urxgWIgh7ztp1alPq6GcXh/QP/NzCyK/ptAELWksWs5tRImZALwVeeSiVvUJ4D8Mpo
	9ZLKRCo0z1aizgZ3AkT+wjJy1aiiRtm6+8kSbia0cza4S1aiNdSg+wZYzIXWjKC7+mtyvoKqX8+8P
	jwnFi7TEZg2WULyOW2Bwgq35cMf+UC4yyiNWlmW82/mNL/y3L4etMW8/1L0Lvkbb1fT5NIYfgn9a2
	u73UR+UfcxVukKKyWqT9n+x9HsqbuHmqts7cNcItMjySxfDoLGq3x6qjoU46Pl9YzYipTDUdWKJEC
	IDmVxSsg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vx3hn-00000000DdI-1C7k
	for barebox@lists.infradead.org;
	Mon, 02 Mar 2026 13:53:05 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vx3hk-00083H-AX; Mon, 02 Mar 2026 14:53:00 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: "Claude Opus 4.6" <noreply@anthropic.com>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  2 Mar 2026 14:52:34 +0100
Message-ID: <20260302135258.197132-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260302135258.197132-1-a.fatoum@barebox.org>
References: <20260302135258.197132-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260302_135303_396233_A6225A91 
X-CRM114-Status: UNSURE (   9.64  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master 3/3] of: fdt: fix heap-buffer-overflow in fdt_machine_is_compatible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

fdt_machine_is_compatible() reads the FDT property header fields
(len, nameoff) without first checking that the full struct fdt_property
fits within the FDT buffer. While the tag field (4 bytes) is validated
by dt_ptr_ok(fdt, tagp), the subsequent access to fdt_prop->len and
fdt_prop->nameoff (at offsets +4 and +8) can read past the buffer when
the FDT is truncated between the tag and the property header fields.

Add a dt_ptr_ok(fdt, fdt_prop) check before accessing the property
fields, matching the existing pattern in __of_unflatten_dtb().

Found by fuzz-fdt-compatible with AddressSanitizer.

Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/of/fdt.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 658718d4e238..13fb4b5c099e 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -825,6 +825,9 @@ int fdt_machine_is_compatible(const struct fdt_header *fdt, size_t fdt_size, con
 
 		case FDT_PROP:
 			fdt_prop = (const void *)fdt + dt_struct;
+			if (!dt_ptr_ok(fdt, fdt_prop))
+				return 0;
+
 			len = fdt32_to_cpu(fdt_prop->len);
 
 			name = dt_string(&f, dt_strings, fdt32_to_cpu(fdt_prop->nameoff));
-- 
2.47.3



