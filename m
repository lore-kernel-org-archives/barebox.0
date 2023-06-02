Delivery-date: Fri, 02 Jun 2023 10:03:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4zl3-0071Us-TR
	for lore@lore.pengutronix.de; Fri, 02 Jun 2023 10:03:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4zl1-0003B2-3J
	for lore@pengutronix.de; Fri, 02 Jun 2023 10:03:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:In-Reply-To:References:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Md4G5/ycLb9ZZJiI7SMGG+UsTIFOfHvObteWfhPensc=; b=wTR4rv1SVE+4mK58N8KC9DPAUG
	hPsItrvWJ4QJDaG7ugXPTKuz54hnP8quqECpvAuGRd6UezO2BQXzzjMSUr17i6xhc8r4eYNPxuft3
	dhRNeBxHN8y4IhldbXtYTbk2NmmH0u7bZQXu3rlfsP80hODOdi8KQdW+r/aYiahlqMrGNvzzS2X8S
	9k79EFrCqmxZ09mT8dULC3iBJRgnkxhI5Ekkhd2Gm49qYgC1mSbiTPZULILoDLWYFz/rHXFC/vYak
	RCwSrdph29g2cRqcxYjsInXQT7c4qjRllbI2l/jpvARjk9jDnlNSYw+NIekZReDNNY9t+ZajZ5Wk4
	KDVXrCoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4zju-0065ti-0Y;
	Fri, 02 Jun 2023 08:02:26 +0000
Received: from smtpout30.security-mail.net ([85.31.212.36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4zjq-0065tC-1G
	for barebox@lists.infradead.org;
	Fri, 02 Jun 2023 08:02:24 +0000
Received: from localhost (fx306.security-mail.net [127.0.0.1])
	by fx306.security-mail.net (Postfix) with ESMTP id CE61735D02C
	for <barebox@lists.infradead.org>; Fri,  2 Jun 2023 10:02:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
	s=sec-sig-email; t=1685692939;
	bh=HHAatzaWCdnQKBOcRnYxJw/n67Bz06fO8HecBu6BA/A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=aHrQORwDH6GEuo4a6HO6QhdZ+ahySlslAeR4OWKek1lfa75DTpwBqUCKQlou9oote
	 OgpMFjqsFQT7XEcCtejjeg0hZxwnbEc+geTzVDio96Q6/6JcGPZsjCqZ9qp5U1z2Lc
	 oEcSxHr+ZyVPR4LhMKk9DKm2XDisSqqX94FERv1U=
Received: from fx306 (fx306.security-mail.net [127.0.0.1]) by
 fx306.security-mail.net (Postfix) with ESMTP id 9AF1935CC04; Fri,  2 Jun
 2023 10:02:19 +0200 (CEST)
Received: from FRA01-PR2-obe.outbound.protection.outlook.com
 (mail-pr2fra01on0107.outbound.protection.outlook.com [104.47.24.107]) by
 fx306.security-mail.net (Postfix) with ESMTPS id 037DE35D030; Fri,  2 Jun
 2023 10:02:19 +0200 (CEST)
Received: from PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:1f2::23) by PR0P264MB3239.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:1d6::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.24; Fri, 2 Jun
 2023 08:02:17 +0000
Received: from PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM
 ([fe80::ad0c:d0de:7537:3461]) by PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM
 ([fe80::ad0c:d0de:7537:3461%5]) with mapi id 15.20.6455.024; Fri, 2 Jun 2023
 08:02:17 +0000
X-Virus-Scanned: E-securemail
Secumail-id: <b4ef.6479a20b.26b6.0>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W5LLmcOCH8H3YDvOKPAafeKvRlNXkz8w6Z+VSVdpyuvKX2VBTW+lJ2iKoWHeXDmMFWgEVVS+zMHPVrbKkIPs8Wtf5tUap3nZg1vUwsU0/BRttsiTC85rdME01S2ax3UOHpZ9ZydDkuoMUbLrnHp3gVY1iFb7DtNT3ar+j7FZp3iyUIcpLCKrDgi4HVM32TBm3ivVTu6gh7CoJnfw8kkxU71Tr/ThabHkR5j6Wt84zUckZUJlEd0PNyZ7oouGz1cvRRDFCBmN2j5LBrix6eOshfpF4w/oO2Nw1hFV0VYIrr6/nS7EQcgk0MWWcCEn8Ud3BWHzG9ShaCde72+TMiH6mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Md4G5/ycLb9ZZJiI7SMGG+UsTIFOfHvObteWfhPensc=;
 b=Z7iQfenI+TdVzpCts0GylYCnZt3+hkJTzD6HYAT67wHx5Qy7oNMWeAg59jCsdnYgvcR8yiOMnIQJShzyRNG0qhl1ScXurYm0lGCfJjIce8xcq581IT6gDlLC8WxepQu8kiajCu5dVlgK0CB8ayiBj+fczOVczHUJxbaO2vSODEP1T8jJ8561Dn7CFiWr8nrd+2UNCwjYbyemEgK0NFPK3hDLxncqQkrW45r3TnS39GILnukyBRI29zi8lmRvELoI0jyAdP88ezCgGtKG2CIbnKQXluYaWEjlS1ZsD7Hwu3RDBiloZ+BVLIiP6JKW1KxN/eQKx8uhEWEKgeG1tWIoFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none header.from=kalray.eu;
 dkim=pass header.d=kalray.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Md4G5/ycLb9ZZJiI7SMGG+UsTIFOfHvObteWfhPensc=;
 b=VrKq8+U/iOjnHhIAaEI71rLMEjEVhXWH8QqP1Xq/34fycxzo/GMdQUkfIK0AHRHaCB8HWwj1KZVvCjlGWb+rL/qqNeeWhLY/oSK9qkK3wknlwH+l+dVV1s2eX8W6HIwQbCyYt4+f+tVYAhYRAxasOUvXwe4f78v3tdNFJilQ6cPWsnqDGy+zycESu21s5Uc5R2QfrqKgGcXN/dNXANOq6SVdcWRruK4poXWgyijb8ej6vjEYEGdO1zSKBhBBf+blyhSCOMGnnAMgoQ4reJ8rBCZFPcz+MqSr0mm87EeSvWp1VZm+1AeMQTr6BCf7YTpqcvBW5PFqgH7LZ54XxE/kAQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalray.eu;
Date: Fri, 2 Jun 2023 10:02:03 +0200
From: Jules Maselbas <jmaselbas@kalray.eu>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: Sascha Hauer <sha@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <ZHmh+1nVyTe6sRrQ@tellis.lin.mbt.kalray.eu>
References: <20230601142506.1069998-1-m.felsch@pengutronix.de>
 <20230601143209.GN18491@pengutronix.de>
 <ZHjCvPyB21Y2AWw+@tellis.lin.mbt.kalray.eu>
 <20230601171315.4ck3kdwybpaiezmh@pengutronix.de>
 <20230602075448.32loutzmci4a6s7z@pengutronix.de>
Content-Disposition: inline
In-Reply-To: <20230602075448.32loutzmci4a6s7z@pengutronix.de>
X-ClientProxiedBy: LO4P265CA0158.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2c7::17) To PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:1f2::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAZP264MB3119:EE_|PR0P264MB3239:EE_
X-MS-Office365-Filtering-Correlation-Id: 1d6ab2b9-99e5-471a-0b1a-08db633faec8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LHQGsZ08qzejdHIAP7hOy77hXkb3Iq1HGOFVpvNFmQ29H2ed9UkDHMJP4IB7IoSqa0s43Iatleiuj+VXuez7PQgKkcqyAdmILRnTIzKWHRgb15rPTQanAr5DWTDVscl/3Sa3N3MlrOZbdL35ztJNU2dGFJtV6XBB9NtlNy94hcKUXjC7hPYuT3KTVM3bcfAR0RRzz/z1XfAL+tfAovpqXIWwatjnrKzrSD6DxwRgQBXTBvMzkc/KZMI8fp+l0faURnww3DcQL2F+JnJ101FzY4ojR20JfP9SVibMzXprkumJ/OcKuexIS0GWnRHo/UjZGvz6/Z8W7z2EthUi9/gpDnVA40iDKTTtF40LCJ5jWt9xGbFbL0mjOEvYszKoycqsxFM+VIj/nLQBez4tYTB4DnBVg9ta6Ne0NTi9W0Zo0o3WQ7R14wbLcAEa2oumwmXWf12ydYMyJAN6OLZ1IeO16uYyhVMMKtFufGgFdmZ4x1USz2QNpT7m5nBVKq+OloP1pWU6GX2dYUvGl28LdaV06050I2rwj14/3es9jspbnLNnTh+zMmHWUg0Yfo3gB/G8JxpIfWDNpVHnuxu3BPwpvbAycJLWUwAeoSVO4zRC+oU=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(4636009)(366004)(396003)(346002)(376002)(136003)(39860400002)(451199021)(478600001)(42882007)(26005)(6506007)(6512007)(4744005)(2906002)(186003)(8936002)(8676002)(38100700002)(6486002)(966005)(6666004)(316002)(66556008)(41300700001)(66946007)(6916009)(83170400001)(4326008)(66476007)(5660300002)(67856001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: aAFxSYx6xpZWq0GwWatOFhhZR0SBHDwn9GVKQCrX4vCOjuSPFkCxFiuaTfZw+M/ua/33wejKSicmHEP4sEkjFWIqrZPx0m/mB8ywe4k/nWEnDY89V3J8mEm+bo4V3BoBaH9f3iik0lKOr61fRRof5YMb0XbRFOyje6lIkBukxLl9scvsgHVqdPl7zPFy5A8dSVLpUWqJMnYGBQemnJITQ3QF3hPtvBuDZY2p3DgyQtA7Gk/BP6irfFC0pkvedfzMpO5edLgUE5wem67Txj4AWhzWbDSDOh6IblxHS47sjh+DJNgbCiJbaYkvqGl/lzrBK1KK5YPVQ5Qd3W8T+YJgHPi85cjT07pIQ/elr6649KgiDVAd+rYr2FA7RDeHJXh8KLHioTreoKrZFszbS8TiSsJPfGpu0/v8qfiGJutUgIpnAJXx12Oaa+l9fsp6KXQdxxfGvFduaW7BSD7wUIko7f0lGf5NNwVqDqUp+uylpCocH1FoVGI78o4H3JG3Or1pgAm1ZGTgMQxuclWk7Ce8vBHGxACRsugo3aDuHDTUT0C1SmtPEviSkK7ZyEXSGYaUl9yil9YZXE3GhX/jNH7qTZ8JnQ0yH2o9zMRjRaWzoVo7GoxIJ743dqF1v38fRe89DcROuNnIRsf57tKbVBkhKl6Icjdckp21vx77c/9/Rpa7ldbbdnara277uDsAibjkOIVW2dMogsOsYpMK40ZmUI2OvJuwRX/peXqVPOMz7Sfn3LltQcYrOwHyOhHAHMnOM4rbdbt75nSXI231IfLeM/BMRmTU1ZLx0sQZ5D4v2Lgl1F345dLmat1U54G4RgAUlEf8Aj+Ab9uDaAgUbDmCCMPKLdZLexG8f7k33ydvHvuVQ8ZXoorVRk7v9yRaV+ba6HIo/L7L+QrY3O4BSBhfMLZ61wl/4uHfiP4MmHu53YJb4dQ37oDFINyxompS8G/g
 p+DM2lKihkaf0FQRbutV768yslTryopUaD0Byz/eObeHYQzlPN1em+P5/hQRQQQwVk9g5FuVAr6sOXfKd84x9fypmPSDl1IfUx5GMVdOrA33ngcBUnS5daV0DFW2V65p5iz6cwAEdlrKMR8Ldnd1zr+EUGe5VGVmXjLkOcrMscH5wX6Z/kcvuhA6Us2onAdPNyEbNoK/umdc2ewLkNT2TcTPT2UGnDJ8KR56PK59dyGgGvbMQz3NxnBhNqkXtBt8JfvLBGmgwxxnuTkkFHF49ysYWFpW6+iBT32HfLoSkIS6V0D5+mr5wQE3b12qf7qV2hp0BZQHFFWs2CSIsESVTZOKS6dlQstL1tBNn3VQaWUOWDqPavMuANUuK23Oc0FBq6J/eEFpZAwAKNC0FctYg07DlpyWQw2JhSS/DTSSF0OQnSfk+xD++EthoOq/m4ajtSY2oe15S6/SNT82x/B4wA5lTq4SqerSAi9B1O+nxyk+fVyNZg8ypBP4BuxJvOJ1anxV+3C/6SxrijEXm0Jb+EMCmj9L7kD5lf7B2t69A5FEwNdFnZTeasXie+26Qwm+LkYyf0ypckDyOT6JjJOvt5MNLlmAUmPIyvQNvymo0J9i3WhKF4ZH5VLli7waN0Rlz7Xp6t/cZ0WrmPRwxNMQYw==
X-OriginatorOrg: kalray.eu
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d6ab2b9-99e5-471a-0b1a-08db633faec8
X-MS-Exchange-CrossTenant-AuthSource: PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jun 2023 08:02:17.0514
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZfKOgthA2GcXUVPD06WM/CV0Y9FmBkJMCmlu2dbX1OLeNJoA6FVXHe2feszRHt9SRbM38TXue2Ie/kyQwbaD7A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR0P264MB3239
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230602_010222_711655_47DB2283 
X-CRM114-Status: GOOD (  16.20  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] gpiolib: fix gpio-hog functionality
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Marco,

On Fri, Jun 02, 2023 at 09:54:48AM +0200, Marco Felsch wrote:
> Hi Jules,
> 
> On 23-06-01, Marco Felsch wrote:
> > On 23-06-01, Jules Maselbas wrote:
> > > This sounds easier than a sync of barebox gpio code with linux.
> > 
> > You don't need to sync the complete code, let me check if I can prepare
> > a patch which adds the of_xlate support and is a bit more in sync with
> > the kernel. If this is not possible I go with the partly revert.
> 
> please have a look on:
> 
> - https://lore.barebox.org/barebox/20230602074921.2687669-1-m.felsch@pengutronix.de/
> 
> I've added you to the cc as well. This is what I meant by having a
> of_xlate implementation which is more like the kernel.

Thanks, I will test this when possible (might be this weekend).
 
Cheers






