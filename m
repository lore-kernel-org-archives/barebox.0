Delivery-date: Mon, 08 Jul 2024 04:23:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sQe2A-002diK-1D
	for lore@lore.pengutronix.de;
	Mon, 08 Jul 2024 04:23:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sQe29-0000A7-QC
	for lore@pengutronix.de; Mon, 08 Jul 2024 04:23:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:Subject:
	Message-ID:Date:From:MIME-Version:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=pDNPHuJNglY+VnZsttMqqHwTC6k4/ZJoPeG/VEeOeJc=; b=enDgMluUQfwl6Nsm8h5kB40wch
	KF8gQCX5pbK0SW7GVEtQ7nNIm/75u/hDOKFSDvbqH5BMUheYN7S0cPZN0zyHKw7RyusudWhbrX75Z
	OH7l9BAsaGFG7qY74DVPEZ4UDkgf7VIi62+hc9QzhmEK+5kkwJwheh3Ru4gn/cf9ZMYftbJddAhdg
	0c3MI+HPqeYQL+sbYervzgEiCvTefg8bGt8VKzvqhdM8etTt7pXZUroqVrJoH30eNn3TjfZfU/rs3
	5Cu85Iee2VxDDDGrmnGWXsp6cF2BUEUZBJAZQ3ir2Zou40sfsfN8Ioc3a4gQ+cjXIFWqPpE9Tc0Ln
	96KS5JHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQe1S-00000002bDv-15qP;
	Mon, 08 Jul 2024 02:22:34 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQe1P-00000002bDT-0wen
	for barebox@lists.infradead.org;
	Mon, 08 Jul 2024 02:22:32 +0000
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-58b966b4166so3887766a12.1
        for <barebox@lists.infradead.org>; Sun, 07 Jul 2024 19:22:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720405349; x=1721010149; darn=lists.infradead.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=pDNPHuJNglY+VnZsttMqqHwTC6k4/ZJoPeG/VEeOeJc=;
        b=ZV++kbZzVONEWcs9zc+qCQFhkAQQy0aephGWQs2honHL6tOa5jj/6VdA/89K1SKRHA
         +Kqz5lqefYIpF/MIxy/woJMsOH1Cx7WdSsn2bDKKKZdugJPoi+IXqZ6iAfZJmbFYbLOu
         A//MCUKKG7IV/9rcgHS5wVfcaMIh7ZfgzXIMK6bXbKU4CMaXD6nSRy2iGBPIYbQNIJwE
         Tkry5oTLtCe96zcsKbrV0SaOkJvSXK2CYt+SMNwA193E38Flk3UAG2q2BYZ+cEttV1Mb
         m/qDrr7pFEWAEPEigNq3YhlZr2zcewO9XCZ6ZpYBJMCIE+XaRe+4Q+eZy3ZhJoC3VB3z
         fxuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720405349; x=1721010149;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pDNPHuJNglY+VnZsttMqqHwTC6k4/ZJoPeG/VEeOeJc=;
        b=UxM415eURt6jCw9DbDMScXPsRwaO+HH0MUMK3fh3uZ5u8MfWRcKEgaBP5u7/0JZTJ9
         iNameKTLK88zN29yg+ni7Jht6/Q02K/ANQzLYJU+ZUYXhDvWVzLOttJK6GJe84NdDf5R
         Rqh+YQ5rFvtdFh9kyo+2GKQA39n+/IO5HwycdyYx9eI1kskTRh2cSFTQ4gk/iP/U9/OK
         A0VcqsE4bESnau0wMxbQUYdv+WLuYBVfSQry1MXOmfMcxrJdhoGpAjiPJ4XXIcQcja1h
         DEmeuN+H7JKSA1PduC9b9LBW3SP+IXHi427IknfXYApAZiLbzwqplnPWKqUrs+4QRQeV
         dyyg==
X-Gm-Message-State: AOJu0YxJvEBkCz5v3AUEZ+OBfrZAoG9li5tzAyjBdygVGKpoE5D5+ga+
	l3BEyZxZBX6xDySwWKz5pp0R0iFiT011PF1X1Ezb6YNii4/8PptObHLHLA0cSRVpe5Szhr+v0RU
	+U2uR/xyR/fPWPDd80Sht+6vgbnkG7jGI
X-Google-Smtp-Source: AGHT+IFw/vIGCTlsDVWpxDWR1A+XDxyU1AimgUTiLsalOyqZv1bxz5xTEsFXkzZ5uocdK40TENBe5qapNBNAsdpeZKo=
X-Received: by 2002:a05:6402:348d:b0:57a:2ccb:b3f2 with SMTP id
 4fb4d7f45d1cf-58e5955a90emr7718481a12.16.1720405348606; Sun, 07 Jul 2024
 19:22:28 -0700 (PDT)
MIME-Version: 1.0
From: Wes Chow <wes.chow@gmail.com>
Date: Sun, 7 Jul 2024 22:22:17 -0400
Message-ID: <CAGWymk3LSCYpVDjYXs8NvdmkQeB+Bh22BJ7Sezm+hwuhUoSjFw@mail.gmail.com>
To: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240707_192231_287534_8A29E9BA 
X-CRM114-Status: UNSURE (   7.02  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: barebox state w/ qemu
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

I am trying to better understand barebox and playing with it via
Buildroot with Qemu. One thing I don't understand is how the state
backend is configured. I see this:

https://github.com/barebox/barebox/blob/d74c84582591ac1f93b203d733831fcf18e6b033/common/boards/qemu-virt/qemu-virt-flash.dtso#L4

..however I don't know how to read dts overlay files. Do I need to set
up a disk with a partition scheme that matches lines 17-30? Or is it
sufficient to just have a partition with the "barebox-state" label?

Also possibly of relevance, I'm starting qemu like so:

qemu-system-aarch64 -m 2048M -cpu cortex-a57 -machine virt -display
none -serial mon:stdio -kernel output/images/barebox-dt-2nd.img
-device virtio-blk-pci,drive=hd0,disable-legacy=on -drive
file=output/images/rootfs.ext2,if=none,format=raw,id=hd0

The rootfs.ext2 disk becomes available to barebox as /dev/virtioblk0.
How does barebox know which disk to search for the backend?

In the target image, I installed dt-utils and so have access to the
barebox-state command. How does the barebox-state executable know
where to look for the state backend? Is this passed down through the
device tree?

Thanks,
Wes


