Delivery-date: Wed, 04 Feb 2026 21:40:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnjft-008sVl-1Y
	for lore@lore.pengutronix.de;
	Wed, 04 Feb 2026 21:40:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnjfs-0001kV-Gb
	for lore@pengutronix.de; Wed, 04 Feb 2026 21:40:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=wLENR70rDJv5tU82v7svg9c4cF4AluZgO+CnMz6SpIg=; b=lBEE23NiKYekjl6n4kYGWP9QS0
	t0L1zsLdw4J2JZwi46RM3WmCldDyWxIMpoUzlLOxoTH3VCrQHdAOAjTM8JDvxChTOX+OYng36phy5
	kazwqXSg0WV9Ae7/APCHeWSyPwMpQzKb8Zwo5USBihLt2GxKTngxGuhFY7ObCXR6h9KOcKzB6EQBG
	7migtDMjY53kX7FPHRyBinkmOYgTQQ1gSYZSg/vTwXgPPzx1FOKWHAmPEnmvQZWHRXv6DiiF5D56m
	wMVJNZzXNmB4vvzR7KS7bFVzEvwOhttNiiS9twpcM6IGwfg6yIbYPs/hOseqFGT8emMBW+dXpq02c
	BBk+8lqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnjfO-000000093sg-3cDN;
	Wed, 04 Feb 2026 20:40:02 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnjfN-000000093sT-3val
	for barebox@bombadil.infradead.org;
	Wed, 04 Feb 2026 20:40:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=wLENR70rDJv5tU82v7svg9c4cF4AluZgO+CnMz6SpIg=; b=CiavUFK6j8uuTzgCPTS9gqeHIR
	8q9Ly7WQbtF8C5lEnzuiBIheYobn7PunMDpJuph8jmOpTxwcV5HRIVXoWPz7DLDARfM6+q2dtF0p4
	Oey4ujT46ioSkY7BkHz5bCoIN3CEfblKDckw4k++PBGWB0SN+8LU6IkqTSeChsBLty5HafEI/idm1
	QfKykg/RiF0rOh1GAd022ZSYUl6HhUeqsl7XTXnMF2fm4uQd1iIyOjT7s38jIXjO//D5Essxvv/Vj
	od0GE1K2PmIc43QYxp8G2UcujPtyEmGajxdY4Rbmu82pX6GM/qFaM5CqASK0wVHDvS4DgbH/nFqA5
	/dLy0WwA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnjfL-00000001DNF-0MkG
	for barebox@lists.infradead.org;
	Wed, 04 Feb 2026 20:40:00 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vnjfJ-0001f5-Pu
	for barebox@lists.infradead.org; Wed, 04 Feb 2026 21:39:57 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed,  4 Feb 2026 21:39:44 +0100
Message-ID: <20260204203955.1716104-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260204_203959_260329_53A8C673 
X-CRM114-Status: UNSURE (   8.70  )
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
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: [PATCH master] bootm: fix initrd pr_info
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The initrd is NULL if provided via a FIT, this leads to unwanted prints
like:

| Loaded initrd from Flattened Image Tree <NULL> to 0x0000000043e70000-0x000000004409a38a

Fix this by checking the initrd and pass an empty sting if not set.
While on it fix the superfluous newline.

Fixes: b62b21eddf30 ("bootm: refactor for readability and extensibility")
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 common/bootm.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/common/bootm.c b/common/bootm.c
index 11c560fa2788..631850988489 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -318,14 +318,13 @@ bootm_load_initrd(struct image_data *data, unsigned long load_address)
 	} else if (data->os_fit) {
 		res = bootm_load_fit_initrd(data, load_address);
 		type = filetype_fit;
-
 	}
 
 	if (IS_ERR_OR_NULL(res))
 		return res;
 
 	pr_info("Loaded initrd from %s %s%s%s to %pa-%pa\n",
-		file_type_to_string(type), initrd,
+		file_type_to_string(type), initrd ?: "",
 		initrd_part ? "@" : "", initrd_part ?: "",
 		&res->start, &res->end);
 
-- 
2.47.3



