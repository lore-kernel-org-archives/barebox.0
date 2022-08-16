Delivery-date: Tue, 16 Aug 2022 09:33:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNr4t-000R6Q-TL
	for lore@lore.pengutronix.de; Tue, 16 Aug 2022 09:33:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNr4q-0000qq-Uy
	for lore@pengutronix.de; Tue, 16 Aug 2022 09:33:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eAzmxEL4XmzOkdSRvYLQNFyeI6mP3aJXT87roloFAeY=; b=1lKwKYYtobSM3lMF95D15Q42xT
	uQTkQFhLSgd8lljzOWkdAUqjov8qHfnDVlOi/XhDhPEZWTq48chbMLJnLjGHZNyR1D2Li+7FerLlB
	9FOBMRVG2XasKsVWYx7Addkl08mY1G63a/L+4YeWm5GZkPErhos9s8Inm7OfZV+yRukUNfjKgT4nr
	BlGhGkXY3TQSqjn1B20sTV4BpP4EomPRqF2m3KeF0cuyyVWyNzxxaaujWdZz+tBNUi85LmgJSpdRw
	B5yRmHimSM+OhujpfkV7MFhV+bP4d0NtadnCP9gmUUnMvyKQA/jeOufwjtYaopqxX4FmYECaHo5ZW
	5i/sbsog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNr3C-00FGhS-GP; Tue, 16 Aug 2022 07:31:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNr2X-00FFdK-4J
	for barebox@lists.infradead.org; Tue, 16 Aug 2022 07:31:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oNr2R-0000PN-Eo; Tue, 16 Aug 2022 09:30:59 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oNr2Q-0004JF-NE; Tue, 16 Aug 2022 09:30:58 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oNr2P-000Bu3-Ty; Tue, 16 Aug 2022 09:30:57 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 16 Aug 2022 09:30:55 +0200
Message-Id: <20220816073056.45694-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220816073056.45694-1-a.fatoum@pengutronix.de>
References: <20220816073056.45694-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220816_003105_275237_C91C2967 
X-CRM114-Status: GOOD (  11.12  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/3] ARM: i.MX8M: rename imx8m_atf_load_bl31 for clarity
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The functions imx8mX_load_and_start_image_via_tfa() suggest that loading
does not involve starting. The functions imx8mX_atf_load_bl31()
relocates bl31 and starts it, but doesn't actually load it (either from
boot medium or via get_builtin_firmware).

We won't rename these yet to avoid breaking out-of-tree boards,
but we can at least rename the static imx8mX_atf_load_bl31 to reflect
that it starts bl31.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - no change
---
 arch/arm/mach-imx/atf.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
index df23dbfc0e5a..675e90792a32 100644
--- a/arch/arm/mach-imx/atf.c
+++ b/arch/arm/mach-imx/atf.c
@@ -35,7 +35,7 @@
  *
  */
 
-static __noreturn void imx8m_atf_load_bl31(const void *fw, size_t fw_size, void *atf_dest)
+static __noreturn void imx8m_atf_start_bl31(const void *fw, size_t fw_size, void *atf_dest)
 {
 	void __noreturn (*bl31)(void) = atf_dest;
 
@@ -52,22 +52,22 @@ static __noreturn void imx8m_atf_load_bl31(const void *fw, size_t fw_size, void
 
 __noreturn void imx8mm_atf_load_bl31(const void *fw, size_t fw_size)
 {
-	imx8m_atf_load_bl31(fw, fw_size, (void *)MX8MM_ATF_BL31_BASE_ADDR);
+	imx8m_atf_start_bl31(fw, fw_size, (void *)MX8MM_ATF_BL31_BASE_ADDR);
 }
 
 __noreturn void imx8mn_atf_load_bl31(const void *fw, size_t fw_size)
 {
-	imx8m_atf_load_bl31(fw, fw_size, (void *)MX8MN_ATF_BL31_BASE_ADDR);
+	imx8m_atf_start_bl31(fw, fw_size, (void *)MX8MN_ATF_BL31_BASE_ADDR);
 }
 
 __noreturn void imx8mp_atf_load_bl31(const void *fw, size_t fw_size)
 {
-	imx8m_atf_load_bl31(fw, fw_size, (void *)MX8MP_ATF_BL31_BASE_ADDR);
+	imx8m_atf_start_bl31(fw, fw_size, (void *)MX8MP_ATF_BL31_BASE_ADDR);
 }
 
 __noreturn void imx8mq_atf_load_bl31(const void *fw, size_t fw_size)
 {
-	imx8m_atf_load_bl31(fw, fw_size, (void *)MX8MQ_ATF_BL31_BASE_ADDR);
+	imx8m_atf_start_bl31(fw, fw_size, (void *)MX8MQ_ATF_BL31_BASE_ADDR);
 }
 
 __noreturn void imx8mm_load_and_start_image_via_tfa(void)
-- 
2.30.2



