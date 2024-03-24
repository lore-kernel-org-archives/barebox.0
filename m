Delivery-date: Sun, 24 Mar 2024 21:19:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1roUJC-002pZs-20
	for lore@lore.pengutronix.de;
	Sun, 24 Mar 2024 21:19:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1roUJB-00056T-Sm
	for lore@pengutronix.de; Sun, 24 Mar 2024 21:19:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Mime-Version:References:In-Reply-To:Message-Id:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GhmtU1B549Hv+jguTewGaOeHHKJmEvft6srgqjEz4jM=; b=mAgv6Eo6sg0sYVbeQoEcRakMWs
	S2/6sI6BKVEUbnbqyHE50B+pY2zKDykH4iDOggfA5QCik9mhUiOOnAEN2yedkRcgraspOf1TGT9if
	cS0RGk6igxdQC2muEhYGscc52wcUXwZrjbEQ7S5LLhKmzHluG//rZNWq4WixKuYsm5UH6+J9PWDhc
	7t/yP/HVlCpwuK0DLXeNydaL2A4uxhb1ErswDPaPipv7TCaZh6TPbczs6er120e3el8FBhYexLWpt
	NTRa7tCbaIrc7zXaJeYQr13W/L6tjVtHpQojaXXOKbbm8oYOwXS4R97OaoJOtTJ4dVXpambscN32x
	54/SJO0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roUIZ-0000000DO5b-3vd0;
	Sun, 24 Mar 2024 20:18:31 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roUIV-0000000DO4u-0aR6
	for barebox@lists.infradead.org;
	Sun, 24 Mar 2024 20:18:29 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-5101cd91017so4443285e87.2
        for <barebox@lists.infradead.org>; Sun, 24 Mar 2024 13:18:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711311505; x=1711916305; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GhmtU1B549Hv+jguTewGaOeHHKJmEvft6srgqjEz4jM=;
        b=LtJtLgbHhGvYIKtmxvzGxmDoqGXJ8boi5Gy8MeqPFxMV18wCa1wODy17PU9dW7zSnm
         na4lPzb50jUkKoD4S8Q5uGKikq9MAQBc9A6So/CSh5PA9UqKtOsmXfrmce2EUo8f9COo
         hGrOy4NxAEDAqZNWsQ7d4MmpzKOmjIpRs4STRXFO8baoKCwR2/gFo/nF1QuTRrkmUKn2
         1ZdaBXjBxMoDj/uz4HECC0Q4KJzd6VLzJfCL5SnrD0yUcgDwtqPPTWX51oqY2e24NMQY
         nwiTQhbeoBb3tJtb8eMeKsRQhdHq/ntZRcFGDHyfV5cnXBApSYSjdEQGf8QcXpn0+igK
         6MZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711311505; x=1711916305;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GhmtU1B549Hv+jguTewGaOeHHKJmEvft6srgqjEz4jM=;
        b=sxonkjxMS9X9cFu0NxBjG8J4Tl4lJGIbHY76wLWcBrmxZJz7RNsdef+CteVBdUbhMX
         5e40h/bXxJplMJvmNDOdJ7g4rFSwoW71Yu1bQV6Y2kvjwtcRM+Pq4WlffBhppcjcVgbB
         vu5CHb7UCFIUiR+Nn7xW+Z5+D8LmfjJYcNnAZN42u4oLDFgDmsIzcUikVueMuY7lNZkF
         LCRwLxl1kie3S2SZAFo1QbElDbq9bzWM81t/3U444a4Y3SPV4SvIafbLNn6XgQ3JCarc
         Lx5zStlfUaU4Pt/cZXorQjUIrHwp5W8lGBQjfIpnBwGMhZkG2VplwV6l1Ex1Ed558YRP
         6A8Q==
X-Gm-Message-State: AOJu0Yw1UnQPwQTJ7Nme94mW2lJiwHnMpUEcF6Lj7Sh0buQjmsA9VXwJ
	/EhfGChUgQQzZajIb1iMzUMlLkBX+kKCN0vpJ9lllpbp0jqN5BVUMTAILIiT
X-Google-Smtp-Source: AGHT+IFTxpvtcvHQuLTCnWPGd7QTPaVzScntJS5hwCtZiTd3ercj2ALdFlxmBzboqCEN27hjXs0Qjw==
X-Received: by 2002:a19:740f:0:b0:513:d884:7aac with SMTP id v15-20020a19740f000000b00513d8847aacmr3025931lfe.21.1711311504912;
        Sun, 24 Mar 2024 13:18:24 -0700 (PDT)
Received: from flare ([146.185.218.236])
        by smtp.gmail.com with ESMTPSA id l23-20020ac24317000000b005159e04ded2sm779880lfh.9.2024.03.24.13.18.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Mar 2024 13:18:24 -0700 (PDT)
Date: Sun, 24 Mar 2024 23:29:03 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-Id: <20240324232903.307b6595e7833cf49f8ee45c@gmail.com>
In-Reply-To: <20240322142441.982089-1-a.fatoum@pengutronix.de>
References: <20240322142441.982089-1-a.fatoum@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.33; i686-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240324_131827_645896_30EFD8F4 
X-CRM114-Status: GOOD (  24.69  )
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
X-Spam-Status: No, score=-6.4 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,NICE_REPLY_A,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,URIBL_SBL,URIBL_SBL_A
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Documentation: riscv: bring BeagleV Starlight docs
 up-to-date
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, 22 Mar 2024 15:24:41 +0100
Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:

Hi Ahmad!

> The BeagleV Starlight hasn't exited the Beta phase and the BeagleV name
> is now associated with the BeagleV-Ahead, which used a different SoC.
> 
> Note this in the section title and also adjust the build instruction to
> make them reproducible in 2024:
> 
>   - Given that the board is discontinued, it's not worthwhile to move
>     away from the vendor's OpenSBI fork, so pin the revision that was
>     used for initial bring-up
> 
>   - fence.i is no longer part of the default -march=rv64imafdc in
>     recent toolchains, therefore add it explicitly into the ISA string.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  Documentation/boards/riscv.rst | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/boards/riscv.rst b/Documentation/boards/riscv.rst
> index 92f663cfb9e6..ade1443c9704 100644
> --- a/Documentation/boards/riscv.rst
> +++ b/Documentation/boards/riscv.rst
> @@ -60,8 +60,8 @@ into the config file.
>  
>  See https://barebox.org/jsbarebox/?graphic=1 for a live example.
>  
> -BeagleV
> --------
> +BeagleV Starlight
> +-----------------
>  
>  barebox has second-stage support for the BeagleV Starlight::
>  
> @@ -73,11 +73,12 @@ to opensbi::
>  
>    git clone https://github.com/starfive-tech/opensbi
>    cd opensbi
> +  git checkout 2524b0ecd8684b42bc7a4c69794f40f11cbbe2a5
>    export ARCH=riscv
>    export PLATFORM=starfive/vic7100
>    export FW_PAYLOAD_PATH=$BAREBOX/build/images/barebox-beaglev-starlight.img
>  
> -  make ARCH=riscv
> +  make PLATFORM_RISCV_ISA=rv64imafdc_zifencei
>    ./fsz.sh ./build/platform/starfive/vic7100/firmware/fw_payload.bin fw_payload.bin.out
>    ls -l $OPENSBI/build/platform/starfive/vic7100/firmware/fw_payload.bin.out
>  
> -- 
> 2.39.2
> 

At the moment I have no BeagleV Starlight board at hand.
I can get it back for testing barebox in several days.

However here are my changes to the BeagleV Starlight barebox build process documentation:

--- a/Documentation/boards/riscv.rst
+++ b/Documentation/boards/riscv.rst
@@ -66,7 +66,7 @@ BeagleV Starlight
 barebox has second-stage support for the BeagleV Starlight::
 
   make ARCH=riscv rv64i_defconfig
-  make
+  make ARCH=riscv CROSS_COMPILE=riscv64-linux-gnu-
 
 Thie resulting ``./images/barebox-beaglev-starlight.img`` can be used as payload
 to opensbi::
@@ -75,21 +75,24 @@ to opensbi::
   cd opensbi
   git checkout 2524b0ecd8684b42bc7a4c69794f40f11cbbe2a5
   export ARCH=riscv
+  export CROSS_COMPILE=riscv64-linux-gnu-
   export PLATFORM=starfive/vic7100
-  export FW_PAYLOAD_PATH=$BAREBOX/build/images/barebox-beaglev-starlight.img
+  export FW_PAYLOAD_PATH=$(cd .. && pwd)/images/barebox-beaglev-starlight.img
 
   make PLATFORM_RISCV_ISA=rv64imafdc_zifencei
+  wget https://raw.githubusercontent.com/starfive-tech/freelight-u-sdk/JH7100_VisionFive/fsz.sh
+  chmod +x fsz.sh
   ./fsz.sh ./build/platform/starfive/vic7100/firmware/fw_payload.bin fw_payload.bin.out
-  ls -l $OPENSBI/build/platform/starfive/vic7100/firmware/fw_payload.bin.out
+  ls -l ./build/platform/starfive/vic7100/firmware/fw_payload.bin.out
 
-The resulting ``./platform/starfive/vic7100/firmware/fw_payload.bin.out`` can then
+The resulting ``./build/platform/starfive/vic7100/firmware/fw_payload.bin.out`` can then
 be flashed via Xmodem to the board::
 
   picocom -b 115200 /dev/ttyUSB0 --send-cmd "sx -vv" --receive-cmd "rx -vv"
   0:update uboot
   select the function: 0␤
   send file by xmodem
-  ^A^S./platform/starfive/vic7100/firmware/fw_payload.bin.out␤
+  ^A^S./build/platform/starfive/vic7100/firmware/fw_payload.bin.out␤
 
 After reset, barebox should then boot to shell and attempt booting kernel ``Image``
 and device tree ``jh7100-starlight.dtb`` from the first root partition with the same

-- 
Best regards,
  Antony Pavlov


