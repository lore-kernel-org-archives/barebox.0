Delivery-date: Tue, 17 Dec 2024 14:05:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tNXGg-009Ex0-0T
	for lore@lore.pengutronix.de;
	Tue, 17 Dec 2024 14:05:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tNXGg-00020c-2P
	for lore@pengutronix.de; Tue, 17 Dec 2024 14:05:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+R2zGJ+a5yb9HI4jZpBXB1rFq41OY40D0QHWkzE5rXY=; b=sxBhJJQIkfEYQBxTs3yn6selRE
	JrZD4AkxdZj0iV9/0VFXFKaptFAo71XKJGl2X8kUyZJ5uqD/mKCt/HlM9KYjK4CjmVnuAoSjVlpMX
	aaT24+Sl34FtfmCWdi5fGa0W2F55eMquKsV+dyw37DteAmM9pbfE/VWtZb8OmPZJSU75VsqZgDsVP
	O1dPI8g4mWJ7q9/p3073yBQQTk+PC/Yqr5Qx4F1F5h7DgyiWD3rz7gFxmT9NcNrVHZLv+Bxs8EkQH
	DhR3Y99+JzkT6MizHBJFLnYvTrHumIZ81zCCk9wGP0qgbbQI1A8xY1NGH2fx2dfz133QUJqRkYSKh
	IOC+V66g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNXG4-0000000DV04-3Uau;
	Tue, 17 Dec 2024 13:05:04 +0000
Received: from mail-pg1-x52b.google.com ([2607:f8b0:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNXG2-0000000DUyr-0uH6
	for barebox@lists.infradead.org;
	Tue, 17 Dec 2024 13:05:03 +0000
Received: by mail-pg1-x52b.google.com with SMTP id 41be03b00d2f7-7fd4c0220bbso4949099a12.0
        for <barebox@lists.infradead.org>; Tue, 17 Dec 2024 05:05:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734440700; x=1735045500; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+R2zGJ+a5yb9HI4jZpBXB1rFq41OY40D0QHWkzE5rXY=;
        b=XtfRpgP902WtWFp/GunchT2b+ayoZBch3JPUN9khpiZN5mNCwk/KkYOFo2kS2+QwQM
         SPrbrdqq8MhyjTnIgEBwm5X1QJAsP3v7WL9DtMAmx2VAAPpOLnBqRNDVcOJWRff/5bAa
         eqvQU9hsiWvQLL8Zwn9OzXhWchzCFvBsNh120Dd56W3lsLY+Lnnu6nO8QEwbfU4pUlrD
         9sYdpY9IUOYAlQAWm/l/JXVP2tmW9+znVlbrMi5jyO990Q27jRey4VYLW5JrrioMXKTE
         HQoJG0hikK79I+C0Yj+5uxDIseq64uCvUMQf4k3mk6HK+m4hTnbmQhs0ztNq618Lt4k4
         LnRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734440700; x=1735045500;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+R2zGJ+a5yb9HI4jZpBXB1rFq41OY40D0QHWkzE5rXY=;
        b=ThZ853XleG078fr3vH0NLtVv8ZYYvrHaTKRftdR98C2jt2UBDMSYASJYqoLntZ+E4e
         J0XZEdoCP4EBMHcWN0s7IdyDkLudkyFKlF/e4OvexBC5z6SRZhVp8ZzSrnROQdlPDipo
         y9Y2waAIxETnYu7Pc+X+JUW1nG64fYIw83V9Gruxf/rYXtFg/LCUdgC4YH7xAxFiZhfj
         T0A5gygpQzwAEPvPiURP0HuF/Ykdbdo6t3nZim9hfNztsZkZkBQHfyYEHsHtT/NwQ5Ks
         FKeGgFUipIijLAfchc4iJ3lR0M/CZrPkuTJXCbZREak23Hgg4RhQiT+UVBtP1iL5h9Io
         d7sg==
X-Gm-Message-State: AOJu0YwPUZ57ivniaooh91f3ZHmdJlHhnGNnF6ecfb6Fq9di6djCJGSJ
	5uVsblAXuXFj4dHqzZtXcjl0Is0CPZGPwaVzy70yxkdH84DF3pK8CbYmdUzyC+vt9A5JKYlDfn5
	OC1hWT9xfllc0FuKwd9c+87lxGMk=
X-Gm-Gg: ASbGnct6Iyj8NngJGPFrNLZhTOrYb88b+CDri3KcfUm+IW7bN6TIavCQtK6xBu++czW
	DdoTCxZmVzmZ9On0aq4Y26+dPimlTDCMChxEjhb0=
X-Google-Smtp-Source: AGHT+IHSkbtWrWmhXy9f0narQ1bkP9z6KO9B8SheIKGfwWXUJUhHFhvto+yJ+6lbUkQfTH0/wYTri+h7VLc2YW4PpC4=
X-Received: by 2002:a17:90b:1d51:b0:2ee:c4f2:a76d with SMTP id
 98e67ed59e1d1-2f28fd6cd00mr20739758a91.21.1734440700368; Tue, 17 Dec 2024
 05:05:00 -0800 (PST)
MIME-Version: 1.0
References: <20241215095412.3756337-1-a.fatoum@pengutronix.de>
In-Reply-To: <20241215095412.3756337-1-a.fatoum@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue, 17 Dec 2024 16:04:48 +0300
Message-ID: <CAP1tNvRNW2Ua5CiQPYiwEpfqvrZ1EyYoF-Cu1BWDVpHq31beGA@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241217_050502_284444_FE8FAEAB 
X-CRM114-Status: GOOD (  12.22  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master 1/3] video: dw-hdmi: populate missing I2C adapter
 device node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

ERROR: i2c11: of_i2c: invalid reg on /hdmi@fe0a0000/ports
dwhdmi-rockchip fe0a0000.hdmi@fe0a0000.of: registered I2C bus driver
dwhdmi-rockchip fe0a0000.hdmi@fe0a0000.of: Detected HDMI TX controller
v2.11a with HDCP (DWC HDMI 2.0 TX PHY)
rockchip-vop2 fe040000.vop@fe040000.of: Registered fb0 on VP0, window
Smart0-win0, type primary
rockchip-vop2 fe040000.vop@fe040000.of: Registered fb0_0 on VP0,
window Esmart1-win0, type overlay
NOTICE: rockchip-vop2 fe040000.vop@fe040000.of: no modes found on vp1
rockchip-vop2 fe040000.vop@fe040000.of: Registered fb1 on VP1, window
Smart1-win0, type primary
rockchip-vop2 fe040000.vop@fe040000.of: Registered fb1_0 on VP1,
window Esmart0-win0, type overlay
ERROR: i2c11: of_i2c: invalid reg on /hdmi@fe0a0000/ports

=D0=B2=D1=81, 15 =D0=B4=D0=B5=D0=BA. 2024=E2=80=AF=D0=B3. =D0=B2 12:54, Ahm=
ad Fatoum <a.fatoum@pengutronix.de>:
>
> By recording the correct device tree node, it's possible to use OF
> aliases for deterministic numbering of the I2C adapter.
>
> Fixes: aea9e8bac578 ("video: add dw-hdmi driver")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/video/dw-hdmi.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/video/dw-hdmi.c b/drivers/video/dw-hdmi.c
> index 73201836b7e5..cd5de17e9bd7 100644
> --- a/drivers/video/dw-hdmi.c
> +++ b/drivers/video/dw-hdmi.c
> @@ -433,6 +433,7 @@ static struct i2c_adapter *dw_hdmi_i2c_adapter(struct=
 dw_hdmi *hdmi)
>
>         adap =3D &i2c->adap;
>         adap->dev.parent =3D hdmi->dev;
> +       adap->dev.of_node =3D hdmi->dev->of_node;
>         adap->master_xfer =3D dw_hdmi_i2c_xfer;
>         adap->nr =3D -1;
>
> --
> 2.39.5
>
>


