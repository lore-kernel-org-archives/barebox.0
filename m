Delivery-date: Thu, 18 Dec 2025 18:37:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWHwH-00CulX-03
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 18:37:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWHwG-0007kV-D0
	for lore@pengutronix.de; Thu, 18 Dec 2025 18:37:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wN+FbcukGBnNXJI4oP9skgzbyImKuWJupiK0TmDnDdk=; b=cajlWsXEonkNM7SPiftlmXZ4hl
	opkhwLmaxTAo4IKBpFP3MJ5s/voRYutapmV5xMxegRFmSpSfHG3QJVYHGZn/oB/PjpfC6UGjEWspV
	HRjQKHWlJNCaXdz/JapY95ShI94Szy3FIhlMANPPqMLU+f3xPwNA38nSz8nbmvk5FCdDDJwIanaw1
	hGg9ne9YOb4MDmuTwgGcIFFyqcwjUCK5pUSEGxAawj7IQh9Kqa+6EovZ/zBr/0TY3GVPXkw9O2Gq6
	xc+s2G3F8DHUGjLii++h6ksrl5fLY4XNWATf+LSw06/xUySRsf3o/tsGHK0hykLOsVFOW6fIH4pnw
	v02To6ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWHvl-00000008vxh-3sZk;
	Thu, 18 Dec 2025 17:36:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWHvk-00000008vwQ-2aB2
	for barebox@bombadil.infradead.org;
	Thu, 18 Dec 2025 17:36:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=wN+FbcukGBnNXJI4oP9skgzbyImKuWJupiK0TmDnDdk=; b=VYUHeW0ARkiy2qZtVTswMl708J
	B3InkdH67HRlsvSKq/h8MOyjBXOtX+lMe1re6c5n9De+aQQRN8b9GYX2FMInqVKodEbR0x9BWNMWe
	fBSQC3Pze2p8uWP6fu8Yn+DOuJTNt7VlNoD/M2vqmSwxO/SDX2lzQJqyPEbRSqjN8IQ+TfD+xW56L
	Q/z+rbGe40vBcA0+QnN9VRuBqNvcScQ3kNdiodavRuHXPdyj9DqZmJfpAE330IwJZuVp9y9b3TfwI
	eXeLee5EHj5MtVip7L67mhKxnoQp4F+PrUTw82xGB/EzruIciiG1ZGjLGS9lOeUEqj8g0m3e+RSY7
	HHSKno+A==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWH4D-00000009IdD-3xys
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 16:41:33 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1vWHve-0007Si-2L; Thu, 18 Dec 2025 18:36:42 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Thu, 18 Dec 2025 18:36:31 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251218-v2025-11-0-topic-imx6-field-return-v1-4-3781143198d6@pengutronix.de>
References: <20251218-v2025-11-0-topic-imx6-field-return-v1-0-3781143198d6@pengutronix.de>
In-Reply-To: <20251218-v2025-11-0-topic-imx6-field-return-v1-0-3781143198d6@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>, 
 Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_164130_059974_C961D522 
X-CRM114-Status: GOOD (  15.31  )
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
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] commands: hab: extend by field_return fuse burn
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Extend hab command with an additional parameter to burn the field return
fuse, but only if it is unlocked via the kconfig option.
Without the kconfig option, the extra argument makes no sense, as it
would not be possible to access the FIELD_RETURN fuse.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig |  6 +++++-
 commands/hab.c            | 20 +++++++++++++++++---
 2 files changed, 22 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 5f50d1a823..5fea0bbbca 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -926,13 +926,17 @@ config HABV4_CSF_UNLOCK_UID
           feature. This value must match the per device UNIQUE_ID fuses.
 
 	  The below example shows the expected format. The UNIQUE_ID is
-	  queried by Linux via:
+	  printed during boot by barebox:
+	    i.MX___ unique ID: 7766554433221100
+	  or it can be queried by Linux via:
             - cat /sys/devices/soc0/serial_number
 	      7766554433221100
 
 	  So this value have to be set:
 	    - 0x00, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77
 
+	  Afterwards, the `hab -p -r` command can be used to burn the fuse.
+
 config HABV4_IMG_CRT_PEM
 	string "Path to IMG certificate"
 	default "../crts/IMG1_1_sha256_4096_65537_v3_usr_crt.pem"
diff --git a/commands/hab.c b/commands/hab.c
index 8ae943a4c8..435c20f4d3 100644
--- a/commands/hab.c
+++ b/commands/hab.c
@@ -16,9 +16,9 @@ static int do_hab(int argc, char *argv[])
 	char *srkhashfile = NULL, *srkhash = NULL;
 	unsigned flags = 0;
 	u8 srk[SRK_HASH_SIZE];
-	int lockdown = 0, info = 0;
+	int lockdown = 0, info = 0, field_return = 0;
 
-	while ((opt = getopt(argc, argv, "s:fpx:li")) > 0) {
+	while ((opt = getopt(argc, argv, "s:fpx:lir")) > 0) {
 		switch (opt) {
 		case 's':
 			srkhashfile = optarg;
@@ -38,12 +38,16 @@ static int do_hab(int argc, char *argv[])
 		case 'i':
 			info = 1;
 			break;
+		case 'r':
+			field_return = 1;
+			break;
 		default:
 			return COMMAND_ERROR_USAGE;
 		}
 	}
 
-	if (!info && !lockdown && !srkhashfile && !srkhash) {
+	if (!info && !lockdown && !srkhashfile && !srkhash &&
+	    !(IS_ENABLED(CONFIG_HABV4_CSF_UNLOCK_FIELD_RETURN) && field_return)) {
 		printf("Nothing to do\n");
 		return COMMAND_ERROR_USAGE;
 	}
@@ -94,6 +98,13 @@ static int do_hab(int argc, char *argv[])
 		printf("Device successfully locked down\n");
 	}
 
+	if (IS_ENABLED(CONFIG_HABV4_CSF_UNLOCK_FIELD_RETURN) && field_return) {
+		ret = imx_hab_field_return(flags & IMX_SRK_HASH_WRITE_PERMANENT);
+		if (ret)
+			return ret;
+		printf("Field return fuse successfully burnt\n");
+	}
+
 	return 0;
 }
 
@@ -105,6 +116,9 @@ BAREBOX_CMD_HELP_OPT ("-x <sha256>",  "Burn Super Root Key hash from hex string"
 BAREBOX_CMD_HELP_OPT ("-i",  "Print HAB info")
 BAREBOX_CMD_HELP_OPT ("-f",  "Force. Write even when a key is already written")
 BAREBOX_CMD_HELP_OPT ("-l",  "Lockdown device. Dangerous! After executing only signed images can be booted")
+#ifdef CONFIG_HABV4_CSF_UNLOCK_FIELD_RETURN
+BAREBOX_CMD_HELP_OPT ("-r",  "Field Return. Dangerous! After executing signed images are disabled forever.")
+#endif // CONFIG_HABV4_CSF_UNLOCK_FIELD_RETURN
 BAREBOX_CMD_HELP_OPT ("-p",  "Permanent. Really burn fuses. Be careful!")
 BAREBOX_CMD_HELP_END
 

-- 
2.47.3



