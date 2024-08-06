Delivery-date: Tue, 06 Aug 2024 10:00:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sbF73-006lAZ-31
	for lore@lore.pengutronix.de;
	Tue, 06 Aug 2024 10:00:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sbF73-00078h-9j
	for lore@pengutronix.de; Tue, 06 Aug 2024 10:00:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Content-Type:References:In-Reply-To:Date:To:From:Subject:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qtQlcqSxhnRKu4BXppI7zGM+R+sJEnVjogtrTk3usbo=; b=MBdhs0A7YAGZYqDX2cSi2hPFbk
	LlqbF7cgkCFqPk7Ac2qRx79SuO1K2EHtmxn0KkUmLkTDjd8H7vLtBVUqqiOoDrWCaRgU9BUwkgHUO
	9rXP/d89ByYjELlCBvBUAZOtmVB4l//JOqbykVOqpbntm7BirGffGxPnXwWV2rS8JJrr0XJkRAfEg
	DbbtHxx49fM1x2jOZH2L3YOYtZ2szjDuhWDpvGIVb7JaCY3hRo35D+reFKMocMF4ydbGswtJk3c6+
	9dwxRr1TcRePzaqps1QeBEjTsCMwBmFf1T63THVAH8MCyuVTTuq0NwveJN0lVwyGCVLj7udHgqmbH
	UIsZQrVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbF6R-00000000rX5-0iKD;
	Tue, 06 Aug 2024 07:59:31 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbF6N-00000000rUD-3oJV
	for barebox@lists.infradead.org;
	Tue, 06 Aug 2024 07:59:29 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-a7aa4ca9d72so28240166b.0
        for <barebox@lists.infradead.org>; Tue, 06 Aug 2024 00:59:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722931166; x=1723535966; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qtQlcqSxhnRKu4BXppI7zGM+R+sJEnVjogtrTk3usbo=;
        b=nYHPA6IKyeJIIO57Ob0BmZWONEDo3ludEgd8F9b06d49wX0exOarjngkUCOGPSl2hN
         FEhbCKdMkLZqNEB32PoryBV4h7zKaesZdUfOE1rBXIBIIDLP0sg4wR16LrsvkjW7cD23
         NDpWOgCHI+TwzU5TywZk1g9RmU+ebe4MQnLXGQQ4t8x+tPnCg3wOemrwYWef/bjDptq+
         GMz+csiqJBVxa5a3UqN6xJGv7Sk5x855sgLx7cyXttRc8R64NDW1pTRA0Ejo0kprvK2Q
         3q6OHVOt6Xum58ve9BxqqxqoyH6V5ByrGi9FOHrsbCCBnE9zVbCWWlkaEg4Dp6VarKia
         xYGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722931166; x=1723535966;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=qtQlcqSxhnRKu4BXppI7zGM+R+sJEnVjogtrTk3usbo=;
        b=NI+Ym54C1wnH1saz4QWylETCn9AMN6wWg4zBZTNd26s6OOM1R0ZcnMqTRvJqoK4o21
         Jt/5xI67Eh7Hih6ZO0VUx2hn3vUG26YwZ61+6QKo8JKJ8fXyztUiDcuxRzbMhk5ZmaYN
         2PPY08Z4lgj7wSpvVKB+GEOn3BVkFi7JCe83TyWIZYH0T3F9hkSc/ktqcNQX4sia5m68
         W0RMJdn9JrAyQmCUXDdyCWqQ4qZQzsviQMs3YW5OmG5axVn7wUVADMkZ1ke+g9ceIcCg
         iHU1MC4DDaD2CtolrRIa5kOwApR3OFr98HAvjxjvtdqSiVSHz2W9mFM3Ko+HXgO62xR4
         c+gA==
X-Forwarded-Encrypted: i=1; AJvYcCW448Rvo7ds1cInbQEjqBj87FFzScxMscj6qIJtAwSJlyEJRiTvvpsH2obpmhDSXBSPvhqmF6YoYvFm8RIdHjI1r1vbuduC93NGfCs=
X-Gm-Message-State: AOJu0YwZY7ISio2zNA1xxxggp/GlzpFlxsyZHOYJoFo+6AYWxaYCg2Wi
	FdeZbIKT824z3rGaG6WV3Hdsn495xf4unpSEQIVPxmlLtUbrFxF8g+bq/A==
X-Google-Smtp-Source: AGHT+IHRFmkoPViWPlvYDMbDHCgwQx2kg4Y0+C8ZwWpGpxgba96ila5LuwBTqzJy3zxR2ggHFPNivw==
X-Received: by 2002:a17:907:847:b0:a7a:9f78:fee with SMTP id a640c23a62f3a-a7dc4e282e9mr1152973666b.17.1722931165731;
        Tue, 06 Aug 2024 00:59:25 -0700 (PDT)
Received: from vaio ([91.142.65.210])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a7dc9c0cc07sm527145166b.80.2024.08.06.00.59.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Aug 2024 00:59:25 -0700 (PDT)
Message-ID: <ef001d53a29c13aee55c240c0dfc33d4eb26853a.camel@gmail.com>
From: Stefano Manni <stefano.manni@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Date: Tue, 06 Aug 2024 09:59:21 +0200
In-Reply-To: <9695c594-d410-4e72-afeb-68777a82ce71@pengutronix.de>
References: <3f5eb45e38041713fb983ec00bcdf830fb86cb11.camel@gmail.com>
	 <98259e53-5bdd-4e6f-a0c9-1c0d2a11e85b@pengutronix.de>
	 <34a3bd84065357c7ab6e8a55c6ec34f5267edad6.camel@gmail.com>
	 <9695c594-d410-4e72-afeb-68777a82ce71@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240806_005927_981619_52D660E1 
X-CRM114-Status: GOOD (  13.00  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: eth frame error on imx6ul
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Ahmad,

On Mon, 2024-08-05 at 18:57 +0200, Ahmad Fatoum wrote:
> You can enable CONFIG_CMD_ETHLOG to capture the frames and see if
> the frame that triggers the error looks odd in some way.
> 

unfortunately ethlog cannot be used because fec_recv() -> net_receive()
-> rx_monitor() is not called when the frame is invalid.

So I've patched in some way fec_recv() to print out the frame in case
of error:

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 75a6596282..d2fb617631 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -579,6 +579,10 @@ static int fec_recv(struct eth_device *dev)
        if (bd_status & FEC_RBD_ERR) {
                dev_warn(&dev->dev, "error frame: 0x%p 0x%08x\n",
                         rbd, bd_status);
+
+               dev_print_hex_dump(&dev->dev, KERN_DEBUG, "",
+                          DUMP_PREFIX_OFFSET, 16, 1, rbd-
>data_pointer, rbd->data_length, true);
+
        } else if (bd_status & FEC_RBD_LAST) {
                const uint16_t data_length = readw(&rbd->data_length);

And these are some of the frames I see:

WARNING: eth0: error frame: 0x87ed50e8 0x00000886
eth0: 00000000: ff ff ff ff ff ff 00 50 56 ad 1c 33 08 06 00 01
eth0: 00000010: 08 00 06 04 00 01 00 50 56 ad 1c 33 c0 a8 d8 d0
eth0: 00000020: 00 00 00 00 00 00 c0 a8 d7 de 00 00 00 00 00 00
eth0: 00000030: 00 00 00 00 00 00 00 00 00 00 00 00 ec 3f      
WARNING: eth0: error frame: 0x87ed5190 0x00000886
eth0: 00000000: ff ff ff ff ff ff 00 50 56 ad f3 d9 08 06 00 01
eth0: 00000010: 08 00 06 04 00 01 00 50 56 ad f3 d9 c0 a8 d5 42
eth0: 00000020: 00 00 00 00 00 00                              
WARNING: eth0: error frame: 0x87ed5198 0x00000886
eth0: 00000000: ff ff ff ff ff ff 00 1e 2a c1 b4 8c 08 00 45 00
eth0: 00000010: 00 4e 94 ec 00 00 80 11 4a 99 c0 a8 d9 c8 c0 a8
eth0: 00000020: ff ff 00 89 00 89 00 3a 1b 08 d2 c3 01 10 00 01
eth0: 00000030: 00 00 00 00 00 00 20 46 44 45 4c 46 4a 46      


Focusing on the first two, they are ARP but look odd, they should be 60
byte long.

Any idea?

Best,
Stefano




