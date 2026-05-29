Delivery-date: Fri, 29 May 2026 07:22:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSpfV-00054Q-0e
	for lore@lore.pengutronix.de;
	Fri, 29 May 2026 07:22:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSpfU-0001oY-Ic
	for lore@pengutronix.de; Fri, 29 May 2026 07:22:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZUog7uO+xjVZSeE2sN6aDmcWfYxVkiuGckB4Jbe1jcs=; b=C2CoNy4mojLT2eAji2IcQJVLD2
	4quVJueXv6XKVULH2AE9cJGGMyO6FpnSSQY8WYmnUXPtREJFRh3rhat+XtQ276VDRZfCEvIwZ/y8E
	Zfg6HHTVW4jmZKJCUcovFBjSrr8HXpGMJLmMKb+4hw2iQh16AbKqTBSBMS0HJLlWQpx5p4frfAPpW
	aJc8L+iQGd+ySnGWZWjlNu8wWPlaZ3/YyqYllrwu3ADdoPOSY4HvLRDTN6DpGz6eZPMYGuMEYtl1p
	O+q9pubbdR6cr7uSWtGEg2GAqz3CKD4WKDhGNnwab2GNj+wv2Gq7V9MeAmWuEK4/0w1jogsFvGMg0
	KkNOfh0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSpXr-00000006kvD-1GcS;
	Fri, 29 May 2026 05:14:07 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSpXo-00000006kuY-4BOj
	for barebox@lists.infradead.org;
	Fri, 29 May 2026 05:14:06 +0000
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-39657d28132so633491fa.3
        for <barebox@lists.infradead.org>; Thu, 28 May 2026 22:14:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780031643; x=1780636443; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZUog7uO+xjVZSeE2sN6aDmcWfYxVkiuGckB4Jbe1jcs=;
        b=kd2QgkA7kQ6aoZSrC8zU02gTXMJlPHItHkkRvQ8xChPFo5eogUCU8353rpgfOGdOi0
         6MaKdxviiRRqKlfW+N3jpBueOM2zoY+9E5kU2f9k2J0+uCu6oSDrFyK2rf/GT3LWdxwS
         2WUvTfMmqSSb3qwKdJAl0rr+K94qjDLw/XQ6qSsqQwbNScOj3U4gfAlG5Tc+4z7EHi0S
         cd1CpqxDyVY1RHIhSJ3F9rQx5O0uNPEs218MU8pfipsdYUpaA/sVv77YyaE8zRn6rOej
         FMkKffIm4Q8xynAuy7HZsK+V0p0ByVcuBuJ43EjYYAFc6+ZinMt/ibl9mnbD6AVxxfOn
         +XmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780031643; x=1780636443;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ZUog7uO+xjVZSeE2sN6aDmcWfYxVkiuGckB4Jbe1jcs=;
        b=OgccwTBc5qGw2NtMoSRRA/TBskwesDJn1q5fbxHxjpE6wpBd3CMrmuUHk2Grax9cSs
         7pwSuoWH6oiOhCE+/g8XwgcfBnC6j4O5tiUjJw13QWVbK9C98mwMZfMs7qRsdBha4bDn
         BXkdH1NPIVRGCFCVvZaTpDCVWWAqksZykq78QN4JZcaPxSFf7rPFicOju62ZS4+Wdrqa
         XkTOx/NeTCgjhxlPMKxrRLVU8KHjOPuNFwNiI7l+plkzGn1RyaTSed/hZX4gYcpAqjDt
         ucGO10W2eVIMIwIGz1qEw9Lnm+giAa+JABPrmBejqSOnut7toy+4GvPi87JJeG+oNFUY
         ftPQ==
X-Gm-Message-State: AOJu0YxdQwFQOJ0qBvcO7Pr+BTU3H83jUK280S58WDChdELD3Q4gWZm3
	8xBtC52UjEFy+wqqLACtlNddeK/1iMJbL1CaDarizVWp/76Y1A2uI3wlPKfKsxmpIjM=
X-Gm-Gg: Acq92OFD+n3Zh/liC25wEXW8Mhi23aKbm2/kkLPDEHkrXwiKTR3ugHcjxYZoAk5Fip9
	7uuY/kxdvCqc0G7gVAgCcUAeKUyFUx40lgo/h5hV9A9v/gLvJor/qXP/oC+Jd1lrKVLTjVGgz1t
	nv3Qu2069uA7dJNv3jCqR8IGpxtsEB43eyYjkV7PC9gGO+/lghdkwVgLJIFZz/36LwR2tgv3JD+
	URyyfRL8jsVMXLUVehPX8pAj0epiQukgtJv8aA8uAI9b2lWA4zBeRdu5999Pan1HviKad35i4Gv
	V+J6pbpojNFlrQU+aYVIGa2OI2Fok4CchJlz44uCu7LYYsqjSgZMfE67uQiTTxhCTlqRl00dxIo
	WnbkxmTJrNWBdkxDzlvocWMGfLHN5FXD8h1VPDNY3mXbcMxsAabZIXs9VDROK0mmyAVlOErKCAW
	Ztk2vQ2Kg14pRni1lEB4bxLFsw71319RDrSo/7ERIwaKi6lO1OmA==
X-Received: by 2002:a2e:a9ac:0:b0:393:d706:7bc with SMTP id 38308e7fff4ca-39651e2c563mr2879731fa.0.1780031642713;
        Thu, 28 May 2026 22:14:02 -0700 (PDT)
Received: from gentoo.sknt.ru ([95.161.221.172])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-39659c90b95sm263451fa.11.2026.05.28.22.13.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 May 2026 22:14:00 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 29 May 2026 08:13:47 +0300
Message-ID: <20260529051347.1373331-2-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260529051347.1373331-1-eagle.alexander923@gmail.com>
References: <20260529051347.1373331-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260528_221405_054863_4F258B62 
X-CRM114-Status: GOOD (  10.32  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 2/2] Documentation: add extlinux.conf support description
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 Documentation/user/booting-linux.rst | 42 ++++++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
index 7bbb79ecdf..d74cc934aa 100644
--- a/Documentation/user/booting-linux.rst
+++ b/Documentation/user/booting-linux.rst
@@ -304,6 +304,48 @@ Additional notes about keys in the bootloader spec entries:
    different devices without having to specify a different ``root=`` option each
    time.
 
+.. _extlinux_conf:
+
+extlinux.conf Support
+^^^^^^^^^^^^^^^^^^^^^
+
+In addition to the Boot Loader Specification, barebox also supports the
+extlinux configuration format, commonly used by the Syslinux bootloader and
+many Linux distributions. This format is often found on SD cards, USB drives,
+or disk partitions prepared with tools like ``extlinux --install``.
+
+The configuration file is named ``extlinux.conf`` and can be located at:
+* ``/boot/extlinux/extlinux.conf``
+* ``/extlinux/extlinux.conf``
+
+The file uses a simple key-value syntax with sections labeled by ``LABEL``.
+A typical example looks like:
+
+.. code-block:: none
+
+  DEFAULT linux
+  LABEL linux
+    KERNEL /boot/vmlinuz
+    INITRD /boot/initrd.img
+    FDT /boot/board.dtb
+    APPEND console=ttyS0,115200 root=PARTUUID=deadbeef-01
+
+When booting an extlinux entry, barebox strips any ``root=`` parameter from the
+``APPEND`` line **only if** the global variable ``global.bootm.appendroot`` is
+set to true. After stripping, barebox injects the correct ``root=`` based on
+the boot device (similar to the ``linux-appendroot`` feature in blspec). This
+makes the same root filesystem image usable across different storage media.
+
+To use extlinux support, enable ``CONFIG_EXTLINUX`` in your barebox
+configuration. Entries are automatically discovered by the :ref:`command_boot`
+command when scanning a device or mount point. For example:
+
+.. code-block:: sh
+
+  global.bootm.appendroot=true
+  global.boot.default=mmc1.2
+  boot
+
 .. _booting_linux_net:
 
 Network boot
-- 
2.52.0



