Delivery-date: Mon, 30 Jan 2023 18:30:12 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMXyv-007qKj-KL
	for lore@lore.pengutronix.de; Mon, 30 Jan 2023 18:30:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMXys-0005Cl-Dy
	for lore@pengutronix.de; Mon, 30 Jan 2023 18:30:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=E/t13fOOejSV0eRZ51iBs+D8qxkS60VcgM+Me5ZmbiM=; b=kKrRGyYJx7l253Nj26hgEB1hYI
	hsJCxsCbL9A849+7OJPqui0rkNX/4gY/2S4tjkvXZ2CFldPR9yctF+9GHEZZ04GERQpfMWoyVQfze
	eyY2riuoWHZdP2LZKaRquhe4H5v3z12oM8J9ektZReekCNLf0Tc8zRipuqOT2JfwGnDRwxQ/xPgyX
	FUtcsxWkX5gvmq4HV/QLbsOaMP8XPR45IVS+q2EOmCqEtBzd3l6cF+ykIJqjqcxobSPXQULL31lfY
	4/fSQSkidT7coaPpZqUPDMfrmq3MTU35ItwXhSJ3LfiDQMK9t5fonMYULy24UdY9qh6MRGYlJPwIh
	Ipj32chw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMXxI-004Y98-GB; Mon, 30 Jan 2023 17:28:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMXsb-004VjZ-Dt
	for barebox@lists.infradead.org; Mon, 30 Jan 2023 17:23:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pMXsW-0003IP-Ml
	for barebox@lists.infradead.org; Mon, 30 Jan 2023 18:23:36 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pMOTM-001Pn3-Vs; Mon, 30 Jan 2023 08:21:00 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pMOTL-0008xN-0e; Mon, 30 Jan 2023 08:20:59 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 30 Jan 2023 08:20:57 +0100
Message-Id: <20230130072057.34349-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230130072057.34349-1-a.fatoum@pengutronix.de>
References: <20230130072057.34349-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230130_092341_602567_D800D582 
X-CRM114-Status: GOOD (  12.48  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/3] defaultenv-2: automount: use ifup -a1 for NFS/TFTP automounts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The ifup -a in the automounts has too big a scope: The remote server is
specified at mount time, so we could stop bringing up interfaces once
$global.net.server becomes resolvable. For the common case, where
$global.net.server is initially empty and then set via DHCP, ifup
provides the new -1 option to early-exit once $global.net.server was set.

For setups where one, but not all, Ethernet interfaces have a cable
attached, this normally reduces ifup -a time from 10s to 1s.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch
---
 Documentation/user/automount.rst            | 2 +-
 defaultenv/defaultenv-2-base/boot/net       | 2 +-
 defaultenv/defaultenv-2-base/init/automount | 4 ++--
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/user/automount.rst b/Documentation/user/automount.rst
index 1fdeffc66336..b41b41ef021d 100644
--- a/Documentation/user/automount.rst
+++ b/Documentation/user/automount.rst
@@ -15,7 +15,7 @@ TFTP server, the following is required:
 .. code-block:: sh
 
   mkdir -p /mnt/tftp
-  automount /mnt/tftp 'ifup -a && mount -t tftp $global.net.server /mnt/tftp'
+  automount /mnt/tftp 'ifup -a1 && mount -t tftp $global.net.server /mnt/tftp'
 
 This creates an automountpoint on ``/mnt/tftp``. Whenever this directory is accessed,
 the command ``ifup eth0 && mount -t tftp $eth0.serverip /mnt/tftp`` is executed.
diff --git a/defaultenv/defaultenv-2-base/boot/net b/defaultenv/defaultenv-2-base/boot/net
index e79432eb277c..98286ff5e050 100644
--- a/defaultenv/defaultenv-2-base/boot/net
+++ b/defaultenv/defaultenv-2-base/boot/net
@@ -3,7 +3,7 @@
 path="/mnt/tftp"
 
 # global.net.server and global.hostname may be set by DHCP, so trigger it first
-ifup -a
+ifup -a1
 
 global.bootm.image="${path}/${global.user}-linux-${global.hostname}"
 
diff --git a/defaultenv/defaultenv-2-base/init/automount b/defaultenv/defaultenv-2-base/init/automount
index 0996cea04df7..39e823489793 100644
--- a/defaultenv/defaultenv-2-base/init/automount
+++ b/defaultenv/defaultenv-2-base/init/automount
@@ -3,12 +3,12 @@
 # automount tftp server
 
 mkdir -p /mnt/tftp
-automount /mnt/tftp 'ifup -a && mount -t tftp $global.net.server /mnt/tftp'
+automount /mnt/tftp 'ifup -a1 && mount -t tftp $global.net.server /mnt/tftp'
 
 # automount nfs server's nfsroot
 
 mkdir -p /mnt/nfs
-automount /mnt/nfs 'ifup -a && mount -t nfs ${global.net.server}:/home/${global.user}/nfsroot/${global.hostname} /mnt/nfs'
+automount /mnt/nfs 'ifup -a1 && mount -t nfs ${global.net.server}:/home/${global.user}/nfsroot/${global.hostname} /mnt/nfs'
 
 
 # FAT on usb disk example
-- 
2.30.2



