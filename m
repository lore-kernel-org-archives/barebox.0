Delivery-date: Fri, 24 Nov 2023 07:02:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r6PH7-0070hU-2A
	for lore@lore.pengutronix.de;
	Fri, 24 Nov 2023 07:02:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r6PH7-0005Ov-N5
	for lore@pengutronix.de; Fri, 24 Nov 2023 07:02:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P6nfqrVAl5zzuHzubfj5erJH5Cb0Zny/Q8cSAxuxTk8=; b=DrOdVzqf08RQcv
	BIT+kmCknZvQSGGhmBO2cklJZ+XnBTaxZcXgCChbu1z5PvZtrodR/sLEg6FpHy+knMNGuNoXV8TTv
	iqMQC8r4IBGEA4ajc/bRN/rFCXNCLZMUEJxPOwL+GyzuIMRpd6N8kZWeAIqIL1X5GMeFAY1Mk/WSH
	WPPTfeETxgj4WBziv8zb6S9yj7qKhcpH/Hfr0akBFUih4GT6R6e4/iWqVYuqKopSO14a01D7yE11e
	DQXglliMUJ2s71TDyNGVhyN5uStTvxGfohGWZ3N7mpRPF42zCOugkL+Qli/KOPNh6uxbelPwlaT74
	nZGY9XlcQaAwX+ptC1xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r6PFZ-006EEI-0a;
	Fri, 24 Nov 2023 06:01:13 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r6PFV-006EDG-17
	for barebox@lists.infradead.org;
	Fri, 24 Nov 2023 06:01:10 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-50aab3bf71fso2029266e87.3
        for <barebox@lists.infradead.org>; Thu, 23 Nov 2023 22:01:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700805666; x=1701410466; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P6nfqrVAl5zzuHzubfj5erJH5Cb0Zny/Q8cSAxuxTk8=;
        b=WAXV/KQLej1DP4kshE2u7Auz4hIazk269Ryj3xdhVVhBpmJiGWhVm++VimdlIf1BtQ
         0vEIAmSZS0m9C8kxFaU22UzOnOxi4JWWMlFjr1l0sjGcTYfpxscm1FU16lCMY7Vr7dT3
         SpQBY7KrWJbXs0eVtBt6bYpXg5LnVeC11TCmyKbQSX7Wr3smutRGPrByvoOikjBKIZOe
         u4yFZfs1E05y1Z7f7k4RQapY3ak6jdXe51UWEZFXsKPaCIfdaF5Yg2iMS2YNR7J03arf
         GuNuNWVV7McGj2Nu+N+OEkGFdl05qqrp4lUkl9cVYuxQqex2aCCA+bZFTyTVdKy5WGgd
         syhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700805666; x=1701410466;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P6nfqrVAl5zzuHzubfj5erJH5Cb0Zny/Q8cSAxuxTk8=;
        b=mN3klzBqhxB8vPNx5iLRACW8w2dZhAylCky+nSVZH27K0X2LkimFFTBsZO3MX/NFzm
         jX0gfAEiEfNjXu6DzWnXDtFaKBUGzD9DsU8Gh8E/1wtwzIfFidrYrjgbZGgE+b6/nuZv
         tlnvoSFvg6zpZW0sTr4LYygIFQnmV8TpK8y2Sx8uxmvcb2OFDcF+UFS2/FxlkFKrdhwP
         EG/L90BcKptN5lVpi3gYkZkfspMQNIhW2fTB5vw3q17nmmufHZPP4guf8gRWtf6IOYj+
         rGZMTc06m5wMbQoyxMPOqCUfOZ++i9+Mw3rPDGknkv6cQBuHn/qxtePn45dWweC+flEA
         6cTg==
X-Gm-Message-State: AOJu0YybgydWv6BiirZjdJNxtn4XrYVZhxRnzjQ7YSVzkVk3v+/4ocRd
	08XnIxkRfb13WE1vOlQAWxKsVdj61eY=
X-Google-Smtp-Source: AGHT+IGwHjthVRNqqdTOOJNFvtNrzP7Rx96MQ0/Ye5vsglWcj5wbrHROORNNhvuDUJpksCXFSqIv5w==
X-Received: by 2002:a05:6512:38cc:b0:50a:77c5:12b5 with SMTP id p12-20020a05651238cc00b0050a77c512b5mr895553lft.23.1700805666429;
        Thu, 23 Nov 2023 22:01:06 -0800 (PST)
Received: from cinco.. (109-252-3-142.nat.spd-mgts.ru. [109.252.3.142])
        by smtp.gmail.com with ESMTPSA id b20-20020a056512305400b0050a93acb00esm415258lfb.134.2023.11.23.22.01.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Nov 2023 22:01:06 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Fri, 24 Nov 2023 09:01:29 +0300
Message-Id: <20231124060130.1205927-2-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20231124060130.1205927-1-antonynpavlov@gmail.com>
References: <20231124060130.1205927-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231123_220109_385612_1FD2F9E1 
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] virtio: ring: fix erroneous behavior on MIPS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

How to reproduce the crash on the 64-bit malta board:

    export ARCH=mips
    export CROSS_COMPILE=mips-linux-gnu-
    make qemu-malta64el_defconfig
    sed -i "s/# \(CONFIG_DRIVER_NET_VIRTIO\).*$/\1=y/" .config
    make oldconfig
    make
    ...
    qemu-system-mips64el -m 256 -M malta -cpu MIPS64R2-generic \
        -bios ./images/barebox-qemu-malta.img.swapped \
        -nodefaults -nographic \
        -serial mon:stdio \
        -net nic,model=virtio-net-pci -net user
    ...
    barebox@qemu malta:/ dhcp
    WARNING: eth0: No MAC address set. Using random address 9e:85:56:74:55:bb

    Ooops, TLB miss on load or ifetch!

    $ 0   : 0000000000000000 0000000000000004 000000000000000c 0000000000000001
    $ 4   : ffffffffafb7fee8 000000000fb7402c 000000000000024e 0000000000000020
    $ 8   : 0000000000000001 0000000000000001 0000000000000110 ffffffffafba6df0
    $12   : 0000000000000008 ffffffffaffc9584 0000000000000001 646e617220676e69
    $16   : ffffffffafb7fee8 ffffffffafb6fee8 00000000b2d05e00 ffffffffaffeb090
    $20   : ffffffffafb800c0 0000000000000100 0000000000000122 ffffffffafb800f0
    $24   : 0000000000000006 ffffffffaff93974
    $28   : 0000000000000000 ffffffffafb5f9f0 ffffffffafff0000 ffffffffaff7a6e4
    Hi    : 0000000000000000
    Lo    : 000235e8a8000000
    epc   : ffffffffaffb5db0
    ra    : ffffffffaff7a6e4
    Status: 00000082
    Cause : 00000408
    Config: 80004482
    BadVA : 000000000fb74039

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/virtio/virtio_ring.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/virtio/virtio_ring.c b/drivers/virtio/virtio_ring.c
index fd21d3adcdb..0efe1e00250 100644
--- a/drivers/virtio/virtio_ring.c
+++ b/drivers/virtio/virtio_ring.c
@@ -256,8 +256,8 @@ void *virtqueue_get_buf(struct virtqueue *vq, unsigned int *len)
 		virtio_store_mb(&vring_used_event(&vq->vring),
 				cpu_to_virtio16(vq->vdev, vq->last_used_idx));
 
-	return (void *)(uintptr_t)virtio64_to_cpu(vq->vdev,
-						  vq->vring.desc[i].addr);
+	return IOMEM((uintptr_t)virtio64_to_cpu(vq->vdev,
+						  vq->vring.desc[i].addr));
 }
 
 static struct virtqueue *__vring_new_virtqueue(unsigned int index,
-- 
2.39.0



