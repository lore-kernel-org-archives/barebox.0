Delivery-date: Fri, 26 May 2023 10:25:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2Sl3-00EoQn-Pg
	for lore@lore.pengutronix.de; Fri, 26 May 2023 10:25:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2Sl1-0005z0-7S
	for lore@pengutronix.de; Fri, 26 May 2023 10:25:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RbeQCAnouuO0OTxKxfwy3jO0yZymc+eKbVno+KQMSpM=; b=ESqOczWrnsABKU1G/PnzhBR/0d
	A5U8Yhz6QVxHS/9C1/hkS4GpFst/W1vDWNZj85XvpQn9q3eaUVZEJct6WZ1M3eW7oWSYyoaPueFBb
	bA/ZI+HAMIopmAF80/Anm5+bJF0RyIWnH4hUQmOgfgbjupLDEto7eSt11+V9D3+/nRiNnqeP1tEjU
	rqvQjMubrrszWYeRZ80o/cSymuYXzdEaL5X9AeUm++i3jOhOm840ydb9liAAwaJQ3W7XLav3FHueg
	PySgkX4gSuGSM91LN3HFdRMiOuzV6s+f7u+zt3xxoVSvkdCQi8eCVg0wZxRpctqi47qBUI2k+GSp3
	/TsBArEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2SkO-001b42-07;
	Fri, 26 May 2023 08:24:28 +0000
Received: from vmse03.mailcluster.com.au ([2401:fc00:0:14::11])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2SkK-001b2X-1q
	for barebox@lists.infradead.org;
	Fri, 26 May 2023 08:24:26 +0000
Received: from vmcp03.web-servers.com.au ([116.90.56.28])
	by vmse03.mailcluster.com.au with esmtps (TLSv1.2:AES128-GCM-SHA256:128)
	(Exim 4.92)
	(envelope-from <marc@cpdesign.com.au>)
	id 1q2Sk7-0003gt-9D
	for barebox@lists.infradead.org; Fri, 26 May 2023 18:24:16 +1000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=cpdesign.com.au; s=default; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=RbeQCAnouuO0OTxKxfwy3jO0yZymc+eKbVno+KQMSpM=; b=JhuEzvpDoOxBawNznY/3KVNzJI
	jbd9DD9gRPv6St93NOh3BjnpA7PrF3UXXM3HywDEgqicAZIE6Ee+2Ov7Oh+aDfz/rJWMwGjpIW+/i
	Qs/SlR0oHEEUr73M6Wb+jDFMvrAypbf/YjPpuu0krVxDOvkZxrY2x+AcnV+amhT35h6xhyY+N1xjR
	zkHIKAGO0rXW8fmvcz1X1J12uLSQQBaDjfvWcnaR3AiEHDSPIzQadZB9FX2bwCI+adBvkUxhPZnjU
	w2amWt2zMAinzL78FGeYjSIWTgvTkeX4XKAhZv/mHkdHRNj1fOJRjsaZkZKHjx6wZt/jZ6yDV4fpP
	70IQOR9Q==;
Received: from [125.254.26.114] (port=39848 helo=localhost.localdomain)
	by vmcp03.web-servers.com.au with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <marc@cpdesign.com.au>)
	id 1q2SjL-00FfWN-1G;
	Fri, 26 May 2023 18:23:23 +1000
From: Marc Reilly <marc@cpdesign.com.au>
To: barebox@lists.infradead.org
Date: Fri, 26 May 2023 18:23:13 +1000
Message-Id: <20230526082313.29694-2-marc@cpdesign.com.au>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20230526082313.29694-1-marc@cpdesign.com.au>
References: <20230526082313.29694-1-marc@cpdesign.com.au>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authenticated-User: marc@cpdesign.com.au
X-Authenticator: dovecot_plain
X-Originating-IP: 116.90.56.28
X-SpamExperts-Domain: panthur-sh-outbound0.mailcluster.com.au
X-SpamExperts-Username: 116.90.56.28
Authentication-Results: mailcluster.com.au; auth=pass smtp.auth=116.90.56.28@panthur-sh-outbound0.mailcluster.com.au
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: SB/global_tokens (0.00103441005844)
X-Recommended-Action: accept
X-Filter-ID: Pt3MvcO5N4iKaDQ5O6lkdGlMVN6RH8bjRMzItlySaT8nuEdQ01YT8Y4D4/UPyIDbPUtbdvnXkggZ
 3YnVId/Y5jcf0yeVQAvfjHznO7+bT5zzRQC/PIR0ZeIYukWs6zeuXFWCX8oNdggW7HE9XDTdSavp
 k7Vp2UXVHEQMIct0liIrm4c/Hw9oiQyf2M9mRpxhswKQDamPN66SYe4XX4xmgJvmHZIaOCPnuqIf
 UsnKQndaIN+MTJ88TTpoG8fQ5knApuGXed8VjoeeEKguXydrkSpUidRDvhULdPLXIoXP6ZiGKpfT
 IF8fSxNC0LttVkKWhddHIda+F2OXJibxnCVgq/sDcLC0U2KR6OWH3DJPpNlNxaypTbp28NxghjNo
 pU/Oaqj4KISIRSJ5MfjE8OaunZEyYYf7TmlI3iEcqXK4A61ChHMQHCMEWTX9HEhwSP4/MSl+mev0
 M9cO0xP2892D0Uv5/hXXQF+f2WAemEBBH0NsVeB41VPmQWlT6X4HxPATd38b9MLKMY00g8iKb4Ma
 HkcFBAvuf345Nnfstl8j+xb35lDPKa+hEyOYER4dYqg19L79JWHANylAmdcW1ioqKAhIbSJTbn3p
 hW1N8stWViDDh0zYybFfFGb1BguKhGQS1815h2jfNCQvp3x+etU3v+gbaW5naTC7zOfGQeBlb2X7
 4O4hBSz/kkmPgL+fgIguuJvpOfcTAKs/W389rtyLn14MySZo15O38qenUYDW2udO1E27e7t+GBYd
 Grwwk77mzpIiZ3aYsCU80RnzQz1brqcneM2DtFL6lyn3SdWY2VjHp+W1tpo+4KZfjXpfNmlerfOY
 3UNVu8TOdjOCr0g4mxFW6BNL/LNNOwdMx+faYopHdCUDK0lwKtLTqkxfwugNwU3HMLc26gkZ9IWu
 lt9fr6BKwhrOF0A1/P6Dxzn8HmJm4zuNRcgRKiGg7nXFaZTxkthHBBd+1FGtrHfmRLr1mA3ARdV5
 AZf6qXuoaniPBKa/K7PRiH9N3uNqUeLkT9H/YAvNrlNPDcRjUdyh4v23HFAB9fsWrjkhC+/VkwPD
 61O38M3G5FnJSs4QlaOH81x50MxOKVrDfQzDgqFDumjx949yYjkgur7cbmMvzASyKBHM3xi8wXJI
 Uf8Y97QTxRrgRfBTyao+gSRn3B4C0WLGZPe4LJ2MyI6lLpoeMdMOO8Y=
X-Report-Abuse-To: spam@vmse01.mailcluster.com.au
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230526_012424_613412_8E2A46E0 
X-CRM114-Status: GOOD (  18.17  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [RFC PATCH 1/1] commands: add pwm manipulation command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This introduces a command to set parameters for a pwm device.

Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
---
 commands/Kconfig  |  11 +++++
 commands/Makefile |   1 +
 commands/pwm.c    | 111 ++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 123 insertions(+)
 create mode 100644 commands/pwm.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 4d3ff631a8..6b7d0bfd79 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1929,6 +1929,17 @@ config CMD_I2C
 		  -w		use word (16 bit) wide access
 		  -v		verbose
 
+
+config CMD_PWM
+	bool
+	depends on PWM
+	prompt "PWM commands: pwm_set"
+	help
+	  pwm_set - set pwm state
+
+	  Usage: i2c_set - set pwm parameters
+
+
 config CMD_LED
 	bool
 	depends on LED
diff --git a/commands/Makefile b/commands/Makefile
index 98625a0373..011ae59427 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -69,6 +69,7 @@ obj-$(CONFIG_CMD_GPIO)		+= gpio.o
 obj-$(CONFIG_CMD_UNCOMPRESS)	+= uncompress.o
 obj-$(CONFIG_CMD_I2C)		+= i2c.o
 obj-$(CONFIG_CMD_SPI)		+= spi.o
+obj-$(CONFIG_CMD_PWM)		+= pwm.o
 obj-$(CONFIG_CMD_MIPI_DBI)	+= mipi_dbi.o
 obj-$(CONFIG_CMD_UBI)		+= ubi.o
 obj-$(CONFIG_CMD_UBIFORMAT)	+= ubiformat.o
diff --git a/commands/pwm.c b/commands/pwm.c
new file mode 100644
index 0000000000..8a26430e19
--- /dev/null
+++ b/commands/pwm.c
@@ -0,0 +1,111 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+// SPDX-FileCopyrightText: © 2023 Marc Reilly <marc@cpdesign.com.au>
+
+/* pwm - pwm commands */
+
+#include <common.h>
+#include <command.h>
+#include <errno.h>
+#include <malloc.h>
+#include <getopt.h>
+#include <pwm.h>
+
+#define HZ_TO_NANOSECONDS(x) (1000000000UL/(x))
+
+static int do_pwm_set(int argc, char *argv[])
+{
+	struct pwm_device *pwm = NULL;
+	struct pwm_state state;
+	int error = 0;
+	char namebuf[128];
+	char *devname = NULL;
+	int n = -1, polarity = -1, duty = -1, period = -1, freq = -1, opt;
+
+	while ((opt = getopt(argc, argv, "n:d:D:P:f:i:")) > 0) {
+		switch (opt) {
+		case 'n':
+			n = simple_strtol(optarg, NULL, 0);
+			break;
+		case 'd':
+			devname = optarg;
+			break;
+		case 'D':
+			duty = simple_strtol(optarg, NULL, 0);
+			break;
+		case 'P':
+			period = simple_strtol(optarg, NULL, 0);
+			break;
+		case 'f':
+			freq = simple_strtol(optarg, NULL, 0);
+			break;
+		case 'i':
+			polarity = simple_strtol(optarg, NULL, 0);
+			break;
+		}
+	}
+
+	if ((n < 0) && !devname) {
+		printf(" need to specify a device\n");
+		return COMMAND_ERROR_USAGE;
+	}
+	if ((freq < 0) && (duty < 0) && (period < 0)) {
+		printf(" need to know some timing info; freq or dury/period\n");
+		return COMMAND_ERROR_USAGE;
+	}
+
+	if (!devname) {
+		sprintf(namebuf, "pwm%d", n);
+	} else {
+		strcpy(namebuf, devname);
+	}
+
+	pwm = pwm_request(namebuf);
+	if (!pwm) {
+		printf("pwm device %s not found\n", namebuf);
+		return -ENODEV;
+	}
+
+	pwm_get_state(pwm, &state);
+	if (polarity >= 0)
+		state.polarity = polarity;
+
+	if (freq > 0) {
+		state.p_enable = true;
+		state.period_ns = HZ_TO_NANOSECONDS(freq);
+		pwm_set_relative_duty_cycle(&state, 50, 100);
+	} else if (duty > 0) {
+		state.p_enable = true;
+		state.period_ns = period;
+		state.duty_ns = duty;
+	} else {
+		state.p_enable = false;
+	}
+
+	error = pwm_apply_state(pwm, &state);
+
+	pwm_free(pwm);
+
+	return error;
+}
+
+BAREBOX_CMD_HELP_START(pwm_read)
+BAREBOX_CMD_HELP_TEXT("Sets a pwm device parameters.")
+BAREBOX_CMD_HELP_TEXT(" Specify the device either by device name or pwm number")
+BAREBOX_CMD_HELP_TEXT(" Timings can either be specified via period + duty (on) duration,")
+BAREBOX_CMD_HELP_TEXT("  or via frequency.")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT("-d number\t", "device name (eg 'pwm0')")
+BAREBOX_CMD_HELP_OPT("-n number\t", "pwm chip number (default 0)")
+BAREBOX_CMD_HELP_OPT("-D number\t", "duty cycle (ns)")
+BAREBOX_CMD_HELP_OPT("-P number\t", "period (ns)")
+BAREBOX_CMD_HELP_OPT("-f number\t", "frequency (Hz)")
+BAREBOX_CMD_HELP_OPT("-i number\t", "line inverted polarity")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(pwm_set)
+	.cmd		= do_pwm_set,
+	BAREBOX_CMD_DESC("set pwm")
+	BAREBOX_CMD_OPTS("[-dnDPfp]")
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
+	BAREBOX_CMD_HELP(cmd_pwm_read_help)
+BAREBOX_CMD_END
-- 
2.35.3



