Delivery-date: Sun, 02 Aug 2026 15:21:27 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wqW87-005XhB-0Z
	for lore@lore.pengutronix.de;
	Sun, 02 Aug 2026 15:21:27 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 1B81F2006B6
	for <lore@pengutronix.de>; Sun, 02 Aug 2026 15:21:27 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ylnN9rrT;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=UI65f4kj;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Jmd1ckFyR4HPaLqMGsuHl75iOpbrZceovkGNkR4PEBE=; b=ylnN9rrT5C0m8j8uOEK6HrCkdz
	sVe1mUaDvqePMc7brZJNZm6afk4baxXcZ0RrIQW532HRZ5WNowLW/ZJZS4Rk2NX7NKXMhRRT8421w
	JKXd70RNty1nfhJZV7pryeoIf0bBtcARTraP8oM1f+lOC1ixdLGWytB/wWt2EDpTnwBc/XaSmcCu8
	adjynfX5biaYPFQJ9EtQwrC2AUuhECqAPe6LsrG9mzoCZXMjKDYsvIkmApOuchw230quKrGzrGIp5
	M/GRtOKlXlsQ1ZPgnqwMXJUv79iV86w+x4xP8qlTDQECoHdJeV5F/HMpBu8Gx0x3ZJkydU9NgozOM
	sE+lUdLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqW3E-0000000Fez1-1Rqo;
	Sun, 02 Aug 2026 13:16:24 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqW3B-0000000Feve-26sK
	for barebox@lists.infradead.org;
	Sun, 02 Aug 2026 13:16:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 8035C60DD2;
	Sun,  2 Aug 2026 13:16:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 334B8C19425;
	Sun,  2 Aug 2026 13:16:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785676579;
	bh=UTUCXrKMc2GzE7om+aCvN5p7T0abcNhV2BXapatdJ2U=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=UI65f4kjs1YA6wPrOBXgZk1b6hVwgUgyzNtAE6jVFPZvRih74eIpKnPNQN353Rvj3
	 2YjMXdWfH76ltCjUbskAZoXgQkSZ1eqFE4vH4hlCKBgMbzXv5095tg4f1A53ZVSN06
	 ZTc3A9ivzcT5ZZw9aJfMqWK5SxU6gMSqzEWbXj6Q+m1BhHa1yrKWQqGhN0Sr2/BCHS
	 myXv68N0Vd7PbZDeKZMAP3JMTlhI6QEwkJ2Q83YOTECPOJopHa74FuzY0RZk0xLWWr
	 6jOeU03Bcf1uKabE67XqQGWMatkdB4UMF1blNh3YkuSAEKBc0nMceMdcbZ0LI2EiyM
	 4CrJNCi4gifAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2451FC55171;
	Sun,  2 Aug 2026 13:16:19 +0000 (UTC)
From: Luca Lauro via B4 Relay <devnull+famlauro93l.gmail.com@kernel.org>
Date: Sun, 02 Aug 2026 15:16:22 +0200
Subject: [PATCH v3 06/15] commands: add fan control command
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260802-rn102-rn104-series-v3-6-f7685a279fb5@gmail.com>
References: <20260802-rn102-rn104-series-v3-0-f7685a279fb5@gmail.com>
In-Reply-To: <20260802-rn102-rn104-series-v3-0-f7685a279fb5@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Luca Lauro <famlauro93l@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1785676613; l=12962;
 i=famlauro93l@gmail.com; s=20260723; h=from:subject:message-id;
 bh=Vx+EBxJNOF0R9x/bZxWmoZX0N9e3iS2sDuPQD/S/D/U=;
 b=L7agvC2v7i9EvrGQaIQ7iaVG84emtv3ntXCkWoA1JqPVJHaFZL3eQGLdNdtizL3/Cb9/v4QGW
 NHVlYjSht9/C9gtaW4TTpVYa5DmWZ4m2oKSqk4SSsjMax5NgLzSvVkn
X-Developer-Key: i=famlauro93l@gmail.com; a=ed25519;
 pk=OAJlcD69ugQCl99Vy6w+Aeu+ZUb1IVGcz1Ijxo6Ch78=
X-Endpoint-Received: by B4 Relay for famlauro93l@gmail.com/20260723 with
 auth_id=892
X-Original-From: Luca Lauro <famlauro93l@gmail.com>
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
Reply-To: famlauro93l@gmail.com
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Spamd-Result: default: False [-6.91 / 15.00];
	DWL_DNSWL_MED(-4.00)[kernel.org:dkim,infradead.org:dkim];
	BAYES_HAM(-3.00)[100.00%];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[devnull@kernel.org,barebox-bounces@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	TAGGED_FROM(0.00)[lore=pengutronix.de,famlauro93l.gmail.com];
	FREEMAIL_CC(0.00)[gmail.com];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,kernel.org:+];
	RCPT_COUNT_THREE(0.00)[3];
	HAS_REPLYTO(0.00)[famlauro93l@gmail.com]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 1B81F2006B6
X-Stat-Signature: o4esd569h1ugjz8mex7tf39mro7mx4az

From: Luca Lauro <famlauro93l@gmail.com>

Signed-off-by: Luca Lauro <famlauro93l@gmail.com>
---
 commands/Kconfig  |   7 ++
 commands/Makefile |   2 +
 commands/fan.c    | 286 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 295 insertions(+)

diff --git a/commands/Kconfig b/commands/Kconfig
index 297c89b4b5..d661f0eaab 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -2337,6 +2337,13 @@ config CMD_RKSECURE
 	  The rksecure command allows to retrieve information about and enable
 	  secure boot for Rockchip rk3588 SoCs.
 
+config CMD_FAN
+	bool
+	depends on FAN
+	prompt "fan command"
+	help
+	  Control and monitor target fans.
+
 # end Hardware manipulation commands
 endmenu
 
diff --git a/commands/Makefile b/commands/Makefile
index 2563efb12f..227c40b3f5 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -173,4 +173,6 @@ obj-$(CONFIG_CMD_DMSETUP)	+= dmsetup.o
 obj-$(CONFIG_CMD_VERITYSETUP)	+= veritysetup.o
 obj-$(CONFIG_CMD_SCONFIG)	+= sconfig.o
 obj-$(CONFIG_CMD_RKSECURE)	+= rksecure.o
+obj-$(CONFIG_CMD_FAN)		+= fan.o
+
 UBSAN_SANITIZE_ubsan.o := y
diff --git a/commands/fan.c b/commands/fan.c
new file mode 100644
index 0000000000..613b4ac101
--- /dev/null
+++ b/commands/fan.c
@@ -0,0 +1,286 @@
+#include <common.h>
+#include <command.h>
+#include <complete.h>
+#include <errno.h>
+#include <fan/fan.h>
+
+static int do_fan(int argc, char *argv[])
+{
+	struct fan_device *fan;
+	char buf[32];
+	unsigned long val;
+	int ret = 0;
+
+
+	if (argc < 3) {
+		return COMMAND_ERROR_USAGE;
+	}
+
+	fan = fan_device_find(argv[2]);
+	if (IS_ERR(fan)) {
+		printf("Device not found: %s\n", argv[2]);
+		return PTR_ERR(fan);
+	}
+	if (!fan->ops) {
+		printf("Fan driver ops not initialized\n");
+		return -ENODEV;
+	}
+
+	if (!strcmp(argv[1], "get")) {
+		if (argc == 4) {
+			if (!strcmp(argv[3], "startv") && fan->ops->get_fan_startv) {
+				ret = fan->ops->get_fan_startv(fan->dev, buf);
+				printf("Fan startup voltage mode: %s\n", ret >= 0 ? buf : "N/A");
+			}
+			else if (!strcmp(argv[3], "gearmult") && fan->ops->get_gear_multiplier) {
+				ret = fan->ops->get_gear_multiplier(fan->dev, buf);
+				printf("Gear multiplier: %s\n", ret >= 0 ? buf : "N/A");
+}
+			else if (!strcmp(argv[3], "outmode") && fan->ops->get_output_mode) {
+				ret = fan->ops->get_output_mode(fan->dev, buf);
+				printf("Output mode: %s\n", ret >= 0 ? buf : "N/A");
+			}
+			else if (!strcmp(argv[3], "ppr") && fan->ops->get_fan_ppr) {
+				ret = fan->ops->get_fan_ppr(fan->dev, buf);
+				printf("Pulses per revolution: %s\n", ret >= 0 ? buf : "N/A");
+			}
+			else if (!strcmp(argv[3], "pwmpol") && fan->ops->get_pwm_polarity) {
+				ret = fan->ops->get_pwm_polarity(fan->dev, buf);
+				printf("PWM polarity: %s\n", ret >= 0 ? buf : "N/A");
+			}
+			else if (!strcmp(argv[3], "clkfreq") && fan->ops->get_clk_freq) {
+				ret = fan->ops->get_clk_freq(fan->dev, buf);
+				printf("Clock frequency: %s\n", ret >= 0 ? buf : "N/A");
+			}
+			else if (!strcmp(argv[3], "clkdiv") && fan->ops->get_clk_div) {
+				ret = fan->ops->get_clk_div(fan->dev, buf);
+				printf("Clock divider: %s\n", ret >= 0 ? buf : "N/A");
+			}
+			else if (!strcmp(argv[3], "ctrlmode") && fan->ops->get_control_mode) {
+				ret = fan->ops->get_control_mode(fan->dev, buf);
+				printf("Control mode: %s\n", ret >= 0 ? buf : "N/A");
+			}
+			else if (!strcmp(argv[3], "outmode") && fan->ops->get_output_mode) {
+				ret = fan->ops->get_output_mode(fan->dev, buf);
+				printf("Output mode: %s\n", ret >= 0 ? buf : "N/A");
+			}
+			else if (!strcmp(argv[3], "oocdet") && fan->ops->get_ooc_detection) {
+				ret = fan->ops->get_ooc_detection(fan->dev, buf);
+				printf("Out of control detection: %s\n", ret >= 0 ? buf : "N/A");
+			}
+			else if (!strcmp(argv[3], "faultdet") && fan->ops->get_failure_detection) {
+				ret = fan->ops->get_failure_detection(fan->dev, buf);
+				printf("Failure detection: %s\n", ret >= 0 ? buf : "N/A");
+			}
+			else if (!strcmp(argv[3], "oocstate") && fan->ops->get_ooc_state) {
+				ret = fan->ops->get_ooc_state(fan->dev, buf);
+				printf("Fan out of control state: %s\n", ret >= 0 ? buf : "N/A");
+			}
+			else if (!strcmp(argv[3], "faultstate") && fan->ops->get_failure_state) {
+				ret = fan->ops->get_failure_state(fan->dev, buf);
+				printf("Fan failure state: %s\n", ret >= 0 ? buf : "N/A");
+			}
+			else if (!strcmp(argv[3], "speed") && fan->ops->get_fan_speed) {
+				ret = fan->ops->get_fan_speed(fan->dev, buf);
+				printf("Fan speed: %s\n", ret >= 0 ? buf : "N/A");
+			}
+			else if (!strcmp(argv[3], "rpm") && fan->ops->get_fan_rpm) {
+				ret = fan->ops->get_fan_rpm(fan->dev, buf);
+				printf("Fan rpm: %s\n", ret >= 0 ? buf : "N/A");
+			}
+			else if (!strcmp(argv[3], "level") && fan->ops->get_fan_level) {
+				ret = fan->ops->get_fan_level(fan->dev, buf);
+				printf("Fan level: %s\n", ret >= 0 ? buf : "N/A");
+			}
+			else if (!strcmp(argv[3], "all")) {
+				if (fan->ops->get_fan_startv) {
+					ret = fan->ops->get_fan_startv(fan->dev, buf);
+					printf("Fan startup voltage mode: %s\n", ret >= 0 ? buf : "N/A");
+				}
+				if (fan->ops->get_gear_multiplier) {
+					ret = fan->ops->get_gear_multiplier(fan->dev, buf);
+					printf("Gear multiplier: %s\n", ret >= 0 ? buf : "N/A");
+				}
+				if (fan->ops->get_fan_ppr) {
+					ret = fan->ops->get_fan_ppr(fan->dev, buf);
+					printf("Pulses per revolution: %s\n", ret >= 0 ? buf : "N/A");
+				}
+				if (fan->ops->get_pwm_polarity) {
+					ret = fan->ops->get_pwm_polarity(fan->dev, buf);
+					printf("PWM polarity: %s\n", ret >= 0 ? buf : "N/A");
+				}
+				if (fan->ops->get_clk_freq) {
+					ret = fan->ops->get_clk_freq(fan->dev, buf);
+					printf("Clock frequency: %s\n", ret >= 0 ? buf : "N/A");
+				}
+				if (fan->ops->get_clk_div) {
+					ret = fan->ops->get_clk_div(fan->dev, buf);
+					printf("Clock divider: %s\n", ret >= 0 ? buf : "N/A");
+				}
+				if (fan->ops->get_control_mode) {
+					ret = fan->ops->get_control_mode(fan->dev, buf);
+					printf("Control mode: %s\n", ret >= 0 ? buf : "N/A");
+				}
+				if (fan->ops->get_output_mode) {
+					ret = fan->ops->get_output_mode(fan->dev, buf);
+					printf("Output mode: %s\n", ret >= 0 ? buf : "N/A");
+				}
+				if (fan->ops->get_ooc_detection) {
+					ret = fan->ops->get_ooc_detection(fan->dev, buf);
+					printf("Out of control detection: %s\n", ret >= 0 ? buf : "N/A");
+				}
+				if (fan->ops->get_failure_detection) {
+					ret = fan->ops->get_failure_detection(fan->dev, buf);
+					printf("Failure detection: %s\n", ret >= 0 ? buf : "N/A");
+				}
+				if (fan->ops->get_failure_state) {
+					ret = fan->ops->get_failure_state(fan->dev, buf);
+					printf("Fan failure state: %s\n", ret >= 0 ? buf : "N/A");
+				}
+				if (fan->ops->get_ooc_state) {
+					ret = fan->ops->get_ooc_state(fan->dev, buf);
+					printf("Fan out of control state: %s\n", ret >= 0 ? buf : "N/A");
+				}
+				if (fan->ops->get_fan_speed) {
+					ret = fan->ops->get_fan_speed(fan->dev, buf);
+					printf("Fan speed: %s\n", ret >= 0 ? buf : "N/A");
+				}
+				if (fan->ops->get_fan_rpm) {
+					ret = fan->ops->get_fan_rpm(fan->dev, buf);
+					printf("Fan rpm: %s\n", ret >= 0 ? buf : "N/A");
+				}
+				if (fan->ops->get_fan_level) {
+					ret = fan->ops->get_fan_level(fan->dev, buf);
+					printf("Fan level: %s\n", ret >= 0 ? buf : "N/A");
+				}
+			}
+			else {
+				printf("Invalid parameter: %s\n", argv[3]);
+				return COMMAND_ERROR_USAGE;
+			}
+		}
+		else {
+			printf("Invalid number of arguments for %s cmd\n", argv[1]);
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+	else if (!strcmp(argv[1], "set")) {
+		if (argc == 5) {
+			val = simple_strtoul(argv[4], NULL, 10);
+			snprintf(buf, sizeof(buf), "%lu", val);
+
+			if (!strcmp(argv[3], "startv") && fan->ops->set_fan_startv) {
+				ret = fan->ops->set_fan_startv(fan->dev, val);
+				printf("Fan startup voltage set to: %s\n", ret >= 0 ? buf : "N/A");
+			}
+			else if (!strcmp(argv[3], "gearmult") && fan->ops->set_gear_multiplier) {
+				ret = fan->ops->set_gear_multiplier(fan->dev, val);
+				printf("Gear multiplier set to: %s\n", ret >= 0 ? buf : "N/A");
+			}
+			else if (!strcmp(argv[3], "ppr") && fan->ops->set_fan_ppr) {
+				ret = fan->ops->set_fan_ppr(fan->dev, val);
+				printf("Pulses per revolution set to: %s\n", ret >= 0 ? buf : "N/A");
+			}
+			else if (!strcmp(argv[3], "pwmpol") && fan->ops->set_pwm_polarity) {
+				ret = fan->ops->set_pwm_polarity(fan->dev, val);
+				printf("PWM polarity set to: %s\n", ret >= 0 ? buf : "N/A");
+			}
+			else if (!strcmp(argv[3], "clkfreq") && fan->ops->set_clk_freq) {
+				ret = fan->ops->set_clk_freq(fan->dev, val);
+				printf("Clock frequency set to: %s\n", ret >= 0 ? buf : "N/A");
+			}
+			else if (!strcmp(argv[3], "clkdiv") && fan->ops->set_clk_div) {
+				ret = fan->ops->set_clk_div(fan->dev, val);
+				printf("Clock divider set to: %s\n", ret >= 0 ? buf : "N/A");
+			}
+			else if (!strcmp(argv[3], "ctrlmode") && fan->ops->set_control_mode) {
+				ret = fan->ops->set_control_mode(fan->dev, val);
+				printf("Control mode set to: %s\n", ret >= 0 ? buf : "N/A");
+			}
+			else if (!strcmp(argv[3], "outmode") && fan->ops->set_output_mode) {
+				ret = fan->ops->set_output_mode(fan->dev, val);
+				printf("Output mode set to: %s\n", ret >= 0 ? buf : "N/A");
+			}
+			else if (!strcmp(argv[3], "ooc") && fan->ops->set_ooc_detection) {
+				ret = fan->ops->set_ooc_detection(fan->dev, val);
+				printf("Out of control detection set to: %s\n", ret >= 0 ? buf : "N/A");
+			}
+			else if (!strcmp(argv[3], "fault") && fan->ops->set_failure_detection) {
+				ret = fan->ops->set_failure_detection(fan->dev, val);
+				printf("Failure detection set to: %s\n", ret >= 0 ? buf : "N/A");
+			}
+			else if (!strcmp(argv[3], "speed") && fan->ops->set_fan_speed) {
+				ret = fan->ops->set_fan_speed(fan->dev, val);
+				printf("Fan speed set to: %s\n", ret >= 0 ? buf : "N/A");
+			}
+			else if (!strcmp(argv[3], "rpm") && fan->ops->set_fan_rpm) {
+				ret = fan->ops->set_fan_rpm(fan->dev, val);
+				printf("Fan rpm set to: %s\n", ret >= 0 ? buf : "N/A");
+			}
+			else if (!strcmp(argv[3], "level") && fan->ops->set_fan_level) {
+				ret = fan->ops->set_fan_level(fan->dev, val);
+				printf("Fan level set to: %s\n", ret >= 0 ? buf : "N/A");
+			}
+			else {
+				printf("Invalid parameter: %s\n", argv[3]);
+				return COMMAND_ERROR_USAGE;
+			}
+		}
+		else {
+			printf("Invalid number of arguments for %s cmd\n", argv[1]);
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+	else if (!strcmp(argv[1], "init")) {
+		if (argc == 3) {
+			if (fan->ops->fan_init) {
+				ret = fan->ops->fan_init(fan->dev);
+				printf("Fan initialization: %s\n", ret >= 0 ? "successful" : "N/A");
+			}
+		}
+		else {
+			printf("Invalid number of arguments for %s cmd\n", argv[1]);
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+	else {
+			printf("Invalid cmd: %s\n", argv[1]);
+			return COMMAND_ERROR_USAGE;
+	}
+
+	return ret;
+}
+
+BAREBOX_CMD_HELP_START(fan)
+BAREBOX_CMD_HELP_TEXT("cmd options:\n")
+BAREBOX_CMD_HELP_OPT("get", "get fan parameter")
+BAREBOX_CMD_HELP_OPT("set", "set fan parameter")
+BAREBOX_CMD_HELP_OPT("init", "initialize fan")
+
+BAREBOX_CMD_HELP_TEXT("\nparameter options:\n")
+BAREBOX_CMD_HELP_OPT("outmode", "fan controller ouptut mode [0 (adc)|1 (pwm)]")
+BAREBOX_CMD_HELP_OPT("clkdiv", "fan controller prescaler value [1|2|4|8]")
+BAREBOX_CMD_HELP_OPT("clkfreq", "input clock frequency (Hz)")
+BAREBOX_CMD_HELP_OPT("ppr", "fan tachometer pulses per revolution [2|4]")
+BAREBOX_CMD_HELP_OPT("ctrlmode", "fan control mode [0 (open-loop)|1 (closed-loop)]")
+BAREBOX_CMD_HELP_OPT("speed", "fan speed register value [0:255]")
+BAREBOX_CMD_HELP_OPT("rpm", "fan rpm [0:(max fan rpm)]")
+BAREBOX_CMD_HELP_OPT("level", "fan speed percentage [0:100]")
+BAREBOX_CMD_HELP_OPT("startv", "fan startup voltage [0|1|2|3]")
+BAREBOX_CMD_HELP_OPT("gearmult", "gear multiplier [0|1|2]")
+BAREBOX_CMD_HELP_OPT("pwmpol", "PWM polarity [0 (positive)|1 (negative)]")
+BAREBOX_CMD_HELP_OPT("faultdet", "enable/disable failure detection [0|1]")
+BAREBOX_CMD_HELP_OPT("oocdet", "enable/disable out-of-control detection [0|1]")
+BAREBOX_CMD_HELP_OPT("fault", "fan failure flag [0 (ok)|1 (fault)]")
+BAREBOX_CMD_HELP_OPT("ooc", "fan out of control flag [1 (ok):0 (ooc)]")
+BAREBOX_CMD_HELP_OPT("all", "print all fan parameters")
+BAREBOX_CMD_HELP_TEXT("\n")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(fan)
+	.cmd		= do_fan,
+	BAREBOX_CMD_DESC("fan management")
+	BAREBOX_CMD_OPTS("<cmd> <devpath> <parameter> [value]")
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
+	BAREBOX_CMD_HELP(cmd_fan_help)
+BAREBOX_CMD_END
\ No newline at end of file

-- 
2.47.3




