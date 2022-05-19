Delivery-date: Thu, 19 May 2022 19:57:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nrkOr-002JaS-3n
	for lore@lore.pengutronix.de; Thu, 19 May 2022 19:57:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nrkOq-0005JC-03
	for lore@pengutronix.de; Thu, 19 May 2022 19:57:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kdW0ghCmdYQp04uxqOui1/551eNlrPtM6LzcKylRrCQ=; b=H+0py4bKt3vUdd
	6yIIDcpMtHIiWpttYeGS5x/74bge6G/L4rYfvhsf0jY8rB4G8GD+Ij1XCjW64bnTJ/FDV6dU252zK
	vcCclw4b1zydmRfBNoFbkDk3NSuwUoCGdaJaTzmqYiCbnXuXCTq6e5KzBw0XlBH2CN69Jw26UBYO6
	MnCXocUez+i69yhEMsmnWJEoEThpAIpNT+KvIdv7bebyH9yb4REquQ4veUletHMMfiz+UPrrc0pN6
	+H0Gvy8vpPTxPDFzzMZ/n8/xvNJcWkYaUw1aohgek+sBdDLqCJcXML8gUPpiwbdzx+wewDGJzXkhn
	W4+ZyA1hwqSO9POWi06Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nrkLp-008jGL-Vl; Thu, 19 May 2022 17:54:18 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nrkLk-008jEl-Mx
 for barebox@lists.infradead.org; Thu, 19 May 2022 17:54:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1652982844;
 bh=yaUTvg5LiIw3Oenq2fpNWbK4P6hYAzIuG0eUymDgNSE=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=BvB59YwFJYkffVxdwBEeIiXBGY2PIxPqv5RaXwt5C/xrYMfTsg9vWrsk9bUXOWA4v
 XmASgU5VkqmYTJ8otATIqK3sn24Soc5IXINA5oiaV+j9z7yxZneDb2TIuvY3PtU1aW
 So0tVlclyjI7PNqthyVxZ7Vh2xOriMVEYh7iAQMA=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.61.151.76] ([217.61.151.76]) by web-mail.gmx.net
 (3c-app-gmx-bs49.server.lan [172.19.170.102]) (via HTTP); Thu, 19 May 2022
 19:54:03 +0200
MIME-Version: 1.0
Message-ID: <trinity-ab5405c6-45c8-4689-b511-0b5b922dde8f-1652982843919@3c-app-gmx-bs49>
From: Frank Wunderlich <frank-w@public-files.de>
To: Sascha Hauer <sha@pengutronix.de>, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Date: Thu, 19 May 2022 19:54:03 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <20220519131019.GZ25578@pengutronix.de>
References: <1694C0B0-A962-420E-BA70-8061E8E9CA7F@public-files.de>
 <20220519115450.GV25578@pengutronix.de>
 <trinity-e8816284-959b-432a-bb6a-f33a6cd573df-1652964180567@3c-app-gmx-bs49>
 <e0e7cd6c-aa14-a09c-71d2-681842575398@pengutronix.de>
 <20220519131019.GZ25578@pengutronix.de>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:VktBDlehsTVidyVSo6nBwE3uZhd/gTF6eN5VL5MVYCzsxdx/V9Oh2WRAghm/IHatAssJy
 EuanEOKcmt3+vcABYrp64Mt/YmcNxfo/gAGfyMXtNC8Q/03IVD+9gzOFXTn/mDEEpdiCiNvQx5Gz
 PugXiF9J5PDUfOxKMsMCtANS0jXcImAXI8S/HpVyIveHu1ncoYZat8jmY2vOlpfng8JtrDY68VQx
 DGGi+xCzuwBFdaSKmehD0AeQe0Mx4jaDvu0QqcJo4WI2NfebvzJ1NqwazBW4LyhUb14aIttXiZGN
 jY=
X-UI-Out-Filterresults: notjunk:1;V03:K0:eP2ngiXebK0=:oOMzikxVuurwGUX30rEHUR
 QsncRK+8UdROUjAmbhPr2bnt0p0VrJA3gh3vvI46xAdmVGoWaPfj5EVD1MTQkPfLVDSBbZ7tQ
 6xhM4uxyaN/48UytEOSNLQAz/Ml1l+DiHm4R58HzArrTlJTU0g8ouiaGGtzQyf9aJOEazdU1R
 lZfCSHtaWVVFFRqdIOTNQQ8tVTMFYr6hhyavCCoBGAyKLMctORMKjhZTAc3sjWHmYKvjJ6KIL
 JK3fqUwUWTmpRoInusM9gvgwDNbfGBTiWMrQYdHSwVjP71hZRPyWge6ytC5nWKwWjl8D9Gq6w
 Vyyv6knX5A9+NJ74QJMTRyVeckn4FXGYgV98rLMekqZslKZrMTIS2FVW08cARkHTZ7uVCZYGw
 VBduqfpzNqUMiaJnzIRSafAu2bB1+minU+Vp3lD2w55aDAiU5aftTbyMZaTBY4RE402CCEwVb
 1D/3/49Hovr9O3yvZPCD8XpeEJvtNIRTY2c3rgKqbDh/ERABsSvGpbBh4OBtxcT88Q0+M7lh7
 yizV40hiL51XXGqWo+0xcqG6mLVygretZMrQp798QgXBVI+M2VybQne/iFGymU+inxYiG4nBK
 qsIVhS7qRiw7fJojeyxEcJofkj7KFxfWYV7SCyDKjLtO9Ps4saTffWNzIrJhOeytlTZbRQLWK
 Zc+JClSc/1ThKrPz86NA7PnwmQK/L7NLIAaoWkc3f5f571zhW2Fuq10Mwju5AVs5wBakwdH5Q
 3XH5fgZIxFTqhT0wIy9VIoYC11o0/o3TXFhC4aPbLEqUBxHsS8F4FIcnMXUI2Tf0CypbDdxyH
 j1Xw857
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220519_105413_247792_89D6633F 
X-CRM114-Status: UNSURE (   7.55  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Aw: Re:  Re: Driver load order
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi

> Gesendet: Donnerstag, 19. Mai 2022 um 15:10 Uhr
> Von: "Sascha Hauer" <sha@pengutronix.de>
>
> I gave it a test with your rk808 driver. It just works \o/
>
> regulator_get() triggers probing of the rk808 regulator driver and
> returns a valid regulator.

Added rk808 drivers to my and added basic Kconfig/Makefile entry for mfd driver.

chip-id of my pmic is read:

rk808 rk8090: chip id: 0x8090

looks like regulators are enabled during access from my iodomain driver :) except vccio4/5

rk_iodomain fdc20000.syscon@fdc20000:io-domains.of: DEBUG reg:pmuio1 (00000000404b0450) uV:3300000
rk_iodomain fdc20000.syscon@fdc20000:io-domains.of: DEBUG reg:pmuio2 (00000000404b0980) uV:3300000
rk_iodomain fdc20000.syscon@fdc20000:io-domains.of: DEBUG reg:vccio1 (00000000404b0eb0) uV:900000
rk_iodomain fdc20000.syscon@fdc20000:io-domains.of: DEBUG reg:vccio3 (000000004049c720) uV:3300000
rk_iodomain fdc20000.syscon@fdc20000:io-domains.of: DEBUG reg:vccio4 (000000004049cc50) uV:-22
rk_iodomain fdc20000.syscon@fdc20000:io-domains.of: DEBUG reg:vccio5 (000000004049a180) uV:-22
rk_iodomain fdc20000.syscon@fdc20000:io-domains.of: DEBUG reg:vccio6 (000000004049a6a8) uV:1800000
rk_iodomain fdc20000.syscon@fdc20000:io-domains.of: DEBUG reg:vccio7 (000000004049abd8) uV:-22

vccio 4/5 using regulator with name SWITCH_REG1, maybe this is not registered?

&pmu_io_domains {
    pmuio1-supply = <&vcc3v3_pmu>;
    pmuio2-supply = <&vcc3v3_pmu>;
    vccio1-supply = <&vccio_acodec>;
    vccio3-supply = <&vccio_sd>;
    vccio4-supply = <&vcc_3v3>;
    vccio5-supply = <&vcc_3v3>;
    vccio6-supply = <&vcc_1v8>;
    vccio7-supply = <&vcc_3v3>;
    status = "okay";
};

regards Frank

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

