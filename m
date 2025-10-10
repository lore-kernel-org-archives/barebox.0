Delivery-date: Fri, 10 Oct 2025 07:53:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v763r-006Ckr-0L
	for lore@lore.pengutronix.de;
	Fri, 10 Oct 2025 07:53:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v763q-0003TL-Is
	for lore@pengutronix.de; Fri, 10 Oct 2025 07:53:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZHPSrPX/M6G31h9s07ooW0Vd5xci1jUOFPOiGuHClb8=; b=4BxSDq4stSGhhHtZYdP8KcmJc3
	85TsabUIHsnlcTF0jTHq9sOy7fkO7GUynLYHuIMLFSXqjfn14nVSXwt4fvkQsNDYAcDX5lQe0gcw5
	euypVjbnidYxjMFyYU21jya2kWEZ4Gf4De3pYhCqVZKu/sdv5us17u/3fz5GttLTCIr5CFjARPm5r
	zYUD10W4BOhkMKhxkhelmhlikqvmatTRE2n7Poiq+7JieE5bH/CM4W19a1XvWvEEl54XxjYrG2xeX
	bCIZBFAmJ2Up0hWX+S8Uaj6S2xf06Hlab47pFPCO8xno3Jut8Ft40A+lWBTEKspTHMN77rJ3cdOtV
	hLUPXeoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v763S-00000007jT5-07p2;
	Fri, 10 Oct 2025 05:52:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v763P-00000007jSJ-3B4e
	for barebox@lists.infradead.org;
	Fri, 10 Oct 2025 05:52:36 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1v763O-0003Mm-7t; Fri, 10 Oct 2025 07:52:34 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 10 Oct 2025 07:52:29 +0200
Message-ID: <20251010055230.3069354-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251010055230.3069354-1-a.fatoum@barebox.org>
References: <20251010055230.3069354-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251009_225235_791421_70A04088 
X-CRM114-Status: UNSURE (   8.50  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master 2/2] kbuild: fix spurious CI failure around sconfig_names.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

include/generated/security_autconf.h must be available first, because
sconfigpost calls realpath on it.

Reflect this dependency in the Makefile.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 2b846411cb85..78849535396f 100644
--- a/Makefile
+++ b/Makefile
@@ -1226,7 +1226,7 @@ quiet_cmd_sconfigpost = SCONFPP $@
 include/generated/security_autoconf.h: .security_config scripts_basic FORCE
 	$(call if_changed_dep,sconfigpost,-e)
 
-include/generated/sconfig_names.h: .security_config scripts_basic FORCE
+include/generated/sconfig_names.h: .security_config scripts_basic include/generated/security_autoconf.h FORCE
 	$(call if_changed_dep,sconfigpost,-s)
 
 archprepare: include/generated/security_autoconf.h include/generated/sconfig_names.h
-- 
2.47.3



