Delivery-date: Fri, 19 Dec 2025 11:38:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXsp-00DAgr-1k
	for lore@lore.pengutronix.de;
	Fri, 19 Dec 2025 11:38:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXsU-0006d3-HT
	for lore@pengutronix.de; Fri, 19 Dec 2025 11:38:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J+/WXEaFAUeA8R9eApVHq+Yz6z42/t0PbEoTVXwSkrM=; b=bcGjpAAFzbH/a1
	pmnPFYbk9a44GETNQFAm9J9d+thIdGAjoSxB/fO7BRsg3R8p9fCBQAUM/nZrd/1UWLwf9gANeYyK6
	e3mYEhATFHm9negGm4xxvN1JXEOO37zx2qQUEyRjH2LUbSi2iiUck1BTp7PSnXuubwZYUdehGCA5y
	85yJemKr0TDgH7Sc2lShC6X6AqkwiKb2kf1RTip28Fl3mzyMz1UbgwoVGxGonUKIzTHyeHfaZokc7
	KbZvj8I6nW+w4WFiRCnwHFP9PQZ8uVZ1Wtvq9OQQXxxRy+W8ubrKfdkA6HAtDbQXf0gZ0GEXF3DzZ
	vB9EoY0KyPPkW9uYMT6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXrQ-0000000A6eK-1iz9;
	Fri, 19 Dec 2025 10:37:24 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXqz-0000000A65f-2zzT
	for barebox@bombadil.infradead.org;
	Fri, 19 Dec 2025 10:36:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=J+/WXEaFAUeA8R9eApVHq+Yz6z42/t0PbEoTVXwSkrM=; b=WsWWyQ4nnqQiHdSuWWRXU0uyHT
	4QrsvGFdPmz6iyhWcqZ8Fp54TFi4AbzPWxlRMKU765EcJKZBRhoFVs0Sf4YXOs8SBmur4RjNr0zn6
	yvSvad3fvvid11o8Ws1Pd89pjcA31dtkQkAQJ80p7B/bwHCvzs16JDFhEjSAmILZrZRxO+34yz5WD
	oqEwJ42oc1z2P7B2SFHVgbwbvYTu/bbnkVEzNJlAGswMFLTQ0AUYRcylj5gbiTVCxG1blIZfSRPQp
	MKQ3GfvLYccYxb5Th3OPhyXkzne9X4PsVQZMioW/NtBVIo8hvTwR2viPuA0j4hs3UNkZJ80xD5bpt
	OKunp/hA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXqu-00000007RTJ-0V7s
	for barebox@lists.infradead.org;
	Fri, 19 Dec 2025 10:36:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqs-0004hT-O2; Fri, 19 Dec 2025 11:36:50 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqs-006RW9-1f;
	Fri, 19 Dec 2025 11:36:50 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXVi-0000000320L-1ep5;
	Fri, 19 Dec 2025 11:14:58 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 19 Dec 2025 10:21:17 +0100
Message-ID: <20251219101453.2806980-42-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
References: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_103652_261265_D0A11668 
X-CRM114-Status: GOOD (  11.66  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 41/49] ARM: k3: am62l: Add dedicated config option for OP-TEE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Sascha Hauer <s.hauer@pengutronix.de>

Until now we compiled in the OP-TEE binary into the AM62l images when it
exists. The when-it-exists part makes it hard to add a dependeny on the
file, so add a dedicated config option for it.

Link: https://lore.barebox.org/20251202-k3-deps-v1-3-68404d3b2c70@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
(cherry picked from commit 2711c4ca4fdce892567391e8f363d277c03505b3)
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 firmware/Kconfig   | 4 ++++
 images/Makefile.k3 | 8 ++++++--
 2 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/firmware/Kconfig b/firmware/Kconfig
index 14a1c3d3a844..1121615fe6d5 100644
--- a/firmware/Kconfig
+++ b/firmware/Kconfig
@@ -113,6 +113,10 @@ config FIRMWARE_LS1028A_ATF
 config FIRMWARE_LS1046A_ATF
 	bool
 
+config FIRMWARE_K3_AM62L_OPTEE
+	bool "install OP-TEE on K3 AM62L boards"
+	depends on MACH_AM62LX
+
 config HAVE_FIRMWARE_VERIFY_NEXT_IMAGE
 	bool
 
diff --git a/images/Makefile.k3 b/images/Makefile.k3
index 992d1557275c..bb49c0a9548a 100644
--- a/images/Makefile.k3
+++ b/images/Makefile.k3
@@ -87,10 +87,14 @@ quiet_cmd_k3_am62x_image = K3_am62x_IMG   $@
 			$(DMDATA_am625):17:16:0:43c3a800			\
 			--key "$(KEY_$(@F))" --out $@
 
+ifdef CONFIG_FIRMWARE_K3_AM62L_OPTEE
+AM62L_TIBOOT3_OPTEE = $(FIRMWARE_DIR)/am62lx-bl32.bin
+endif
+
 quiet_cmd_k3_am62lx_image = K3_am62lx_IMG   $@
       cmd_k3_am62lx_image = \
-		if [ -e "$(FIRMWARE_DIR)/am62lx-bl32.bin" ]; then		\
-			optee=$(FIRMWARE_DIR)/am62lx-bl32.bin:17:16:0:80200000;	\
+		if [ -n "$(AM62L_TIBOOT3_OPTEE)" ]; then			\
+			optee=$(AM62L_TIBOOT3_OPTEE):17:16:0:80200000;		\
 		fi;								\
 										\
 		$(srctree)/scripts/k3img					\
-- 
2.47.3



