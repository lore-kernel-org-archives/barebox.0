Delivery-date: Tue, 28 Apr 2026 15:28:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wHiUd-00HKhA-0O
	for lore@lore.pengutronix.de;
	Tue, 28 Apr 2026 15:28:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wHiUc-00010l-Hp
	for lore@pengutronix.de; Tue, 28 Apr 2026 15:28:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=STgVNWgpoigHcTbaG5mh9nN/dkCtjVSvfe37iFK42yc=; b=H0Km5FvInm9FaPuZRv8/3DOb+q
	8pnEPKptCfZ/VUcXnXE0//6j+ETZYDg98dw/iZgBb7p2EvsRPy3OsCH3ggw3os1G40NgOPKovd15J
	4jytOYupV0MPkYPAKgrZNcy9kZe14EFFcQe6UEcpRJScivq7xPR5MtmcGyVuXbpiFfP7znB09N5I4
	NB3fibEextJemIegjVgKVtSpGVefwfhp1mJZhHuWLdHdqkaA+Acqpyyu8Za4wDUrZf8DX5FqXn9J8
	IdCbvBB66/ddN2e3JXyfjofR+bpUtoEI8oSdXj1N0HVe8OGT2rdSwBW5EkiWsOhBuQ4M4t5xRiSWB
	/YJPyGEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHiUF-00000001Xio-0fV7;
	Tue, 28 Apr 2026 13:28:27 +0000
Received: from mail-yx1-xb134.google.com ([2607:f8b0:4864:20::b134])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHiUD-00000001Xi5-11jn
	for barebox@lists.infradead.org;
	Tue, 28 Apr 2026 13:28:26 +0000
Received: by mail-yx1-xb134.google.com with SMTP id 956f58d0204a3-65318dafbcbso11535366d50.2
        for <barebox@lists.infradead.org>; Tue, 28 Apr 2026 06:28:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777382904; x=1777987704; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=STgVNWgpoigHcTbaG5mh9nN/dkCtjVSvfe37iFK42yc=;
        b=nSFJ4PtoE39ntztzBJeYmtGfxWxJcZEIB+69UyZPaFMJXwzEmn2aZ9aDXLhO+/wNgQ
         XZ5V2RANC6fkr3Ae2+YYbZ0PCbrQUII0sV+4jjxL+nm7EbRB19NGy/Ky2/IL5FEA8QQk
         4gvk7nulHWYJvhrJQ7toSYNN/sgijySVCvUyIc9qiCt0StQOi1iaehFSmlMKikcW8NUa
         UINKYDu9qLovFQZerwlzfo5+4fl96KrnOp1/kIhXrsglooDW6NoDtf3UyCiuqgGuu9Qj
         8374v6aa2zMu+IwIkmrkijFowSB96Xv70TbXecyh00zCns+9VDtqbFma9hAFStRHIXWn
         S7jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777382904; x=1777987704;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=STgVNWgpoigHcTbaG5mh9nN/dkCtjVSvfe37iFK42yc=;
        b=XAvUhzHybXU5cGul0p08n41y97neFl2OKyqJIZcpFK/WL6H5Ynydqt//8HRSv9QBmP
         EeRY5blQi3XJ8+ED5aM35mdIwkweibLjstBpK70XOtyZdQegkYbLYGyfE9+xF8BpxQIp
         6OP0nPRPHwBja7jYslD7y9dgZIP6COXzsrW51vkeES9/n/rq3M1SjpES+NNSQDFzWeQV
         2Oby9pgHDjZ/PeoJrr/5hG1KDD7iI/KfKgjeIyiiXR7M8ojd94Qi/XX6/BTh74T92XgS
         jSzuECUshsf4Bamug6GmarepeALZlOxv0jkgN/+di53yQGwqwKy2PKJrdAOn68LkexNV
         D7ug==
X-Gm-Message-State: AOJu0YyX/PB8Nq43F5SLON+SlqIvYA561Gnpf9luwPoi8TtNCVOEnzPd
	LSAHEdEm2Un3xKmDOt4Wqi+Y8d2fo7wNyyUazWymMM8sR6MpWHxYgZE+cXXYgGnF5xY=
X-Gm-Gg: AeBDieuxJUsO++OeGfpDUj3zeJPZFU3Sz/sKYvHwQ+HAcSw9tFVF4hDZzWRQ9Lghy04
	gHlSgRqu/za9GdVTPDzlKcfq1rt7z7c2cLZBDOEU6TOsFYak6QvnB9iAlIgI1Ipq154rKCfplF7
	SP0/rMMR7D2q8puWcr1vg5lrmc0njeUNXp9Eumv+NQE4ri4LTXPQVZp81piWmi9n5xEyRUdnIra
	zCxL1+ght4/p90K46t6lzNOvEqaK+oL6I71dXybvme+tw7+10NpzADeav8UuyHh9fUBFfQZ6PWq
	duT9fi7JbiquqKapsdO0jnEXwv5EbG6k1w50oPuHxIyR/Q6XQb8L+gi00i8mWaO6zHTmtZW+i9m
	XzwqQTJMe/aQFq/daINv51sgYKskYigfVrNL1Wf/y7V+xx5Zh+IIZ7ySm182Nq2a/MCNvfV6J9q
	UwRiie3AaX7W5JApsaitl2NB1cWqoBOzg/v5Lbg/dPQVfuym+3eA==
X-Received: by 2002:a05:690e:258a:b0:654:ea8a:f50 with SMTP id 956f58d0204a3-65beeeca5c1mr1994371d50.61.1777382903625;
        Tue, 28 Apr 2026 06:28:23 -0700 (PDT)
Received: from gentoo.sknt.ru ([95.161.221.172])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-65bee46362bsm1723352d50.15.2026.04.28.06.28.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Apr 2026 06:28:23 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue, 28 Apr 2026 16:28:11 +0300
Message-ID: <20260428132811.3691086-2-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260428132811.3691086-1-eagle.alexander923@gmail.com>
References: <20260428132811.3691086-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_062825_292677_BB8FA26B 
X-CRM114-Status: GOOD (  10.54  )
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
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/2] Documentation: add extlinux.conf support description
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 Documentation/user/booting-linux.rst | 42 ++++++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
index 3972777f30..a192efd453 100644
--- a/Documentation/user/booting-linux.rst
+++ b/Documentation/user/booting-linux.rst
@@ -309,6 +309,48 @@ Additional notes about keys in the bootloader spec entries:
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



