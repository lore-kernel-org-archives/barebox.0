Delivery-date: Mon, 29 May 2023 13:07:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3aiu-001FhY-7m
	for lore@lore.pengutronix.de; Mon, 29 May 2023 13:07:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3air-0006j4-GO
	for lore@pengutronix.de; Mon, 29 May 2023 13:07:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UtlOW3kkOyY1ZORaKgnTNiQ1LsOWGXSYTzEL2AtHxM0=; b=xQaC13A/W6Z9vyog+S/zOhiops
	0T3xuZGN6+f9/bMRsCubsXgmUx9CtUjagsv00PHiPYgUin6GHUDvinzpnMCqzIJvUDWSddXrgnMGY
	A84+R7K4+yxp7Zx5JT/pHHe73myc8VsCstYUbHy0MUf0XcZgSB+tULtJKVKqIS2W7yJHV1kGwKgDi
	CcOxiBiime3J8t6Xdb/okr2vMSElROIklaQuF8CTrIv+ZxiWwsL7qqIz0RGw6iGa/2400oFud3z2Z
	xhPxBYYy9CQLtewQiqkOmm5cdy297GPMoL785JX9LiB56FDoJ2oy4XkCULkbmLxsRHsywXJEF1gBv
	eoJa7Ouw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3aiC-00AEao-2O;
	Mon, 29 May 2023 11:06:52 +0000
Received: from vmse04.mailcluster.com.au ([2401:fc00:4:1::6])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3ai7-00AEYH-38
	for barebox@lists.infradead.org;
	Mon, 29 May 2023 11:06:49 +0000
Received: from vmcp03.web-servers.com.au ([116.90.56.28])
	by vmse04.mailcluster.com.au with esmtps (TLSv1.2:AES128-GCM-SHA256:128)
	(Exim 4.92)
	(envelope-from <marc@cpdesign.com.au>)
	id 1q3ahx-0002xp-BX
	for barebox@lists.infradead.org; Mon, 29 May 2023 21:06:41 +1000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=cpdesign.com.au; s=default; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=UtlOW3kkOyY1ZORaKgnTNiQ1LsOWGXSYTzEL2AtHxM0=; b=ouBjglOusUComq2KU0Pg+WkfCW
	0mnlPMH+RzyE30W7Mya21Kezob3CY90s1z/zL6+xOgBzoYXmQIMLJO6Pk7fQybQ2+kAzncw6jaMxP
	cOuuE+2DNdRNlhbFyb6NjG6XJDu3JLHJJDi6sPIEQuqXc+pHZwzQ2KGrPvBScO4inVwSHQZdkDvFf
	Kp0w2XSS5zdtq9oVF+0qRkOYOIf41m9WQb1u3+M7Wc7GCUR1S0tlqPZJ6APEUnfsAGB9pHQMS5tng
	E1NFJb3UMCcU/TfYaGHPXPz1RiC0UB77J5TlusxZwK+LouNg2uEmsNHkpLb5tgqHQzRkuZUa5mmOe
	2Mhx2Vdw==;
Received: from 180-150-33-184.b49621.mel.static.aussiebb.net ([180.150.33.184]:27893 helo=dev8.office.cpdesign.com.au)
	by vmcp03.web-servers.com.au with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <marc@cpdesign.com.au>)
	id 1q3ahx-001BAm-05;
	Mon, 29 May 2023 21:06:37 +1000
From: Marc Reilly <marc@cpdesign.com.au>
To: barebox@lists.infradead.org
Date: Mon, 29 May 2023 21:06:25 +1000
Message-Id: <20230529110627.31257-2-marc@cpdesign.com.au>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20230529110627.31257-1-marc@cpdesign.com.au>
References: <20230529110627.31257-1-marc@cpdesign.com.au>
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
X-SpamExperts-Outgoing-Evidence: SB/global_tokens (0.0011877196084)
X-Recommended-Action: accept
X-Filter-ID: Pt3MvcO5N4iKaDQ5O6lkdGlMVN6RH8bjRMzItlySaT8PCdpkNLztk7yj9NSzZzU5PUtbdvnXkggZ
 3YnVId/Y5jcf0yeVQAvfjHznO7+bT5zzRQC/PIR0ZeIYukWs6zeuXFWCX8oNdggW7HE9XDTdSavp
 k7Vp2UXVHEQMIct0liJdOvbz4SHBM/a826ElvpyOswKQDamPN66SYe4XX4xmgJvmHZIaOCPnuqIf
 UsnKQndaIN+MTJ88TTpoG8fQ5knApuGXed8VjoeeEKguXydrkSpUidRDvhULdPLXIoXP6ZiGKpfT
 IF8fSxNC0LttVkKWP6j2wfkRtOTZOVnmAjcy5vsDcLC0U2KR6OWH3DJPpNlNxaypTbp28NxghjNo
 pU/Oaqj4KISIRSJ5MfjE8OaunZEyYYf7TmlI3iEcqXK4A61ChHMQHCMEWTX9HEhwSP4/MSl+mev0
 M9cO0xP2892D0Uv5/hXXQF+f2WAemEBBH0NsVeB41VPmQWlT6X4HxPATd38b9MLKMY00g8iKb4Ma
 HkcFBAvuf345Nnfstl8j+xb35lDPKa+hEyOYER4dYqg19L79JWHANylAmdcW1ioqKAhIbSJTbn3p
 hW1N8stWViDDh0zYybFfFGb1BguKhGQS1815h2jfNCQvp3x+etU3v+gbaW5naTC7zOfGQeBlb2X7
 4O4hBSz/kkmPgL+fgIgur9dszVORRxP/OPITy0dTWCZWuSDEMcDg0gVL7+IlOt6OiX/XfqKYTXPa
 wfdsstI0edRzuhYq7fPAVaOBt7ccueYOGA1Wk/WtN7IlJDf9Woj30LCTI1bmgn6vkthdwyTiERWe
 KKG4PAQYNyavp7c49EgfN5fYYOq7L81CtUAj3rXGo3Q/9oimKNxPxcvU0i2u2QFN0EW0GtA7ET8I
 wk3/tmIWGvg+u5GvAeVFaKFGWS48CVsONrMJuGzuoGnKTKcyJWXFml3Sqrhyk7Sb5Ea22nINtdS0
 83so84to/tKR8trLmS1dKo3/gyamuiQZna5TY55n2DScCep6TmiOal+G5AYPXmLT+R8trbdl14P2
 LagrKqa7xZSqGU2f/59k1cSbWEwQPAv2fxf3s0iIhEk0CxL3FhyCT+8vOSJGHGnDZXwDpWlUp2+O
 /CsxsN//TNyP8Lec2Q0NUjSrr/sd1gA0n/sraetX349jJSUzpGrnppYxL7hrJSk60SF3F6RYOYr2
X-Report-Abuse-To: spam@vmse01.mailcluster.com.au
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230529_040648_154511_61897EA0 
X-CRM114-Status: GOOD (  21.49  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v3 1/3] commands: add pwm manipulation command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This introduces a command to set parameters for a pwm device.

Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
---
 commands/Kconfig  |  11 ++++
 commands/Makefile |   1 +
 commands/pwm.c    | 143 ++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 155 insertions(+)
 create mode 100644 commands/pwm.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 4d3ff631a8..cc7585bbb2 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1929,6 +1929,17 @@ config CMD_I2C
 		  -w		use word (16 bit) wide access
 		  -v		verbose
 
+config CMD_PWM
+	bool
+	depends on PWM
+	prompt "PWM commands: pwm_set"
+	help
+	  pwm_set - set pwm state
+
+	  Usage: pwm_set [dDPfwis]
+
+	  Controls the pwm values such as period and duty cycle
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
index 0000000000..94bbbaf1be
--- /dev/null
+++ b/commands/pwm.c
@@ -0,0 +1,143 @@
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
+	char *devname = NULL;
+	int duty = -1, period = -1;
+	int freq = -1, width = -1;
+	int invert_polarity = -1, stop = -1;
+	int opt;
+
+	while ((opt = getopt(argc, argv, "d:D:P:f:w:is")) > 0) {
+		switch (opt) {
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
+		case 'w':
+			width = simple_strtol(optarg, NULL, 0);
+			break;
+		case 'i':
+			invert_polarity = 1;
+			break;
+		case 's':
+			stop = 1;
+			break;
+		}
+	}
+
+	if (!devname) {
+		printf(" need to specify a device\n");
+		return COMMAND_ERROR_USAGE;
+	}
+	if ((freq == 0) || (period == 0)) {
+		printf(" period or freqency needs to be non-zero\n");
+		return COMMAND_ERROR_USAGE;
+	}
+	if (width > 100) {
+		printf(" width (%% duty cycle) can't be more than 100%%\n");
+		return COMMAND_ERROR_USAGE;
+	}
+
+	pwm = pwm_request(devname);
+	if (!pwm) {
+		printf(" pwm device %s not found\n", devname);
+		return -ENODEV;
+	}
+
+	pwm_get_state(pwm, &state);
+
+	if ((state.period_ns == 0)
+			&& (freq < 0) && (duty < 0) && (period < 0)) {
+		printf(" need to know some timing info; freq or duty/period\n");
+		pwm_free(pwm);
+		return COMMAND_ERROR_USAGE;
+	}
+
+	if (invert_polarity >= 0)
+		state.polarity = invert_polarity;
+
+	/* period */
+	if (freq > 0) {
+		state.p_enable = true;
+		state.period_ns = HZ_TO_NANOSECONDS(freq);
+		if (width < 0) {
+			width = 50;
+		}
+	} else if (period > 0) {
+		state.p_enable = true;
+		state.period_ns = period;
+	}
+
+	/* duty */
+	if (width >= 0) {
+		pwm_set_relative_duty_cycle(&state, width, 100);
+	} else if (duty >= 0) {
+		if (duty > state.period_ns)
+			printf(" warning: duty_ns is greater than period\n");
+
+		state.duty_ns = duty;
+	}
+
+	error = pwm_apply_state(pwm, &state);
+
+	if (stop > 0) {
+		state.p_enable = false;
+		error = pwm_apply_state(pwm, &state);
+	}
+
+	pwm_free(pwm);
+
+	return error;
+}
+
+BAREBOX_CMD_HELP_START(pwm_set)
+BAREBOX_CMD_HELP_TEXT("Sets a pwm device parameters.")
+BAREBOX_CMD_HELP_TEXT(" Specify the device by device name")
+BAREBOX_CMD_HELP_TEXT(" Timings can either be specified via period + duty (on) duration,")
+BAREBOX_CMD_HELP_TEXT("  or via frequency. Duty can be given either as a percentage or time.")
+BAREBOX_CMD_HELP_TEXT(" If a parameter is not specified, the current value will be used")
+BAREBOX_CMD_HELP_TEXT("  where possible - except when setting frequency, in which case")
+BAREBOX_CMD_HELP_TEXT("  the 'width' will default to 50%.")
+BAREBOX_CMD_HELP_TEXT(" Stopping the device does not necessarily set the output to inactive.")
+BAREBOX_CMD_HELP_TEXT(" To set an output to inactive state, set the duty to 0.")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT("-d string", "device name (eg 'pwm0')")
+BAREBOX_CMD_HELP_OPT("-D number", "duty cycle (ns)")
+BAREBOX_CMD_HELP_OPT("-P number", "period (ns)")
+BAREBOX_CMD_HELP_OPT("-f number", "frequency (Hz)")
+BAREBOX_CMD_HELP_OPT("-w number", "duty cycle (%) - the on 'width' of each cycle")
+BAREBOX_CMD_HELP_OPT("-i\t", "line inverted polarity")
+BAREBOX_CMD_HELP_OPT("-s\t", "stop (disable) the pwm device")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(pwm_set)
+	.cmd		= do_pwm_set,
+	BAREBOX_CMD_DESC("set pwm")
+	BAREBOX_CMD_OPTS("[-dDPfwis]")
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
+	BAREBOX_CMD_HELP(cmd_pwm_set_help)
+BAREBOX_CMD_END
-- 
2.35.3



