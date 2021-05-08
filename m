Delivery-date: Sat, 08 May 2021 21:11:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lfSM7-00072T-6B
	for lore@lore.pengutronix.de; Sat, 08 May 2021 21:11:15 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lfSM6-0005b6-Bo
	for lore@pengutronix.de; Sat, 08 May 2021 21:11:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sSxc6tp6Gc5Z6vxL7PJfLsk9D3zk7bi945U5ssQp9oc=; b=KF4vb32jMAFXquONtdiodWGeu
	D2kQaPoWG32jANNiA+OC8kNNyYNtm9xjZ5NlucUzT5Q9v4WsitG7Na5YlCr4W2Ny39YmOhjmZl5zn
	8FdjSDK1WsncRGYitCsfdLZplgIeL1x8queoBLkC2RJWHSrf1eD71KXrm3Pjpd+hs1YBlojTEy+L7
	1996wCz3dObNcDNEth37UIA/4lTA8byKhQBwKudGQKh1CKAEkcQhpJB3/KGxjj5lBc5Yf8BSlvQ6e
	uMLHJtFmTe/9OykFEAvWtwMQjh+xNDwmMDzsZcabgX0kFzO0t8mP8qbDqLvppP8DrqLUx62LyyI2D
	recGQbyyQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lfSKw-00A9Fm-5V; Sat, 08 May 2021 19:10:02 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lfSKp-00A9FS-4V
 for barebox@desiato.infradead.org; Sat, 08 May 2021 19:09:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=0xgPvsX5ruBOTRzNt/RG9JpIBWlAutLweFUcLColnNU=; b=nQjMV0u1H4oEJoFU48sD9wEhpV
 T3CU/MUW7NA/DbbA9MlF7/SJLtpymfMv6uKTDjvUUsLOYoOEZa1FOFDmh2MJAWn6x6hMCym73kfIW
 Q53wdbJKhd8zhCaINg0SsQyIKTIEG+9iuUMJ+NJIy0vyGCvM6kuKbkv4BIb1jWSZwWUAI+AZXj0pu
 vqAxp7+HgfCqRVY3RUYB82QGItGG5NRRe0fx+c+w6c9bv/0iRUMHPJST3jBxwKexFiwHGYyeNsEF5
 WBW75diHIy9as7znOoynNZnmsWhYGfUmi4hWGPC8OZ/iWv42L8IlJy+g7X9FxM4TEe0llN+qCkZAC
 W3XYd/3g==;
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lfSKm-007g78-CN
 for barebox@lists.infradead.org; Sat, 08 May 2021 19:09:53 +0000
Received: by mail-pl1-x62d.google.com with SMTP id p17so7017632plf.12
 for <barebox@lists.infradead.org>; Sat, 08 May 2021 12:09:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0xgPvsX5ruBOTRzNt/RG9JpIBWlAutLweFUcLColnNU=;
 b=pmm5BXHWGoq3FDJqcEuBNRlX1HzNtmK+w5QkCuk4j8PC4DTebcVxugaAZGlmFQhDQZ
 GKqDU5LRfiAZXbSxlNBFjzKxTRRqxANW2FTZk3DT/6Xulmnvr+dE+sAkORCMScaXv3tq
 IW3cRsy8KgWPiBJCYcmWzNXLH1LqPCuVe/wR2V25HcIhCtuV+B97C5+Hk8YeT7QtAT7s
 7ly5nmxQiYinZgaY0/f5T+psRA9aOWk6C8STSWrfoaBl1/4NuDqW1X2yeG6ra5ifFNOg
 znXtyHkDFv5u0eYeWJWCI40J1E3Zwqdkg2Yfvdk5k2bH538sFWOEwC3Rxrefywuyg+SK
 K3JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0xgPvsX5ruBOTRzNt/RG9JpIBWlAutLweFUcLColnNU=;
 b=UA0KIQsGfblXTYWr2RN9bnmPNZJatx1vY1lUyV4q7ncMKuzR7jZ7yjzm/U6At3joF7
 4JVmM9VqZPsnByKBeZa1cm62pNgCiq5LP8QJaTf+BN1sFlWBG2Kf1mirSffvk9O3GAOU
 3OvuoOQC8jKkItX8RyeiraXL0D6O3Qqb+cpWzAHe42B75P/looVOljG/rwUH1CXHJ37e
 oFC3Gd/9mWWgHYwR9GVaOwaRqf/Wmh5eD9GAh5/WmaoLnVKhjnQeqZjZRPqNbyg9pipK
 aNDP3ffNQTi8IzsUFGXj6y3abebJtpbpkbumOgNn+aV8V8z0wQBaauVVScARmyXX8TmJ
 fzEw==
X-Gm-Message-State: AOAM533+DCYNBCmtSIzSU+NGvgSmK0WtBfe6b0oFVuF9BbzfJYjcmlGy
 U6ZG4iW+F725+ePKlux8Oc4VWfeNivg=
X-Google-Smtp-Source: ABdhPJxk9gEtr+/3wRqMGaldzbCf9+vEsXTgXCoTdN/oGi2Xqibv0WkG3WbJgKN/MdH0i20ui9eg6g==
X-Received: by 2002:a17:90a:f486:: with SMTP id
 bx6mr31894875pjb.54.1620500988621; 
 Sat, 08 May 2021 12:09:48 -0700 (PDT)
Received: from localhost.localdomain ([106.207.200.79])
 by smtp.googlemail.com with ESMTPSA id a5sm6911934pja.37.2021.05.08.12.09.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 08 May 2021 12:09:48 -0700 (PDT)
From: Neeraj Pal <neerajpal09@gmail.com>
To: a.fatoum@pengutronix.de,
	linux@rempel-privat.de
Cc: barebox@lists.infradead.org,
	Neeraj Pal <neerajpal09@gmail.com>
Date: Sun,  9 May 2021 00:38:55 +0530
Message-Id: <20210508190854.80250-1-neerajpal09@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <790f7dec-aef4-6e9c-c34c-d0001440956a@rempel-privat.de>
References: <790f7dec-aef4-6e9c-c34c-d0001440956a@rempel-privat.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210508_120952_465129_D0D819FF 
X-CRM114-Status: UNSURE (   9.44  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v3] Documentation: boards: sandbox: some extra steps requires
 for DHCP network configuration for sandbox on the host OS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Neeraj Pal <neerajpal09@gmail.com>
---
 Documentation/boards/sandbox.rst | 65 ++++++++++++++++++++++++++++++++
 1 file changed, 65 insertions(+)

diff --git a/Documentation/boards/sandbox.rst b/Documentation/boards/sandbox.rst
index e9e518365..2272dc32c 100644
--- a/Documentation/boards/sandbox.rst
+++ b/Documentation/boards/sandbox.rst
@@ -74,3 +74,68 @@ Available sandbox invocation options include:
 
 To terminate barebox and return to the calling shell, the poweroff command is
 suitable.
+
+Network configuration
+---------------------
+
+While running the sandbox, the following steps are required
+
+* On host
+
+  * virbr0: virtual bridge interface created by Qemu (easy method)
+
+  * if Qemu virtual bridge (virbr0) is not available then manually create and configure one bridge like "br0"
+
+    .. code-block:: console
+
+        $ ip link show
+        4: virbr0: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc noqueue state DOWN mode DEFAULT group default qlen 1000
+            link/ether xx:xx:xx:xx:xx:xx brd ff:ff:ff:ff:ff:ff
+        6: barebox: <BROADCAST,MULTICAST> mtu 1500 qdisc noop state DOWN mode DEFAULT group default qlen 1000
+            link/ether xx:xx:xx:xx:xx:xx brd ff:ff:ff:ff:ff:ff
+
+    .. code-block:: console
+
+        $ install iproute2 package, if not installed: sudo apt-get install iproute2
+        $ sudo ip l s dev barebox up
+        $ sudo ip l s barebox master virbr0
+        $ sudo dhclient -v virbr0
+
+* On Sandbox
+
+    .. code-block:: console
+
+        barebox@Sandbox:/ devinfo eth0
+        Parent: tap0
+        Parameters:
+          ethaddr: 00:00:00:00:00:00 (type: MAC)
+          gateway: 0.0.0.0 (type: ipv4)
+          ipaddr: 0.0.0.0 (type: ipv4)
+          linux.bootargs:  (type: string)
+          linux.devname:  (type: string)
+          mode: dhcp (type: enum) (values: "dhcp", "static", "disabled")
+          netmask: 0.0.0.0 (type: ipv4)
+          serverip:  (type: string)
+
+    .. code-block:: console
+
+        barebox@Sandbox:/ dhcp eth0
+        WARNING: eth0: No MAC address set. Using random address c2:2c:a1:17:b8:47
+        T eth0: DHCP client bound to address 192.168.122.21
+        barebox@Sandbox:/ ping google.com
+        PING google.com (172.217.167.46)
+        host google.com is alive
+
+    .. code-block:: console
+
+        barebox@Sandbox:/ devinfo eth0
+        Parent: tap0
+        Parameters:
+          ethaddr: c2:2c:a1:17:b8:47 (type: MAC)
+          gateway: 192.168.122.1 (type: ipv4)
+          ipaddr: 192.168.122.21 (type: ipv4)
+          linux.bootargs:  (type: string)
+          linux.devname:  (type: string)
+          mode: dhcp (type: enum) (values: "dhcp", "static", "disabled")
+          netmask: 255.255.255.0 (type: ipv4)
+          serverip: 192.168.122.1 (type: string)
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

