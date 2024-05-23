Delivery-date: Thu, 23 May 2024 18:52:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sABfc-00FOQp-2C
	for lore@lore.pengutronix.de;
	Thu, 23 May 2024 18:52:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sABfc-0005Kq-4M
	for lore@pengutronix.de; Thu, 23 May 2024 18:52:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:Subject:
	Message-ID:Date:From:MIME-Version:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=iKCEA4n1COaxHFdM2ATUwD75NPR3xc+QWL1VzAXequA=; b=UIL3LX4vDUkL6HHe8M+f+QPyhy
	rm60gLyZ4PuqNK1Q7NZqypKoBQAKTPQRG6j6zyvV84hgccEKIi84Z0iEeZwxavdzTyJa9bpQXobho
	diHE4BufZa4MMI1vBQGsX7owfhJiIyKbR7iHvK4LAwZyZA2ALsN22OHTTuG49TUCdElhC+e2Z/g68
	Uo6EIdpkLmjy3aR3xJDWeJxCogGZ1YPrvjEzJDyWp9SLduRZ7AHm8V48Bbkp7PC8epiQR5WIvc1rk
	1Re+lvsplTRX9NpDeendaFA4NlRPC1AhYTuCj7G6GDAVxhKBVe4nqkyF7rTjb9jyHSTjraYiHqh8D
	45jH6Jsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sABex-00000006p2R-1PCh;
	Thu, 23 May 2024 16:51:19 +0000
Received: from mail-qk1-x72b.google.com ([2607:f8b0:4864:20::72b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sABet-00000006p20-2rLI
	for barebox@lists.infradead.org;
	Thu, 23 May 2024 16:51:17 +0000
Received: by mail-qk1-x72b.google.com with SMTP id af79cd13be357-7948b50225bso200761285a.3
        for <barebox@lists.infradead.org>; Thu, 23 May 2024 09:51:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716483074; x=1717087874; darn=lists.infradead.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=iKCEA4n1COaxHFdM2ATUwD75NPR3xc+QWL1VzAXequA=;
        b=RD0TRQUSqS1R0WtmOt5SAh7oBwBW7zF9KxdqGanvT83TqqDX61cUILJeH/8N0E56QM
         gOQ19QPkVQDRoZZ31D8EujIEhUde67elbrV3adS5JHVcsU5YbFVVlcTVJE3/f3l4kptR
         OTyEx1xdLKbkb6fdFZDQDoyfYYd0OBn5jW7oeByHNOnQu39Rd+p1k1R2lR8WdwiZKfvM
         s93yxbzXA5MdSjdIPKdppZpj07QcIEVkCc5z+J0QlOfr72hQ6RyjYG0EMiohfj/99ImI
         d7JE7NWZ4+q30QkP53S20scdXx7cLJUcdYM5MacsUoanr+Ovo5DdqkAHv7UTQiG73TaL
         G3OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716483074; x=1717087874;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iKCEA4n1COaxHFdM2ATUwD75NPR3xc+QWL1VzAXequA=;
        b=VWIqrOUN+C8AxUgiW/NqXefeAQVXK1X+Ysx8BI+2c91Uiybez4KwSQCHtk4zg+bQa+
         OAWT1YW0cyibZ6dvlpJtz6Ypkhz7EMSSdIWiBNmdekc3NjnxxLntJmK/K5pi9LQSR1kT
         KoTxeALGn3rsJNL+OlM9OX25J/QrBzrbqzqSHo1S0cjHrPQmF6XveLJNOMqjKUzOXHuy
         EVaJFQl5oV31dZWZ1zaTJHZBvrAYRGsfmmXLINSFuqZZdSP8xAhrG8v25T32sAiEzCSa
         1U4f0v43rLVH93JPfM7tJhtcZ1NpGq/z4NB6qjv2xrzGA/TDPn+0QONIRonvqJkuRY0T
         P2Kg==
X-Gm-Message-State: AOJu0Yx+OjBkBSFGa7eXBVJvBNlRf4V3OKf+TK/mmdUDwQr6srPMzbCC
	wPFcxhTA5HomgVn5/cokEcJKwFH+btghfu5bTxIxDtTMDIGQmulZlDvnxpFI+fHdc4NkxCaPpXs
	K5/HvGVbYHxQ3X06DRxxP0Dj6WblLsGfF
X-Google-Smtp-Source: AGHT+IFJ1SntEEPXxmea8ZgINaNGYZdnt2qKA7puGLZrwUvDuKWBsMhKxj6IGmdWoWzWwwzYOoTeKMq2fmiqJdDS2GQ=
X-Received: by 2002:ae9:c116:0:b0:792:b254:640f with SMTP id
 af79cd13be357-794994b18d8mr566624185a.57.1716483073925; Thu, 23 May 2024
 09:51:13 -0700 (PDT)
MIME-Version: 1.0
From: jianqiang wang <wjq.sec@gmail.com>
Date: Thu, 23 May 2024 18:51:01 +0200
Message-ID: <CAMn3X6NejkLSeyFvJ7Z-0APaUHK8eTWRgFKvbft3SLJp4nO1YQ@mail.gmail.com>
To: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240523_095115_745286_49E9E4F3 
X-CRM114-Status: UNSURE (   7.57  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Heap overflow vulnerabilities in network implementation of barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Dear Barebox devlopers,

I found several heap overflow vulnerabilities in Barebox.

The Barebox implementation assumes that the network packet received is
less than PKTSIZE, that is 1536 bytes. For example, the /net/net.c
file ping_reply function assumes that the packet received is 1536
bytes and allocates a 1536 bytes buffer then copies the packet data
into the buffer.

However, in the driver layer, it lacks a proper check of the packet length.
For example, in drivers/net/cs8900.c cs8900_probe function, it
allocates a PKTSIZE buffer and assigns it to rx_buf. In cs8900_recv
function, the length is read from the device register:

len = readw(priv->regs + CS8900_RTDATA0);

After that, the data is read from the register in a loop without a
boundary check.
The same vulnerability happens to the following drivers:

drivers/net/ks8851_mll.c function ks8851_rx_frame, it only and the
packet length with RXFHBCR_CNT_MASK (4095 bytes,) which is not
consistent with the upper layer length check.

drivers/net/liteeth.c function liteeth_eth_rx, It checks if the length
is larger than 2048 which is inconsistent with the upper layer.

drivers/net/smc911x.c function smc911x_eth_rx. The packet length is
read from the register without checking.

It would be good to add a proper and consistent boundary check for
these drivers otherwise it will lead to potential heap overflow
vulnerability.

Best regards


