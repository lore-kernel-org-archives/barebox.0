Delivery-date: Thu, 04 Mar 2021 22:09:54 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHvEI-0001i9-QK
	for lore@lore.pengutronix.de; Thu, 04 Mar 2021 22:09:54 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHvEE-0005nu-B2
	for lore@pengutronix.de; Thu, 04 Mar 2021 22:09:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=MPBcYa9nGwAuAtyGyy10LsE+J7zNdoswMSlY7+j1+/g=; b=mscq0nO7+ad0If20cgEPHMzIRm
	i9CG3Bhfn813V9DTGHDQJQAwWouoh8yegAbUjCEWcNnUrMiHfwydBARQsDXBWHvumMTJ+uo9PwJbh
	akY9VyENNWkJVFmf+NmCjFTd5HdAX20JLwG/2OnyPRs/mG5PFo+S8XWmBGDBzb1oK7cTP1QEsOmH+
	/cZizg7zQShYJqaVkyQKqRxdUTm+WFmWAjXc3q4EMJ7LOUtkzi4aTbzl6U9cp4Ac3qsqi+lS4JJLw
	ipkKcYnx9KG+pqU3ync9iGF9Bnihmy/UrZgiKOiuHmYXFE/eENmzqa1LAMz9Fiq6ivqWbEf0uPM42
	SgNRsZ5g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHvCe-00A7D2-2E; Thu, 04 Mar 2021 21:08:12 +0000
Received: from mail-pf1-x435.google.com ([2607:f8b0:4864:20::435])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHvCO-00A7B5-KH
 for barebox@lists.infradead.org; Thu, 04 Mar 2021 21:07:59 +0000
Received: by mail-pf1-x435.google.com with SMTP id q204so18804828pfq.10
 for <barebox@lists.infradead.org>; Thu, 04 Mar 2021 13:07:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uWpwsFeTZlyH65avZ7SZctfAq5Qo7PlY77pEY+JXJ0M=;
 b=QL6oBIAiE93CPhZrSRNhRrggev393e4/JxrZETyARV2U5acynFnngoBlB4pbzul9fD
 H2FExHVoO4vT7ouo0+Vf+U9d21PJdLI4vWCuilBPnw/8RMKbF0zwx8EXEU4Mxs5VBNq1
 JCPBkBNTsghybQpkUo4lS0nWHJUmCIxuCTbe0WlWwZ5+LJsH6AM4zF62qTetiEkT1kRD
 XRLRpZ6je85rxIpI2oRzBhKwv5f1go+NOVNS9+dbOnicxxu+Fo5BQtsAUTnx5S4c3Ehe
 63efl+XuaqGuwLxxxhJ/VNtXB/xAG7DKmzNpf0b+6w/Z69Cfx4Ln1bi16xF6+w41g61b
 myDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uWpwsFeTZlyH65avZ7SZctfAq5Qo7PlY77pEY+JXJ0M=;
 b=EHk8WM/ZkNvByJlPhUhNCZ1AV2qs6rxMG9jJkluoKLOFaCdf18fmg311bup+0Gr3Oj
 XQPZkbzVyNv7/lUmEhSo5gPTwKqThSXsxQWp5JqHDrOiMv7N2AjmaBiz9AeYM2nWI1FW
 Bo/fb3IqgV3OsG+rT92i4opQdT6sSafDINeCHaQHbVX2C26K4EWCmNJKPxbr4tZs4Qap
 zLqwZb8wRgVIZCT6IvicLu3LZHmRuC+YOqNSxTc+dwjsuVWxRiCGyoJMRHfWJNHb32lF
 50KZUd0I60G+Qtx5+vrcz6njAGyBzjMr4Yom1fslxeHCT/8IUTDJxZKep5RpOzPYepZH
 aOFQ==
X-Gm-Message-State: AOAM530mwGj8/RWMEwXUEG6GDLwuW2tMeXvHAlBt887Bk+b9wjyLJD+0
 U1P2W00SURCgbeyGNZ35eTLlHngEbLY=
X-Google-Smtp-Source: ABdhPJyXvOiayNu1ZYOuxub1XoPuXSpylghLzvY7PF3iGnaGJfLSqilojq/e/q19nad9FDYSw3B2Fg==
X-Received: by 2002:a62:3181:0:b029:1df:4f2:16b3 with SMTP id
 x123-20020a6231810000b02901df04f216b3mr5623699pfx.24.1614892074002; 
 Thu, 04 Mar 2021 13:07:54 -0800 (PST)
Received: from localhost (g98.115-65-200.ppp.wakwak.ne.jp. [115.65.200.98])
 by smtp.gmail.com with ESMTPSA id y9sm297453pgc.9.2021.03.04.13.07.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Mar 2021 13:07:53 -0800 (PST)
From: Stafford Horne <shorne@gmail.com>
To: Barebox <barebox@lists.infradead.org>
Date: Fri,  5 Mar 2021 06:07:47 +0900
Message-Id: <20210304210747.3679483-1-shorne@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
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
Cc: Openrisc <openrisc@lists.librecores.org>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>, Stafford Horne <shorne@gmail.com>
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
Subject: [PATCH] Documentation: Add qemu instructions for OpenRISC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Most developers have qemu and rather not download and install the
or1ksim.  Also, this adds details on how to get a openrisc toolchain.

Signed-off-by: Stafford Horne <shorne@gmail.com>
---
 Documentation/boards/openrisc.rst | 68 +++++++++++++++++++++++++++++++
 1 file changed, 68 insertions(+)

diff --git a/Documentation/boards/openrisc.rst b/Documentation/boards/openrisc.rst
index f9d67f965..34586b4a7 100644
--- a/Documentation/boards/openrisc.rst
+++ b/Documentation/boards/openrisc.rst
@@ -1,6 +1,74 @@
 OpenRISC
 ========
 
+Optaining an OpenRISC toolchain
+-------------------------------
+
+Toolchain binaries can be obtained from openrisc.io or our github releases page.
+Instructions for building the different toolchains can be found on openrisc.io
+or Stafford's toolchain build and release scripts.
+
+See:
+
+  * https://github.com/stffrdhrn/gcc/releases
+  * https://github.com/stffrdhrn/or1k-toolchain-build
+  * https://openrisc.io/software
+
+Example of downloading and installing a toolchain::
+
+  $ curl --remote-name --location \
+    https://github.com/stffrdhrn/gcc/releases/download/or1k-10.0.0-20190723/or1k-elf-10.0.0-20190723.tar.xz
+  $ tar -xf or1k-elf-10.0.0-20190723.tar.xz
+  $ export PATH=$PATH:$PWD/or1k-elf/bin
+
+Running OpenRISC barebox on qemu
+------------------------------
+
+Running barebox on qemu is similar to running linux on qemu see more details on
+the qemu wiki site at https://wiki.qemu.org/Documentation/Platforms/OpenRISC
+
+Compile the qemu emulator::
+
+  $ git clone https://gitlab.com/qemu-project/qemu.git
+  $ cd qemu
+  $ mkdir build ; cd build
+  $ ../configure \
+    --target-list="or1k-softmmu" \
+    --enable-fdt \
+    --disable-kvm \
+    --disable-xen \
+    --disable-xkbcommon \
+    --enable-debug \
+    --enable-debug-info
+  $ make
+
+Next compile barebox::
+
+  $ make ARCH=openrisc defconfig
+  ...
+  $ make ARCH=openrisc CROSS_COMPILE=or1k-elf-
+
+Run barebox::
+
+  $ <path to qemu source>/build/or1k-softmmu/qemu-system-or1k \
+    -cpu or1200 \
+    -M or1k-sim \
+    -kernel /home/shorne/work/openrisc/barebox/barebox \
+    -net nic -net tap,ifname=tap0,script=no,downscript=no \
+    -serial mon:stdio -nographic -gdb tcp::10001 \
+    -m 32
+
+
+  barebox 2021.02.0-00120-g763c6fee7-dirty #14 Thu Mar 4 05:13:51 JST 2021
+
+
+  Board: or1ksim
+  mdio_bus: miibus0: probed
+  malloc space: 0x01b80000 -> 0x01f7ffff (size 4 MiB)
+
+  Hit any to stop autoboot:    3
+  barebox@or1ksim:/
+
 or1ksim
 -------
 
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

