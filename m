Delivery-date: Thu, 15 Feb 2024 14:02:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rabNX-007RWN-1p
	for lore@lore.pengutronix.de;
	Thu, 15 Feb 2024 14:02:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rabNU-0005SK-K4
	for lore@pengutronix.de; Thu, 15 Feb 2024 14:02:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:Subject:
	Message-ID:Date:From:MIME-Version:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/pL925Qhvfq2Fgl2HVLopS4h5gn88csZWaNAucLegDQ=; b=FFqECLSpQ8uGpNqn7LtQX41vWJ
	8KwXC4xoJxUBw+oKmi4eCk01esg1PXIEJYXo60dyHJx2lsHWy34yV8EFusn7yExM3ZlZFJThOvQc4
	t89IbxQl1srqa3cjbIfnBKu4We3ORjqk1V7inbOjA6CXvV35xnAj4RlCaWgGoUxoVe4RtiIEeHeE2
	eygBYiVNBqFgJMbfCzYKsY/Q5iPBxFv6O3BwWqo4shyzAlsTJitG+NeOOnoF95wDQflBo5ytlsR/J
	fVOZLasvhbglPmfZg0JCwmkFotHrH5WlqYrwSTfRsHky64B72N6+7hYQrATIv3MlNs80ixmMNSytI
	5WpPbbHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rabMi-0000000GJzd-46Pg;
	Thu, 15 Feb 2024 13:01:24 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rabMg-0000000GJyM-3yIT
	for barebox@lists.infradead.org;
	Thu, 15 Feb 2024 13:01:24 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-a3cf64f33b3so112154166b.3
        for <barebox@lists.infradead.org>; Thu, 15 Feb 2024 05:01:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708002080; x=1708606880; darn=lists.infradead.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=/pL925Qhvfq2Fgl2HVLopS4h5gn88csZWaNAucLegDQ=;
        b=gL1270s2Ke5xwdIJ6BGRJPKznpMrCG+cHdFDyCsUthqiys9+vwrOGGEoOQQJibMML8
         aZSb3631ZHDpxrPRKnwQD2P+UYBe8WM7I8u3xiiP3ueGRoqzDqdT+/Uoes33b2nD1oqH
         iEVyrJLjHAZxhHJiGCAMVtxLt8rVfuSxyGUm60QRzpbnUWkP5mEF8BAJ0EKjHzbKxwp5
         8QbHYH3mInrnTa+HXeYw3ccxW4apbN3J52EaEAw4bMamnNhD7YdgYStVyU54C2GoMi9a
         HTsSxy3mKb4IoQ7529f3qOwt7hh+3UoVwX1tK16OUvJFQlbwIiUpT+qthN/3sY9Kn5ni
         MSRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708002080; x=1708606880;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/pL925Qhvfq2Fgl2HVLopS4h5gn88csZWaNAucLegDQ=;
        b=cvxERp8SV2Sj+7xe7FCBYgEEoOdRT7TGhIE85eILUzVlNmp1i0noqvPgeGvY7Cp/b0
         ueNMzCk3Y8UKYGhs1m93C14pRDnmw3Ll/v0dt962Vha/DuksBAo+NStafa5JVjRDyrIy
         P6xWIF5phqzl/O/fMjaowkzHtNCDvkAQpXcO+TK4bb+ElcLSmqSpUVB58WwM6qrXq48l
         kcixk4eIfRWd5+mEp9TfI5Vurk+5l+A/zQxWMauD92VDdSYmMYqfQEsqFEtpEj/CbWkT
         ezfvfcwL6PBq1fuKSCm8JxG7n6GN/jkKstSSywoFu3WyzV2My72ah9NnCojJh5/ZgsEy
         +syQ==
X-Gm-Message-State: AOJu0Yxj0VgxEJNHrMRgjPYU+11DgYboZM8GicoP7QIpnOlHBTzWenf3
	IgF1Wn5f43I/g87Hba5tvoT4ask/4KYXAIwpXun9EeWAqWWbazx691IFosfg0jjMieHwVb9NjRl
	7gjVczCnTa9ZcTg3YryPC3d+9qsoqZeYKm9Y=
X-Google-Smtp-Source: AGHT+IHumX1uVUVmW41Fk+XCwl0NQ/ZQc42LKAErC9M5BPcKwL7amj8zJGL6LSW4DM9k9nKXOtzkb10aisqVoOHKPkI=
X-Received: by 2002:a17:906:b313:b0:a3d:b590:4415 with SMTP id
 n19-20020a170906b31300b00a3db5904415mr154613ejz.10.1708002080273; Thu, 15 Feb
 2024 05:01:20 -0800 (PST)
MIME-Version: 1.0
From: Lars Pedersen <lapeddk@gmail.com>
Date: Thu, 15 Feb 2024 14:01:09 +0100
Message-ID: <CAKd8=GtV4EtC5Bx+t=YOfLXEFKB_-1N=HbU4hfCaLK6Lw3YMhA@mail.gmail.com>
To: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240215_050123_010947_00730679 
X-CRM114-Status: UNSURE (   8.21  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: barebox environment raw partition on beaglebone black
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi.

I'm trying to create a barebox environment by using af emmc a raw
partition offset on the beaglebone black.

For testing I appended the following into am33x-boneblack.dts.

/ {
    chosen {
        environment {
            compatible = "barebox,environment";
            device-path = &environment_emmc;
        };
    };

    aliases {
        state = &state_emmc;
    };

    state_emmc: state {
        #address-cells = <1>;
        #size-cells = <1>;
        compatible = "barebox,state";
        magic = <0x4b414d31>;
        backend-type = "raw";
        backend = <&backend_state_emmc>;
        backend-stridesize = <0x200>;

        bootstate {
            #address-cells = <1>;
            #size-cells = <1>;

            system0 {
                #address-cells = <1>;
                #size-cells = <1>;

                remaining_attempts@0 {
                    reg = <0x0 0x4>;
                    type = "uint32";
                    default = <10>;
                };

                priority@4 {
                    reg = <0x4 0x4>;
                    type = "uint32";
                    default = <21>;
                };
            };

            system1 {
                #address-cells = <1>;
                #size-cells = <1>;

                remaining_attempts@8 {
                    reg = <0x8 0x4>;
                    type = "uint32";
                    default = <0>;
                };

                priority@c {
                    reg = <0xc 0x4>;
                    type = "uint32";
                    default = <20>;
                };
            };

            last_chosen@10 {
                reg = <0x10 0x4>;
                type = "uint32";
            };
        };
    };
};

/* eMMC */
&mmc2 {
    partitions {
        compatible = "fixed-partitions";
        #address-cells = <1>;
        #size-cells = <1>;

        environment_emmc: partition@100000 {
            label = "barebox-environment";
            reg = <0x100000 0x100000>;
        };

        backend_state_emmc: partition@200000 {
            label = "barebox-state";
            reg = <0x200000 0x100000>;
        };
    };
};

Afterwards I get the following console output:

-------------------------------------------------
barebox 2024.01.0 #1 2024-01-01T00:00:00+00:00

Board: TI AM335x BeagleBone black
detected 'BeagleBone Black'
cpsw-mdio 4a101000.mdio@1000.of: detected phy mask 0x1
mdio_bus: miibus0: probed
eth0: got preset MAC address: 18:2c:65:2a:81:1d
i2c-omap 44e0b000.i2c@0.of: bus 0 rev0.11 at 400 kHz
i2c-omap 4819c000.i2c@0.of: bus 1 rev0.11 at 100 kHz
omap-hsmmc 48060000.mmc@0.of: registered as mmc0
omap-hsmmc 481d8000.mmc@0.of: registered as mmc1
mmc1: detected MMC card version 5.0
mmc1: registered mmc1
state: New state registered 'state'
state state.of: Fresh state detected, continuing with defaults
omap_wdt 44e35000.wdt@0.of: OMAP Watchdog Timer Rev 0x01
netconsole: registered as netconsole-1
malloc space: 0x8fefe3c0 -> 0x9fdfc77f (size 255 MiB)
am335x-phy-driver 47401b00.usb-phy@1b00.of: am_usbphy 8fff21a4 enabled
am335x-phy-driver 47401300.usb-phy@1300.of: am_usbphy 8fff225c enabled
musb-hdrc: ConfigData=0xde (UTMI-8, dyn FIFOs, bulk combine, bulk
split, HB-ISO Rx, HB-ISO Tx, SoftConn)
musb-hdrc: MHDRC RTL version 2.0
musb-hdrc: setup fifo_mode 4
musb-hdrc: 28/31 max ep, 16384/16384 memory
musb-hdrc: ConfigData=0xde (UTMI-8, dyn FIFOs, bulk combine, bulk
split, HB-ISO Rx, HB-ISO Tx, SoftConn)
musb-hdrc: MHDRC RTL version 2.0
musb-hdrc: setup fifo_mode 4
musb-hdrc: 28/31 max ep, 16384/16384 memory
environment load /mnt/mmc1.0/barebox.env: No such file or directory
Maybe you have to create the partition.
changing USB current limit to 1300 mA... done

Hit m for menu or any to stop autoboot:    1
---------------------------------------------------

Why does it try to read the env on a partition on
/mnt/mmc1.0/barebox.env? Is it because barebox.bin also is read from
this partition?

Thanks.

/Lars


