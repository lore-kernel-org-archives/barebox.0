Delivery-date: Wed, 09 Oct 2024 07:58:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1syPi6-0027HT-1y
	for lore@lore.pengutronix.de;
	Wed, 09 Oct 2024 07:58:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1syPi6-0005hh-24
	for lore@pengutronix.de; Wed, 09 Oct 2024 07:58:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=72v4sgDdXIeVFm+8DMUHT1j3rv+NCE1ZxlxJx8QpmpY=; b=3T6UrpEY+e6xtq0eviAju+Fzgh
	+g29HyME8QhiE8T1nYhq2FIXv6G9+zG5i+UIez0rWDm9QKVxngIWXegYrK86lJ/MwSUnBFuGZ2gO0
	qqgYR6iGk+9tWow+JhBIN4vEJTM9gaDc7WtmjbgOtqBRygd/G+8aPCKekc4Ocgeo3pBrHlii7LLTc
	Ju/HIUjgZTIkIb3EcmSC3dp9k5uQxDrwmPXScTOwlVq675abdNY15wyEli0bxE954MUqcnihcdfS9
	l6dE415rkMjQfgTVcIeb8XnB9aN2xn6rBiq8GHRugpCQvx1EHCstY7cKHjveGqDX/vELvTI/V8SDb
	k3QNV7vA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syPhZ-000000080rX-11Re;
	Wed, 09 Oct 2024 05:57:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syPhW-000000080qc-0S05
	for barebox@lists.infradead.org;
	Wed, 09 Oct 2024 05:57:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1syPhU-0005cL-Qq
	for barebox@lists.infradead.org; Wed, 09 Oct 2024 07:57:32 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1syPhU-000XIT-EQ
	for barebox@lists.infradead.org; Wed, 09 Oct 2024 07:57:32 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1syPhU-00HGbf-1B
	for barebox@lists.infradead.org;
	Wed, 09 Oct 2024 07:57:32 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed,  9 Oct 2024 07:57:31 +0200
Message-Id: <20241009055731.4115395-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241009055731.4115395-1-a.fatoum@pengutronix.de>
References: <20241009055731.4115395-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_225734_170806_7078C134 
X-CRM114-Status: GOOD (  12.47  )
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
Subject: [PATCH 2/2] ARM64: asm: mark assembly entry points as functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <ahmad@a3f.at>

ENTRY_PROC_END() is used as counterpart to ENTRY_PROC() to delimit entry
points written in assembly. That macro expands to the END() macro though,
which doesn't explicitly mark the entry point as being a function.

This can lead to objdump -d on the PBL ELF file to not disassemble
the wntry point and instead displaying only a hexdump.

Fix this by using ENDPROC which sets the function type correctly.
This only has effect on the ELF and introduces no functional change for
the objcopied image.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/include/asm/barebox-arm64.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/barebox-arm64.h b/arch/arm/include/asm/barebox-arm64.h
index 58ff7b9b362b..9b91a693af94 100644
--- a/arch/arm/include/asm/barebox-arm64.h
+++ b/arch/arm/include/asm/barebox-arm64.h
@@ -30,6 +30,6 @@
  * ENTRY_PROC_END - mark end of entry procedure
  */
 #define ENTRY_PROC_END(name) \
-	END(##name)
+	ENDPROC(##name)
 
 #endif /* _BAREBOX_ARM64_H_ */
-- 
2.39.5



