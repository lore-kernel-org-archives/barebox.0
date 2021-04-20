Delivery-date: Tue, 20 Apr 2021 20:19:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lYuyD-0000aT-7y
	for lore@lore.pengutronix.de; Tue, 20 Apr 2021 20:19:35 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lYuy9-0001dk-A2
	for lore@pengutronix.de; Tue, 20 Apr 2021 20:19:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:MIME-Version:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=NtgXuG3bu5UEKl2PmyLAcDJDZZ/kkHC3rwqvIPJyCus=; b=HVLd2mG6JI5dTFOGJsj2kJU36R
	T3NTO++098j61bk2sifN8ymvn2FpphLFdyXQTNGFM7Uislqj20tzcMdZOSHJYXJDFUsnh+MTlls7F
	J0PTxwxq0bzBBU4TXGskFnyPIhDpswVvdu9c7ivsHXMqHZKHoAIYmLXgWBJQlJKFNF3Qk4qlliyw/
	drjJWu88NMWEc0TBW31AoAL+Q6lUOP2oL4xovuZKeanMUV51JWpQJwtSCqF7Jel65afwIiuFQRNy3
	9uXPNKvFFzOa9OArqfBchH+UKNsvnx+6u94/z1BVGsV+het3IrNg3y1I4FZVVhHfB57CTCLWb99vT
	A1BwuJ5A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lYuww-00CocG-6u; Tue, 20 Apr 2021 18:18:14 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYuwj-00CoaP-TG
 for barebox@desiato.infradead.org; Tue, 20 Apr 2021 18:18:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=GJPB/LUdCjfWAFa3CICCHiRyoX5dEcfMu5pJpVB9mpg=; b=X+gAmSj/tZiVu4DIgAAPYl8MOU
 hot4X6cGms20QrbtUJ7ZFw4y88VXQHocBH/gi4+1r0209zCGWxtXyI+yqGAp79xI6lXBhlNOPL0D0
 O5y1lqnqK2KM5cA7QDNq3UHf2S7y+hGCutIf9eVeb9CY9eKd5K9+KvvWZ0HNXTOJm27CvxyDttAF+
 apBhiwvAw6dqf6J2efX7/tJDZnw35MPN5czI07ACDV1nGG50chg6CUCEPPt4dYku0jCVgPTnMHKqR
 L7yFS0TS3FId94xPv9iOoJoLgqiFtYYWFcdAYeWE7hvcPgmAcNrcfeQ/QBYxzc1OZS/GrJMjlQVoG
 YegN096g==;
Received: from mail-qt1-x831.google.com ([2607:f8b0:4864:20::831])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYuwe-00CLAF-Qf
 for barebox@lists.infradead.org; Tue, 20 Apr 2021 18:18:00 +0000
Received: by mail-qt1-x831.google.com with SMTP id s4so1547799qtw.3
 for <barebox@lists.infradead.org>; Tue, 20 Apr 2021 11:17:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=GJPB/LUdCjfWAFa3CICCHiRyoX5dEcfMu5pJpVB9mpg=;
 b=cT9GksMxC71wcyzEIIgTFHbSfk8p4mzb9E9CanrcWNhLCkl/OIcJRnxB41brQMI22C
 ZQ9ScvQjrkoVq63qbxhVUaYprM2FMcfpJXvi0NgjQfxqw32/u/g1dbahEgzPiHmzPP0E
 /bEa0IOqTBuff1CFWTKkCBW2Ox2JBQjbHXMsi7he2iviAPQsJqfruDDPUXW82B2rwAQM
 xOOXQibeEvidwBO8liDBZdxqBJVrs4Ls4nzq5t1NRuXuRMwgFSnAGKRZsd75LijJkrXf
 E4aK+2ByYuhcyx3fUnM42/g6/W5lARgII2goHvibLQO3wSwxmD7vlceFAqwTpV4y/a4a
 Mr1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=GJPB/LUdCjfWAFa3CICCHiRyoX5dEcfMu5pJpVB9mpg=;
 b=Yd/NuPn4AT30mnXLHmVqrqBi9yEQeJG48Fnlqz+4fVGwyCJ2izEZaYgv3B5avvIDth
 KCMMKFKL2OcNxwL7e/aG6GFVjXJEchxV0w0yhYYyuFVCowA3Pc9JSBxFsIFUpUrWHHka
 j4OR281BMOrHFjyDhyMWevme1wZIoG/HZs4ZyU3DKLCFsX+qyzxjcVpLYsMTDjmv+Uew
 ksm8gnCnBgDKDuC8OrIQrNH4pa0F5ckbj4e9dPSq1Gjj/yQYWrk/cdw8CACAs2ZJF4I9
 aNathPRidd2q+rbqh9ky2gPQONVR76NUQ80XYMr5qIC/Qwk04a7XXcImEXedQWYWuXfE
 wyIw==
X-Gm-Message-State: AOAM53116eFPYb6eAcPsCtEESg4sx9XSmCNQxQaf9ZhvkylOW+U30yBR
 CPTHFuZBwW2/5wJwSQVzmNgskXukbe4lqEFp6H1zCT045wMpTA==
X-Google-Smtp-Source: ABdhPJwO214KXcYB+Lb+sfnrHT8nPCDGgH8+n9IzS4tyEB0LkwUWb67gbfVO7u6kTFl5NVJCinfocmiFM+Wf9HKesqQ=
X-Received: by 2002:ac8:6685:: with SMTP id d5mr12772447qtp.60.1618942674267; 
 Tue, 20 Apr 2021 11:17:54 -0700 (PDT)
MIME-Version: 1.0
From: Neeraj Pal <neerajpal09@gmail.com>
Date: Tue, 20 Apr 2021 23:47:42 +0530
Message-ID: <CANi4_RUeUVWkfLgJZxx_eHoJmXLHLwQ7+eF8+yehNV_CwNQ1yQ@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210420_111756_907892_FFDA968F 
X-CRM114-Status: UNSURE (   7.22  )
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
Subject: [PATCH] Documentation: sandbox.rst: added dhcp network configuration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Ahmad,

I have added the DHCP network configuration as discussed
(http://lists.infradead.org/pipermail/barebox/2021-April/035795.html)
Please confirm and let me know if needs any modifications.

Thanks,
Neeraj

diff --git a/Documentation/boards/sandbox.rst b/Documentation/boards/sandbox.rst
index e9e518365..7016312e9 100644
--- a/Documentation/boards/sandbox.rst
+++ b/Documentation/boards/sandbox.rst
@@ -74,3 +74,79 @@ Available sandbox invocation options include:

 To terminate barebox and return to the calling shell, the poweroff command is
 suitable.
+
+Network configuration for Sandbox
+-------------------------------------------------
+
+After running the sanbox, the following steps are required to configure network
+through dhcp.
+Following configuration tested on Ubuntu 20.04 focal LTS
+
+* On host
+
+  * virbr0: virtual bridge interface created by Qemu (easy method)
+
+  * if Qemu virtual bridge (virbr0) is not available then manually
create and configure one bridge like "br0"
+
+    .. code-block:: console
+
+        $ ip link show
+        1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state
UNKNOWN mode DEFAULT group default qlen 1000
+            link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
+        2: enp0s31f6: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500
qdisc fq state DOWN mode DEFAULT group default qlen 1000
+            link/ether xx:xx:xx:xx:xx:xx brd ff:ff:ff:ff:ff:ff
+        3: wlp4s0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc
noqueue state UP mode DORMANT group default qlen 1000
+            link/ether xx:xx:xx:xx:xx:xx brd ff:ff:ff:ff:ff:ff
+        4: virbr0: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc
noqueue state DOWN mode DEFAULT group default qlen 1000
+            link/ether xx:xx:xx:xx:xx:xx brd ff:ff:ff:ff:ff:ff
+        5: virbr0-nic: <BROADCAST,MULTICAST> mtu 1500 qdisc fq master
virbr0 state DOWN mode DEFAULT group default qlen 1000
+            link/ether xx:xx:xx:xx:xx:xx brd ff:ff:ff:ff:ff:ff
+        6: barebox: <BROADCAST,MULTICAST> mtu 1500 qdisc noop state
DOWN mode DEFAULT group default qlen 1000
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
+        WARNING: eth0: No MAC address set. Using random address
c2:2c:a1:17:b8:47
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

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

