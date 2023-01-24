Delivery-date: Tue, 24 Jan 2023 19:37:55 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKOB9-000jbs-Q0
	for lore@lore.pengutronix.de; Tue, 24 Jan 2023 19:37:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKOB7-0005iH-5G
	for lore@pengutronix.de; Tue, 24 Jan 2023 19:37:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=od5mo3LtPWE3H88HiC97+majpzRh1XeYT14Ey1ChyOA=; b=Cv8e1mcdUInO9242+WPW223HEG
	b5LPy/p2Qq16TB7I7BR5iE6a24LeCBRrEI39IMcMUpZ32ZS4neeNjR/bJDSIFMhEfU9UmWijady74
	ySlF1kDa8dhztyhIRW4qEzgxmXHHh1B+ZaVd5xtKE0fBAD2rhA6gNUCFPJTuWImn0samMBntVcYsy
	gtWpPrzwlrrS26EN9YB6qKFRytmaWKmgs2Y0adi/RuQ56tephnXMapI1r2vGEQioWTr8qwvXTUvpo
	qqFu3r88mSRlz9+HMGcvPhQw2pF7+zNN2QnuTgj0xH6qF+VRvsWEZIwCFqibV59vOl1/v/mKChbe/
	zYEtc6Jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKO9n-004xUf-2e; Tue, 24 Jan 2023 18:36:31 +0000
Received: from out0.migadu.com ([94.23.1.103])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKO9h-004xU9-On
	for barebox@lists.infradead.org; Tue, 24 Jan 2023 18:36:28 +0000
Date: Wed, 25 Jan 2023 05:35:53 +1100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1674585382;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=od5mo3LtPWE3H88HiC97+majpzRh1XeYT14Ey1ChyOA=;
	b=CauAzvPvx/q8rAIwJ7t4Aygise+kSrdENmCCmgxZAYblgQtZR5D0ke3F0xcWDGzDeQYebD
	4OtAPzUlrO00aSU81p2PNJDwmpl4rZj8sVKojDiejnXWlqgadA4XQl2IEZnQalRnRtqIIx
	qaKuSAh7mT42kWZ5AmM4EKNLPeAgMQcDfdvKCSQJXMrjPfKAatSBo4ppUjcKuSyzOCxEYV
	bvbhxpKKIfmlLnqUwbNWFhiGtZ4Dat+XuRhw1yoahIb5lysFmurX/lz5zJkoIcwD+wzzuJ
	OI32cKoBL8dAfi9TmgTxGYSx/CSOErbiC6gTyTUr7rFtXwBy/ZXfF3FdkuRVaQ==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: John Watts <contact@jookia.org>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Y9AlCQieCBIEOjs5@novena-choice-citizen>
References: <20230122175141.119834-1-contact@jookia.org>
 <20230122175141.119834-5-contact@jookia.org>
 <20230123093305.GS24755@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230123093305.GS24755@pengutronix.de>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230124_103627_066001_7BCEA3AB 
X-CRM114-Status: GOOD (  11.93  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/5] ARM: novena: Read Ethernet MAC address from EEPROM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jan 23, 2023 at 10:33:05AM +0100, Sascha Hauer wrote:
> And here is the point where you have to request that the EEPROM is
> actually availabe to support the deep probe mechanism. Before reading
> the EEPROM add a call to:
> 
> 	of_device_ensure_probed_by_alias("eeprom0");
> 
> Nowadays the read-MAC-address-from-EEPROM thingy would likely be done
> using nvmem cells which would boil this code down to device tree changes
> only. If you're feeling brave you could change this, I won't insist on
> it though.
> 
> Sascha

Hey Sascha,

I did some refactoring today based on your suggestions and now have this code:

        rc = of_device_ensure_probed_by_alias("eeprom0");

        if (rc < 0) {
                pr_err("Unable to probe Novena EEPROM: %s\n", strerror(-rc));
                return NULL;
        }

        rc = read_file_2("/dev/eeprom0", &read, &eeprom, max);

This gets me this bootup sequence:

  of_platform_device_create: register device 21a8000.i2c@21a8000.of, io=0x021a8000
  register_device: 21a8000.i2c@21a8000.of
          probe-> 21a8000.i2c@21a8000.of
  imx-iomuxv3 20e0000.pinctrl@20e0000.of: set state: /soc/bus@2000000/pinctrl@20e0000/i2c3grp-novena
  __request_region ok: 0x021a8000:0x021abfff flags=0x0
  of_get_named_gpio_flags: cannot parse sda-gpios property: -2
  of_get_named_gpio_flags: cannot parse scl-gpios property: -2
  <NULL>: <i2c_fsl_set_clk> I2C_CLK=66000000, REQ DIV=660
  <NULL>: <i2c_fsl_set_clk> IFDR[IC]=0x39, REAL DIV=768
  register_device: i2c0
  register_device: es83280
  es83280: registered on bus 0, chip->addr 0x11
  register_device: 24c5120
              probe-> 24c5120
  of_get_named_gpio_flags: cannot parse wp-gpios property: -2
  at24 24c5120: Registering nvmem device eeprom0
  register_device: eeprom00
  at24 24c5120: registered on bus 0, chip->addr 0x56
  eeprom00: read ofs: 0x00000000 count: 0x00000014
  i2c0: master_xfer[0] W, addr=0x56, len=2
  i2c0: master_xfer[1] R, addr=0x56, len=20
  i2c0: timeout waiting for status set 0x20, cur status: 0x93
  at24 24c5120: read 20@0 --> -95 (1046280961)
  Unable to read Novena EEPROM: Connection timed out

After the shell boots I'm able to read /dev/eeprom0 just fine.

John.


