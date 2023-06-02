Delivery-date: Fri, 02 Jun 2023 06:56:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4wpY-006ndp-DY
	for lore@lore.pengutronix.de; Fri, 02 Jun 2023 06:56:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4wpV-0001bx-Kt
	for lore@pengutronix.de; Fri, 02 Jun 2023 06:56:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=E8pKB2o0geZYEOY4n4/0/yoUak98DO4r9pGx8vfu1QM=; b=X9z45xS1djWKmos2LJEfkXxngn
	zLSa0+95WGjTe6LYU0EpFx7bpKAehfNLeVbCsEGL6YcEFhw6caqR847vNatoSmOmzwGSyvFHzZETS
	nO49rjjpRaGGGA6kCHMveF4sumGfaoS+dI+V9yBN1K5VweB0fQa377iMmCubxtxDq8XL6AmJFKa/h
	eQQhoZ6yGZ261X5zSoN8gAQiZp0bVfiFGVlV5w5gze4M+tQjdu7lymf8EWChCJUcMECMMR24v+wgW
	vPvbadKentqxTUCAlWALxQTxIINEVoalYLVPd5bKqNM4f9LOc3x6CR5hjgUXGOsgV0c80QDJypuI7
	SzsghBdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4woY-005j6j-0s;
	Fri, 02 Jun 2023 04:55:02 +0000
Received: from vmse01.mailcluster.com.au ([2401:fc00:2:13f::6])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4woT-005j2K-37
	for barebox@lists.infradead.org;
	Fri, 02 Jun 2023 04:54:59 +0000
Received: from vmcp03.web-servers.com.au ([116.90.56.28])
	by vmse01.mailcluster.com.au with esmtps (TLSv1.2:AES128-GCM-SHA256:128)
	(Exim 4.92)
	(envelope-from <marc@cpdesign.com.au>)
	id 1q4wnd-0000eM-K4
	for barebox@lists.infradead.org; Fri, 02 Jun 2023 14:54:10 +1000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=cpdesign.com.au; s=default; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=E8pKB2o0geZYEOY4n4/0/yoUak98DO4r9pGx8vfu1QM=; b=qevBiNhObySdVer6JXDCblOnQ4
	CYCg9mH33M7hj4UqG5rTa7kE1hdov+gOR9MoDWwXrzFgDF3xERNbBu54pfhtgwRs8c6PLAy0GW4/R
	6dhk9co4AHhrSNsZBA9/A9/J8X4v1TRZ3Z/RSSnvYvqqciBOTSovwrrMlEDM7ZBgfbEggSNIr5H+f
	fdT8DW+CJ3qnZLaZstha6GAsIZQxgo5iVR07K5G21lKeZJrSB34JZDpMgPLGuZe3nxhyl6nh1JNwp
	lwxkEw0k9GeA/zdRMD+AsAGeZOEzMqBHTVtETRzYYHOXLT7fTbCura2Nn+z2hCDgY+/IAe8A6oVJ/
	IqoEkGTw==;
Received: from [203.220.86.121] (port=58250 helo=localhost.localdomain)
	by vmcp03.web-servers.com.au with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <marc@cpdesign.com.au>)
	id 1q4wmq-009uBj-38;
	Fri, 02 Jun 2023 14:53:17 +1000
From: Marc Reilly <marc@cpdesign.com.au>
To: barebox@lists.infradead.org
Date: Fri,  2 Jun 2023 14:53:05 +1000
Message-Id: <20230602045306.31258-2-marc@cpdesign.com.au>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20230602045306.31258-1-marc@cpdesign.com.au>
References: <20230602045306.31258-1-marc@cpdesign.com.au>
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
X-SpamExperts-Outgoing-Evidence: SB/global_tokens (0.000722979891302)
X-Recommended-Action: accept
X-Filter-ID: Pt3MvcO5N4iKaDQ5O6lkdGlMVN6RH8bjRMzItlySaT9WuP4JWUls745Rf35jsDCnPUtbdvnXkggZ
 3YnVId/Y5jcf0yeVQAvfjHznO7+bT5zzRQC/PIR0ZeIYukWs6zeuXFWCX8oNdggW7HE9XDTdSavp
 k7Vp2UXVHEQMIct0liI2ZQDRy4fwzvurpK09ntDSswKQDamPN66SYe4XX4xmgJvmHZIaOCPnuqIf
 UsnKQndaIN+MTJ88TTpoG8fQ5knApuGXed8VjoeeEKguXydrkShi9puKPROsBQB1AwgBJBOGKpfT
 IF8fSxNC0LttVkKWCvX50FqPnOjxx3ysNl11MvsDcLC0U2KR6OWH3DJPpNlNxaypTbp28NxghjNo
 pU/Oaqj4KISIRSJ5MfjE8OaunZEyYYf7TmlI3iEcqXK4A61ChHMQHCMEWTX9HEhwSP4/MSl+mev0
 M9cO0xP2892D0Uv5/hXXQF+f2WAemEBBH0NsVeB41VPmQWlT6X4HxPATd38b9MLKMY00g8iKb4Ma
 HkcFBAvuf345Nnfstl8j+xb35lDPKa+hEyOYER4dYqg19L79JWHANylAmdcW1ioqKAhIbSJTbn3p
 hW1N8stWViDDh0zYybFfFGb1BguKhGQS1815h2jfNCQvp3x+etU3v+gbaW5naTC7zOfGQeBlb2X7
 4O4hBSz/kkmPgL+fgIguB5c2vNNHcCWHRR4knes+uF6t1gj1W/Usfpu6RQz7+k4ca8qNRPXKEUvG
 hotHj7BXzpIiZ3aYsCU80RnzQz1brqcneM2DtFL6lyn3SdWY2VjHp+W1tpo+4KZfjXpfNmlerfOY
 3UNVu8TOdjOCr0g4mxFW6BNL/LNNOwdMx+faYopHdCUDK0lwKtLTqkxfwugN4f1+EIFKK7URCWRy
 DNzxGhE212Njsl2GidyDnUTBs2Zm4zuNRcgRKiGg7nXFaZTxkthHBBd+1FGtrHfmRLr1mA3ARdV5
 AZf6qXuoaniPBKa/K7PRiH9N3uNqUeLkT9H/YAvNrlNPDcRjUdyh4v23HFAB9fsWrjkhC+/VkwPD
 61O38M3G5FnJSs4QlaOH81x50MxOKVrDfQzDgqFDumjx949yYjkgur7cbmMvzASyKBHM3xi8wXJI
 Uf8Y97QTxRrgRfBTyao+gSRn3B4C0WLGZPe4LJ2MyI6lLpoeMdMOO8Y=
X-Report-Abuse-To: spam@vmse01.mailcluster.com.au
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230601_215458_169358_E06B3FE0 
X-CRM114-Status: GOOD (  25.38  )
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
Subject: [PATCH v4 1/2] commands: add pwm manipulation command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This introduces a command to set parameters for a pwm device.

Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
---
 commands/Kconfig  |  12 +++
 commands/Makefile |   1 +
 commands/pwm.c    | 199 ++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 212 insertions(+)
 create mode 100644 commands/pwm.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 4d3ff631a8..28f9e46a59 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1929,6 +1929,18 @@ config CMD_I2C
 		  -w		use word (16 bit) wide access
 		  -v		verbose
 
+config CMD_PWM
+	bool
+	depends on PWM
+	prompt "PWM commands: pwm"
+	help
+	  pwm - set or show pwm state
+
+	  Usage: pwm [dDPfwisv]
+
+	  Controls the pwm values such as period and duty cycle, or shows
+	  the current values.
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
index 0000000000..82535d229e
--- /dev/null
+++ b/commands/pwm.c
@@ -0,0 +1,199 @@
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
+#define HZ_FROM_NANOSECONDS(x) (1000000000UL/(x))
+
+static bool is_equal_state(struct pwm_state *state1, struct pwm_state *state2)
+{
+	return (state1->period_ns == state2->period_ns)
+		&& (state1->duty_ns == state2->duty_ns)
+		&& (state1->polarity == state2->polarity)
+		&& (state1->p_enable == state2->p_enable);
+}
+
+static int do_pwm_cmd(int argc, char *argv[])
+{
+	struct pwm_device *pwm = NULL;
+	struct pwm_state state, orig_state;
+	int error = 0;
+	char *devname = NULL;
+	int duty = -1, period = -1;
+	int freq = -1, width = -1;
+	bool invert_polarity = false, stop = false;
+	bool use_default_width = false;
+	bool verbose = false;
+	int opt;
+
+	while ((opt = getopt(argc, argv, "d:D:P:f:w:F:isv")) > 0) {
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
+		case 'F':
+			/* convenience option for changing frequency without
+			 * having to specify duty width */
+			use_default_width = true;
+			/* fallthrough */
+		case 'f':
+			freq = simple_strtol(optarg, NULL, 0);
+			break;
+		case 'w':
+			width = simple_strtol(optarg, NULL, 0);
+			break;
+		case 'i':
+			invert_polarity = true;
+			break;
+		case 's':
+			stop = true;
+			break;
+		case 'v':
+			verbose = true;
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
+	if (freq >= 0 && period >= 0) {
+		printf(" specify period or frequency, not both\n");
+		return COMMAND_ERROR_USAGE;
+	}
+	if (duty >= 0 && width >= 0) {
+		printf(" specify duty or width, not both\n");
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
+	/* argc will be at least 3 with a valid devname */
+	if (verbose || (argc <= 3)) {
+		printf("pwm params for '%s':\n", devname);
+		printf("  period   : %u (ns)\n", state.period_ns);
+		printf("  duty     : %u (ns)\n", state.duty_ns);
+		printf("  enabled  : %d\n", state.p_enable);
+		printf("  polarity : %s\n", state.polarity == 0 ? "Normal" : "Inverted");
+		printf("  freq     : %lu (Hz)\n", HZ_FROM_NANOSECONDS(state.period_ns));
+
+		pwm_free(pwm);
+		return 0;
+	}
+
+	if ((state.period_ns == 0) && (freq < 0) && (period < 0)) {
+		printf(" need to know some timing info: freq or period\n");
+		pwm_free(pwm);
+		return COMMAND_ERROR_USAGE;
+	}
+
+	orig_state = state;
+
+	if (invert_polarity)
+		state.polarity = invert_polarity;
+
+	/* period */
+	if (freq > 0) {
+		state.p_enable = true;
+		state.period_ns = HZ_TO_NANOSECONDS(freq);
+		if (use_default_width && (width < 0)) {
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
+		state.duty_ns = duty;
+	}
+
+	if (state.duty_ns > state.period_ns) {
+		printf(" duty_ns must not be greater than period_ns\n");
+	}
+
+	/* only set the state if its changed */
+	if (!is_equal_state(&orig_state, & state))
+		error = pwm_apply_state(pwm, &state);
+
+	if (error < 0)
+		printf(" error while applying state: %d\n", error);
+
+	/* stop handled as an additional step on purpose, allows turning off
+	 * output (eg if duty => 0) and stopping in one command
+	 */
+	if (stop > 0) {
+		state.p_enable = false;
+		error = pwm_apply_state(pwm, &state);
+		if (error < 0)
+			printf(" error while stopping: %d\n", error);
+	}
+
+	pwm_free(pwm);
+
+	return error;
+}
+
+BAREBOX_CMD_HELP_START(pwm)
+BAREBOX_CMD_HELP_TEXT("Sets pwm device parameters, or shows current value.")
+BAREBOX_CMD_HELP_TEXT(" Specify the pwm device by device name.")
+BAREBOX_CMD_HELP_TEXT(" If no other parameters are given, or if args has '-v',")
+BAREBOX_CMD_HELP_TEXT("  then show the current values only.")
+BAREBOX_CMD_HELP_TEXT(" Timings can either be specified via period + duty (on) duration,")
+BAREBOX_CMD_HELP_TEXT("  or via frequency. Duty can be given either as a percentage or time.")
+BAREBOX_CMD_HELP_TEXT(" If a parameter is not specified, the current value will be used")
+BAREBOX_CMD_HELP_TEXT("  where possible.")
+BAREBOX_CMD_HELP_TEXT(" To set an output to inactive state, set the duty to 0.")
+BAREBOX_CMD_HELP_TEXT("  (although note this will not by itself stop the pwm running.)")
+BAREBOX_CMD_HELP_TEXT(" Stopping the pwm device does not necessarily set the output to inactive,")
+BAREBOX_CMD_HELP_TEXT("  but stop is handled last, so can be done in addition to other changes.")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT("-d string", "device name (eg 'pwm0')")
+BAREBOX_CMD_HELP_OPT("-D number", "duty cycle (ns)")
+BAREBOX_CMD_HELP_OPT("-P number", "period (ns)")
+BAREBOX_CMD_HELP_OPT("-f number", "frequency (Hz)")
+BAREBOX_CMD_HELP_OPT("-w number", "duty cycle (%) - the on 'width' of each cycle")
+BAREBOX_CMD_HELP_OPT("-i\t", "line inverted polarity")
+BAREBOX_CMD_HELP_OPT("-s\t", "stop (disable) the pwm device")
+BAREBOX_CMD_HELP_OPT("-v\t", "print current values")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(pwm)
+	.cmd		= do_pwm_cmd,
+	BAREBOX_CMD_DESC("pwm")
+	BAREBOX_CMD_OPTS("[-dDPfwisv]")
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
+	BAREBOX_CMD_HELP(cmd_pwm_help)
+BAREBOX_CMD_END
-- 
2.35.3



