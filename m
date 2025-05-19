Delivery-date: Mon, 19 May 2025 09:06:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uGuZe-000QoV-0k
	for lore@lore.pengutronix.de;
	Mon, 19 May 2025 09:06:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uGuZc-00062a-Dg
	for lore@pengutronix.de; Mon, 19 May 2025 09:06:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Message-ID:Date:Subject:CC:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ed0pAo/tFGYcCFaYtq2BqxE9qdpF/yk/KVlj7rc/OmA=; b=qOCXBGyRxfIW0lCBKr8HAOKUui
	zJd0CjI+HVNs02rxenpvakAw7l9yEkaBidaV/rElF4q996dic09rGr3nw2B0DhB6fECzXNIvEunzp
	Pb8UnfJNce4+IYqhqW8+bFyJTNYy3OHm8M0A1o5skpjDYnffz7RoXYlAzOw3JSHI/kE5yvp+NzDam
	hnBVoctdUU9eN8YSW6JSMfBC4JYj6kCAY2PE7vfSm1a1g95fasYyzQ54PO7+a0yONoplRLoGPF6LM
	wHJ8Yyd5fCT5Y1CJ/KPCN1giirauhjZj0L+dVBJmhaLyDP8gRyHk2wkC7cZzWqza7ZbY4hSDmw0DO
	2bKNXvAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGuYx-00000008AgX-1KR2;
	Mon, 19 May 2025 07:05:27 +0000
Received: from mail-dbaeur03olkn20830.outbound.protection.outlook.com ([2a01:111:f403:2e0d::830] helo=EUR03-DBA-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGuXQ-00000008ARB-3uu0
	for barebox@lists.infradead.org;
	Mon, 19 May 2025 07:03:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=apJJ9vSd2Cg/d3uMus7NkpZcwyVIRMx0rO+/56Qc5BRAV5kLPM4GzamDFBPCfg5xlKD4PP6VE8/ddGjuOroCIRgFga2h2Wh7eowYs6mZTYQWSPZx6reeF5LIifsjyteX3LRe8O0XM+p3J/HcKDMSz6sQZiGLasbke/w0tR2E/3z5VBLgicSgRV27icRwI6aZzVaVJjxCxwBS+TA16eJCtwGcsvTNyBjf0pyROS0FKN+qp34NGC38QZBprNzYSW7eLtQbZ89Fb9fowUdnh14bISncZzY9HdIRNBprOatGs/p+gQsZC6Nk8eJzb5qcY1SQ61LrfSVsrWuT9czpts7DQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ed0pAo/tFGYcCFaYtq2BqxE9qdpF/yk/KVlj7rc/OmA=;
 b=ZcSUyiK/O79Yc6f2+hzFrtaNNdi25DfQjz76PLeN7Bv/U1VYeTnyIcEYt8Wwib8KZqTVTQHFyo8ScOyA4FAdjnj+BVXUvc6BaRvt219c2vP61OHuhIA17LFguxCSQe28BRH3n2tde8AqEEzaXuCdFGtomDAqIWF7HI7S5tDlVc3EFkYFmL+tOJ+21HbDzT9pVKDon97zIIuMhjDbFCYpOdqd0IcyckKUsq3FHblw+3WawJDrJH9SxSoALOHwKs3i9u4dmZ8NhDUXcxE+t9FYtkREyNfYl9JDa/lySi8p2WB9+n5aqVpqdKWxPEzFpL8ft6395HI2TchM5f/nHNEZyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ed0pAo/tFGYcCFaYtq2BqxE9qdpF/yk/KVlj7rc/OmA=;
 b=gMkqYSX551HIztPS4G4lY1EhNzM9u6Gqz9wOPf3VT1c1tWOXAnrl0mm70/+9jr06oyFWtipQJ7ZEK7FdqbcaKiQhvdeCySwPVSepiLm2+T890hnVDgRrDK2gCW5N65hiyY8zWSfwLU0wwcixryUyCsosOzl9r5VCgi5KqBqLpdQuiiIAE4KnNd8YTOfTLdx0OI8owNo5ACLfQcqV/JwVqVQuvjy0um10+Zn45sLVcBk/v7fwLG8GAYGcB33cyqCExmxD15Rzrnn9OEbDkaPqjZ3YbxqIiJ2Qb37Upic6+X4G8dXbjT0JqedO0hu114FQhisX/M6hTBL8iPS7bmiCzw==
Received: from VI1PR02MB4429.eurprd02.prod.outlook.com (2603:10a6:803:b2::14)
 by VI2PR02MB11048.eurprd02.prod.outlook.com (2603:10a6:800:27e::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.27; Mon, 19 May
 2025 07:03:45 +0000
Received: from VI1PR02MB4429.eurprd02.prod.outlook.com
 ([fe80::fcf4:21c7:f28e:cfb2]) by VI1PR02MB4429.eurprd02.prod.outlook.com
 ([fe80::fcf4:21c7:f28e:cfb2%5]) with mapi id 15.20.8722.027; Mon, 19 May 2025
 07:03:44 +0000
From: Michael Graichen <michael.graichen@hotmail.com>
To: "johannes@gnu-linux.rocks" <johannes@gnu-linux.rocks>,
	"a.fatoum@pengutronix.de" <a.fatoum@pengutronix.de>, "l.stach@pengutronix.de"
	<l.stach@pengutronix.de>, "m.tretter@pengutronix.de"
	<m.tretter@pengutronix.de>
CC: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: [PATCH v2025] added-zynq-fpga-manager
Thread-Index: AQHbyIsgG5n7FHuLM0ygQCGiVMGuUw==
Date: Mon, 19 May 2025 07:03:44 +0000
Message-ID: <VI1PR02MB4429961876C186741ADDF9B1AB9CA@VI1PR02MB4429.eurprd02.prod.outlook.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: VI1PR02MB4429:EE_|VI2PR02MB11048:EE_
x-ms-office365-filtering-correlation-id: f10c3a63-36d3-4832-3466-08dd96a34b9f
x-ms-exchange-slblob-mailprops: feAVlmA1hHWlJEN6nLg/IthMxRzpF++Tl9Xum7xmTCT/asa+kQzEYjUKvJLLzUMoSf0QLRYm6XtkoagUlPuCXDaEmQk77zbwwjgo9k8RsOIVT//BC44gnRVtkmJsvffCcV/P9URgi+ki2h820ZoCZGWcOJ34n/Kpfp+fXfrSWeE7JUhPyEaPzwLPeQ/xL0RLNTqFJYI3X3Sj7PV1Pjun+pHtCOB8dcRSChlE0uYuv2Xk/YxOXO9Y6klbjZ6hivnBb2xQLlS/AW4NLUD0PL0VEYejyyRE21xcTj+aHu/KkuGiezZZXQlPlK4xnmasK+Wfcriwqbxm0ZQYqjqngzahdMUOeOJvGCQy10qajjucNDKmNMev9h2mFB/Oy1vAr0DgLgh5wnG6FtmI4z7mzqKAqUV0h3JOjHtK1M4tamS9N7u/hMTNEpChQ+Uqn9D1CxgPdD+xIYb5jzGvYl2c1K78uiAfuQgYuGKVexP8eMoEtmDNNU7Wf/qgVZP6D6rsgXBcXpZyE+NAKfj0wWOPVXYpV7u9KupVYj6pieY5jKhi4EmPudxD6n68eWc5zMeV7NSm3/HiK3fKjRBwTxaO3T1nzP111iBkQtJ2GW3OX52DKDJxOy1UA0RCwlCRVUAxBQBpDRASEDmcMhwtufhZH6LaO7IQRtwFQtt6akaquaGdWIcAwCdsjNaStdL1r1FqoHO4zWWAyTjAhgKBI1FLK45TWQ==
x-microsoft-antispam: BCL:0;ARA:14566002|15030799003|41001999006|7092599006|461199028|8060799009|8062599006|19110799006|12121999007|15080799009|3412199025|440099028|102099032|12091999003;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?JckHmRZ2v0R6mo48gtlwAR9h/EMIZnqKaLxAKvt9Hj8sQ44J8u7c8C4v2g?=
 =?iso-8859-1?Q?rqpy+tUOge2WCDNVQtTTiPIF+SQ4pCzMkLddVgz+JFuIdAGSiwAP1hCmRy?=
 =?iso-8859-1?Q?xD8MbXsuSyz/pqK41eRqOpcgWoK7bTxsChWKCrCQcyvfzFt2zw1OeczPbo?=
 =?iso-8859-1?Q?OENSVDQw33MpkKzkJwFR1P8q1QtBhMZiaho8cT5I12j1/SNyXke0D/Y1o7?=
 =?iso-8859-1?Q?wKRNLDFdP9RRvVLwfLF3FRzc0KfTS/IO1jOI4mBdFRRv4XKWTZap5RYYi8?=
 =?iso-8859-1?Q?xPfrHSBTMWpJCYvHhbNf0c0vNvXTNbPXfvp4yhZxSV/3xU796A/NiO+r+t?=
 =?iso-8859-1?Q?93rHK3ofG8sFlx6zsF2ZsUnGvWfArm9A3ZgpeZqPwcz+BlgpY13WGHGTK7?=
 =?iso-8859-1?Q?kanFB2NKAzAE8f5WvHCjtOofCd9g6KBbElePQR4q0lDjD8CeKSwHkGBAS2?=
 =?iso-8859-1?Q?SYohU87eFRB3suSwyb6Y7cOMIjItfkA1jkht+k9v4fh+E4mac1aX6Vwwtb?=
 =?iso-8859-1?Q?RzKhrGpJruisOFr+5Ieq3m6GG5d3wyeip5Qj0B7hpy+OYApn9p7KJLeDdN?=
 =?iso-8859-1?Q?Vz0t1n3QmtzyCJvGf73RqQs1vR2Iyh/SzEMHj8RBbgP5EG7l4BNX1Ksm6B?=
 =?iso-8859-1?Q?YC5VQ5SkvXKOvwQ0SYT1LhfVgbUyLJCxSpZ6GRMTdZi30VkaJE7GGVSA3T?=
 =?iso-8859-1?Q?gXAG/RMvE4YDlAKopF8y0A37dlyVPaIU2z/uJ8v/wnOj418s0WDEjJV8dY?=
 =?iso-8859-1?Q?4KVl7wVxYTedsK4WHSzqOe/LrGUFEQElut1NDQHU2VgnpJKkeCzHvvfJ87?=
 =?iso-8859-1?Q?bzmXftdB3FfmusdFmtD6UepwWlBaVKHV4zmASPlTlMDJGrBDIYKUrcEaZq?=
 =?iso-8859-1?Q?l2mRyfQish1e16ioz8YpQE0d2vgnK4EA2peIgjTzzJs3UNvDgTYz0fldrO?=
 =?iso-8859-1?Q?Fd7Dcp96L4DzPOZIPHgFNQwFgHlLymQZukGdn4NTnyiEzXlHI5oDaYwprA?=
 =?iso-8859-1?Q?2EI4BCy3cgC6UObMXIGfBOC4+EaX0vXuFqdJx8YtzYptxmleOJJW06YRbJ?=
 =?iso-8859-1?Q?Fi3j5qKA2THvLl231HgwZvkrCqChXZ4vIy5qZyxdjoDzZdwdIui8/dLZB6?=
 =?iso-8859-1?Q?o2c0GoLBh+TJyL6Xh+5xZOLCmTEDrRplm4TbrwjuU4dCSDJV6ESEwLIQVH?=
 =?iso-8859-1?Q?BbthJC8skfPJ5647JEHYBHVCtup8ucZgO2vL347pwnaJTICxQuP3z4lMz4?=
 =?iso-8859-1?Q?O55yh3LSDOrNvAjEBIkj7udnKZOxlBu+TIzT0JuFI=3D?=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?7WdB371/tvgDha3mR7HLO5HfGSgT2IXaMLVFt5FeS/RQ3hIlqEYIq0Rv2p?=
 =?iso-8859-1?Q?96pAhtLZGWMVlWknY7cx9cIjxuAr38vdZlnXQyuoQ/WW2m3JewK+kVqJ64?=
 =?iso-8859-1?Q?pTiC/EmsdwKwTbtjG4tEMMrVyGeuH2U2MMOinL4Mbd9UdZKiy7tp0lg7Zg?=
 =?iso-8859-1?Q?fLFbOQuwiwHzrhAXpVjWOydadQq86itq1WNmRxJ8k/d2or4e03e8y6VMlk?=
 =?iso-8859-1?Q?aLJTai18cLnLhvH9u/rk4/3ZJOQ6rploBy8JLSDg9VUv0j7Spg6CmVyE/N?=
 =?iso-8859-1?Q?VjQwtiki8EB9kXYMvWz/cTRsJkJGsq6bh0eZMS0+SQWaiOpP83QIfNQvC8?=
 =?iso-8859-1?Q?6cFaQwC0ZSGPSEzenoEfsbuze5SaXu+sJJjqOuJyy/powoyHNF2KVfIU2J?=
 =?iso-8859-1?Q?Wc4DIpvQCkBydASpd9mQjCGAkJz7FXisIlc1KU1fNMh07CEvdRFfTpL8gi?=
 =?iso-8859-1?Q?/ic1qS2kDPWsw0anuRSzHw50fsrw1gqpMwcBHzA8NETb+4SU2iGiiV5Ez4?=
 =?iso-8859-1?Q?W/IVxCKu9MX3JlAW4AlKb3C0rSvcqvN5oga6Hplqoc8/l9D6SkyZ2Cyi6n?=
 =?iso-8859-1?Q?ydfErSKKaYzSR3+Ae1Ymg90fXwMWk522AL6B0GCx6c0migNDRiM3E/c2q6?=
 =?iso-8859-1?Q?UaQZzxF3TPP/309xNKzEpioOH1OdQiJ8zgN28VFJsXFazhh1kSnhZBHtKd?=
 =?iso-8859-1?Q?6RcQpTL+A0XmbAMyk2CcJ9UCtVuysoAGUMFhyuLb8MXBkd/sT/zUKOOA5Y?=
 =?iso-8859-1?Q?C8hpEEd3q4vjDnwK5NgPBijAwmMep9X4Q6FURoeO8Q858IxeqyPz9nVKIi?=
 =?iso-8859-1?Q?7ZZCt16/XTb815sjHkYy8kEEafcFwQ300HT2Awn0ppKcxH2ieDvHyrmD1f?=
 =?iso-8859-1?Q?cAjFHkQijnk+OC+yKrQQzCuQbqrMrI36aMCFRB20ShG1FJScTIsKlQoa3z?=
 =?iso-8859-1?Q?oWquZ2cKNprZre8Sd8OxG6KC1PjMkQcm4OdwfD1rMrOUgSb2yGQ/hslzUS?=
 =?iso-8859-1?Q?NXfL2xzzMN5/aTg6fa0vvRsPt5av+RIdSuKVAp2grcvii9QSbr+8du/38d?=
 =?iso-8859-1?Q?i1PK4WuRaWJl/5/c7n0RozhW1/6duV/HSfd8ElErejOzcPxnZxNUS6cMRU?=
 =?iso-8859-1?Q?nEd77ob3CjxSHFoenl0CDbVrp2Zmm4hh9oMVdbwND40LgGPISsNWXjzVZP?=
 =?iso-8859-1?Q?zSmZ+YOlJeJ1u7PiOGBZy+WCLRheAXIUgJEUlJzyF2n9iKAh7ihpn5xkda?=
 =?iso-8859-1?Q?vevzDJeOpEDouu5vCWVg=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-7828-19-msonline-outlook-12d23.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR02MB4429.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: f10c3a63-36d3-4832-3466-08dd96a34b9f
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2025 07:03:44.8890
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI2PR02MB11048
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250519_000354_920019_C6067525 
X-CRM114-Status: GOOD (  17.44  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_HOTMAIL_RCVD2,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2025] added-zynq-fpga-manager
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds support to programm the PL part of the Zynq-7000 SoC,=0A=
It adds the 'zynq_fpga_manager' so we can use=0A=
=0A=
firmwareload -l=0A=
firmwareload -t zynq-fpga-manager /mnt/mmc0.0/design_1_wrapper.bit=0A=
=0A=
to programm the PL.=0A=
=0A=
Signed-off-by: Michael Graichen <michael.graichen@hotmail.com>=0A=
---=0A=
 arch/arm/mach-zynq/Makefile                   |   2 +-=0A=
 arch/arm/mach-zynq/firmware-zynq.c            | 145 ++++++=0A=
 .../mach-zynq/include/mach/zynq7000-regs.h    | 136 ++++++=0A=
 drivers/firmware/Kconfig                      |   7 +=0A=
 drivers/firmware/Makefile                     |   1 +=0A=
 drivers/firmware/zynq-fpga.c                  | 422 ++++++++++++++++++=0A=
 include/mach/zynq/firmware-zynq.h             |  85 ++++=0A=
 7 files changed, 797 insertions(+), 1 deletion(-)=0A=
 create mode 100644 arch/arm/mach-zynq/firmware-zynq.c=0A=
 create mode 100644 arch/arm/mach-zynq/include/mach/zynq7000-regs.h=0A=
 create mode 100644 drivers/firmware/zynq-fpga.c=0A=
 create mode 100644 include/mach/zynq/firmware-zynq.h=0A=
=0A=
diff --git a/arch/arm/mach-zynq/Makefile b/arch/arm/mach-zynq/Makefile=0A=
index d5e94859a6..b974425bc9 100644=0A=
--- a/arch/arm/mach-zynq/Makefile=0A=
+++ b/arch/arm/mach-zynq/Makefile=0A=
@@ -1,4 +1,4 @@=0A=
 # SPDX-License-Identifier: GPL-2.0-only=0A=
 =0A=
-obj-y +=3D zynq.o bootm-zynqimg.o=0A=
+obj-y +=3D zynq.o bootm-zynqimg.o firmware-zynq.o =0A=
 lwl-y +=3D cpu_init.o=0A=
diff --git a/arch/arm/mach-zynq/firmware-zynq.c b/arch/arm/mach-zynq/firmwa=
re-zynq.c=0A=
new file mode 100644=0A=
index 0000000000..f3d164ea28=0A=
--- /dev/null=0A=
+++ b/arch/arm/mach-zynq/firmware-zynq.c=0A=
@@ -0,0 +1,145 @@=0A=
+/* SPDX-License-Identifier: GPL-2.0 */=0A=
+/*=0A=
+ */=0A=
+#include <common.h>=0A=
+#include <init.h>=0A=
+#include <linux/iopoll.h>=0A=
+#include <mach/zynq/firmware-zynq.h>=0A=
+=0A=
+/*=0A=
+ * zynq_devc_fpga_load - Perform the fpga load=0A=
+ * @mgr:	FPGA-Manager=0A=
+ * @address:	Address to write to=0A=
+ * @size:	PL bitstream size=0A=
+ * @flags:	Flags - unused=0A=
+ *=0A=
+ * This function provides access to PCAP to transfer=0A=
+ * the required bitstream into PL.=0A=
+ *=0A=
+ * Return:	Returns status, either success or error+reason=0A=
+ */=0A=
+static int zynq_devc_fpga_load(struct fpgamgr *mgr, u64 address,=0A=
+				u32 size, u32 flags)=0A=
+{=0A=
+	unsigned long reg;=0A=
+	int ret;=0A=
+=0A=
+	if (!address || !size)=0A=
+		return -EINVAL;=0A=
+=0A=
+	/*=0A=
+	 * The Programming Seqenze, see ug585 (v.12.2) Juny 1, 2018 Chapter=0A=
+	 * 6.4.2 on page 211 Configure the PL via PCAP Bridge Example for=0A=
+	 * detailed information to this Sequenze=0A=
+	 */=0A=
+=0A=
+	/* Enable the PCAP bridge and select PCAP for reconfiguration */=0A=
+	reg =3D readl(mgr->regs + CTRL_OFFSET);=0A=
+	reg |=3D ( CTRL_PCAP_PR_MASK | CTRL_PCAP_MODE_MASK );=0A=
+	writel(reg, mgr->regs + CTRL_OFFSET);=0A=
+=0A=
+	/* Clear the Interrupts */=0A=
+	writel(0xffffffff, mgr->regs + INT_STS_OFFSET);=0A=
+=0A=
+	/* Initialize the PL */=0A=
+	reg =3D readl(mgr->regs + CTRL_OFFSET);=0A=
+	reg |=3D CTRL_PCFG_PROG_B_MASK;=0A=
+	writel(reg, mgr->regs + CTRL_OFFSET);=0A=
+=0A=
+	reg =3D readl(mgr->regs + CTRL_OFFSET);=0A=
+	reg &=3D ~CTRL_PCFG_PROG_B_MASK;=0A=
+	writel(reg, mgr->regs + CTRL_OFFSET);=0A=
+=0A=
+	ret =3D readl_poll_timeout(mgr->regs + STATUS_OFFSET, reg,=0A=
+			!(reg & STATUS_PCFG_INIT_MASK), 100 * USEC_PER_MSEC);=0A=
+	if (ret < 0) {=0A=
+		dev_err(&mgr->dev, "Timeout 1");=0A=
+		return ret;=0A=
+	}=0A=
+=0A=
+	reg =3D readl(mgr->regs + CTRL_OFFSET);=0A=
+	reg |=3D CTRL_PCFG_PROG_B_MASK;=0A=
+	writel(reg, mgr->regs + CTRL_OFFSET);=0A=
+=0A=
+	/* Clear the Interrupts */=0A=
+	writel(0xffffffff, mgr->regs + INT_STS_OFFSET);=0A=
+=0A=
+	/* Ensure that the PL is ready for programming */=0A=
+	ret =3D readl_poll_timeout(mgr->regs + STATUS_OFFSET, reg,=0A=
+			(reg & STATUS_PCFG_INIT_MASK), 100 * USEC_PER_MSEC);=0A=
+	if (ret < 0) {=0A=
+		dev_err(&mgr->dev, "Timeout 2");=0A=
+		return ret;=0A=
+	}=0A=
+=0A=
+	/* Check that there is room in the Command Queue */=0A=
+	ret =3D readl_poll_timeout(mgr->regs + STATUS_OFFSET, reg,=0A=
+			!(reg & STATUS_DMA_CMD_Q_F_MASK), 100 * USEC_PER_MSEC);=0A=
+	if (ret < 0) {=0A=
+		dev_err(&mgr->dev, "Timeout 3");=0A=
+		return ret;=0A=
+	}=0A=
+=0A=
+	/* Disable the PCAP loopback */=0A=
+	reg =3D readl(mgr->regs + MCTRL_OFFSET);=0A=
+	reg &=3D ~MCTRL_INT_PCAP_LPBK_MASK;=0A=
+	writel(reg, mgr->regs + MCTRL_OFFSET);=0A=
+=0A=
+	/* Program the PCAP_2x clock divider */=0A=
+	reg =3D readl(mgr->regs + CTRL_OFFSET);=0A=
+	reg &=3D ~CTRL_PCAP_RATE_EN_MASK;=0A=
+	writel(reg, mgr->regs + CTRL_OFFSET);=0A=
+=0A=
+	/* Source Address: Location of bitstream */=0A=
+	writel(address, mgr->regs + DMA_SRC_ADDR_OFFSET);=0A=
+=0A=
+	/* Destination Address: 0xFFFF_FFFF */=0A=
+	writel(0xffffffff, mgr->regs + DMA_DST_ADDR_OFFSET);=0A=
+=0A=
+	/* Source Length: Total number of 32-bit words in the bitstream */=0A=
+	writel((size >> 2), mgr->regs + DMA_SRC_LEN_OFFSET);=0A=
+=0A=
+	/* Destination Length: Total number of 32-bit words in the bitstream */=
=0A=
+	writel((size >> 2), mgr->regs + DMA_DEST_LEN_OFFSET);=0A=
+=0A=
+	/* Wait for the DMA transfer to be done */=0A=
+	ret =3D readl_poll_timeout(mgr->regs + INT_STS_OFFSET, reg,=0A=
+			(reg & INT_STS_D_P_DONE_MASK), 100 * USEC_PER_MSEC);=0A=
+	if (ret < 0) {=0A=
+		dev_err(&mgr->dev, "Timeout 4");=0A=
+		return ret;=0A=
+	}=0A=
+=0A=
+	/* Check for errors */=0A=
+	if (reg & INT_STS_ERROR_FLAGS_MASK) {=0A=
+		dev_err(&mgr->dev, "interrupt status register (0x%04lx)\n", reg);=0A=
+		return -EIO;=0A=
+	}=0A=
+=0A=
+	/* Wait for the DMA transfer to be done */=0A=
+	ret =3D readl_poll_timeout(mgr->regs + INT_STS_OFFSET, reg,=0A=
+			(reg & INT_STS_DONE_INT_MASK), 100 * USEC_PER_MSEC);=0A=
+	if (ret < 0) {=0A=
+		dev_err(&mgr->dev, "Timeout 5");=0A=
+		return ret;=0A=
+	}=0A=
+=0A=
+	dev_info(&mgr->dev, "FPGA config done\n");=0A=
+=0A=
+	return 0;=0A=
+}=0A=
+=0A=
+static const struct zynq_devc_ops devc_ops =3D {=0A=
+	.fpga_load =3D zynq_devc_fpga_load,=0A=
+};=0A=
+=0A=
+/**=0A=
+ * zynq_get_devc_ops - Get devc ops functions=0A=
+ *=0A=
+ * Return: Pointer of devc_ops structure=0A=
+ */=0A=
+const struct zynq_devc_ops *zynq_get_devc_ops(void)=0A=
+{=0A=
+	return &devc_ops;=0A=
+}=0A=
+EXPORT_SYMBOL_GPL(zynq_get_devc_ops);=0A=
diff --git a/arch/arm/mach-zynq/include/mach/zynq7000-regs.h b/arch/arm/mac=
h-zynq/include/mach/zynq7000-regs.h=0A=
new file mode 100644=0A=
index 0000000000..9ca64a689d=0A=
--- /dev/null=0A=
+++ b/arch/arm/mach-zynq/include/mach/zynq7000-regs.h=0A=
@@ -0,0 +1,136 @@=0A=
+/*=0A=
+ * (c) 2012 Steffen Trumtrar <s.trumtrar@pengutronix.de>=0A=
+ *=0A=
+ * This program is free software; you can redistribute it and/or modify=0A=
+ * it under the terms of the GNU General Public License as published by=0A=
+ * the Free Software Foundation; either version 2 of the License, or=0A=
+ * (at your option) any later version.=0A=
+ *=0A=
+ * This program is distributed in the hope that it will be useful,=0A=
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of=0A=
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the=0A=
+ * GNU General Public License for more details.=0A=
+ *=0A=
+ */=0A=
+=0A=
+#define ZYNQ_UART0_BASE_ADDR		0xE0000000=0A=
+#define ZYNQ_UART1_BASE_ADDR		0xE0001000=0A=
+#define ZYNQ_I2C0_BASE_ADDR		0xE0004000=0A=
+#define ZYNQ_I2C1_BASE_ADDR		0xE0005000=0A=
+#define ZYNQ_SPI0_BASE_ADDR		0xE0006000=0A=
+#define ZYNQ_SPI1_BASE_ADDR		0xE0007000=0A=
+#define ZYNQ_CAN0_BASE_ADDR		0xE0008000=0A=
+#define ZYNQ_CAN1_BASE_ADDR		0xE0009000=0A=
+#define ZYNQ_GPIO_BASE_ADDR		0xE000A000=0A=
+#define ZYNQ_GEM0_BASE_ADDR		0xE000B000=0A=
+=0A=
+#define ZYNQ_SLCR_BASE			0xF8000000=0A=
+#define ZYNQ_SLCR_SCL			(ZYNQ_SLCR_BASE + 0x000)=0A=
+#define ZYNQ_SLCR_LOCK			(ZYNQ_SLCR_BASE + 0x004)=0A=
+#define ZYNQ_SLCR_UNLOCK		(ZYNQ_SLCR_BASE + 0x008)=0A=
+#define ZYNQ_SLCR_LOCKSTA		(ZYNQ_SLCR_BASE + 0x00C)=0A=
+#define ZYNQ_CLOCK_CTRL_BASE		(ZYNQ_SLCR_BASE + 0x100)=0A=
+#define ZYNQ_ARM_PLL_CTRL		0x000=0A=
+#define ZYNQ_DDR_PLL_CTRL		0x004=0A=
+#define ZYNQ_IO_PLL_CTRL		0x008=0A=
+#define ZYNQ_PLL_STATUS			0x00C=0A=
+#define ZYNQ_ARM_PLL_CFG		0x010=0A=
+#define ZYNQ_DDR_PLL_CFG		0x014=0A=
+#define ZYNQ_IO_PLL_CFG			0x018=0A=
+#define ZYNQ_ARM_CLK_CTRL		0x020=0A=
+#define ZYNQ_DDR_CLK_CTRL		0x024=0A=
+#define ZYNQ_DCI_CLK_CTRL		0x028=0A=
+#define ZYNQ_APER_CLK_CTRL		0x02C=0A=
+#define ZYNQ_USB0_CLK_CTRL		0x030=0A=
+#define ZYNQ_USB1_CLK_CTRL		0x034=0A=
+#define ZYNQ_GEM0_RCLK_CTRL		0x038=0A=
+#define ZYNQ_GEM1_RCLK_CTRL		0x03C=0A=
+#define ZYNQ_GEM0_CLK_CTRL		0x040=0A=
+#define ZYNQ_GEM1_CLK_CTRL		0x044=0A=
+#define ZYNQ_SMC_CLK_CTRL		0x048=0A=
+#define ZYNQ_LQSPI_CLK_CTRL		0x04C=0A=
+#define ZYNQ_SDIO_CLK_CTRL		0x050=0A=
+#define ZYNQ_UART_CLK_CTRL		0x054=0A=
+#define ZYNQ_SPI_CLK_CTRL		0x058=0A=
+#define ZYNQ_CAN_CLK_CTRL		0x05C=0A=
+#define ZYNQ_CAN_MIOCLK_CTRL		0x060=0A=
+#define ZYNQ_DBG_CLK_CTRL		0x064=0A=
+#define ZYNQ_PCAP_CLK_CTRL		0x068=0A=
+#define ZYNQ_TOPSW_CLK_CTRL		0x06C=0A=
+#define ZYNQ_FPGA0_CLK_CTRL		0x070=0A=
+#define ZYNQ_FPGA1_CLK_CTRL		0x080=0A=
+#define ZYNQ_FPGA2_CLK_CTRL		0x090=0A=
+#define ZYNQ_FPGA3_CLK_CTRL		0x0A0=0A=
+#define ZYNQ_CLK_621_TRUE		0x0C4=0A=
+#define ZYNQ_RST_CTRL_BASE		(ZYNQ_SLCR_BASE + 0x200)=0A=
+#define ZYNQ_SLCR_BOOT_MODE		(ZYNQ_SLCR_BASE + 0x25C)=0A=
+#define ZYNQ_PSS_RST_CTRL		(ZYNQ_RST_CTRL_BASE + 0x000)=0A=
+#define ZYNQ_DDR_RST_CTRL		(ZYNQ_RST_CTRL_BASE + 0x004)=0A=
+#define ZYNQ_TOPSW_RST_CTRL		(ZYNQ_RST_CTRL_BASE + 0x008)=0A=
+#define ZYNQ_DMAC_RST_CTRL		(ZYNQ_RST_CTRL_BASE + 0x00C)=0A=
+#define ZYNQ_USB_RST_CTRL		(ZYNQ_RST_CTRL_BASE + 0x010)=0A=
+#define ZYNQ_GEM_RST_CTRL		(ZYNQ_RST_CTRL_BASE + 0x014)=0A=
+#define ZYNQ_SDIO_RST_CTRL		(ZYNQ_RST_CTRL_BASE + 0x018)=0A=
+#define ZYNQ_SPI_RST_CTRL		(ZYNQ_RST_CTRL_BASE + 0x01C)=0A=
+#define ZYNQ_CAN_RST_CTRL		(ZYNQ_RST_CTRL_BASE + 0x020)=0A=
+#define ZYNQ_I2C_RST_CTRL		(ZYNQ_RST_CTRL_BASE + 0x024)=0A=
+#define ZYNQ_UART_RST_CTRL		(ZYNQ_RST_CTRL_BASE + 0x028)=0A=
+#define ZYNQ_GPIO_RST_CTRL		(ZYNQ_RST_CTRL_BASE + 0x02C)=0A=
+#define ZYNQ_LQSPI_RST_CTRL		(ZYNQ_RST_CTRL_BASE + 0x030)=0A=
+#define ZYNQ_SMC_RST_CTRL		(ZYNQ_RST_CTRL_BASE + 0x034)=0A=
+#define ZYNQ_OCM_RST_CTRL		(ZYNQ_RST_CTRL_BASE + 0x038)=0A=
+#define ZYNQ_DEVCI_RST_CTRL		(ZYNQ_RST_CTRL_BASE + 0x03C)=0A=
+#define ZYNQ_FPGA_RST_CTRL		(ZYNQ_RST_CTRL_BASE + 0x040)=0A=
+#define ZYNQ_A9_CPU_RST_CTRL		(ZYNQ_RST_CTRL_BASE + 0x044)=0A=
+#define ZYNQ_RS_AWDT_CTRL		(ZYNQ_RST_CTRL_BASE + 0x04C)=0A=
+#define ZYNQ_REBOOT_STATUS		(ZYNQ_SLCR_BASE + 0x258)=0A=
+#define ZYNQ_BOOT_MODE			(ZYNQ_SLCR_BASE + 0x25C)=0A=
+#define ZYNQ_APU_CTRL			(ZYNQ_SLCR_BASE + 0x300)=0A=
+#define ZYNQ_WDT_CLK_SEL		(ZYNQ_SLCR_BASE + 0x304)=0A=
+#define ZYNQ_PSS_IDCODE			(ZYNQ_SLCR_BASE + 0x530)=0A=
+#define ZYNQ_DDR_URGENT			(ZYNQ_SLCR_BASE + 0x600)=0A=
+#define ZYNQ_DDR_CAL_START		(ZYNQ_SLCR_BASE + 0x60C)=0A=
+#define ZYNQ_DDR_REF_START		(ZYNQ_SLCR_BASE + 0x614)=0A=
+#define ZYNQ_DDR_CMD_STA		(ZYNQ_SLCR_BASE + 0x618)=0A=
+#define ZYNQ_DDR_URGENT_SEL		(ZYNQ_SLCR_BASE + 0x61C)=0A=
+#define ZYNQ_DDR_DFI_STATUS		(ZYNQ_SLCR_BASE + 0x620)=0A=
+#define ZYNQ_MIO_BASE			(ZYNQ_SLCR_BASE + 0x700)=0A=
+#define ZYNQ_MIO_LOOPBACK		(ZYNQ_MIO_BASE + 0x104)=0A=
+#define ZYNQ_MIO_MST_TRI0		(ZYNQ_MIO_BASE + 0x10C)=0A=
+#define ZYNQ_MIO_MST_TRI1		(ZYNQ_MIO_BASE + 0x110)=0A=
+#define ZYNQ_SD0_WP_SEL			(ZYNQ_SLCR_BASE + 0x830)=0A=
+#define ZYNQ_SD1_WP_SEL			(ZYNQ_SLCR_BASE + 0x834)=0A=
+#define ZYNQ_LVL_SHIFTR_EN		(ZYNQ_SLCR_BASE + 0x900)=0A=
+#define ZYNQ_OCM_CFG			(ZYNQ_SLCR_BASE + 0x910)=0A=
+#define ZYNQ_GPIOB_BASE			(ZYNQ_SLCR_BASE + 0xB00)=0A=
+#define ZYNQ_GPIOB_CTRL			(ZYNQ_GPIOB_BASE + 0x000)=0A=
+#define ZYNQ_GPIOB_CFG_CMOS18		(ZYNQ_GPIOB_BASE + 0x004)=0A=
+#define ZYNQ_GPIOB_CFG_CMOS25		(ZYNQ_GPIOB_BASE + 0x008)=0A=
+#define ZYNQ_GPIOB_CFG_CMOS33		(ZYNQ_GPIOB_BASE + 0x00C)=0A=
+#define ZYNQ_GPIOB_CFG_LVTTL		(ZYNQ_GPIOB_BASE + 0x010)=0A=
+#define ZYNQ_GPIOB_CFG_HSTL		(ZYNQ_GPIOB_BASE + 0x014)=0A=
+#define ZYNQ_GPIOB_DRV_BIAS_CTRL	(ZYNQ_GPIOB_BASE + 0x018)=0A=
+#define ZYNQ_DDRIOB_BASE		(ZYNQ_SLCR_BASE + 0xB40)=0A=
+#define ZYNQ_DDRIOB_ADDR0		(ZYNQ_DDRIOB_BASE + 0x000)=0A=
+#define ZYNQ_DDRIOB_ADDR1		(ZYNQ_DDRIOB_BASE + 0x004)=0A=
+#define ZYNQ_DDRIOB_DATA0		(ZYNQ_DDRIOB_BASE + 0x008)=0A=
+#define ZYNQ_DDRIOB_DATA1		(ZYNQ_DDRIOB_BASE + 0x00C)=0A=
+#define ZYNQ_DDRIOB_DIFF0		(ZYNQ_DDRIOB_BASE + 0x010)=0A=
+#define ZYNQ_DDRIOB_DIFF1		(ZYNQ_DDRIOB_BASE + 0x014)=0A=
+#define ZYNQ_DDRIOB_CLOCK		(ZYNQ_DDRIOB_BASE + 0x018)=0A=
+#define ZYNQ_DDRIOB_DRIVE_SLEW_ADDR	(ZYNQ_DDRIOB_BASE + 0x01C)=0A=
+#define ZYNQ_DDRIOB_DRIVE_SLEW_DATA	(ZYNQ_DDRIOB_BASE + 0x020)=0A=
+#define ZYNQ_DDRIOB_DRIVE_SLEW_DIFF	(ZYNQ_DDRIOB_BASE + 0x024)=0A=
+#define ZYNQ_DDRIOB_DRIVE_SLEW_CLOCK	(ZYNQ_DDRIOB_BASE + 0x028)=0A=
+#define ZYNQ_DDRIOB_DDR_CTRL		(ZYNQ_DDRIOB_BASE + 0x02C)=0A=
+#define ZYNQ_DDRIOB_DCI_CTRL		(ZYNQ_DDRIOB_BASE + 0x030)=0A=
+#define ZYNQ_DDRIOB_DCI_STATUS	(ZYNQ_DDRIOB_BASE + 0x034)=0A=
+#define ZYNQ_DEVCFG_MCTRL		(ZYNQ_DEVCFG_BASE + 0x080)=0A=
+=0A=
+#define ZYNQ_TTC0_BASE_ADDR		0xF8001000=0A=
+#define ZYNQ_TTC1_BASE_ADDR		0xF8002000=0A=
+=0A=
+#define ZYNQ_DDRC_BASE			0xF8006000=0A=
+#define ZYNQ_DEVCFG_BASE		0xf8007000=0A=
+=0A=
+#define CORTEXA9_SCU_TIMER_BASE_ADDR	0xF8F00600=0A=
diff --git a/drivers/firmware/Kconfig b/drivers/firmware/Kconfig=0A=
index 264f7b2a5a..4f216bc7cb 100644=0A=
--- a/drivers/firmware/Kconfig=0A=
+++ b/drivers/firmware/Kconfig=0A=
@@ -20,6 +20,13 @@ config FIRMWARE_ALTERA_SOCFPGA=0A=
 	depends on ARCH_SOCFPGA=0A=
 	select FIRMWARE=0A=
 =0A=
+config FIRMWARE_ZYNQ7000_FPGA=0A=
+	bool "Xilinx Zynq 7000 FPGA loader"=0A=
+	depends on ARCH_ZYNQ=0A=
+	select FIRMWARE=0A=
+	help=0A=
+	  Load a bitstream to the PL of Zynq=0A=
+=0A=
 config FIRMWARE_ZYNQMP_FPGA=0A=
 	bool "Xilinx ZynqMP FPGA loader"=0A=
 	depends on ARCH_ZYNQMP=0A=
diff --git a/drivers/firmware/Makefile b/drivers/firmware/Makefile=0A=
index d0ebe663ea..2032a830e4 100644=0A=
--- a/drivers/firmware/Makefile=0A=
+++ b/drivers/firmware/Makefile=0A=
@@ -2,6 +2,7 @@=0A=
 obj-$(CONFIG_SEMIHOSTING) +=3D semihosting.o=0A=
 obj-$(CONFIG_FIRMWARE_ALTERA_SERIAL) +=3D altera_serial.o=0A=
 obj-$(CONFIG_FIRMWARE_ALTERA_SOCFPGA) +=3D socfpga.o socfpga_sdr.o=0A=
+obj-$(CONFIG_FIRMWARE_ZYNQ7000_FPGA) +=3D zynq-fpga.o=0A=
 obj-$(CONFIG_FIRMWARE_ZYNQMP_FPGA) +=3D zynqmp-fpga.o=0A=
 obj-$(CONFIG_QEMU_FW_CFG) +=3D qemu_fw_cfg.o=0A=
 obj-$(CONFIG_TI_SCI_PROTOCOL) +=3D ti_sci.o=0A=
diff --git a/drivers/firmware/zynq-fpga.c b/drivers/firmware/zynq-fpga.c=0A=
new file mode 100644=0A=
index 0000000000..4b543ddc66=0A=
--- /dev/null=0A=
+++ b/drivers/firmware/zynq-fpga.c=0A=
@@ -0,0 +1,422 @@=0A=
+// SPDX-License-Identifier: GPL-2.0=0A=
+/*=0A=
+ * Xilinx Zynq MPSoC and Zynq-7000 PL loading=0A=
+ *=0A=
+ * Copyright (c) 2018 Thomas Haemmerle <thomas.haemmerle@wolfvision.net>=
=0A=
+ *=0A=
+ * based on U-Boot zynqmppl code=0A=
+ *=0A=
+ * (C) Copyright 2015 - 2016, Xilinx, Inc,=0A=
+ * Michal Simek <michal.simek@xilinx.com>=0A=
+ * Siva Durga Prasad <siva.durga.paladugu@xilinx.com> *=0A=
+ */=0A=
+=0A=
+#include <environment.h>=0A=
+#include <firmware.h>=0A=
+#include <common.h>=0A=
+#include <init.h>=0A=
+#include <dma.h>=0A=
+#include <mach/zynq/firmware-zynq.h>=0A=
+#include <mach/zynq/zynq7000-regs.h>=0A=
+=0A=
+enum xilinx_byte_order {=0A=
+	XILINX_BYTE_ORDER_BIT,=0A=
+	XILINX_BYTE_ORDER_BIN,=0A=
+};=0A=
+=0A=
+struct bs_header {=0A=
+	__be16 length;=0A=
+	u8 padding[9];=0A=
+	__be16 size;=0A=
+	char entries[0];=0A=
+} __attribute__ ((packed));=0A=
+=0A=
+struct bs_header_entry {=0A=
+	char type;=0A=
+	__be16 length;=0A=
+	char data[0];=0A=
+} __attribute__ ((packed));=0A=
+=0A=
+static void copy_words_swapped(u32 *dst, const u32 *src, size_t size)=0A=
+{=0A=
+	int i;=0A=
+=0A=
+	for (i =3D 0; i < size; i++)=0A=
+		dst[i] =3D __swab32(src[i]);=0A=
+}=0A=
+=0A=
+static int get_byte_order(const u32 *bin_header, size_t size,=0A=
+			  enum xilinx_byte_order *byte_order)=0A=
+{=0A=
+	if (size < BIN_HEADER_LENGTH * sizeof(*bin_header))=0A=
+		return -EINVAL;=0A=
+=0A=
+	if (bin_header[SYNC_WORD_OFFSET] =3D=3D SYNC_WORD) {=0A=
+		*byte_order =3D XILINX_BYTE_ORDER_BIT;=0A=
+		return 0;=0A=
+	}=0A=
+=0A=
+	if (bin_header[SYNC_WORD_OFFSET] =3D=3D __swab32(SYNC_WORD)) {=0A=
+		*byte_order =3D XILINX_BYTE_ORDER_BIN;=0A=
+		return 0;=0A=
+	}=0A=
+=0A=
+	return -EINVAL;=0A=
+}=0A=
+=0A=
+static bool is_bin_header_valid(const u32 *bin_header, size_t size,=0A=
+				enum xilinx_byte_order byte_order)=0A=
+{=0A=
+	size_t i;=0A=
+=0A=
+	if (size < BIN_HEADER_LENGTH * sizeof(*bin_header))=0A=
+		return false;=0A=
+=0A=
+	for (i =3D 0; i < BIN_HEADER_LENGTH; i++, bin_header++) {=0A=
+		u32 current;=0A=
+		u32 expected;=0A=
+=0A=
+		if (byte_order =3D=3D XILINX_BYTE_ORDER_BIT)=0A=
+			current =3D *bin_header;=0A=
+		else=0A=
+			current =3D __swab32(*bin_header);=0A=
+=0A=
+		switch (i) {=0A=
+		case BUS_WIDTH_AUTO_DETECT1_OFFSET:=0A=
+			expected =3D BUS_WIDTH_AUTO_DETECT1;=0A=
+			break;=0A=
+		case BUS_WIDTH_AUTO_DETECT2_OFFSET:=0A=
+			expected =3D BUS_WIDTH_AUTO_DETECT2;=0A=
+			break;=0A=
+		case SYNC_WORD_OFFSET:=0A=
+			expected =3D SYNC_WORD;=0A=
+			break;=0A=
+		default:=0A=
+			expected =3D DUMMY_WORD;=0A=
+			break;=0A=
+		}=0A=
+=0A=
+		if (current !=3D expected)=0A=
+			return false;=0A=
+	}=0A=
+=0A=
+	return true;=0A=
+}=0A=
+=0A=
+static int get_header_length(const char *header, size_t size)=0A=
+{=0A=
+	u32 *buf_u32;=0A=
+	int p;=0A=
+=0A=
+	for (p =3D 0; p < size; p++) {=0A=
+		buf_u32 =3D (u32 *)&header[p];=0A=
+		if (*buf_u32 =3D=3D DUMMY_WORD)=0A=
+			return p;=0A=
+	}=0A=
+	return -EINVAL;=0A=
+}=0A=
+=0A=
+static void zynq_fpga_show_header(const struct device_d *dev,=0A=
+			 struct bs_header *header, size_t size)=0A=
+{=0A=
+	char * fpga_version_string =3D NULL;=0A=
+	struct bs_header_entry *entry;=0A=
+	unsigned int i;=0A=
+	unsigned int length;=0A=
+=0A=
+	for (i =3D 0; i < size - sizeof(*header); i +=3D sizeof(*entry) + length)=
 {=0A=
+		entry =3D (struct bs_header_entry *)&header->entries[i];=0A=
+		length =3D __be16_to_cpu(entry->length);=0A=
+=0A=
+		switch (entry->type) {=0A=
+		case 'a':=0A=
+			printf("Design: %s\n", entry->data);=0A=
+			break;=0A=
+		case 'b':=0A=
+			printf("Part number: %s\n", entry->data);=0A=
+			asprintf(&fpga_version_string, "%s", entry->data);=0A=
+			break;=0A=
+		case 'c':=0A=
+			printf("Date: %s\n", entry->data);=0A=
+			asprintf(&fpga_version_string, "%s_%s", fpga_version_string, entry->dat=
a);=0A=
+			break;=0A=
+		case 'd':=0A=
+			printf("Time: %s\n", entry->data);=0A=
+			asprintf(&fpga_version_string, "%s_%s", fpga_version_string, entry->dat=
a);=0A=
+			break;=0A=
+		case 'e':=0A=
+			/* Size entry does not have a length but is be32 int */=0A=
+			printf("Size: %d bytes\n", (length << 16) + (entry->data[0] << 8) + ent=
ry->data[1]);=0A=
+			setenv("fpga-version", fpga_version_string);=0A=
+			return;=0A=
+		default:=0A=
+			dev_warn(dev, "Invalid header entry: %c", entry->type);=0A=
+			return;=0A=
+		}=0A=
+	}=0A=
+=0A=
+	return;=0A=
+}=0A=
+=0A=
+static int fpgamgr_program_finish(struct firmware_handler *fh)=0A=
+{=0A=
+	struct fpgamgr *mgr =3D container_of(fh, struct fpgamgr, fh);=0A=
+	char *buf_aligned;=0A=
+	u32 *body;=0A=
+	size_t body_length;=0A=
+	int header_length =3D 0;=0A=
+	enum xilinx_byte_order byte_order;=0A=
+	u64 addr;=0A=
+	int status =3D 0;=0A=
+#ifdef CONFIG_FIRMWARE_ZYNQMP_FPGA=0A=
+	u32 *buf_size =3D NULL;=0A=
+	u8 flags =3D 0;=0A=
+#endif=0A=
+	if (!mgr->buf) {=0A=
+		status =3D -ENOBUFS;=0A=
+		dev_err(&mgr->dev, "buffer is NULL\n");=0A=
+		goto err_free;=0A=
+	}=0A=
+=0A=
+	header_length =3D get_header_length(mgr->buf, mgr->size);=0A=
+	if (header_length < 0) {=0A=
+		status =3D header_length;=0A=
+		goto err_free;=0A=
+	}=0A=
+	zynq_fpga_show_header(&mgr->dev,=0A=
+			      (struct bs_header *)mgr->buf, header_length);=0A=
+=0A=
+	body =3D (u32 *)&mgr->buf[header_length];=0A=
+	body_length =3D mgr->size - header_length;=0A=
+=0A=
+	status =3D get_byte_order(body, body_length, &byte_order);=0A=
+	if (status < 0)=0A=
+		goto err_free;=0A=
+=0A=
+	if (!is_bin_header_valid(body, body_length, byte_order)) {=0A=
+		dev_err(&mgr->dev, "Invalid bitstream header\n");=0A=
+		status =3D  -EINVAL;=0A=
+		goto err_free;=0A=
+	}=0A=
+=0A=
+	buf_aligned =3D dma_alloc_coherent(DMA_DEVICE_BROKEN, body_length, DMA_AD=
DRESS_BROKEN);=0A=
+	if (!buf_aligned) {=0A=
+		status =3D -ENOBUFS;=0A=
+		goto err_free;=0A=
+	}=0A=
+=0A=
+#ifdef CONFIG_FIRMWARE_ZYNQMP_FPGA=0A=
+	if (!(mgr->features & ZYNQMP_PM_FEATURE_SIZE_NOT_NEEDED)) {=0A=
+		buf_size =3D dma_alloc_coherent(sizeof(*buf_size),=0A=
+		DMA_ADDRESS_BROKEN);=0A=
+		if (!buf_size) {=0A=
+			status =3D -ENOBUFS;=0A=
+			goto err_free;=0A=
+		}=0A=
+		*buf_size =3D body_length;=0A=
+	}=0A=
+=0A=
+	if (!(mgr->features & ZYNQMP_PM_FEATURE_BYTE_ORDER_IRREL) &&=0A=
+	    byte_order =3D=3D XILINX_BYTE_ORDER_BIN)=0A=
+		copy_words_swapped((u32 *)buf_aligned, body,=0A=
+				   body_length / sizeof(u32));=0A=
+	else=0A=
+		memcpy((u32 *)buf_aligned, body, body_length);=0A=
+=0A=
+	addr =3D (u64)buf_aligned;=0A=
+=0A=
+	/* we do not provide a header */=0A=
+	flags |=3D ZYNQMP_FPGA_BIT_ONLY_BIN;=0A=
+=0A=
+	if (!(mgr->features & ZYNQMP_PM_FEATURE_SIZE_NOT_NEEDED) && buf_size) {=
=0A=
+		status =3D mgr->eemi_ops->fpga_load(addr,=0A=
+				(u32)(uintptr_t)buf_size,=0A=
+				flags);=0A=
+		dma_free_coherent(buf_size, 0, sizeof(*buf_size));=0A=
+	} else {=0A=
+		status =3D mgr->eemi_ops->fpga_load(addr, (u32)(body_length),=0A=
+						  flags);=0A=
+	}=0A=
+#endif=0A=
+#ifdef CONFIG_FIRMWARE_ZYNQ7000_FPGA=0A=
+	/* UG585 (v1.12.2) July 1, 2018 Chapter 6.4.3=0A=
+	 * In all modes, the DMA transactions must be 64-byte aligned to prevent=
=0A=
+	 * accidently crossing a 4K byte boundary.=0A=
+	 */=0A=
+	if(byte_order =3D=3D XILINX_BYTE_ORDER_BIN)=0A=
+		copy_words_swapped((u32 *)buf_aligned, body, body_length / sizeof(u32));=
=0A=
+	else=0A=
+		memcpy((u32 *)buf_aligned, body, body_length);=0A=
+=0A=
+	addr =3D (u32)buf_aligned;=0A=
+=0A=
+	writel(0x0000DF0D, ZYNQ_SLCR_UNLOCK);=0A=
+	writel(0x0000000f, ZYNQ_SLCR_BASE + 0x240); // assert FPGA resets=0A=
+=0A=
+	writel(0x00000000, ZYNQ_SLCR_BASE + 0x900); // disable levelshifter=0A=
+	writel(0x0000000a, ZYNQ_SLCR_BASE + 0x900); // enable levelshifter PS-PL=
=0A=
+=0A=
+	status =3D mgr->devc_ops->fpga_load(mgr, addr, (u32)(body_length), 0);=0A=
+=0A=
+	writel(0x0000000f, ZYNQ_SLCR_BASE + 0x900); // enable all levelshifter=0A=
+	writel(0x00000000, ZYNQ_SLCR_BASE + 0x240); // deassert FPGA resets=0A=
+=0A=
+	writel(0x0000767B, ZYNQ_SLCR_LOCK);=0A=
+#endif=0A=
+	if (status < 0)=0A=
+		dev_err(&mgr->dev, "unable to load fpga\n");=0A=
+=0A=
+	dma_free_coherent(DMA_DEVICE_BROKEN, buf_aligned, 0, body_length);=0A=
+=0A=
+ err_free:=0A=
+	free(mgr->buf);=0A=
+=0A=
+	return status;=0A=
+}=0A=
+=0A=
+static int fpgamgr_program_write_buf(struct firmware_handler *fh,=0A=
+		const void *buf, size_t size)=0A=
+{=0A=
+	struct fpgamgr *mgr =3D container_of(fh, struct fpgamgr, fh);=0A=
+=0A=
+	/* Since write() is called by copy_file, we only receive chuncks with=0A=
+	 * size RW_BUF_SIZE of the bitstream.=0A=
+	 * Buffer the chunks here and handle it in close()=0A=
+	 */=0A=
+=0A=
+	mgr->buf =3D realloc(mgr->buf, mgr->size + size);=0A=
+	if (!mgr->buf)=0A=
+		return -ENOBUFS;=0A=
+=0A=
+	memcpy(&(mgr->buf[mgr->size]), buf, size);=0A=
+	mgr->size +=3D size;=0A=
+=0A=
+	return 0;=0A=
+}=0A=
+=0A=
+static int fpgamgr_program_start(struct firmware_handler *fh)=0A=
+{=0A=
+	struct fpgamgr *mgr =3D container_of(fh, struct fpgamgr, fh);=0A=
+=0A=
+	mgr->size =3D 0;=0A=
+	mgr->buf =3D NULL;=0A=
+=0A=
+	return 0;=0A=
+}=0A=
+=0A=
+=0A=
+static int programmed_get(struct param_d *p, void *priv)=0A=
+{=0A=
+#ifdef CONFIG_FIRMWARE_ZYNQMP_FPGA=0A=
+	struct fpgamgr *mgr =3D priv;=0A=
+	u32 status =3D 0x00;=0A=
+	int ret =3D 0;=0A=
+=0A=
+	ret =3D mgr->eemi_ops->fpga_getstatus(&status);=0A=
+	if (ret)=0A=
+		return ret;=0A=
+=0A=
+	mgr->programmed =3D !!(status & ZYNQMP_PCAP_STATUS_FPGA_DONE);=0A=
+#endif=0A=
+	return 0;=0A=
+}=0A=
+=0A=
+static int zynq_fpga_probe(struct device_d *dev)=0A=
+{=0A=
+	struct fpgamgr *mgr;=0A=
+	struct firmware_handler *fh;=0A=
+	const char *alias =3D of_alias_get(dev->device_node);=0A=
+	const char *model =3D NULL;=0A=
+	struct param_d *p;=0A=
+#ifdef CONFIG_FIRMWARE_ZYNQMP_FPGA=0A=
+	u32 api_version;=0A=
+#endif=0A=
+#ifdef CONFIG_FIRMWARE_ZYNQ7000_FPGA=0A=
+	struct resource *iores;=0A=
+#endif=0A=
+	int ret;=0A=
+=0A=
+	mgr =3D xzalloc(sizeof(*mgr));=0A=
+	fh =3D &mgr->fh;=0A=
+=0A=
+	if (alias)=0A=
+		fh->id =3D xstrdup(alias);=0A=
+	else=0A=
+		fh->id =3D xstrdup("zynq-fpga-manager");=0A=
+=0A=
+	fh->open =3D fpgamgr_program_start;=0A=
+	fh->write =3D fpgamgr_program_write_buf;=0A=
+	fh->close =3D fpgamgr_program_finish;=0A=
+	of_property_read_string(dev->device_node, "compatible", &model);=0A=
+	if (model)=0A=
+		fh->model =3D xstrdup(model);=0A=
+	fh->dev =3D dev;=0A=
+=0A=
+#ifdef CONFIG_FIRMWARE_ZYNQMP_FPGA=0A=
+	mgr->eemi_ops =3D zynqmp_pm_get_eemi_ops();=0A=
+=0A=
+	ret =3D mgr->eemi_ops->get_api_version(&api_version);=0A=
+	if (ret) {=0A=
+		dev_err(&mgr->dev, "could not get API version\n");=0A=
+		goto out;=0A=
+	}=0A=
+	if (api_version >=3D ZYNQMP_PM_VERSION(1, 1))=0A=
+		mgr->features |=3D ZYNQMP_PM_VERSION_1_1_FEATURES;=0A=
+#endif=0A=
+#ifdef CONFIG_FIRMWARE_ZYNQ7000_FPGA=0A=
+	iores =3D dev_request_mem_resource(dev, 0);=0A=
+	if (IS_ERR(iores)) {=0A=
+		ret =3D PTR_ERR(iores);=0A=
+		goto out;=0A=
+	}=0A=
+	mgr->regs =3D IOMEM(iores->start);=0A=
+	mgr->devc_ops =3D zynq_get_devc_ops();=0A=
+	/* Unlock DevC in case BootROM did not do it */=0A=
+	writel(DEVC_UNLOCK_CODE, mgr->regs + UNLOCK_OFFSET);=0A=
+#endif=0A=
+	mgr->features =3D 0;=0A=
+=0A=
+	dev_dbg(dev, "Registering Zynq FPGA programmer\n");=0A=
+	mgr->dev.id =3D DEVICE_ID_SINGLE;=0A=
+	dev_set_name(&mgr->dev, "zynq_fpga");=0A=
+	mgr->dev.parent =3D dev;=0A=
+	ret =3D register_device(&mgr->dev);=0A=
+	if (ret)=0A=
+		goto out;=0A=
+=0A=
+	p =3D dev_add_param_bool(&mgr->dev, "programmed", NULL, programmed_get,=
=0A=
+			&mgr->programmed, mgr);=0A=
+	if (IS_ERR(p)) {=0A=
+		ret =3D PTR_ERR(p);=0A=
+		goto out_unreg;=0A=
+	}=0A=
+=0A=
+	fh->dev =3D &mgr->dev;=0A=
+	ret =3D firmwaremgr_register(fh);=0A=
+	if (ret !=3D 0) {=0A=
+		free(mgr);=0A=
+		goto out_unreg;=0A=
+	}=0A=
+=0A=
+	return 0;=0A=
+out_unreg:=0A=
+	unregister_device(&mgr->dev);=0A=
+out:=0A=
+	free(fh->id);=0A=
+	free(mgr);=0A=
+=0A=
+	return ret;=0A=
+}=0A=
+=0A=
+static struct of_device_id zynq_fpga_id_table[] =3D {=0A=
+	{ .compatible =3D "xlnx,zynqmp-pcap-fpga" },=0A=
+	{ .compatible =3D "xlnx,zynq-devcfg-1.0" },=0A=
+	{ /* sentinel */ }=0A=
+};=0A=
+=0A=
+static struct driver_d zynq_fpga_driver =3D {=0A=
+	.name =3D "zynq_fpga_manager",=0A=
+	.of_compatible =3D DRV_OF_COMPAT(zynq_fpga_id_table),=0A=
+	.probe =3D zynq_fpga_probe,=0A=
+};=0A=
+device_platform_driver(zynq_fpga_driver);=0A=
diff --git a/include/mach/zynq/firmware-zynq.h b/include/mach/zynq/firmware=
-zynq.h=0A=
new file mode 100644=0A=
index 0000000000..217b1e9b2e=0A=
--- /dev/null=0A=
+++ b/include/mach/zynq/firmware-zynq.h=0A=
@@ -0,0 +1,85 @@=0A=
+/* SPDX-License-Identifier: GPL-2.0 */=0A=
+/*=0A=
+ * Xilinx Zynq Firmware layer=0A=
+ *=0A=
+ */=0A=
+=0A=
+#ifndef FIRMWARE_ZYNQ_H_=0A=
+#define FIRMWARE_ZYNQ_H_=0A=
+=0A=
+#include <firmware.h>=0A=
+=0A=
+#define CTRL_OFFSET				0x00=0A=
+#define LOCK_OFFSET				0x04=0A=
+#define INT_STS_OFFSET				0x0c=0A=
+#define INT_MASK_OFFSET			0x10=0A=
+#define STATUS_OFFSET				0x14=0A=
+#define DMA_SRC_ADDR_OFFSET			0x18=0A=
+#define DMA_DST_ADDR_OFFSET			0x1c=0A=
+#define DMA_SRC_LEN_OFFSET			0x20=0A=
+#define DMA_DEST_LEN_OFFSET			0x24=0A=
+#define UNLOCK_OFFSET				0x34=0A=
+#define MCTRL_OFFSET				0x80=0A=
+=0A=
+#define CTRL_PCFG_PROG_B_MASK			BIT(30)=0A=
+#define CTRL_PCAP_PR_MASK			BIT(27)=0A=
+#define CTRL_PCAP_MODE_MASK			BIT(26)=0A=
+#define CTRL_PCAP_RATE_EN_MASK		BIT(25)=0A=
+=0A=
+#define STATUS_DMA_CMD_Q_F_MASK		BIT(31)=0A=
+#define STATUS_PCFG_INIT_MASK			BIT(4)=0A=
+=0A=
+#define INT_STS_D_P_DONE_MASK			BIT(12)=0A=
+#define INT_STS_DONE_INT_MASK			BIT(2)=0A=
+#define INT_STS_ERROR_FLAGS_MASK		0x00f4c860=0A=
+=0A=
+#define MCTRL_INT_PCAP_LPBK_MASK		BIT(4)=0A=
+=0A=
+/*=0A=
+ * Xilinx 7-Series Bitstream Composition:=0A=
+ *=0A=
+ * Bitstream can be provided with an optinal header (`struct bs_header`).=
=0A=
+ * The true bitstream starts with the binary-header composed of 13 words:=
=0A=
+ *=0A=
+ *  0: 0xFFFFFFFF (Dummy pad word)=0A=
+ *     ...=0A=
+ *  7: 0xFFFFFFFF (Dummy pad word)=0A=
+ *  8: 0x000000BB (Bus width auto detect word 1)=0A=
+ *  9: 0x11220044 (Bus width auto detect word 2)=0A=
+ * 10: 0xFFFFFFFF (Dummy pad word)=0A=
+ * 11: 0xFFFFFFFF (Dummy pad word)=0A=
+ * 12: 0xAA995566 (Sync word)=0A=
+ *=0A=
+ * See Xilinx UG470 (v1.13.1) August 20 2018, Chapter 5 "Configuration=0A=
+ * Details - Bitstream Composition" for further details.=0A=
+ */=0A=
+=0A=
+#define DUMMY_WORD				0xFFFFFFFF=0A=
+#define BUS_WIDTH_AUTO_DETECT1_OFFSET		8=0A=
+#define BUS_WIDTH_AUTO_DETECT1		0x000000BB=0A=
+#define BUS_WIDTH_AUTO_DETECT2_OFFSET		9=0A=
+#define BUS_WIDTH_AUTO_DETECT2		0x11220044=0A=
+#define SYNC_WORD_OFFSET			12=0A=
+#define SYNC_WORD				0xAA995566=0A=
+#define BIN_HEADER_LENGTH			13=0A=
+=0A=
+#define DEVC_UNLOCK_CODE			0x757bdf0d=0A=
+=0A=
+struct fpgamgr {=0A=
+	struct firmware_handler fh;=0A=
+	struct device_d dev;=0A=
+	void __iomem *regs;=0A=
+	const struct zynq_devc_ops *devc_ops;=0A=
+	int programmed;=0A=
+	char *buf;=0A=
+	size_t size;=0A=
+	u32 features;=0A=
+};=0A=
+=0A=
+struct zynq_devc_ops {=0A=
+	int (*fpga_load)(struct fpgamgr *mgr, u64 address, u32 size, u32 flags);=
=0A=
+};=0A=
+=0A=
+const struct zynq_devc_ops *zynq_get_devc_ops(void);=0A=
+=0A=
+#endif /* FIRMWARE_ZYNQ_H_ */=0A=
-- =0A=
2.43.0=0A=


