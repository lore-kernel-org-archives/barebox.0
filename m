Delivery-date: Wed, 30 Aug 2023 16:04:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qbLni-00Eho5-Fd
	for lore@lore.pengutronix.de; Wed, 30 Aug 2023 16:04:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qbLnf-0002dg-LN
	for lore@pengutronix.de; Wed, 30 Aug 2023 16:04:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:Subject:
	Message-ID:Date:From:MIME-Version:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GoEP6Q0Hvm0T760E/36Md0Yrsl0lToH5WWd3IAwb7yE=; b=DrYVe3b2U/0IiWjawJEh/ytG3a
	2GK6+HC+KZ2vOMdUVlgmvHwPsRKBXR2d80bOGs56XxEQ+rCgL1ii/UJ0dYsus+lIkhekj/JNXOzfx
	6Ho0oBKxVI1pjJpuPy3IzBJqfxTCkEhtKWbOhvCz7NBReihIGv49GcpsFfmFTkBhsMQTgnOUeb1BW
	WfO18ZAjWs8jUQhgLD2ktrdY9NfnfkwaBvPu0fr+p3TljYjPuVE7awylfGj16zUgGbEchyd/R1JdY
	DLV+++zKyjRl8vxBNOJ6aY5df8YapNLgScWZlFlb4SmrTLwIe2PeW4MKJnd9x3YqFe4P5eoX+TEXK
	y9gZG4pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbLmN-00Ddi4-1K;
	Wed, 30 Aug 2023 14:02:43 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qbLmK-00Ddgz-1S
	for barebox@lists.infradead.org;
	Wed, 30 Aug 2023 14:02:41 +0000
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-1bf7423ef3eso34818055ad.3
        for <barebox@lists.infradead.org>; Wed, 30 Aug 2023 07:02:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693404157; x=1694008957; darn=lists.infradead.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=GoEP6Q0Hvm0T760E/36Md0Yrsl0lToH5WWd3IAwb7yE=;
        b=nXX2SnKOvjN6hbxQ4f5fQv8IIsAgahpEyMZFTNDi44iV7M5V0jcPtkV0eHdnztB0yA
         SceibQzcYfA+K4cszbOjfrUfcKrxR55jEKWBCbocQJVfnRS8W/SGSc3YAFIi6uX97Kor
         r/Qf9umu9e4VZJKCMA9u085sKppPJIcYJHj+ZuXcnNw19LnWzDtYrh1rOd4qxow4M4Qs
         /rO/5mdFTuq/egtn9Je/+OVa9ecoGrf/un0Z2cs5xAfoErTeemGtAm9Z0fiRFO5BimqQ
         8mbRD3Cwo8UEd06/Gk3RiTXtkYo98fpq4sYJpIPwE/Tn6pXx01XcmipHiaMl/cR5xmD3
         FTKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693404157; x=1694008957;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GoEP6Q0Hvm0T760E/36Md0Yrsl0lToH5WWd3IAwb7yE=;
        b=SzjZMv0H94+eMyZ23kgmk5x0U5Wdaxy07BEaEL0J1m18sxifZmbbQKEqWQFNBqjVAu
         iPKrObvGdE+ptQSGOWFi8lobXTWe7SQb2TPtye40LA/UJTMWx3O1EhOpNZX+rZAL8xzv
         acMguv2r9amFMBjkf9693/tQEcUCRagPmhn1ZGdT7v9h+/qW5ShTjh9YwN49hCIPTFdL
         2WlzyDw6i4ojKxX3uxQRy1jYzizmBY6Uc/rsWijALapXgxT4dXmCKaHua4J8WsrCTbz+
         7MtfZ1hG1cH1ks7QGlcPq3y6EzZGA10ZVHrbd/uuKjnVPYzdZiPufpcleHGYCD8Nk1lw
         1Iiw==
X-Gm-Message-State: AOJu0Yy2ntV+KzI7dS1PVU5K156K+YTNrXreDi9NMVOctgfXm5chVCUv
	a10aYHIsj+q2vMUJuC/tMYYSTv6ey/IyK9gMUqYGbSXnCcaLp8n4
X-Google-Smtp-Source: AGHT+IE3DgTb3t5wSd4Z0HABSivv0wJKUcONbWXNeQpZn1nRCuboROu18TNhhoHXTAzHuMn36oUUJ7YiM7t81N1X5Gc=
X-Received: by 2002:a17:902:ce8e:b0:1bc:8c6c:217d with SMTP id
 f14-20020a170902ce8e00b001bc8c6c217dmr2200614plg.61.1693404157299; Wed, 30
 Aug 2023 07:02:37 -0700 (PDT)
MIME-Version: 1.0
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed, 30 Aug 2023 17:02:26 +0300
Message-ID: <CAP1tNvThyufaTqyj8smDj89WeDeh-cggusnRYKMjB0ExAZ=94g@mail.gmail.com>
To: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230830_070240_530801_82EBA1CE 
X-CRM114-Status: UNSURE (   5.61  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.2
Subject: imx8mm & genimage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello.

I can't figure out how to correctly write the configuration for
genimage for the imx8mm CPU.
This way of writing works fine:
dd if=barebox-nxp-imx8mm-mgqs.img of=/dev/sdc bs=1024 seek=33 skip=33

For genimage I use the following but it doesn't work...

image imx8mm-mgqs-sdcard.img {
hdimage {
partition-table-type = "gpt"
}

partition boot {
image = "barebox-nxp-imx8mm-mgqs.img"
holes = {"(0; 33K)"}
offset = 0
partition-type-uuid = 0fc63daf-8483-4772-8e79-3d69d8477de4
}

partition env {
image = "/dev/null"
offset = 8M
partition-type-uuid = 6c3737f2-07f8-45d1-ad45-15d260aab24d
size = 32K
}

partition root {
image = "rootfs.ext4"
partition-type-uuid = b921b045-1df0-41c3-af44-4c6f280d3fae
}
}


