Delivery-date: Fri, 05 Jun 2026 07:25:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wVN3d-002Vwr-0m
	for lore@lore.pengutronix.de;
	Fri, 05 Jun 2026 07:25:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wVN3c-00060d-J2
	for lore@pengutronix.de; Fri, 05 Jun 2026 07:25:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zJuUrGkZcIQ9jQ4AA/3wy9WrnEf7ej0CYVdC3ZRqHwI=; b=kA7t6Vmp8QnIZxPE0XFYRyO7lK
	glnI3YBSkIz1VhDPkZn3/KRNxxnJqk+iOCzDM7ommcw1bQir7JbW6ICOEnuWmCRIMY6Y2mUFgF1Px
	QP7CDDN8DssAZsgcifexVwnwdpTQ/W6GP6Prpwl2iwAAKTluN03iMjgdCOWohbbMOjdzA50Jnbyq4
	Z7G5r4kJ/1qiaMc90TIrsAbjvq1SP6SZyDRhteTfhFf7YqGelC4qoGWd9NbqcX6hePLoAiKSP/HYX
	pOouPmkzViQR3GeX5unSNxr8HErguwoVPHwKZQhq7VopsR8ZVHwr9NzoVQZhyn2F5H2tgOrkww2ZE
	MrGrDYHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVN2G-000000006Na-0y8Z;
	Fri, 05 Jun 2026 05:24:00 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVN2E-000000006Mr-0N3Y
	for barebox@lists.infradead.org;
	Fri, 05 Jun 2026 05:23:59 +0000
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-3965f215817so14150601fa.3
        for <barebox@lists.infradead.org>; Thu, 04 Jun 2026 22:23:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780637036; x=1781241836; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zJuUrGkZcIQ9jQ4AA/3wy9WrnEf7ej0CYVdC3ZRqHwI=;
        b=OqvpBAZJNmkQcJrGo7R2evmy9MIdBD6IRnl9VH0nrQP46ktiClxliv6M+ErhSCwOrk
         vFj5hZz1XsR7e/6HK3YpQ8gFeTTS4y3nBHvuxXKdA0fKr0ICh5WaN77TzYtRu0vrHbOo
         ldzXCE1gcsV/2qHQ7MldRc5iHuI3TLyLvoldthKqjx55DndMhzMStohJBtqajOTMwu4m
         6Uox2kfT8YcoJxSQCEhe05+CbqBRABBQS7LOHG8nUmrJbFSZhE0zf3Q3ihOnPGzjV2sE
         2r/YRvb+i5mb2pGKKoOoleUTkP0gBat+KAwohGr9u59GZsUqZ0czogaoJ7CXqoRAOfgu
         OQDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780637036; x=1781241836;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=zJuUrGkZcIQ9jQ4AA/3wy9WrnEf7ej0CYVdC3ZRqHwI=;
        b=bbBAWJeTf2p7ZzfRxej4SWBRk1drH92X5QeKUtUS25xhsPujVoK0iJO8Hfte2yc4B1
         ZU2i+jDhWHlBMRufZ6N+SPQJeW5Ddt5JCnQR/9cv+/pmtTkZNs9bBVIyPo7uVVtQpqOw
         snp2yEs03lnPXa2Xo0o4hpRQEv7J6zY5U805h4S3SYHKiSOnRr7umaz/V8DiffkY7nhl
         lFRXhvyj/9r39H2rci5JBdCnDbUOrhrxEMFN6aQmtRAI4hemtfjyo9KtNYLuzk33RRkR
         EwrxSXa3GCWnG+JUsrYc1wDgWVKN/I47JSNjtNzppVzqM9N2dtKjvLx3jzh1GivFDumn
         V+Fg==
X-Gm-Message-State: AOJu0Yw5uYBbs/qY4crIwHNOPzSWndTpTqj433Y6Oae8vA7BZtNOJcXT
	jvKPG3lzL5ho8lB5sPezDrVNuwvU+waqQzjqM5Qv7ltB+LYPVp5vAnVnaV31xg==
X-Gm-Gg: Acq92OEUls001kqVgdpHMJ6Nfqq2/QZ+qjAba0vOOV6hyMZB5MnBB4zKCwzBLpJMtxi
	ONY5cEQs7QxqXD7+sl875lFu10NONb7vkUzc6elm63GZE8VhgT7WETazcN+44ihO+Cwa4UYvhFZ
	xZYv9WnmzDqM6x1XJ66GahPLnWiVvcd9sRn20BkjUGCYc8ld7rhnKRsW5YZoE6K+/jlgc94ibGN
	dCRVYbNt++uhTA5gH7nXc+Ax4ZVg3jWKk7uK+Nh6IV2kMmiTXwxzZS0XhV1U7v8kBZZPmJzVlxu
	JLSm1SP6pRZLYOMSL0VHe+xFElQ1lAn3TSVo2w8urMrdRThZMYcsPqxUNfeR1sM2tDri4jH2HkT
	8NO3bmW1Bxp+YOqFWj3FfgU7NCTsw/1Tc+RH49EHmkSYQla7NJOm0o7A+l9rkdzUHF0ng6vbmw6
	OGSn2ETO/oxG2Vi8LHBzEx1RReIbAfv7pydIZgRuVUJ084T5Ai6A==
X-Received: by 2002:a05:6512:39cd:b0:5a8:eaec:7567 with SMTP id 2adb3069b0e04-5aa87bed80bmr501589e87.35.1780637035610;
        Thu, 04 Jun 2026 22:23:55 -0700 (PDT)
Received: from gentoo.sknt.ru ([95.161.221.172])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aa7b99c2b9sm1609748e87.80.2026.06.04.22.23.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2026 22:23:53 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri,  5 Jun 2026 08:23:47 +0300
Message-ID: <20260605052347.3009484-2-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260605052347.3009484-1-eagle.alexander923@gmail.com>
References: <20260605052347.3009484-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_222358_168143_2E0D9A19 
X-CRM114-Status: GOOD (  10.60  )
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
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v4 2/2] Documentation: add extlinux.conf support description
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 Documentation/user/booting-linux.rst | 41 ++++++++++++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
index 7bbb79ecdf..0f12256813 100644
--- a/Documentation/user/booting-linux.rst
+++ b/Documentation/user/booting-linux.rst
@@ -304,6 +304,47 @@ Additional notes about keys in the bootloader spec entries:
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
+.. note::
+   barebox only uses the entry marked as ``DEFAULT``. Additional ``LABEL``
+   sections are ignored. This provides a simple way to define a single boot
+   option.
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



