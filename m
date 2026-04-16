Delivery-date: Thu, 16 Apr 2026 15:46:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDN2i-00Cq5e-1z
	for lore@lore.pengutronix.de;
	Thu, 16 Apr 2026 15:46:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDN2i-0006Hz-24
	for lore@pengutronix.de; Thu, 16 Apr 2026 15:46:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9IGwbW93rXtoT/2R0mek3uf5g7HVs0MDTKFFXGnjKVg=; b=REgl16PoFxaacPYwXBt8N6WWzV
	dfIHr+zUFJBjmJ+OAqoGtdX+lcFyCXUtmLv8Mw5K7NyNN/th7uwa8QHeyhERu79RLui8bMlouV7Mr
	NNcm2I5cp0QOUcNBa0TuTTBAhmjfC09OsXv72UkrKj0d9U9Osl9VJ9ib8OL3aZJRTKIZRzcNTSvI3
	o6CgqaWSOFAXg0ZQLMNHSiJf4YwOtOxBJ+DILtJOgU5eqZr3J61SkdDZojdHMlrRi8EZP0BIzdSgl
	2rnj9ADUplh78WNboydxWRAgBeEu0wg7QH/vKVery4zbgbqx5ft6KEFTNKAwH7oBnXhGUXpd0L2lv
	lTE4/00Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDN2B-00000002WXA-49cC;
	Thu, 16 Apr 2026 13:45:31 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDN29-00000002WWW-2Vjw
	for barebox@lists.infradead.org;
	Thu, 16 Apr 2026 13:45:30 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-59e4a04f059so7853370e87.2
        for <barebox@lists.infradead.org>; Thu, 16 Apr 2026 06:45:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776347127; x=1776951927; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9IGwbW93rXtoT/2R0mek3uf5g7HVs0MDTKFFXGnjKVg=;
        b=LoOynyMcW1wbWLfIB3fHSYjrVlo7/5x1dGtfypNspPueLZtrJfx0DzeVzx2DLDuj9v
         mrtDGwpxKdQqb3kh6DPY4O3L197qwalk36UTJbB9kerqyeiVPmLD0HTASkMTqQwnttAZ
         xfHmjXyhciWiztuTqtPlpVfvSR6Yxc+2gEAobPITO+zcYWXhsdbf12RP4PYxSImrYrLX
         7+SqW+vb7TgXgGekh7rCb3s3DA9aKMwuFrHect0MKVlkibSJWnOEeCwasZT8W/TkWK7O
         ri4Es7K7AUfXkeTfuhIdnas42Cdxx7LYohkIQB/oFE/IjbwbPDKAiddPzXkcmbmxde8h
         3Hkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776347127; x=1776951927;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9IGwbW93rXtoT/2R0mek3uf5g7HVs0MDTKFFXGnjKVg=;
        b=htNbBRNctP/bvMxHKQyHfxcKoTT9K67ABL2Ks2zfQ1ZzukcMofMSE50S+xOflH8Rzz
         xJB4JuYSf5HXudUZl8kxMOFfouhVdtqmHs98tfOSND6P3Jw3Uyr+pkcUreWUizsgwP06
         cuOZbFxTFtzxrBive+HvhTSHdIoX8mnKFmOixmr7pO4pJTZAFOl8vyvzcazxFHD/Amgx
         QuK+6DPQWnebBhkT34b1VxfHIztNlDtTfcd40659Xdoav8dT1DDQSRnNwhemDJQwS8VL
         xNEbgATgIMFZLg6ljxe7eOUvFmwqXc/e4FsvUmIIcYuw7aGcaNc7naaS57UOf5UYk8lG
         TrdA==
X-Gm-Message-State: AOJu0YxNcnbbLZC4DElahrfpCPpa2t9gwmKKjeUnsHVyyxrGuvHZ6CYr
	aXjxHMciPduVVv0NDlcsiXhb9nkJurPSibZ/LYGWk1s/q47Yh5r/cWCQ+r9DS8MsNSQ=
X-Gm-Gg: AeBDietS0hbNXLUpHMi1gidc+mWjGNP539BLakuJFYunYX9PZa99ezyWK/x7AJGBu0l
	xrizPwJEOppyuf3f88TzCXnKNPCoD8ZmguJA9Ye4HsQuB2kBqwR0sk3AWNaAH4DvqbzKZDIPgFD
	M6udO5AX0mW5Mzuroji3+qaCckUoDp4PGYoJyjAJORu3IgEbVZqpPVSILf/dhdmBrhB+HsbKcuo
	dW/P1Vxm0MfSsMGPV4cRsot/VcnmGI+hrD7x8glw7Bk3LLhMzjC2h6+sgIOgePc7kwyVQfKiAcz
	S4Y3lGc2eIbS/FYAWa40QbMniRHu6cpUobd6rAO4uePIKGYNmyfW7sTmK3ukGLsvD8gIF/pZIEn
	EoR6zBZeiN7ePLCw/4MG++viHUWxnuXfDqwCKGPxOirgJkA6WNtggwbrYELlUSsP8v5N/BsByHH
	l4iGNIlmKXOTtzKxARW+/C6LhNsO+eZ58MVPRQWwKzHBBKaLmBRA==
X-Received: by 2002:a05:6512:31d4:b0:5a3:ff44:f019 with SMTP id 2adb3069b0e04-5a3ff4501ebmr5882916e87.11.1776347126907;
        Thu, 16 Apr 2026 06:45:26 -0700 (PDT)
Received: from gentoo.sknt.ru ([95.161.221.172])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a40a2fb93esm1295587e87.66.2026.04.16.06.45.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Apr 2026 06:45:26 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 16 Apr 2026 16:45:18 +0300
Message-ID: <20260416134518.3282395-2-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260416134518.3282395-1-eagle.alexander923@gmail.com>
References: <20260416134518.3282395-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260416_064529_660893_9434E5B3 
X-CRM114-Status: GOOD (  10.11  )
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
Subject: [PATCH 2/2] Documentation: add extlinux.conf support description
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 Documentation/user/booting-linux.rst | 38 ++++++++++++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
index ed1ec3f68a..307f33bb22 100644
--- a/Documentation/user/booting-linux.rst
+++ b/Documentation/user/booting-linux.rst
@@ -306,6 +306,44 @@ Additional notes about keys in the bootloader spec entries:
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
+When booting an extlinux entry, barebox automatically strips any ``root=``
+parameter from the ``APPEND`` line and injects the correct ``root=`` based on
+the boot device (similar to the ``linux-appendroot`` feature in blspec). This
+makes the same root filesystem image usable across different storage media.
+
+To use extlinux support, enable ``CONFIG_EXTLINUX`` in your barebox
+configuration. Entries are automatically discovered by the :ref:`command_boot`
+command when scanning a device or mount point. For example:
+
+.. code-block:: sh
+
+  boot mmc1.2
+
 .. _booting_linux_net:
 
 Network boot
-- 
2.52.0



