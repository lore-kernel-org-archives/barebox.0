Delivery-date: Mon, 05 Aug 2024 16:39:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sayrs-006WGk-0J
	for lore@lore.pengutronix.de;
	Mon, 05 Aug 2024 16:39:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sayrr-0005o9-IO
	for lore@pengutronix.de; Mon, 05 Aug 2024 16:39:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Content-Type:References:In-Reply-To:Date:To:From:Subject:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xtFkm8jhSoMukjfup7hC3yMd0IQ0wjke4g/ictjgY1k=; b=axaT3ZEwJYDHdrbyXFzmgDr7yd
	hgow/H+/2rUF3pB8U8I//lg6xCaF4fex59z7IdHccg+d/N0hD16OOVkdGt4Y1bg9Nc4tJesLKBxYO
	cYYL7WpX3skb5jmxOcL7rg7tTN4MpFoEcJnMUKgbGXgj/XQJOcogKPh6sUb7/5yogV45SIT2b62Jv
	YfnlupV3fCRU7WSUxd+aQ1nljUnBUhkhqNHhsmguToxsL2/LbzV7sbSIrHdjEfrN3lgGfiqstdi9V
	WlCUPnbxz1R7qDGfRhjXmGVd1G/rH4VXSXmU9QmvGGnTMSqq4HOG42+QNOH7nVH78iGEQ9WOwthMa
	JTZE4VZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sayrH-0000000GAig-0Kat;
	Mon, 05 Aug 2024 14:38:47 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sayrD-0000000GAhb-1jUx
	for barebox@lists.infradead.org;
	Mon, 05 Aug 2024 14:38:44 +0000
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-5b8c2a6117aso1606313a12.0
        for <barebox@lists.infradead.org>; Mon, 05 Aug 2024 07:38:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722868721; x=1723473521; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xtFkm8jhSoMukjfup7hC3yMd0IQ0wjke4g/ictjgY1k=;
        b=FiWimLIggWCtW6DX4orT4ED/La7MEHxZDpkyPuxDH5SySMfWDyIEz8+vJWRGLF9Lv+
         qa9P/GqBiba0sYjmlM7JmRwYWH6D4M84diaXzvJA6giNrlv2A9y8hU/kGQ9xRQWosq1e
         zpQ2CDnXZJm7xi1RhxiRm+0Q/22xVqdcK47bm4uN7m4l2oi1Vkiwp0UItRrNO8Bvvb7A
         ic6v2pnhf8i7ADwldAGUXVJaXSmDaCNDWpgaJHKsEj1rFPqcE7EBXFEah/QE7vGcyzoN
         8kC3xPBCAPNE2gorKjtpzTfUfP1OKLhMPW5h0eSxAzYFIaxGzR6FKkaIfo2EBDFHQOam
         K7Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722868721; x=1723473521;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xtFkm8jhSoMukjfup7hC3yMd0IQ0wjke4g/ictjgY1k=;
        b=Lh20HUyofzXxIqtUX1e8w1iHmQh6PtxK/ek3J9jzzw8357WKAInZH4IS+JNE8AYZt1
         RoZ/5xgMrWA2QmJ+UYQEYkHGpSB8CJZz/5Rh2PPTtKYCQv9dKnZ5SUiexjv2TPeE0yU1
         MxSc6dhF+XcRcMirYAXecF5qFQNK9RqIwAb2qSUD1BYxI56quiIkD/2lyuSlu42EVd7F
         UgzllW7kRx1boWYcjrerMkhNzT7avPaxi6jgfXb/GqzIM9Y81MPd6sReU0LiieNiucGh
         7W22wohzf4o6YOJN/pHOgODwv4zJ0mmF82jvnNvqemxuzFelqceMCsEA1+cctg4Kdv7N
         yxUA==
X-Forwarded-Encrypted: i=1; AJvYcCWjnNf225kkK5gNJP3oP319S+EerolacVS83YtRP1avdwSlMR2+cfmL3nFxX08gsT8W7JaUOAHADBTyY9SQGrak5X96LHiGExEG9P4=
X-Gm-Message-State: AOJu0Yw+CDl5uX6NasMwiJCysyfivoGdvxvHuc590dYPClt0EubUQ2Wf
	ux8lzfirzml066Gp/osv3vv3WoVTplombXHO+g7CYjlRrnZLWdoZ
X-Google-Smtp-Source: AGHT+IEcRrODd3e2+ZgsCOYbZBXolvi0m1iD+53nuYfpx7XwZEbmjcCN66YQM01bXl/5Htx+wkfU5A==
X-Received: by 2002:a50:eac1:0:b0:5a2:97d7:c728 with SMTP id 4fb4d7f45d1cf-5b7f0ccf807mr10056082a12.0.1722868720931;
        Mon, 05 Aug 2024 07:38:40 -0700 (PDT)
Received: from vaio ([91.142.65.210])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5b839c2c939sm4963622a12.33.2024.08.05.07.38.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Aug 2024 07:38:40 -0700 (PDT)
Message-ID: <34a3bd84065357c7ab6e8a55c6ec34f5267edad6.camel@gmail.com>
From: Stefano Manni <stefano.manni@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Date: Mon, 05 Aug 2024 16:38:39 +0200
In-Reply-To: <98259e53-5bdd-4e6f-a0c9-1c0d2a11e85b@pengutronix.de>
References: <3f5eb45e38041713fb983ec00bcdf830fb86cb11.camel@gmail.com>
	 <98259e53-5bdd-4e6f-a0c9-1c0d2a11e85b@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_073843_486945_45B6FDD3 
X-CRM114-Status: UNSURE (   8.75  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: eth frame error on imx6ul
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Ahmad

On Mon, 2024-08-05 at 15:54 +0200, Ahmad Fatoum wrote:
> 
> Do you have TFTP or something running while seeing these errors,
> or when do they pop up?

They pop up unconditionally just after ifup. If I run tcpdump on the
same LAN I see a lot of multicast/broadcast frames and probably the
error comes out on the reception of them. Also because I figured out
from fec_imx.h that 0x00000886 means:

#define FEC_RBD_LAST		0x0800	/**< Receive BD status: Buffer
is last in frame (useless here!) */
#define FEC_RBD_BC		0x0080	/**< Receive BD status: The
received frame is broadcast frame */
#define FEC_RBD_CR		0x0004	/**< Receive BD status: CRC
error */
#define FEC_RBD_OV		0x0002	/**< Receive BD status: Receive
FIFO overrun */

Best,
Stefano



