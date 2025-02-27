Delivery-date: Thu, 27 Feb 2025 07:38:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tnXXb-007WkR-09
	for lore@lore.pengutronix.de;
	Thu, 27 Feb 2025 07:38:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tnXXZ-0002DD-QT
	for lore@pengutronix.de; Thu, 27 Feb 2025 07:38:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:Subject:
	Message-ID:Date:From:MIME-Version:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=qxhf49qstNHUTUltzLM4AizH3H5p4PnIHz2olyWhyQQ=; b=bddYtcUDEibub4W2+aUAoOmn+I
	fKkv9FyLw6FR22I6P7x50Tosf/o+8nJc3DWN3xeZuNxsI7C5YRsTH2kYJRTo7YtNj5tCsr7gIOO+F
	FRB8qv26ZKB8iWxc2xPZtuiGpz0Dzw8aWfJBzUTTpzDrMU83OD7/YtREmNlI7feBupbBLTollwflR
	z+YNke9/DE8f/M9/rEw7W4bWTyV0bYV/ggRXUh4SVotME8u0nhrI2hdEZmxvrffJKhn+0RzA/6FK4
	W2I0Ie9AoP/qfXZsJxyWK+P07PXv5kJXsxI9Hr0KMUinEmQXnOx4i8M/fFOTYEGyYJbRI77OvUckI
	+wxESxhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnXWr-00000006U9m-0QQO;
	Thu, 27 Feb 2025 06:37:53 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnXWo-00000006U9Q-1dOT
	for barebox@lists.infradead.org;
	Thu, 27 Feb 2025 06:37:51 +0000
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-222e8d07dc6so11206825ad.1
        for <barebox@lists.infradead.org>; Wed, 26 Feb 2025 22:37:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740638269; x=1741243069; darn=lists.infradead.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=qxhf49qstNHUTUltzLM4AizH3H5p4PnIHz2olyWhyQQ=;
        b=mRlA1SlCS3WDhMfzIZM9W4mTfdoUpI+MZoydsUsW7dJ5Wv28N4WGFHMXxPV6V6QmCH
         JPxbHzSrmUhg8K+32T2ndLwQpm2C0rVFF5cxFNsr7QqZ/2b4GlzMXxfNeWayjm6S2Q1d
         HfgVNg812RlT8o2vT+Bg1g4ByMgNh9hoeV+NHWeoJxzCyBwp/hsXguFX73g7WBfse6qq
         s3m7L0EXafmJK0E1NDBrtSSE1T7wHbPasCG2wNzIbn+oW7crSBBEXvCIZGYS00qDtDji
         /7qestFPofVL6PF/ilBl34bBUwld9IXcvbxZ9fo1Syfm0sfyUkwEcUGQSfrMCmmAlwhC
         yd5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740638269; x=1741243069;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qxhf49qstNHUTUltzLM4AizH3H5p4PnIHz2olyWhyQQ=;
        b=ruTjOnUT2aXMNcwKU2Fdjqbls9q1FFWVWuTf8XeT2tLR0N7uH1wcJaQ/gJyBiWpGAw
         7Ey5eRSO1TUrrgEE3yV9Mqzeyvoj82yNHREOGBfAxQ+p3WD6Rq9Y7PhOwPKs+sajzYuZ
         zAXDMk2mOk5pCEN4P+0de+hJZAWWfxuQhnmUYO1j95FCQJSHbeqjwWZn75bkXRESEUE5
         ccEiQ2UU1d1e6GEe6YU/ZyF65hMwEV9krTO5FzCNMLpsEoFWcMBBngJr/VTB0YjFKr3u
         9ToCdkwnPzNhDvDL2uyXf6W8/u5nWMvs4jMrQkZcBsb7Jf5ZbePvVjNDiIAZb7xIGT0v
         0NAA==
X-Gm-Message-State: AOJu0YyrxfkwAVeYO5JJoOwSH6a6jtp3kbGEfan6YAASkjDhJ65Ph7cw
	X6yGL1366PvzW8oF03ZhcTBAbhDC32TgiT+3pgrBz65+KRcra6rVbLhEbouvvXLMY3qcC69QUE+
	Iz+SRP0pnYhSz7h0zVnF//76LG8T47fHT
X-Gm-Gg: ASbGnct1X9Ypy2IapUHizpYtPZbCIw/RDvHECVjbGaXxmNAo8vcgatQsUy+5PA+tn/a
	menx8VcuqeWRUvQyVvJqkRWMwVf7dA79DyyiCaPOTvx5rQ/UFYKeacm6uqPHOL56xR8ED2KCLXn
	sFe+djdt4=
X-Google-Smtp-Source: AGHT+IHtbayc3hSba2ZThToVvKaBA4wo4y02nPOk5EkeukNH6rohq6cPPZXIp9f3cWLCdSge0AZQeLrlI614Pqhuxnw=
X-Received: by 2002:a17:903:f90:b0:21f:98fc:8414 with SMTP id
 d9443c01a7336-2234b097774mr32461245ad.26.1740638268896; Wed, 26 Feb 2025
 22:37:48 -0800 (PST)
MIME-Version: 1.0
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 27 Feb 2025 09:37:37 +0300
X-Gm-Features: AQ5f1JpgP2joPk8CSbScMu1rLPk41gqSnP8GFjQS7NKsn5IQzD7Wz_dZC_5kQr0
Message-ID: <CAP1tNvToG8WGLUo4_e2dSdovFZBAbcdOFUqm+F+W4gWoaVnrgQ@mail.gmail.com>
To: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250226_223750_458605_CCE6F220 
X-CRM114-Status: UNSURE (   5.31  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: automount doesn't work without GPT table
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello All.

I found that automounting does not work without a GPT table.
In the example below, it is not possible to automatically mount a
partition from an MMC card.
However, if I add the full paths to the command manually, everything works.

barebox 2025.02.0-00690-ga6a0a0ba4f61 #12 Thu Feb 27 08:27:56 MSK 2025
Board: Mega-Milas MM-SM-SAMA5D2
AT91: Detected soc type: sama5d2
AT91: Detected soc subtype: sama5d27c_d1g
...
sdhci-at91 b0000000.sdio-host@b0000000.of: registered as mmc1
mmc1: detected SD card version 2.0
mmc1: registered mmc1
...
barebox@Mega-Milas Informer SAMA5D2:/ ls /mnt/mmc1.0
mount: Device or resource busy
running automount command 'mount mmc1.0' failed
ls: No such device

barebox@Mega-Milas Informer SAMA5D2:/ automount -l
/mnt/mmc1            mount mmc1
/mnt/mmc1.0          mount mmc1.0
/mnt/mmc1.1          mount mmc1.1
/mnt/tftp            ifup -a1 && mount -t tftp $global.net.server /mnt/tftp
/mnt/nfs             ifup -a1 && mount -t nfs
${global.net.server}:/home/${global.user}/nfsroot/${global.hostname}
/mnt/nfs
/mnt/ratp            mount -t ratpfs none /mnt/ratp

barebox@Mega-Milas Informer SAMA5D2:/ automount /mnt/mmc1.0  "mount
/dev/mmc1.0 /mnt/mmc1.0"
barebox@Mega-Milas Informer SAMA5D2:/ ls /mnt/mmc1.0
BOOT.BIN           barebox.bin        barebox.env        rootfs.squashfs

With the GPT table on the MMC, everything works OK out of the box:

sdhci-at91 b0000000.sdio-host@b0000000.of: registered as mmc1
mmc1: detected SD card version 2.0
WARNING: mmc1: GPT:Primary header thinks Alt. header is not at the end
of the disk.
WARNING: mmc1: GPT:395303 != 60440575
WARNING: mmc1: GPT:Alternate GPT header not at the end of the disk.
WARNING: mmc1: GPT:395303 != 60440575
WARNING: mmc1: GPT: Use parted to correct GPT errors.
mmc1: registered mmc1
...

barebox@Mega-Milas Informer SAMA5D2:/ ls /mnt/mmc1.0
mounted /dev/mmc1.0 on /mnt/mmc1.0
BOOT.BIN           barebox.bin        barebox.env        rootfs.squashfs


