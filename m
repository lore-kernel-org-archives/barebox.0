Delivery-date: Fri, 28 May 2021 11:31:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lmYqC-0004iQ-Qn
	for lore@lore.pengutronix.de; Fri, 28 May 2021 11:31:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lmYqB-0000PA-CI
	for lore@pengutronix.de; Fri, 28 May 2021 11:31:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dVnhhq40HfkVLfwhoy99/HRFOr9868XJpdn/LKwGpvI=; b=Sa3DuvuPyvKTgp
	wucysDCBnlqZJG4nupZz8NA/8BnLQdDeCqH/AADXha0rVXlytTQh9TQydjfeiNZy84zJmKkAmPVoR
	MMnGBhuuqHxAKqOwabQX05rqgsndhNREu4TBdZaTkhu0aLrOeotAIymio3kLXV8wqydzevzDpNKRs
	u4RMg143RxH/grtxPQhTnlV9JvoQHUaNl0zjx/f/m1Cnzy/6Ggy8ElmsS4zvcJrKyICOCCoaQWzu+
	ql2kFWZslZJJ8/1b/V7K+Tr00jI3Bp7wl8q5p0FuvydH02lTDFj7T5AzIZ44bpzdTtWZL3+SEx52h
	BgY6U66pwF4mrhVRiiew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmYod-00DuWx-58; Fri, 28 May 2021 09:30:03 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmYoW-00DuTS-0o
 for barebox@lists.infradead.org; Fri, 28 May 2021 09:29:57 +0000
Received: by mail-lj1-x234.google.com with SMTP id 131so4434072ljj.3
 for <barebox@lists.infradead.org>; Fri, 28 May 2021 02:29:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4v4B5/v6JO5ICO+Yb1PqVFuniVHlQ93oHRdrdpaU9/s=;
 b=Yojt04MPvepQTt0V1A8BkM7An5eqG9Zh44Nwk7n9+5kATWR7izkbb76o58MTBAjB0v
 nQzTQrSxXK+o2ta7D4vvXzKcOOSVywtSCKU9GX+nHD3jMAXVn/lilBa9E9TRttFryjQh
 UdOl+gRMW7FQSznGbiMuxHA8lDvnRveBP+VIeCVddpq54DB6RdHotPBhAC/sqmeFux7F
 /Ao+joRCfmeIgaeg+o6oRhvkbFDPK51pHbjlAsn0WDL1B+/Wlj/uId8OlWA/tNJVj9Vt
 Y2AqR0Ekc4Ws5GJQapreFv1yB1AEkDLYvbUyJCD87f74m3T7H7T4GGEXS7JAa8EW40rh
 WI5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4v4B5/v6JO5ICO+Yb1PqVFuniVHlQ93oHRdrdpaU9/s=;
 b=QKvEKdG2RRj6fOjVfyxBTrDdjQJBgzfFdfv4uArxFqIk/Ew3OezygBIo1MDDDXO9nH
 gvII383MqSN60sSnRLwU8VQp7P3f2XbynR45LvPe5NTwuQ8tJjj3x0CpT6GaL7mVTWSC
 wYxOnxT7KRiyGyFlTFl92oQ/g+XkWlfbc0ponksrXRt5UBm1p+7XGSPdL5zGG3+nF04i
 8dNHz8/96kZVC+YuAZnT8rNftPtgaoKVpkF7cIER/ziBpIvjcKBt/yTYERiBUzAWm4It
 h/IVmQsGp5fIxJLNcu7NjlU/Xt2i0G0hwhdqDdgE43PBNNZ71q4NLHRbOUmGO5KLA0BU
 tFOA==
X-Gm-Message-State: AOAM531KEcG2msDHNMTJ2yC4iC4ZdQ+InHecXRac21gKBBELH1se/Dlz
 cgqSBvNYSuoAdmbn2Z6RF4E=
X-Google-Smtp-Source: ABdhPJyG5d5GbMIH/LCjInJKWJvEue6rgiJaZwqcjRBeXIvozXGfc48puvwqP6/oB+usrZhFvAyHTA==
X-Received: by 2002:a05:651c:38d:: with SMTP id
 e13mr5847424ljp.226.1622194193316; 
 Fri, 28 May 2021 02:29:53 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id v30sm426571lfq.102.2021.05.28.02.29.52
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 28 May 2021 02:29:52 -0700 (PDT)
Date: Fri, 28 May 2021 12:29:51 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Gwenhael Goavec-Merou <gwenj@trabucayre.com>, Sascha Hauer
 <sha@pengutronix.de>
Cc: barebox@lists.infradead.org, Gwenhael Goavec-Merou
 <gwenhael.goavec-merou@trabucayre.com>
Message-Id: <20210528122951.1c0a7b928097c984f500bab5@gmail.com>
In-Reply-To: <20210527193600.20879-1-gwenj@trabucayre.com>
References: <20210527193600.20879-1-gwenj@trabucayre.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210528_022956_126158_8ADAECE4 
X-CRM114-Status: GOOD (  20.51  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: SoCFPGA: add Terasic DE10-Nano board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, 27 May 2021 21:36:00 +0200
Gwenhael Goavec-Merou <gwenj@trabucayre.com> wrote:

> From: Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>
> =

> The Terasic DE10-Nano board is based on CycloneV SoCFPGA (5CSEBA6) with
> =

> What has been tested to work:
> - SD card
> - Gigabit network

What is the status of FPGA bitstream loading?

...

> diff --git a/arch/arm/boards/terasic-de10-nano/iocsr_config_cyclone5.c b/=
arch/arm/boards/terasic-de10-nano/iocsr_config_cyclone5.c
> new file mode 100644
> index 000000000..c1291dea4
> --- /dev/null
> +++ b/arch/arm/boards/terasic-de10-nano/iocsr_config_cyclone5.c
> @@ -0,0 +1,678 @@
> +/* GENERATED FILE - DO NOT EDIT */
> +/*
> + * Copyright Altera Corporation (C) 2012-2014. All rights reserved
> + *
> + * SPDX-License-Identifier:    BSD-3-Clause

To: Sascha
Can we add BSD-3-Clause-licensed file into barebox?

...

> diff --git a/arch/arm/dts/socfpga_cyclone5_de10_nano.dts b/arch/arm/dts/s=
ocfpga_cyclone5_de10_nano.dts
> new file mode 100644
> index 000000000..6965e3820
> --- /dev/null
> +++ b/arch/arm/dts/socfpga_cyclone5_de10_nano.dts
> @@ -0,0 +1,34 @@
> +/*
> + *  Copyright (C) 2021 Gwenhael Goavec-Merou <gwenhael.goavec-merou@trab=
ucayre.com>
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License as published by
> + * the Free Software Foundation; either version 2 of the License, or
> + * (at your option) any later version.

Just use SPDX-License-Identifier here.

> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program.  If not, see <http://www.gnu.org/licenses/>.
> + */
> +

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

