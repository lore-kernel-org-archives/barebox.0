Delivery-date: Wed, 05 May 2021 11:42:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leE3G-0007Ww-07
	for lore@lore.pengutronix.de; Wed, 05 May 2021 11:42:42 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leE3F-00014w-49
	for lore@pengutronix.de; Wed, 05 May 2021 11:42:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Message-ID:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2MxrrCsFdn5uHiDJYoWEiqcq99YZxWukg2cn+vCaxX0=; b=YcOijobF+23lEjZIktZsW8qoG
	DpS9gHHqrKa6tyo1IrUp1hHFwUl0CwDFQTxrdeBIGJU9igL+5kwnPT1ilV9TC7q3t7+fbItX9vxRW
	pZ6yc0Mbz9ujHR75GQ/5lRGnamEzRTRS8xSYRtcB6ZUDjaeRqfaMHhtP1suAhHtd4PoDbB1o1WHSw
	ktdjLcGpB8H5OzjbugLHAaL1mSQkVa2PPXCh4Bt3qc/Qoj1aYNzeZ68UZiEX+jk9vEAYVpRH7OxgA
	FVEIqyD7Il394vYtIe6hccAs6v8Ba65mNiMgWFOX8JYH9Z9TSATB3FWLSUjGftDeE5IhmQTQhLsRr
	qYsAaEV8Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leE1v-000kZj-E0; Wed, 05 May 2021 09:41:19 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leE1F-000kI2-0P
 for barebox@desiato.infradead.org; Wed, 05 May 2021 09:40:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=MIME-Version:
 Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
 :Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description;
 bh=boc3zfcyJAk6Q3WVt/98UYvXE/nu0+zRZx6VkOHgF5U=; b=4+RkMBslo+hJ0CINQpYL3SeioH
 SOFMc5kLUIfOONElnBqTWiXImDRHAyCwqcmXKp2+S8keVOr/ilFMMkvy8CiPl/i/hQY4M3ksOjEdN
 4I4btWvmDXOjVtyq2eDk47ME5sbcuYrI2W0YluG0BYvsni0iNQEcNa+hAsCQEh3ZZtwJBqjhhTEIl
 M3B8Ay9Ebxp63ppanCfR+LDjqrl9qvIYdKREBEMAR+0fDjYo17yqcXwQPW3a8rHsGSL4VaL/D1ZvB
 rLlu45PCddsIPRfF/7q5cfF5xRbGaeMiHhzCb8aeyyZGuV6uJy6XjbUrA7SnTAyQYBh+pbXAEzHOk
 tfAHhs1w==;
Received: from mail-oln040092074051.outbound.protection.outlook.com
 ([40.92.74.51] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leE1C-004cVU-1I
 for barebox@lists.infradead.org; Wed, 05 May 2021 09:40:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dtDPO4312OL4V5aPUD5CpJpT6nhikKAgoPcCdwwvom9SBFsAqG6Rdt1cQlVFI0f6JbG2CujF4POd6gnJ8i9qQuTKxnhUEpdZhlJ0ExvelU1vwh8TMy9U8jcsO5qUMBeU3n7+gHq9UiPBjftlIFuUiVhEz24+UB/RCn7vjeNiKeFc5kc989MQRDL7ngEAJAAcR/AdzmXuaFXQQhVYHWUkTypbNIzoAphYXcSgHO/2kcr6OyzheLdixJQcHq8da6NMnenwXd3PZd4AXJwH/77qObW8CRqU9eaGSgCPu/MqLNpmOVVRlQ8qpR4fjnvZc8QCzYGmTv1JnC//irUSu4JYJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=boc3zfcyJAk6Q3WVt/98UYvXE/nu0+zRZx6VkOHgF5U=;
 b=Nu1jV6EABshyqe9CXOP8DzLXq/EZM1whdaho22uBJeCKDoevrn/g1N6Yr4PWcBMlIozrV/dQvA7/EkC/K8iGmUIQszAAKAr0gQEaP1HHH4Ug43+m9NrBoIdTK4eqatyc+0Sz/h42MLkuNElzCxb5u+ve9zVebViXlv7uuwN785arLSMgt0PJbXJOPBJn3yNhVJcMFCIivHecmMRzkN/Ptz33BU7ipkl3f3MbW+IKthDR5IBR4Qaff1SxpClwmTs0h1wddf3GkQEqA//HrHn3/zla7FoDDEXXIsWYAZOCZVpGuDYO76jEclfJSepLLRDdPFTWeDo4U3qzIbQU7IQeWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=boc3zfcyJAk6Q3WVt/98UYvXE/nu0+zRZx6VkOHgF5U=;
 b=kr6WjSI18OGRAY6AQC61TUJTl+pyBHm8HNAfpxEtXxW48GnDEZ5Yvj17WF+upQ3RkUbesFApHqWq2pzzH+YVMlWm63oOMFYk/dZrHLvYFEDL8+1fPwKCxZ6eusD4YLt+2yKHsQ3DcUQxyQGiLyCNtxiu4jAfaI4/phag+h4xwrhi7AhevsiVmxktxSW1dYCkitLOcXaJTxQd2msspD8dtNBmEtADQdPzibEUpH5zRoSbfMdlaRSF1pKNy9A+Srfq6gd9V9zCuMQh0GqNLKi4/aAQRfChg0upOK0f83VS7AVF60WHHPp9iSn9cm59ejG4zLXhTU7OUBqEGz3KhPkdPA==
Received: from HE1EUR04FT063.eop-eur04.prod.protection.outlook.com
 (2a01:111:e400:7e0d::45) by
 HE1EUR04HT210.eop-eur04.prod.protection.outlook.com (2a01:111:e400:7e0d::213)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4108.25; Wed, 5 May
 2021 09:40:29 +0000
Received: from AM9P192MB0870.EURP192.PROD.OUTLOOK.COM (2a01:111:e400:7e0d::4c)
 by HE1EUR04FT063.mail.protection.outlook.com
 (2a01:111:e400:7e0d::308) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4108.25 via Frontend
 Transport; Wed, 5 May 2021 09:40:29 +0000
Received: from AM9P192MB0870.EURP192.PROD.OUTLOOK.COM
 ([fe80::1dab:3ff6:d6f2:38d2]) by AM9P192MB0870.EURP192.PROD.OUTLOOK.COM
 ([fe80::1dab:3ff6:d6f2:38d2%3]) with mapi id 15.20.4108.025; Wed, 5 May 2021
 09:40:29 +0000
From: Michael Graichen <michael.graichen@hotmail.com>
To: Lucas Stach <l.stach@pengutronix.de>, barebox <barebox@lists.infradead.org>
Thread-Topic: [PATCH 1/1] Zynq: add support to chainload another barebox
Thread-Index: AQHXQAOLPEiHagXjDEKx2lGx8tbEcarUjbIAgAAVoNI=
Date: Wed, 5 May 2021 09:40:29 +0000
Message-ID: <AM9P192MB087024D17024B43EFE9CACAEAB599@AM9P192MB0870.EURP192.PROD.OUTLOOK.COM>
References: <AM9P192MB0870CBDAD8B3CC328A1C2D6CAB5B9@AM9P192MB0870.EURP192.PROD.OUTLOOK.COM>,
 <369badc3290605924915f46e445041dd8e3a0ff1.camel@pengutronix.de>
In-Reply-To: <369badc3290605924915f46e445041dd8e3a0ff1.camel@pengutronix.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:EF9DE28275FE841FCA6DBBBDB7F35F0E07D1B2C46566CE4D3D6F49AEED2F1F86;
 UpperCasedChecksum:4834FE553829BC8B173E218420E0B54C957FA03C8A5B431E9075A303E6A697A3;
 SizeAsReceived:7006; Count:44
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [1iEA+Ktg8owwvR/lSc71+YclHf5VK/Oz]
x-ms-publictraffictype: Email
x-incomingheadercount: 44
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: f7474173-f013-429b-2262-08d90fa9d21c
x-ms-traffictypediagnostic: HE1EUR04HT210:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +h4e0oN0iQTTTy8CpE/Q+UCWKu5OaBKuuzhlSoAurGrNITO+kBP73SQ3lhWuncJFZLCQNevmHghRdgsgwqHzFz3Er+Gkh3cMNSLYmrZB6dAYHr0ehHwqkvGrlvwNbvuAdujvST0myR351BVgN9+TZ+fIbtDYeLjrAHBwPV3mz5Aw+9nnTTW3HKFvG4kH4ddWNPegqjdefcC6cWGwwDLAwzDhcQURtwocAKp3cNysd9DtwzuEuNFdSmhGdbEj/JuFBNlIK+IIuSrx1CQDc8nTOEosfLdppc8cnMq0aVYVe0Had1LSGmxIaWNTSg3CeOuDBLkpwHfn2hn1OVLD4+fMOgM2MlPy6OiWMPNGrVJ9GRQF6iCpYAKORJYRwSP7ja9Cv04MKfsPAWd1xk+u5sKDQw==
x-ms-exchange-antispam-messagedata: WuL+6tgjHsfBqimcc04bTmbfZ/nqzb+gXcjuqE2mNoIcOpOAIIF1R6aYZYQNfUDXmhHXWUvIwcqWetoFR8vEOno25xMkRWMACp9Rr16XbryBAc8DH+pKyJY7VZIYTTZBKDZF0s0YUMRIZfqz62TIgQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: HE1EUR04FT063.eop-eur04.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: f7474173-f013-429b-2262-08d90fa9d21c
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 May 2021 09:40:29.7917 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1EUR04HT210
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210505_024034_309834_BB24E9FE 
X-CRM114-Status: GOOD (  17.20  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FORGED_HOTMAIL_RCVD2,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=no autolearn_force=no version=3.4.2
Subject: AW: [PATCH 1/1] Zynq: add support to chainload another barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hey Lucas,

> Seems you imported this patch from somewhere and it left some traces in
> the commit message?

yes, sorry, my local mirror. I will fix that.

> Also I don't understand what this change is supposed to be doing. You
> are building just another Barebox binary, with no real differences in
> the configuration. I would much prefer a proper 2-stage loading in the
> PBL, but that requires FAT support for the SDcard boot, which I didn't
> get around to take a look at yet.

Of course, one would need a seperate configuration file. I'm using "zynq_fsbl_defconfig" for the small one and "zynq_defconfig" for the bigger one for my own tests.
I'm currently booting from SDcard and i have not realised any problems with the FAT support so far. But with the arasan-sdhci driver when writing, see my patch below which fixes it for me but I haven't dived into the drivers very deeply yet.

best regards
Michael


 drivers/mci/arasan-sdhci.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
index 520bf30ff..669675369 100644
--- a/drivers/mci/arasan-sdhci.c
+++ b/drivers/mci/arasan-sdhci.c
@@ -265,7 +265,7 @@ static int arasan_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 	if (cmd->cmdidx != MMC_CMD_STOP_TRANSMISSION)
 		mask |= SDHCI_CMD_INHIBIT_DATA;
 
-	ret = wait_on_timeout(10 * MSECOND,
+	ret = wait_on_timeout(100 * MSECOND,
 			!(sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE) & mask));
 
 	if (ret) {
@@ -277,8 +277,6 @@ static int arasan_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, ~0);
 
 	mask = SDHCI_INT_CMD_COMPLETE;
-	if (data)
-		mask |= SDHCI_INT_DATA_AVAIL;
 
 	sdhci_set_cmd_xfer_mode(&host->sdhci, cmd, data, false, &command, &xfer);
 
-- 
2.25.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

