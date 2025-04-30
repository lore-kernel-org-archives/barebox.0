Delivery-date: Wed, 30 Apr 2025 23:28:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uAEyU-000wio-15
	for lore@lore.pengutronix.de;
	Wed, 30 Apr 2025 23:28:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uAEyT-0007XC-Pn
	for lore@pengutronix.de; Wed, 30 Apr 2025 23:28:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hkE1mwopgIXdHXwswhO6ISN3413djLtKBeR6dlsrvVE=; b=SbjhJT5TkK62OV
	qDGRCiw4vYhKRWkcIJ5m4dd6cH6VAAAEAerUuL8aPNJbMTHbaLp+jM1HZ7AFLqXj5S89vewpWD+Fa
	eKB6EjLKrFI8pwjOlmFrNEiCMjcwjWWwZdp6S16Uawk//wkyTK99W/k/VRy2gv5f/vvvSvx0DRIwa
	oVLMLjhpB/JNUfdLD26enfntzVKYYiki+BqQ3i5Je+PIuHHLm0fxXhdesA9lIA9JTihJtHIpPA+kS
	tFu+SojOUxBupSuif8tOUasGp1qYWbdwmVgY1bMxrgYy9ag6Q64mXiCI6R5jW79qujmL74cjCt9Y6
	mN9aEGpJ+NoiiGrSicJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAExi-0000000E3d7-2WVZ;
	Wed, 30 Apr 2025 21:27:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAExe-0000000E3aL-2Hob
	for barebox@lists.infradead.org;
	Wed, 30 Apr 2025 21:27:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1uAExb-0006rI-7a; Wed, 30 Apr 2025 23:27:19 +0200
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1uAExa-000Uar-0P;
	Wed, 30 Apr 2025 23:27:18 +0200
Received: from localhost ([::1] helo=dude04.red.stw.pengutronix.de)
	by dude04.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1uAExa-008b7w-0F;
	Wed, 30 Apr 2025 23:27:18 +0200
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Wed, 30 Apr 2025 23:27:17 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250430-imx9optee-v1-1-3fcb0facfed8@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIALSVEmgC/x2NSwqAMAwFryJZW6itCnoVcdFPqgGt0qoI4t0NL
 ucxj3kgYyLM0BcPJLwo0xYZqrIAN5s4oSDPDEqqRtZaClrvbtsPRKErr3xwnWptAPatyShsMtH
 N/IjnsvC4Jwx0/4FhfN8Pp5kcrnAAAAA=
To: barebox@lists.infradead.org
X-Mailer: b4 0.12.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1143;
 i=m.grzeschik@pengutronix.de; h=from:subject:message-id;
 bh=kKJsxZqLCjqTr6eXZtrM/qOHQ1vTFuw9/rp24KXlp88=;
 b=owEBbQKS/ZANAwAKAb9pWET5cfSrAcsmYgBoEpW1ulf86wDmc4ukm2CEJ9ax9Wg0i6bXMo+q3
 D6/W+7lRgyJAjMEAAEKAB0WIQQV2+2Fpbqd6fvv0Gi/aVhE+XH0qwUCaBKVtQAKCRC/aVhE+XH0
 qxJeEACtX66KB1pSFqyL//FUMrEBZ8bud6mDRS0KYEsAdc3W5wAfbtHNwF0ouwDeN+OIq+07gQM
 B2usngNhgElZNQj/ct/W/HXca184VyN1jbBl2ePyz26IV6sG5XOzFgzUQrZttXhk0ak2N6rldQ5
 CxtcQmFTEL91RH60AslTwBQ3wWBB5+E672+j0qCKGfFe768WXloVaYs1SyFXPHz/soJ3C0FoWQp
 vpzUkEyJ7dOp7hu6jVvTu1xpfs8w0jp3OCYBm39n5RbcBjjtV9A//Xm4e6djIeZaCSQAsbtOScG
 7dhiRbieDho8e2umV9m1AImwHOdVqak/1M5/51hE6LWKVpj1q7edTQu2hhkv48uz8Bf+pc/Mqp6
 JGOKVjSnt1+YQap3zvur6nZpOWXHhkb9obkM21zS1NwL0NvlUrdirHEnwRaODlNB75T+V+GzmU6
 iaw23UgeeC1LKPxPlbQLU2DRAMR6AMmcgmeFnq4G7dQy4u159flixD6DlRg4//5hMxQIAh43Cfc
 dkiZbi1hn3FnK67ALS/ElzPjkknSyftaJrQla7nJ3573SdiQTfg6JY555o5fUWsglYei+wPZXAd
 z5UDGgXMIIP1yvJkey86BPcFrNFbQVXnsEsyKz/MNhyKELBK3brHZic+GJ55YMMWLbealPG6jDb
 fYnrUapKBtexW2g==
X-Developer-Key: i=m.grzeschik@pengutronix.de; a=openpgp;
 fpr=957BC452CE953D7EA60CF4FC0BE9E3157A1E2C64
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250430_142722_588623_1DA2C5C0 
X-CRM114-Status: GOOD (  10.28  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] arch: arm: imx: esdctl: limit ram to 1GB on imx93 in case
 OPTEE is enabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In MX93 the ELE (Edge Lock Enclave) is limited to communicate with
messages addressed under 1.5GB. The ELE can not reach the memory between
(0xE0000000-0xFFFFFFFF).

So we limit the usable memory in case OPTEE is used.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 arch/arm/mach-imx/esdctl.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index 701ca0ac1f3..79f697d6288 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -589,6 +589,15 @@ resource_size_t imx9_ddrc_sdram_size(void)
 		mem += memory_sdram_size(cols, rows, banks, width);
 	}
 
+	/* In MX93 the ELE is limited to comunicate with messages
+	 * under 1.5GB address space. This limits the overal memory
+	 * to be 1GB in case OPTEE is used.
+	 */
+	if (IS_ENABLED(CONFIG_PBL_OPTEE)) {
+		if (mem > 0x40000000)
+			mem = 0x40000000;
+	}
+
 	return mem;
 }
 

---
base-commit: 873b572763d38ab4100d218d0a3614f79b596077
change-id: 20250430-imx9optee-31d2dfc926bf

Best regards,
-- 
Michael Grzeschik <m.grzeschik@pengutronix.de>



