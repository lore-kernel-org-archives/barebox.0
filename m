Delivery-date: Sat, 18 Dec 2021 13:09:56 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1myYXE-00AX2a-Dq
	for lore@lore.pengutronix.de; Sat, 18 Dec 2021 13:09:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1myYX9-0004Zc-Jz
	for lore@pengutronix.de; Sat, 18 Dec 2021 13:09:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xfiPRjyj9xtTZuw0rQCvNxjVPOTJ4uPs4wJTdHArHfQ=; b=SLu+0n6PP6yE5XW8f4fSqUVlPV
	Ep5mR3YELiO+Bq7cilNc8RgNG1LXmjkbSbej83GFlP5BQrS419aJG6+/N/oPGntCSjm5+e2OS7t+C
	KphSOB//3xNU04KMnhPmjiD8c+IL5NIah+WCerJicyGDIQ1Lbbq82Uqjo1z3WSnjUY/9w57/3mXmo
	sx64fQKqpD3tchIsifwu2P2w7FQ47bocuxALx6vPU86bIbc32nYU98Z3bHKgV03khXGH/2pzLzKtn
	lpyGA9Zr91vclOWFKNwJuHTh1k/38ATIOj14ukdOqMz8/hNgcM7OESOcz22ozEovShiF8Z/wIIHcX
	dznhRbLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1myYVI-00DlEq-BR; Sat, 18 Dec 2021 12:07:56 +0000
Received: from mail-oln040092075038.outbound.protection.outlook.com
 ([40.92.75.38] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1myYVB-00DlEC-Ns
 for barebox@lists.infradead.org; Sat, 18 Dec 2021 12:07:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lw3qUbBqAXwrpnmROnEPvsqWfUpH0r69938pAOO6AD+JTGPMXtjZczYyK56EnBOslykQgCCfz8y+5sPISrLuk3pq3b8Dcu+khOhCuzKNTm7/yG/BiGLUvwu3yNQn3It0wR9TIvbRlCVBg1qBSQEtDXar1jyXHiTzGiZc1Vd2MTen1kUL6kv04bUKtWZXrvJrClYo4ygi1tXo3WWHzQ+5267zPep2zh46IXMWEOkTaALTussn65IqXeOCIntQK5OlLCqtP5bY1ueWNAodam8/Bh9cvPL+COPCtuJHvwbzr69xycqq5RsKpDdahSaWsrn/PcXhjsk6M+u6K6fIyIK0XA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QSt2DzzB/hR9vE8p7B8fdIFGgx1+1DVK0UXn7nR50QA=;
 b=DhVbqi/r1iGQ07M2xe27b43O44ji+IrGqvEcDBQC1sPLe/0/30Va5VvjvypUhT4bTxdBLs37FJkzwZEqU+yFFigKpJ5Rpp7q4MTgLQYti3VfM6l30xGdmoV0CGC6iaeBVfZ8S2X3Cuda07hHz7N8Ct+zlQxfQL8NsGo2UZz4NStwsRBUjX6hlHqfckF4D/9AAUdv0mheYsnOcys9fPaA1SnM7JK3B0DsDz1wj8RdTGyYYWWqJuT+I6RSNIjqSGLw+tW8AZmnYdsuUR7EXCqP2yh9T41eTQqC3q2Y3K0NtyXMWcFyBH24mbfX273UceJg7Sr9Q+onmCQbWy4JqXF8vQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QSt2DzzB/hR9vE8p7B8fdIFGgx1+1DVK0UXn7nR50QA=;
 b=c0MjUXAaJS3I8vWxiru/TuC4uzRx36iry568bX+SiRBpw2giyDQXO9D5uSOSXUKCOoOfucXjBch9lnFr6GxM3hBkqOylruW0tNRtJreZnZroMjRlfsMZIbUj8AJqkkHTgd9Xb/i3Ouk1nYKgCUQ4m2Wn9dpDMCoS7kN+RqSEiNkjOX88OAY3qxyZ355ZOrMpqSHWKw6ViCpXs+zAtsXZeVmRztfaLzEuz6Gv80cX1bQojAhDwq2q+YgFXV/gkgbLoa6x6A8NZFfr2y45WiUNc+sXjsX0HSXA6/VNcBVb2bFkZoCc3cH6cbsKFPxaakOw+OdmRnxyZWwzve31IXMXwQ==
Received: from AM9P192MB0870.EURP192.PROD.OUTLOOK.COM (2603:10a6:20b:1f2::13)
 by AM9P192MB1235.EURP192.PROD.OUTLOOK.COM (2603:10a6:20b:3af::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4801.17; Sat, 18 Dec
 2021 12:07:44 +0000
Received: from AM9P192MB0870.EURP192.PROD.OUTLOOK.COM
 ([fe80::b52e:3e2c:4ca6:7cd6]) by AM9P192MB0870.EURP192.PROD.OUTLOOK.COM
 ([fe80::b52e:3e2c:4ca6:7cd6%8]) with mapi id 15.20.4801.017; Sat, 18 Dec 2021
 12:07:44 +0000
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20211213210905.3399551-1-s.hauer@pengutronix.de>
 <95d50bc1-9073-9f69-5237-c7f4bd97b1e6@pengutronix.de>
From: Michael Graichen <michael.graichen@hotmail.com>
Message-ID: <AM9P192MB08700F746095EAC3423BAD019B799@AM9P192MB0870.EURP192.PROD.OUTLOOK.COM>
Date: Sat, 18 Dec 2021 13:07:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-Reply-To: <95d50bc1-9073-9f69-5237-c7f4bd97b1e6@pengutronix.de>
Content-Language: en-US
X-TMN: [i/dt8RaCCKC/qOc/PmMJR+Cl7NdR9ts04z2TbExaBOnqca2/T2sCAJzhGBN6v2qa]
X-ClientProxiedBy: AS8PR04CA0044.eurprd04.prod.outlook.com
 (2603:10a6:20b:312::19) To AM9P192MB0870.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:20b:1f2::13)
X-Microsoft-Original-Message-ID: <116d443a-3148-24ae-6683-7e3481cd8367@hotmail.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ce419647-e511-464f-d382-08d9c21eff8c
X-MS-TrafficTypeDiagnostic: AM9P192MB1235:EE_
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Qlh2bLPF3g/HRIAbMOeorD1F5HcAfBgbDRTYd2T7kC+Q7QRhCePr0reFKhsu0yPLDfGrvse1mMIPXq9/xavZPA539le+jLS4OWuHMyjMqqyuztw3RovganZ/DthxJQbS4g7dq4/7XJ9vHKBVwJOSSoEVR1TT/ytIdchbtPcw2O3bt3CSU1REdqidLiTpUj+xbZThQZmn5c6/5wxmHVDv0aquHuzjzgn6sOQPLGkSPUb55Bky5SRjUzHxNcgDtEzjses+/Q2NWmCz+gbJ0p12kGItsAKbd/t5BCla1DrIDlUikHcnwTfuXdSqCl5VyvYq8ipdz7c5RloeSVIAcIyngdGRFuPBbo37C/Wssdz2IFjCnDbToup7FZHz8f/H7z7z9g7B3llMB46OkLw+oNJc3V6htLt8Q/5jXP5ztH7Q6ojp0AHiyia0V28oQsJfZs6R/FiFN9P+qv6Cj0wgINd0XLNazlbEBy/j3YBbrHTBwL0jUcmmdJddD+3v/MahDJFLcf0YhBUCGwSc7gVAZ1FleQ0bC+5mErj0FZTSTmKL2vY6DaWNcygfEWwTTyeml65MMGzhFu/0AjiHLXNTI+lz4w==
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RjdqRjkvMmI0eExnczJnMURJUTNiK3lVTFZrK0luem05WUpoNVQ3LzVwM3Fz?=
 =?utf-8?B?b0tRb0Z5VE53NDlmSjcyQjZXSy81OFNFcVFTRm03ZGVYYUk1N2s5Mi9UdHY4?=
 =?utf-8?B?cE1lV3RuTWVCakMxaVdISHRXbmNTa0dUZ0NQeVY2TklnNytLMjZ6cW9taFRj?=
 =?utf-8?B?VUcvVlFOVG91cVdycFlYc256czViTzZPYzVhdzhpak8ybTB0UncwdldrZGV1?=
 =?utf-8?B?RDBtdGo5QkZJcTlwdktvZjJoQmo4ZGswZm1SMnBqQUJjSEMxVXFJS3BPN1Ry?=
 =?utf-8?B?Tm50bEpnckhLZk9jMHA2eVdSL1NBR3dMa3FLK3FvOVRLeFliK1ZrQTdOMEFi?=
 =?utf-8?B?SUptYmFOUzYrOTdPd2VMYXhvYk1tanlSZkRoR1B2OUdPbFQyVlVOTFNpYVdy?=
 =?utf-8?B?ZDlqVlRiNkdlL3p4QVJ0TDZFQTQrcDN2eDZFV21JZURsc0h6dTk5VWk4M3dv?=
 =?utf-8?B?dUxmbU4rYWNjY3I0cnhhWktwS2pyRDVXZFpHVWRVeE53OFg5U1ZnQUM1Q1FE?=
 =?utf-8?B?NFQ0Q3NmTldJMTRRalR6bUduZ09GVGFNTXVjRVdkc0RzblRXb2JYL2FLOThz?=
 =?utf-8?B?RTRHVEUyVkcyOURYd2VLZG9ST2hSQmNIM3lVS3dXdmVmVjlLQ2k4RDlpUkRj?=
 =?utf-8?B?MWxsV3NYM2M5WFZQVGlVQkxMeHlHREVaWDV1cWxEeldjM0J2Ry9NbTFXN3g0?=
 =?utf-8?B?dWZicExOWkNvZ3BJb0ltZ3k0WmVjZHNHcmtMYzNuODc4VWxJY3lQTGxmRkMx?=
 =?utf-8?B?QjBJSzVtR2ppU05UTzgzQWVTZ3FCbjUzOTJYRlVOcWtyc25INkxpV0daM1pW?=
 =?utf-8?B?V2JPYVRkeTRGOTJkVHJxSHphMmowZlpadThJVjhmR1hRZWRJL1BxM0tIdmdL?=
 =?utf-8?B?WkZTMndYOG5IbWpNQklUZmoxQTZMNVI3Mm9XV2lQM1AzSWVNUEFDVGJPbFkv?=
 =?utf-8?B?QjNJeHo5Z0pqeE9LZGxwS0thY3FPdkdkTjEydXQrN3NGaFRYZWp6Mmo4RVRw?=
 =?utf-8?B?M25IQmVUb0xTbS9MSWgxYWRmSUdqcmRUbU9tdDViV1c3ZzgxT09MT3hCdDFy?=
 =?utf-8?B?Y0JLRVc4VHNDL1ZkWkxxdlhhL1JmNHFreFVid1U4TGhReGNiOUx6WVRLYjQw?=
 =?utf-8?B?cnFoUzE5Mno5VElFUFh4TmpxMzBkV2dPT1N3L3YvdytNK1VILzlhM2Z4U0Vw?=
 =?utf-8?B?SVBmZThOUXlHK3UvakFVMStibXJGS0VTQ3pSTEFqWTNoR0wzSHVXZWNtNmVp?=
 =?utf-8?B?U3lobEhSdUtYa1VVNFEwYkhZVFJWTFdLQWNUSk0rNGpnVnJTbWprelBSRmVz?=
 =?utf-8?B?RUhPZE82bnoyc3Roa2JuUWdhcjJWZ1lCRVIxclo3NlRaZy94VzR0MjhXWVIy?=
 =?utf-8?B?b084S2EwNUlsc3c9PQ==?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-fb43a.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: ce419647-e511-464f-d382-08d9c21eff8c
X-MS-Exchange-CrossTenant-AuthSource: AM9P192MB0870.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Dec 2021 12:07:44.6482 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9P192MB1235
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211218_040749_910103_69D033DE 
X-CRM114-Status: GOOD (  15.63  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FORGED_HOTMAIL_RCVD2,FORGED_MUA_MOZILLA,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 00/25] EFI improvements
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)



Hey,



Am 15.12.21 um 12:07 schrieb Ahmad Fatoum:
> On 13.12.21 22:08, Sascha Hauer wrote:
>> This series contains several improvements for barebox running on EFI.
>> Most patches are around the efi-stdio driver in which handling of ansi
>> escape sequences is greatly improved. With this series efi-stdio is now
>> able to parse and handle the escape sequences barebox issues itself
>> properly.
>> The EFI SNP network driver suffered from packet loss on some machines
>> because other protocols were polling for packets as well. This is also
>> fixed with this series.
> 
> Very nice. :-)
> 

yes, I have just started testing the efi boot methode and these patches 
on one of my computers.

But how can i change the keyboard layout to QWERTZ (german)? Or where 
would be the right place to implement that?

best regards
Michael


>>
>> Sascha
>>
>> Sascha Hauer (25):
>>    efi-devicepath: Make efi_device_path argument const
>>    efi: move device-path defines and types to header file
>>    efi: Implement device_path_to_subtype()
>>    efi: Do not register IPv[46] devices
>>    console: Fix message colours
>>    efi-stdio: remove unnecessary check
>>    efi-stdio: rename to efi_process_escape
>>    efi-stdio: return bytes actually consumed
>>    efi-stdio: fix escape sequence end detection
>>    efi-stdio: improve escape sequence parsing
>>    efi-stdio: Fix out of bounds error in puts
>>    efi-stdio: Fix tab printing
>>    efi-stdio: Implement efi_console_putc() using efi_console_puts()
>>    efi-stdio: Fix '\b' handling
>>    efi-stdio: implement input buffering with a kfifo
>>    efi-stdio: limit set_cursor to screen size boundaries
>>    efi-stdio: implement getting the cursor position
>>    efi-stdio: Implement setting cursor visibility
>>    efi-stdio: Support different text modes
>>    edit: improve screen size detection
>>    edit: Improve behaviour on efi-stdio console
>>    edit: send escape sequence only for smartscroll
>>    net: efi-snp: Check for carrier before sending
>>    efi: add efi_device hook to be called before an image is started
>>    net: efi-snp: Open protocol exclusively
>>
>>   commands/edit.c            | 107 ++++++++--
>>   common/console_common.c    |  12 +-
>>   common/efi-devicepath.c    | 405 ++-----------------------------------
>>   common/efi/efi-image.c     |   4 +
>>   drivers/efi/efi-device.c   |  42 +++-
>>   drivers/net/efi-snp.c      |  59 +++++-
>>   drivers/serial/efi-stdio.c | 362 +++++++++++++++++++++------------
>>   include/efi.h              |   1 +
>>   include/efi/device-path.h  | 388 +++++++++++++++++++++++++++++++++++
>>   include/efi/efi-device.h   |   5 +
>>   10 files changed, 840 insertions(+), 545 deletions(-)
>>   create mode 100644 include/efi/device-path.h
>>
> 
> 










_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

