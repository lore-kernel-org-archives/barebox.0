Delivery-date: Wed, 21 Apr 2021 20:11:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lZHJV-0002WR-Cz
	for lore@lore.pengutronix.de; Wed, 21 Apr 2021 20:11:01 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lZHJU-0006eU-KG
	for lore@pengutronix.de; Wed, 21 Apr 2021 20:11:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LLpKbxE7wtcFnjPxmj2tWWglvxJFpGIjJeUr9sig39w=; b=Bdccu8YMKEdPOs6bKFVzOK1JP
	mJ/ljrkfViY2rCZvY0KnROsy2BF8MQgDxgNvInbWmsy+eeK3OYYd/Y9/+q/jmEZIqwSq+Kt5Vvib5
	yIQNia7SO18wQxo9TCIlZNl4nNSM9vfqytSDZEgSVdqYuUWq/7WKexlluwOyRdu+/QptgOjf7BOTv
	r7+TDMRddUo2TmzzS0OdOieMS5BQakXmnP+LTGuDpZZqYat0PPy1S3LhhGp9AYjGd4aTobRclSMD7
	t9a06YGVp1CCmcHkILLaMsPYpYX1A+w/u6LdxL2xsjc0aNbxpfDW/RnzH3foMCtfd8k4JzoArjx8u
	64HPYtqUQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZHIM-00EwiF-BG; Wed, 21 Apr 2021 18:09:51 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZHIJ-00Ewi8-0e
 for barebox@desiato.infradead.org; Wed, 21 Apr 2021 18:09:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=bXMbClJNPl78YMKd2lw4jP1PaAM7wc1WAkqnt/dIkZY=; b=wpiOFSv83hH7wVr0Ho4g8+eI7D
 pBBDlHikisde3nZFIUyzcxu8WdUkGZT13ExaOBJ6cczKkjRe/61VNh+J2AI4u5udS3qxsNI/6Y6FA
 JCIUbtBUdFo7L4W2q8zocQHKWjo3Vi2xBtoJWhkZW2CL2O7oh+N5moglyDWX/uABikY85c2zTACog
 CQucEOhpRuQ41OKUkrgw0qQLX+jf9yfNX5tkd+6iETzau/5wVHvsskyOnv4Zb0K4uYEW+OwiyRRhH
 6nfTizJWJAklh8s4MCV8uKESu4Ozgvf+CeW5IKggYAc2pUaLGT6vf9djIW9LfjzCasdYSZbWzaRF+
 ce9pU6qA==;
Received: from mail-pg1-x52a.google.com ([2607:f8b0:4864:20::52a])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZHIG-00D5jq-52
 for barebox@lists.infradead.org; Wed, 21 Apr 2021 18:09:45 +0000
Received: by mail-pg1-x52a.google.com with SMTP id d10so30647914pgf.12
 for <barebox@lists.infradead.org>; Wed, 21 Apr 2021 11:09:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bXMbClJNPl78YMKd2lw4jP1PaAM7wc1WAkqnt/dIkZY=;
 b=fto49VUCZPFjG3uTXQEBtC1R6C/1uu5WMMEUJVCgw4crmHHPIN0o33ZhrpKVlmGBfZ
 LxecdxMYlTL2V5McKT4LghJUCZ4+pxpv/AmduQsaxxvmGa6mEN579dqv2fYQHlXhmGVu
 jNCOsQTRr0RzN7Dx9NcYeiZaBaIvcifUODsUoas4Z1BwnxV9fZnM0766ZnyoYUmy8vu6
 90djWwCiSu+FleosyL/WpLWboN+kyFGVkZD2eiDgsdApDauEnznKIzjPQ7R5YfkzpQ5G
 NIhRg5/LEezIhXdTqAfZuOgt0ddOoJZdm/z59dIOeviJA1RGnLlriC4OKapEGv7O1s2I
 YaMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bXMbClJNPl78YMKd2lw4jP1PaAM7wc1WAkqnt/dIkZY=;
 b=bhfT4LMfNw9ZNh/NS+cC/nFMgYw7HoMHfdI+P11xJZtlBNFXOx78MaRcNz88GtCTAA
 M3+xiYx7oVYowfKxcVZ76GWVJky9+794Vwzg+ZKrOJe13Epz6ycocv6Mgnr1LeUYCWWw
 PHGAfMDAK7AemlvIOzQGEMy9fewBYpDNM8r53gc8Eu6Ho5+i5mX81WcRcwpeHpYdvoXl
 jQtfSKQstl+bOcVHZXIZ94eHNK65EuzYZ3ALrma8Ep733eyfZqxmQXhTdqankO9eOlkS
 gAM0nP1fJTyCfe1k34WPAkl6Uxa6SjdatFDOgSygvERaF9pUBQBNHtZF/63xIhVabqjK
 3GtQ==
X-Gm-Message-State: AOAM533v9rJHBfW+XVrmgq8Qcj1NP9j8OT9lWKYuZ0dboL3uOA7UdJ8Y
 xOYbMxE888fp0YT9KFaqUNI=
X-Google-Smtp-Source: ABdhPJyWN8qZFUyKzU7spS6RsGZT5xLTWSfBss/ZvhjzQYK8r8miWVBn855+nui9w+TiGPMTLPRfbQ==
X-Received: by 2002:a63:4a1a:: with SMTP id x26mr23255517pga.429.1619028583050; 
 Wed, 21 Apr 2021 11:09:43 -0700 (PDT)
Received: from localhost.localdomain ([106.207.186.108])
 by smtp.googlemail.com with ESMTPSA id b3sm2625341pjo.37.2021.04.21.11.09.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Apr 2021 11:09:42 -0700 (PDT)
From: Neeraj Pal <neerajpal09@gmail.com>
To: a.fatoum@pengutronix.de
Cc: barebox@lists.infradead.org,
	Neeraj Pal <neerajpal09@gmail.com>
Date: Wed, 21 Apr 2021 23:38:00 +0530
Message-Id: <20210421180759.10957-1-neerajpal09@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <CANi4_RV5d9-FgoJjCebMGn4cjQ_DrqqLs0XdC2wUzn6qFKviHw@mail.gmail.com>
References: <CANi4_RV5d9-FgoJjCebMGn4cjQ_DrqqLs0XdC2wUzn6qFKviHw@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210421_110944_234153_0C85A4A3 
X-CRM114-Status: UNSURE (   9.79  )
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
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2] Documentation: some extra steps requires for DHCP network
 configuration for sandbox on the host OS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Neeraj Pal <neerajpal09@gmail.com>
---
 Documentation/boards/sandbox.rst | 66 ++++++++++++++++++++++++++++++++
 1 file changed, 66 insertions(+)

diff --git a/Documentation/boards/sandbox.rst b/Documentation/boards/sandbox.rst
index e9e518365..925dfc808 100644
--- a/Documentation/boards/sandbox.rst
+++ b/Documentation/boards/sandbox.rst
@@ -74,3 +74,69 @@ Available sandbox invocation options include:
 
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
+        $ sudo apt install bridge-utils
+        $ sudo ifconfig barebox up
+        $ sudo brctl addif virbr0 barebox
+        $ sudo ip link set barebox master virbr0
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

