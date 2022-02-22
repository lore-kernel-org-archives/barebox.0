Delivery-date: Tue, 22 Feb 2022 12:59:48 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nMTpc-006nta-BI
	for lore@lore.pengutronix.de; Tue, 22 Feb 2022 12:59:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nMTpb-0003ur-3T
	for lore@pengutronix.de; Tue, 22 Feb 2022 12:59:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nhpM16Uuy3RcNC5WwB46X10C9Iq/a5/bvjskh6PIWvw=; b=uPLCUcDVP0ggoL
	NDG17R3VcZQwCJk1pe3TQf9CFIGqvPxJ16hytZjwE6pnae21ToPYINbAFB9dQkiGQ0HXCLRvVJDmh
	L1yrieTvGs7aEA0ge+BtinIr17PKZuD7cXcNI3cSWZyqn0FzYIpKhC5TRV4f9pLJRy8HHkHermz0j
	mm7HrjkOjvCyoX8EQkn/LQnKUwXGU2CfMLPoNP9SkGeMoQfOdAqayaFYINq3b+z/bDBhkT2xWBf25
	cpGpsrnbCCpVXLZnHVg4Ow4nC1HXW8Bxl7x70gHzTdkzmRNkIouSpdm5/dgU+LVOxKwLm+v8MldFB
	ia33mnobaVQ3hFh2imoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nMTo0-009TcX-QH; Tue, 22 Feb 2022 11:58:08 +0000
Received: from mail-vi1eur05olkn20819.outbound.protection.outlook.com
 ([2a01:111:f400:7d00::819]
 helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nMTnw-009Tc9-73
 for barebox@lists.infradead.org; Tue, 22 Feb 2022 11:58:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QTBK51PmpMM1/up0b61MV2J3FeNtV9f90K1ba6uJUVcu52vJtm3e7hZnMKdgAmvQmHcDHlDFxFDI38UNEAQ33KkRuTZdMLLAennSrAO1qIvmGhzTSlGrBwlQEO4cGONJhkmcRl9+dkhZcvj+kFKC4Ycn/PLyYkvztDl+ufJ0OyvvMQTr7+WmhFjGv86mjbfggXWOE7/zCGPKApORPS/MYpXpL8oQpz3YAiKxsP1RU8+irqVox9JnvoApwtK99EuLkfFZGPgJd28KBiuPRTA7nP91t87HOevI49HO0Q5fkzERGKtiPwz/JcTetvb9VkA8MC+oTcnNm1RMxH1bxaPG4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xEQT4sSzdd3sEfVqDelQN78lpsvfX3ix4HG/a3Sa5qw=;
 b=FBszntUYJ6CcNjRhYMcmWOW8hXAoobLq1aM9B1VUWn5E4kKsdX+jXFEIwWAOu41DBfkTkLnClV8gfegUdDOU3KRldVNK4zVTs144J+pygMLwf8Adg7syYdvPiN1EHUkSI0Ttksndg4OQVQrzpdZTjovtCpCFQF/wePTV+5XW0YwsGBFm3lB0WqtAtVkXHX7yMrTFSdX3ZrfxkGuoatIQqzCLvdbqaRS/R3VX3FuGqU3lJj+enxwGVxPdn7yeGrrCe7eHBrE2iS3iG4CBZPkMGa/w0/+5+IeAyziKB1PEiI43/TuQ7jDvV5lDn9DEt9adzdQJK3sVQ74vwBjIgr5bNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xEQT4sSzdd3sEfVqDelQN78lpsvfX3ix4HG/a3Sa5qw=;
 b=bk/BeLFNgt/DSEKL9gTlm9JHZpfYMi4knlbQ/oaCC7gqbHlJWXrgTla/+k2FkZzSttxzpZoXUpmS+5ZM0zEP566VlMbS5X34YYr1KlBRRyVpdJ46lvjKfwnzvIxt01bB5aqJL4TGyUrNJSGEmx7HKTN0WIoiFLRQui9LO/Em3nNVgPG+S/50/0KGNtw9ftgHkQ+5Hzkegddhv9BYJGE/wNzQ1UC+xVDYy/tEA3t/D/nayUeSSfrbgBvt0MoWjaKBmoAELKDhQl7LEpdStobB1DDWXvRT99xkGbt12W+R0TtnPjbvpsdwtAXU7tWpFPijFpEKj8dxeXn69uFDPhU6ng==
Received: from AM9P192MB0870.EURP192.PROD.OUTLOOK.COM (2603:10a6:20b:1f2::13)
 by DU0P192MB1474.EURP192.PROD.OUTLOOK.COM (2603:10a6:10:342::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.21; Tue, 22 Feb
 2022 11:57:59 +0000
Received: from AM9P192MB0870.EURP192.PROD.OUTLOOK.COM
 ([fe80::b101:2802:2eb2:504d]) by AM9P192MB0870.EURP192.PROD.OUTLOOK.COM
 ([fe80::b101:2802:2eb2:504d%6]) with mapi id 15.20.4995.027; Tue, 22 Feb 2022
 11:57:59 +0000
From: Michael Graichen <michael.graichen@hotmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, "barebox@lists.infradead.org"
 <barebox@lists.infradead.org>, Sascha Hauer <s.hauer@pengutronix.de>
Thread-Topic: Read Barebox Infos from Linux
Thread-Index: AQHYJyMeN0T/sV2ubEezVEpnYdMKOqyeCDIAgAFvpug=
Date: Tue, 22 Feb 2022 11:57:59 +0000
Message-ID: <AM9P192MB08709FA612A57392AE63B854AB3B9@AM9P192MB0870.EURP192.PROD.OUTLOOK.COM>
References: <AM9P192MB08704D48582CC36E5B0CEFFBAB3A9@AM9P192MB0870.EURP192.PROD.OUTLOOK.COM>
 <bde9d08d-43da-c3eb-6362-09c33ab8e172@pengutronix.de>
In-Reply-To: <bde9d08d-43da-c3eb-6362-09c33ab8e172@pengutronix.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: 0d36c7a8-1689-0e6e-05d9-b0141f5cd73c
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [sH+vFxLLOZFu4Z+pXNo/yuwd5CSh3OXG]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 93c1e98b-9b4d-4eed-9c9c-08d9f5fa9266
x-ms-traffictypediagnostic: DU0P192MB1474:EE_
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5SOKR3WhkqJwC/t5WcDJKMU/6cBZve0ndF6Au8UDahxsXdAe8rcg3p+vzQW2VdYPu85u3LxBV28bpQ7LPnqk/wgnN1Q5KHnjz0UjY9OjDNWozb5LxAQK+Sp3B868c6eMwqRtOydwoOMXZKbGfNCd0wYAWhoj9Bg+n1+HFGH3SLgeYKgC7oXma312sX9KR29DM5hP0IiC3zOwQE0xWVTo6xwLKds3eYLEXupnjuJJHjB1nA0sk1c3VGtDMZ92/Mnm5pwp0rRkTWhA56Bb1GKkIaHXOTKMWkdz7ar/roOs0VPIOLrKDQNB1K/yYg4E29d6//UcWresc96cYPSY629WJlRvIlI8ACJG2OqLQ78f0vT9UxnQq6UJ8IoPa5kMFrqOVnyavJaBXhdQ9EKk/I2Zk/0vBmIwvH+7T5zEcIJywAhJaiaTAZZltl13ZE1zm2ubEMx6cfmsRRx64I/Jt/p3hYi+8xLa4gl4zSMXdlSOrN8S+fIUe0mFCKH5xgfUBKNabBxmUnYxZF68LGe3xQylbuRQU0yrG7oOVy0P1Yde7l/tGV8tTkmY9GmTO+7UgUoZyMbDqLoHyuC9YwxCyIeRPmbluvyWte69aVGc1Mu2YduRQU1u7ns/Q6bjaMofe7YD
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: bL4vhjWUt/nlfAHKdxjnf8ZV+qHfxFamlasPbtRNAJDOUeT8wXe4NddWDZQwHR0o82I6JsTph5vC/ApC7K2Y2dVwt4Ax8H6FdKnHPbPXTtL51X79VMxdDKsEBfDAdSw4Rx/gfMGT7suFQKKIPtEtaG03R/1BQj+BmezLDZ2AmXLzYVKfi1uxckrQnH+ydlSjnNkOTLEtjJ0ZqpRaaSAFn6pufSutbrHRF8EV5ZiwJMZZBJWwdAM19FGOCOUaHXHukwWchX0y06IvYObEV9OseVs4IX2niUmPFwlPNuITDpfRX+5846cEp6NobtlRDgnJUSt9c0fshHiUIERttMbdUvb700GPMdnc5yw4bsyCnxbggB+NYniq6ouSEqY/7uxsX46LVJNDJXWSDTXi8qo9XRVV2rYwQsqfsgmzF4IVP8TpUPB1Q+L+1ADmY88vHu2C4CE098nnBfwqJuGOuxiO1u6u0BuOnUqpHlBLDjs/BLxGVLMlbX8D/ng4gVBZQwKknhibs8NVvZ0QKK8eb70UfaUzO6KyL2DiG74uUca+CaQow7+eEyDg+0Y4ybNA+g9m6g+uqxZe/LgVFsWTPJs7M72urJoOwX5XoPo/pb4o7eAsMWAgiit5WcMGKhOj1Ek7eHfHW0wH/1p5zmQVeAEUR8M44iGCC2QtlW/DFERQncQmihI6iX5Azh5gfDVk9TptNAc1HovJ3m4MSthSDXzCnt2ACsulz+xnjhz+jwa0Cf1qKoiytRG8YyOBlMIvAV5uwDrfWbxSqELfAs4gX9MtqAqCosZg1H9a68hmfcfRWJITojulfma/29PHwiNGUoPsR3xJvu/U/Mj4eaNBOsVM19biJ2Lf5OF3dTL0Vl9Q0EzJUOjDLlxha/QE78j0VBAk7b+iAQAV0z7hjZskb/S55faMxff4953/eGcUWIL2guOxgrmsWRqGh8s9wjGCa6AR
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-fb43a.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM9P192MB0870.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 93c1e98b-9b4d-4eed-9c9c-08d9f5fa9266
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Feb 2022 11:57:59.5682 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0P192MB1474
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220222_035804_337274_45FD8FBE 
X-CRM114-Status: GOOD (  14.14  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FORGED_HOTMAIL_RCVD2,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: AW: Read Barebox Infos from Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hey Ahmed and Sascha, 

Thanks for your reply. 

This is all meant to work with devicetree support. Not x86/efi systems?

Best regards 
Michael 


________________________________________
Von: Ahmad Fatoum <a.fatoum@pengutronix.de>
Gesendet: Montag, 21. Februar 2022 14:59
An: Michael Graichen; barebox@lists.infradead.org
Betreff: Re: Read Barebox Infos from Linux

Hi Michael,

On 21.02.22 14:04, Michael Graichen wrote:
> Hey,
>
> I was just wondering if it is possibe to read the Barebox log messages or the Barebox version from within Linux?

That's what CONFIG_FS_PSTORE_CONSOLE does, see
https://www.barebox.org/doc/latest/filesystems/pstore.html

> Barebox version from within Linux?

Yes, check out /proc/device-tree/chosen/barebox-version

If you are curious what else barebox is fixing up into the device tree,
try of_diff - +

This will apply all DT fixups to a copy of the barebox device tree and
show a diff before and after, e.g.

chosen {
+       barebox-version = "barebox-2021.05.0-20220126-2";
+       bootargs = "console=ttymxc1,115200n8";
+       reset-source = "POR";
+       reset-source-instance = <0x0>;
+       bootsource = "/soc/bus@2100000/mmc@2198000";
};

Cheers,
Ahmad


>
> Best regards
> Michael
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
>


--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

