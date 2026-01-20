Delivery-date: Tue, 20 Jan 2026 13:27:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viApk-003NuQ-0j
	for lore@lore.pengutronix.de;
	Tue, 20 Jan 2026 13:27:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viApj-0006ME-5a
	for lore@pengutronix.de; Tue, 20 Jan 2026 13:27:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=y4oxhm+5XiR/fZZ7gFkY+H3sf4ODeLdyGAmOt8rW5IU=; b=yvKIjkbb4lqOWcaSCfd7ZajhfN
	S/Vjq15YLAZkOedoW3l66peqwgcTuGJl0Y82/WV5xYRT09+T7m7EFqk/TPjBj277iqU1YN7+9tIDN
	qDFGrt1Zy2y6CpMrt7SfeUq9Zh7bX3R7vizD3mpguFJrVE4S7E5vcEyZ/kDPklVwsJNMyiZ/P2EV5
	kpRloxpkm6gJtH0IPR1b35xjmClA1b8I69VmXvFnddMlGNKoOpfv68x67fNDjl5du69h4r1Jii/KN
	I3awy7iIbBvUWEUa+O62fMSqit0qTAOl4mns+5/gmtjxXmF6sbt/51vstBvPAStCOKNs5lC1vxOvW
	pjNkEI2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viApL-00000003pul-3v9s;
	Tue, 20 Jan 2026 12:27:19 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viApL-00000003puM-0cK4
	for barebox@bombadil.infradead.org;
	Tue, 20 Jan 2026 12:27:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=y4oxhm+5XiR/fZZ7gFkY+H3sf4ODeLdyGAmOt8rW5IU=; b=EP4O53oK0CnzWT6S4aE7rgATT3
	nEltKnHEjN22hRoF6ev/kV1H44bTPp7ONl31Sl8E3VXSIOfrFKisglYnao8te6t9qblQa85TOmHNh
	ST0oGbiurnXo/M4I50YlbAtbXrDXqm/Cbe0f+R+JzAcLBK1Cg/LNj3bTpNiTXjVCOrpVHNCrpIHCe
	7kvn8mveNxqdDHLbwxlnyKWLOXA7WTSRCkRKmVn48UIBS7fLDylM13pJHfz6mGV0wbGaHJ/6y0kbb
	vQ7zdKbmh8uA4EghLwoGCvMXe//7OYPf3MrCnbWrslL2lOUzq3cYHzO/FkjbYnM28A/8KEo6X5DU9
	RPfzOplA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viApI-0000000E1Dn-0qzO
	for barebox@lists.infradead.org;
	Tue, 20 Jan 2026 12:27:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viApH-0006FE-GT; Tue, 20 Jan 2026 13:27:15 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viApH-001aAb-3C;
	Tue, 20 Jan 2026 13:27:15 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viApH-00000002ex7-3oXd;
	Tue, 20 Jan 2026 13:27:15 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Tue, 20 Jan 2026 13:27:03 +0100
Message-ID: <20260120122713.633785-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_122716_483735_7404F2DE 
X-CRM114-Status: GOOD (  11.51  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] net: make default netboot artifact directory configurable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

The artifacts we currently look up exclusively via TFTP could be equally
well in a virtfs, NFS or in the future a HTTP web server.

To allow users and tests to override the directory, move it into a
globalvar.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 commands/barebox-update.c              | 5 +----
 defaultenv/defaultenv-2-base/boot/bnet | 4 ++--
 defaultenv/defaultenv-2-base/boot/net  | 2 +-
 net/net.c                              | 6 +++++-
 4 files changed, 9 insertions(+), 8 deletions(-)

diff --git a/commands/barebox-update.c b/commands/barebox-update.c
index e474fff87f36..3d967b729cff 100644
--- a/commands/barebox-update.c
+++ b/commands/barebox-update.c
@@ -85,10 +85,7 @@ static int do_barebox_update(int argc, char *argv[])
 	if (argc - optind > 0) {
 		data.imagefile = argv[optind];
 	} else if (!repair) {
-		if (!IS_ENABLED(CONFIG_FS_TFTP))
-			return COMMAND_ERROR_USAGE;
-
-		pathbuf = xasprintf("/mnt/tftp/%s-barebox-%s",
+		pathbuf = xasprintf("%s/%s-barebox-%s", globalvar_get("net.fetchdir"),
 				    globalvar_get("user"), globalvar_get("hostname"));
 		data.imagefile = pathbuf;
 	}
diff --git a/defaultenv/defaultenv-2-base/boot/bnet b/defaultenv/defaultenv-2-base/boot/bnet
index 877616758dc9..a09269ffcc77 100644
--- a/defaultenv/defaultenv-2-base/boot/bnet
+++ b/defaultenv/defaultenv-2-base/boot/bnet
@@ -1,8 +1,8 @@
 #!/bin/sh
 
-# script to boot barebox over tftp
+# script to boot barebox over network
 
-path="/mnt/tftp"
+path="${global.net.fetchdir}"
 
 global.bootm.image="${path}/${global.user}-barebox-${global.hostname}"
 if [ ! -f "${global.bootm.image}" ]; then
diff --git a/defaultenv/defaultenv-2-base/boot/net b/defaultenv/defaultenv-2-base/boot/net
index 98286ff5e050..8408ceaf3937 100644
--- a/defaultenv/defaultenv-2-base/boot/net
+++ b/defaultenv/defaultenv-2-base/boot/net
@@ -1,6 +1,6 @@
 #!/bin/sh
 
-path="/mnt/tftp"
+path="${global.net.fetchdir}"
 
 # global.net.server and global.hostname may be set by DHCP, so trigger it first
 ifup -a1
diff --git a/net/net.c b/net/net.c
index 60f325ec63de..fc32c4562b66 100644
--- a/net/net.c
+++ b/net/net.c
@@ -31,7 +31,7 @@
 
 static unsigned int net_ip_id;
 
-char *net_server;
+char *net_server, *net_fetchdir;
 IPaddr_t net_gateway;
 static IPaddr_t net_nameserver;
 static char *net_domainname;
@@ -874,10 +874,13 @@ int net_alloc_packets(void **packets, int count)
 
 static int net_init(void)
 {
+	net_fetchdir = xstrdup("/mnt/tftp");
+
 	globalvar_add_simple_ip("net.nameserver", &net_nameserver);
 	globalvar_add_simple_string("net.domainname", &net_domainname);
 	globalvar_add_simple_string("net.server", &net_server);
 	globalvar_add_simple_ip("net.gateway", &net_gateway);
+	globalvar_add_simple_string("net.fetchdir", &net_fetchdir);
 
 	return 0;
 }
@@ -887,3 +890,4 @@ postcore_initcall(net_init);
 BAREBOX_MAGICVAR(global.net.nameserver, "The DNS server used for resolving host names");
 BAREBOX_MAGICVAR(global.net.domainname, "Domain name used for DNS requests");
 BAREBOX_MAGICVAR(global.net.server, "Standard server used for NFS/TFTP");
+BAREBOX_MAGICVAR(global.net.fetchdir, "The directory within which artifacts are fetched for network boot targets (/mnt/tftp by default)");
-- 
2.47.3



