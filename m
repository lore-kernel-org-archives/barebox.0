Delivery-date: Mon, 29 May 2023 13:08:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3ajf-001Fkn-4S
	for lore@lore.pengutronix.de; Mon, 29 May 2023 13:08:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3ajc-0006tt-I9
	for lore@pengutronix.de; Mon, 29 May 2023 13:08:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qk9u18uggUK6EaJbxIIvB7zXg46kpWLTDZq68OB7Dy4=; b=ROFZQI+YD1yyv0nSmyWu1+ByGU
	750HylnOENb4NI6dvsz2AaGtmOEGjqAsMN9YCNshWbxJmQyZpenoJzicIEfoB806oAoi13gtFDMCi
	3KaxX4ztk923zDlZPc2rpFH1RgDEBGRdGS552aVz1YLa3IDWAmmGFIyGvAjx6jlXoxU26CivV2Ccr
	aDCiTW4gv6M1v3yHK/wA2qJziqUSVTPuTDSKMNnINI9Nu/hItGjchNFuC147MZjYdxUAUyu73OPmN
	Wt6GpAQrBglYmeyqzKRani44i6SlH0fiaUvgzAyaZGIgeuIt6Nlxs2NcIGIsJrVCRpMCrczruLc9P
	I85nsW8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3aiz-00AEqa-2p;
	Mon, 29 May 2023 11:07:41 +0000
Received: from vmse01.mailcluster.com.au ([2401:fc00:2:13f::6])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3aiw-00AEob-30
	for barebox@lists.infradead.org;
	Mon, 29 May 2023 11:07:40 +0000
Received: from vmcp03.web-servers.com.au ([116.90.56.28])
	by vmse01.mailcluster.com.au with esmtps (TLSv1.2:AES128-GCM-SHA256:128)
	(Exim 4.92)
	(envelope-from <marc@cpdesign.com.au>)
	id 1q3ail-0003gK-7R
	for barebox@lists.infradead.org; Mon, 29 May 2023 21:07:33 +1000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=cpdesign.com.au; s=default; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=qk9u18uggUK6EaJbxIIvB7zXg46kpWLTDZq68OB7Dy4=; b=cqqnrCmrDSdsK02N+PoutSRsDH
	TGO/wYiiEP+OpaLOl6sSwUnZ342T4ClMzacHcOWC7GZIqxLxT/t2oyX/FEiUzYe9YRID1hNNH/7NQ
	zYiH0/2w3cOwO1Vb9ZZOIRjeC/xeG4wT25eCwBNE+sboodD0hXizKmFpV7rlJ8IP1blVTE5sOGQhR
	TXqaiGKMS7z/fXzf/3YmN/fl2rqshTkWlG4sa0uoY7N/UyWKHHcrKluCV5L9UNOWXo1o5s7AXHoCn
	0fXJMkOxHqzaExJRgs5q3Ek5wIJYKuzC/jHNhkRYX3G3CGeupiNO0n/aeGPKgZb7WvVuj+LsPYTFl
	it6JeOmQ==;
Received: from 180-150-33-184.b49621.mel.static.aussiebb.net ([180.150.33.184]:27893 helo=dev8.office.cpdesign.com.au)
	by vmcp03.web-servers.com.au with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <marc@cpdesign.com.au>)
	id 1q3ahz-001BAm-1M;
	Mon, 29 May 2023 21:06:39 +1000
From: Marc Reilly <marc@cpdesign.com.au>
To: barebox@lists.infradead.org
Date: Mon, 29 May 2023 21:06:26 +1000
Message-Id: <20230529110627.31257-3-marc@cpdesign.com.au>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20230529110627.31257-1-marc@cpdesign.com.au>
References: <20230529110627.31257-1-marc@cpdesign.com.au>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authenticated-User: marc@cpdesign.com.au
X-Authenticator: dovecot_plain
X-Originating-IP: 116.90.56.28
X-SpamExperts-Domain: panthur-sh-outbound0.mailcluster.com.au
X-SpamExperts-Username: 116.90.56.28
Authentication-Results: mailcluster.com.au; auth=pass smtp.auth=116.90.56.28@panthur-sh-outbound0.mailcluster.com.au
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: SB/global_tokens (0.006424616755)
X-Recommended-Action: accept
X-Filter-ID: Pt3MvcO5N4iKaDQ5O6lkdGlMVN6RH8bjRMzItlySaT+W5EBlxdinR+lm14EatvuLPUtbdvnXkggZ
 3YnVId/Y5jcf0yeVQAvfjHznO7+bT5zzRQC/PIR0ZeIYukWs6zeuXFWCX8oNdggW7HE9XDTdSavp
 k7Vp2UXVHEQMIct0liJUurDJWk+2SdVgQDN4bq/UswKQDamPN66SYe4XX4xmgJvmHZIaOCPnuqIf
 UsnKQndaIN+MTJ88TTpoG8fQ5knApuGXed8VjoeeEKguXydrkSpUidRDvhULdPLXIoXP6ZiGKpfT
 IF8fSxNC0LttVkKWCvX50FqPnOjxx3ysNl11MvsDcLC0U2KR6OWH3DJPpNlNxaypTbp28NxghjNo
 pU/Oaqj4KISIRSJ5MfjE8OaunZEyYYf7TmlI3iEcqXK4A61ChHMQHCMEWTX9HEhwSP4/MSl+mev0
 M9cO0xP2892D0Uv5/hXXQF+f2WAemEBBH0NsVeB41VPmQWlT6X4HxPATd38b9MLKMY00g8iKb4Ma
 HkcFBAvuf345Nnfstl8j+xb35lDPKa+hEyOYER4dYqg19L79JWHANylAmdcW1ioqKAhIbSJTbn3p
 hW1N8stWViDDh0zYybFfFGb1BguKhGQS1815h2jfNCQvp3x+etU3v+gbaW5naTC7zOfGQeBlb2X7
 4O4hBSz/kkmPgL+fgIguB5c2vNNHcCWHRR4knes+uF6t1gj1W/Usfpu6RQz7+k7fsLjPyqMFOlli
 IVZ/F5OqzpIiZ3aYsCU80RnzQz1brqcneM2DtFL6lyn3SdWY2VjHp+W1tpo+4KZfjXpfNmlerfOY
 3UNVu8TOdjOCr0g4mxFW6BNL/LNNOwdMx+faYopHdCUDK0lwKtLTqkxfwugNDfzmGuVkRHlzGAzs
 IT0H3m5+qUGLT5YaAP9CivEyLLdm4zuNRcgRKiGg7nXFaZTxkthHBBd+1FGtrHfmRLr1mA3ARdV5
 AZf6qXuoaniPBKa/K7PRiH9N3uNqUeLkT9H/YAvNrlNPDcRjUdyh4v23HFAB9fsWrjkhC+/VkwPD
 61O38M3G5FnJSs4QlaOH81x50MxOKVrDfQzDgqFDumjx949yYjkgur7cbmMvzASyKBHM3xi8wXJI
 Uf8Y97QTxRrgRfBTyao+gSRn3B4C0WLGZPe4LJ2MyI6lLpoeMdMOO8Y=
X-Report-Abuse-To: spam@vmse01.mailcluster.com.au
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230529_040738_969237_64CCCF61 
X-CRM114-Status: UNSURE (   9.28  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v3 2/3] commands: pwm: add pwm_get command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
---
 commands/Kconfig |  7 ++++++
 commands/pwm.c   | 56 ++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 63 insertions(+)

diff --git a/commands/Kconfig b/commands/Kconfig
index cc7585bbb2..f2a6d22f69 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1940,6 +1940,13 @@ config CMD_PWM
 
 	  Controls the pwm values such as period and duty cycle
 
+
+	  pwm_get - get pwm state
+
+	  Usage: pwm_get [d]
+
+	  Displays the pwm values such as period and duty cycle
+
 config CMD_LED
 	bool
 	depends on LED
diff --git a/commands/pwm.c b/commands/pwm.c
index 94bbbaf1be..18f65b0a59 100644
--- a/commands/pwm.c
+++ b/commands/pwm.c
@@ -141,3 +141,59 @@ BAREBOX_CMD_START(pwm_set)
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_pwm_set_help)
 BAREBOX_CMD_END
+
+#define HZ_FROM_NANOSECONDS(x) (1000000000UL/(x))
+
+static int do_pwm_get(int argc, char *argv[])
+{
+	struct pwm_device *pwm = NULL;
+	struct pwm_state state;
+	char *devname = NULL;
+	int opt;
+
+	while ((opt = getopt(argc, argv, "d:")) > 0) {
+		switch (opt) {
+		case 'd':
+			devname = optarg;
+			break;
+		}
+	}
+
+	if (!devname) {
+		printf(" need to specify a device\n");
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
+	printf(" pwm params for '%s':\n", devname);
+	printf("  period   : %u (ns)\n", state.period_ns);
+	printf("  duty     : %u (ns)\n", state.duty_ns);
+	printf("  enabled  : %d\n", state.p_enable);
+	printf("  polarity : %s\n", state.polarity == 0 ? "Normal" : "Inverted");
+	printf("  freq     : %lu (Hz)\n", HZ_FROM_NANOSECONDS(state.period_ns));
+
+	pwm_free(pwm);
+	return 0;
+}
+
+BAREBOX_CMD_HELP_START(pwm_get)
+BAREBOX_CMD_HELP_TEXT("Gets a pwm device parameters.")
+BAREBOX_CMD_HELP_TEXT(" Specify the device by device name")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT("-d string", "device name (eg 'pwm0')")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(pwm_get)
+	.cmd		= do_pwm_get,
+	BAREBOX_CMD_DESC("get pwm")
+	BAREBOX_CMD_OPTS("[-d]")
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
+	BAREBOX_CMD_HELP(cmd_pwm_get_help)
+BAREBOX_CMD_END
-- 
2.35.3



