Delivery-date: Mon, 03 Nov 2025 19:32:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFzLw-00EwjV-1z
	for lore@lore.pengutronix.de;
	Mon, 03 Nov 2025 19:32:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFzLv-00018R-Ml
	for lore@pengutronix.de; Mon, 03 Nov 2025 19:32:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:
	Content-Type:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zeWjmFAedxU32p81AdEpJ01hkMQWkssBcle3QHypn2g=; b=Kmr6CtuNXZpBm1Q+pLxwAXbX6g
	E818Tga7U3rBpldq5B5G/sQ2l0vQsc3ePs91Jf8rpGtYdvrH0l68yWr9kUcYloq8vP5fd6+6QYSPg
	QUuMdo9defx1bdXMZDvAW0DmwEZskGAhsQw7OykSsiMgW6zMUBFDFERVRvYA8wufGUnxKFeZWcpd0
	r1MJ2J5dzFMV2FziUt4xP5GJmLY5qQZnYBDa4wa6NEI0IXMuyb5peFgiKnlaPp7sCV9mZJvTgRpcV
	MNnyWxMytAwWoEQ3cT6C1a9myNX/CWhWXVTC2d3iaDcRn52WBPAEL8h7Hlru/C/BiFCvuVk4X7U5U
	q+cph+Cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFzLG-0000000AUcv-2FEI;
	Mon, 03 Nov 2025 18:31:46 +0000
Received: from mail-germanynorthazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c20b::1] helo=BEUP281CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFzLD-0000000AUcH-1APw
	for barebox@lists.infradead.org;
	Mon, 03 Nov 2025 18:31:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qDbgzTLVUjakUNpPJ9JyzFBlSPvr4aqolfjsIA/7H/IGTrRzLVneh0x+XZrUZQWZRn/hR/3o1u6A7hoik4ZecsJ2q9YXU/FptLwC/Cq2+zeellA7uxqaM8V86P5aj8+hSH5PYnlw4mb2kiRQocg5YsY3TWllwwBP8zke4gAwTMgV49kQU2zmtGPihD6+chmbLEpjnjpKGfAzVYDZLYOiVOxcNLM4prD7oKDmvYOpeZu5er5DPHI5soej4C6FsjYhOthUdIc6RK9CYXIuP7KtDhiMnxksXwLwta0f6t0XLQmpGtlsyBaPKqFF239+H2vemTNhPjbb/xVbsx+4vi/X8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zeWjmFAedxU32p81AdEpJ01hkMQWkssBcle3QHypn2g=;
 b=yxJLgV+T4h7fFxDHmoEXBxOsa2dedRv68tIz1k37awtwQRhp4xBKxGHWos1Wt5yVv9rk/w0tEdMhN3P+FdyGgf8tcK+wGWE6B94wnsoIDvIqjudaq/X3FoSL7K+jKXc51ex89qHHfLi0COWsXQSCo6ZxwSOoxi7ZxU67K7eQKzrVpZ0yT+i53XBZEtsk121GhyXaGPubsRm4jKV5wC0cjA493N/E3uIB87BF83LldHC8Y85OHO/2rObzYVzjlTzQmJiZr9sh12P89g2MrTS7mnPlQsUuvATlJf1Cr50QAql+iMc/boUWTBFG3LubFnF+UJ7h5KhcWu2pxoW4JPVkvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=eckelmann.de; dmarc=pass action=none header.from=eckelmann.de;
 dkim=pass header.d=eckelmann.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=eckelmann.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zeWjmFAedxU32p81AdEpJ01hkMQWkssBcle3QHypn2g=;
 b=GjKqc+i6bvR7DwerJOG0Jq7Y3FFWOQ4tpvlf5Gu+egNFNUTazNBLaO6aeOy1AhNQ7VZGNYJc3uMyvwCFcgTHxvSghnr7T3tn0a3IiukyBOOZnHTLrwlbte5C8U+cy71Q2jiq9wFXlP5ufvWjU7X29XIF36NjYFDGJ3MZsZ9POmY=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=eckelmann.de;
Received: from FR4P281MB3510.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:da::13)
 by FR3P281MB3389.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:59::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.16; Mon, 3 Nov
 2025 18:31:37 +0000
Received: from FR4P281MB3510.DEUP281.PROD.OUTLOOK.COM
 ([fe80::3927:fe99:bb4:1aa7]) by FR4P281MB3510.DEUP281.PROD.OUTLOOK.COM
 ([fe80::3927:fe99:bb4:1aa7%3]) with mapi id 15.20.9275.015; Mon, 3 Nov 2025
 18:31:37 +0000
Date: Mon, 3 Nov 2025 19:31:35 +0100
From: Thorsten Scherer <T.Scherer@eckelmann.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Holger Assmann <h.assmann@pengutronix.de>
Message-ID: <kavzucbvsx7ng7tuek36p4gxpn6xjmlfhhiosbqa7lgee7w2l4@rqkfcpoopsyl>
References: <20251103151935.2368094-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251103151935.2368094-1-a.fatoum@pengutronix.de>
X-ClientProxiedBy: FR4P281CA0342.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ea::20) To FR4P281MB3510.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:da::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: FR4P281MB3510:EE_|FR3P281MB3389:EE_
X-MS-Office365-Filtering-Correlation-Id: 063a8a00-b285-46fd-1226-08de1b0738fe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007|27256017;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?seb+W20WP4yhSuav1vxw9kKqptEJojHD2GKBTS8OYZXoxBxmZ/4QhLCpQeTV?=
 =?us-ascii?Q?HV5+O1NxNZ379HTlK3CxR9vTMpKDzo7gPhxBKJxLgbOiLzcMzF9GpHOw3//Z?=
 =?us-ascii?Q?6k8+3TkrGYZIE50S4p1cwccvy9gnrgqC7xeu0NLJclWTFM5NzDeWIUPxRkxW?=
 =?us-ascii?Q?GLdpy4d5xb2OtQw7yFnJMu1LXQ5qtl7iwolrV/Dd28Hxki33mIA9Rzr6vodl?=
 =?us-ascii?Q?Vt7Yv2c8cjwOnqzHdtIDZeYNeIqTa8zW/qvMe11fR7/gQdTn4d5Jna6ggRwz?=
 =?us-ascii?Q?0nEvPZq7wZrRZLI40ntDmptMmSntu7i5rgE0OkHFjqm+c8E1pMDtZOP0Vgp0?=
 =?us-ascii?Q?9MWWpw4Qv4e2nwK5Em48B4JwsTgKYFS5bcnRb8apwgIZcbfcuMBzqbovvXXV?=
 =?us-ascii?Q?nV2oW9vj3VVredDh0q/gwWGPoAKJ1WcM0K7Ip0WyFBVhgpAjRFC2WHe/oIyP?=
 =?us-ascii?Q?LRgTQ/HA2ukoCqr3yGQuUxIUGQROPTuhwqV40bvgf2XdnI3qrA7g+69zokNA?=
 =?us-ascii?Q?2UgOW+vNWYWfhjjZf7o8GXzYhyn8/M4nNMY7d8FUNqnrwCfozmMWnzXEy2ea?=
 =?us-ascii?Q?Mz4QWntGQnE09lyflZ3uLZftfLI733mo+dRMH3FQ/3CyHSe5wdnj1yYGNmg0?=
 =?us-ascii?Q?tH+dyJcusy0h6oHnUR4IvuFYyG3mFqRaAshjchwYCk7le41AU91N9uy7x2cV?=
 =?us-ascii?Q?rzlIY+jwe4Z9orUwzBR9g9ueCPgrWtUHYXliczEwYePd7kYMYLfgGHYgf2ud?=
 =?us-ascii?Q?whEBTuhSM5ZIprw8hArq7Q7QPMNUtXhrvwuVzrBNsK7J5fAXiSC/so+PC9B6?=
 =?us-ascii?Q?VCTf06QwZbuMgHiOVlLHo8UbIqACyEExkl3fW4zCsw82ozEo3vyg70zAMXz0?=
 =?us-ascii?Q?2Y374/7gwVQC7cO6wvN52XrdYt+jJEMugAaz1lbn9gZFNTOaD4lV2QCpDv9v?=
 =?us-ascii?Q?1tgqZ30FmiV35eVIbpu6CG3bGNXiOxBJWsCtVsFiKaDsy1vej0GkMsoMthMD?=
 =?us-ascii?Q?DfSuPHfhsWDYybvyb4XaOrNihiR6klKQuqpHyC4B2ZmvumN8QQnoxbgGSl3z?=
 =?us-ascii?Q?JRjsd5BTq96SFg+e9wEsQcEJKN/xvM+eBlFfU4UJg9EdgiMQSXSTzSE/60rd?=
 =?us-ascii?Q?48TP1I8e/K8zvfuJwp5+RlSlNUYLOFBBS8uj2T245vw+QPyLQ5NEFbnP9BM0?=
 =?us-ascii?Q?p3tA0pWzBEzJbVwEWfwOfLAsEBGRbUAnvUpk8uj2NZPE2HtlLpCL+gotoIOS?=
 =?us-ascii?Q?rGHnvpwQEMXCeqsK21+lltEnWnfajmXhqb/LD16F03wwQnrs0c8b5B5612eL?=
 =?us-ascii?Q?tlxVMijY+ZawhgYMClCTjRmFWURHfkWlSkQLrg5FvIthNBd25Lxt0pmnwBYO?=
 =?us-ascii?Q?AfTeAebAXoKLorT+msE6YG0mnCNU4ApwsywySxnXWtXfVQ4gkP1UTPhlUZkX?=
 =?us-ascii?Q?vk7fqgxTuRN8+BY+kx9Dvoh++yYrl/z+nAcMobrctDqBe+TQZ9OdToGloZ/g?=
 =?us-ascii?Q?omzBo34iQheKfQUT5vMbftJOwrNErcJqqduw?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:FR4P281MB3510.DEUP281.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(27256017);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?eVYC56KIoUH52eWBPiCmhYHbm2GamnxYAaKIiXc36mZC3al84UVtJYRMGt1t?=
 =?us-ascii?Q?tO/8ouviDrjgMzENT5sCN+i8TSujnokYHKfp7yHOH8WhaYup6goeriTt2Y+Q?=
 =?us-ascii?Q?g/RzbZpV/S68/cvi5wqbq8Hf9HRNIEZv2PKalX30Vcge2HDZbzKCp8dqbbmB?=
 =?us-ascii?Q?esnnEU8gSTnukpgmSwJiOoHleXllKAfqJbvJTAdEALHgPqGcYD5/g4Gp2wBk?=
 =?us-ascii?Q?YrEJ1ZMtaipdrkE2e1yT5T2NzHfGRJbS8He4BFDCdYRNmVX9dqRi4+cMc3AC?=
 =?us-ascii?Q?YPsHFVf9QMxyfjZkyKOEcdxkSrN60dR6vMT4c6KkUllev1u/Q/Kr4ikzpGHd?=
 =?us-ascii?Q?ttO4rw7vb0/C/2rIJiIyrY/Q7W0STrSoSa4A9wRib9u/XfLVKGZO+4yMCOp9?=
 =?us-ascii?Q?ceMSdkic9YPRhJffleQO4SamzsRpOinnVUoncMKEc1TFEMFLDPXiH4MP7IrQ?=
 =?us-ascii?Q?HY2SP7qIc7ja2Z75TXqqVcBW1q331JizlcFwVXIGXYf/nmlXKYRrx01PQ5ah?=
 =?us-ascii?Q?MrTUiySeZ2YIoj5Sq1GjvsSHUVXz16yeXqADLfD/jkLXeU6QGZW4RMiY1lRN?=
 =?us-ascii?Q?mnLyr+jAA5EYY6r4oBjHp8vdrvaLxPWjnU0pdZAvclpY31PvG/Wbzqmw8fh5?=
 =?us-ascii?Q?bE7ImwWC/UkgruKP/EnYD8rdCfVLEC6p/Hkd2IoDKhKz7JgSq+TOTwIsQrvn?=
 =?us-ascii?Q?y6KwDFydh5c7EmBIDMVHGXA7rCXvOAZdMg+V3WiuEvBKIuGbZss6sv3/TeRI?=
 =?us-ascii?Q?3A2sVkjpkVZ6OZ6DqFBYvv2n8vm8+v7sglNUqhTQcSHEUduM2gh8ogbmzyJm?=
 =?us-ascii?Q?ofKfEqwsQ1IjXfySZ3TE+DSLcuidyemCDwm0SrvGUhpxijdKz7cJqKsJQTe7?=
 =?us-ascii?Q?QpHPeDhNCrirXanjt/itMCXMntsOhm7GXm7sVDchhbHhp8nWHhWH2nSQZNqG?=
 =?us-ascii?Q?pCOJLyN85CHMGxPKXLnPtw29FLJnOE4ZEU+GZlsSiKM/VEBwwycwJsTyiiMP?=
 =?us-ascii?Q?+8L0XxXk2uuGljdlw8kuiIo9PLJW2e/lb3zOOJ1LVLgTk+MZ7411pMHPeb6T?=
 =?us-ascii?Q?lSpQ/S3h7kD301K6IrmNR9PShEFNTaCvCKAaN3qYVtWX61EnnBohgpNnwDE0?=
 =?us-ascii?Q?LgTe+CcNk+fnLnzOQuvUeh4Crpg3u+/mjReHdy8ycDltWyNRLuvJ0IOuBNAc?=
 =?us-ascii?Q?AVyK/ulG/gE58qhwY9CuBXB0ktvzcgERi28RN0UayV+/3AsIc/GgitI+u/LW?=
 =?us-ascii?Q?jO7Vttw28eiYHXypQb0qjaBlbmlQjttcJN8ZjONtYP0R4PhlkoI9od5wEo5x?=
 =?us-ascii?Q?62Vn0BwwaIYRNAjZJqNWj95fCEZ67l8BIcr3qRWlCTYKeO2A87No+RpNsXhU?=
 =?us-ascii?Q?zbWybAe2QKgSRarR5vpbgObjsTUfYw+XOG2sjIV+C8j96/5cECsN/nhcV2Fi?=
 =?us-ascii?Q?+4z9MY2I2/Be5qmzYnELh8JlLZlfb+iqCk6986krk0Qb41aDpZ+iKHiU2CtS?=
 =?us-ascii?Q?mKtsaZn1KeU3zGQrZvEi/jRTyDKmIqCpgFA7rjzDt1YqZYSTbxJ0tUuEf27D?=
 =?us-ascii?Q?O8q4fjpQVZ6ux7yO4jjDWnNzIYfTUjsjWBnWkfrw?=
X-OriginatorOrg: eckelmann.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 063a8a00-b285-46fd-1226-08de1b0738fe
X-MS-Exchange-CrossTenant-AuthSource: FR4P281MB3510.DEUP281.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2025 18:31:36.9830
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 62e24f58-823c-4d73-8ff2-db0a5f20156c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: abzbj0i1V/bWS33kwRw1AmNxbS2mdQnrAOp7NyMLerRpbynVDwQLmRlHFFWLE+gYlshOKRKYNlSBNO2SWTIacw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: FR3P281MB3389
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251103_103143_502262_FA64933D 
X-CRM114-Status: GOOD (  34.43  )
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
X-Spam-Status: No, score=-102.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,USER_IN_WELCOMELIST,
	USER_IN_WHITELIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] usb: dwc3: port Linux i.MX8MP glue driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

On Mon, Nov 03, 2025 at 04:19:31PM +0100, Ahmad Fatoum wrote:
> Commit e213627bbe ("usb: dwc3: of-simple: add i.MX8MP compatible")
> added i.MX8MP support by matching the i.MX8MP glue in dwc3-of-simple.
> 
> This is unlike what the kernel was doing, because "Linux uses this wrapper
> for wakeup handling, but we don't need this functionality in Barebox".
> 
> Looking at Linux v6.18-rc3, this is not accurate anymore:
> The upstream i.MX8MP glue driver handles a number of device tree properties
> that we do not handle in barebox:
> 
>   * fsl,permanently-attached
>   * fsl,disable-port-power-control
>   * fsl,over-current-active-low
>   * fsl,power-active-low
> 
> The Linux driver also sets two software properies:

Nitpick

s/properies/properties/

>   * xhci-missing-cas-quirk
>   * xhci-skip-phy-init-quirk
> 
> But both are unneeded for barebox as the former only matters when
> resuming from runtime suspend and the latter is the only behavior we
> currently have in barebox, because the XHCI driver itself doesn't yet
> use the PHY API.
> 
> Thus import the Linux driver without the software property bits to add
> support for the OF bindings.
> 
> Reported-by: Marc Kleine-Budde <mkl@pengutronix.de>
> Reported-by: Holger Assmann <h.assmann@pengutronix.de>

This series works on our board using v2025.03.0 + backport of

    332e3542e5ed ("Port Linux __cleanup() based guard infrastructure") .

Tested-by: Thorsten Scherer <t.scherer@eckelmann.de>

> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/usb/dwc3/Kconfig          |  10 ++
>  drivers/usb/dwc3/Makefile         |   1 +
>  drivers/usb/dwc3/dwc3-imx8mp.c    | 160 ++++++++++++++++++++++++++++++
>  drivers/usb/dwc3/dwc3-of-simple.c |   1 -
>  4 files changed, 171 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/usb/dwc3/dwc3-imx8mp.c
> 
> diff --git a/drivers/usb/dwc3/Kconfig b/drivers/usb/dwc3/Kconfig
> index de5f0ef6f3eb..bed629776227 100644
> --- a/drivers/usb/dwc3/Kconfig
> +++ b/drivers/usb/dwc3/Kconfig
> @@ -48,6 +48,16 @@ config USB_DWC3_OF_SIMPLE
>  	 Currently supports Xilinx and Qualcomm DWC USB3 IP.
>  	 Say 'Y' or 'M' if you have one such device.
>  
> +config USB_DWC3_IMX8MP
> +	tristate "NXP iMX8MP Platform"
> +	depends on OF && COMMON_CLK
> +	depends on ARCH_IMX8MP || COMPILE_TEST
> +	default USB_DWC3
> +	help
> +	  NXP iMX8M Plus SoC use DesignWare Core IP for USB2/3
> +	  functionality.
> +	  Say 'Y' or 'M' if you have one such device.
> +
>  config USB_DWC3_AM62
>  	tristate "Texas Instruments AM62 Platforms"
>  	depends on ARCH_K3 || COMPILE_TEST
> diff --git a/drivers/usb/dwc3/Makefile b/drivers/usb/dwc3/Makefile
> index 30097da367d9..31acda1825f5 100644
> --- a/drivers/usb/dwc3/Makefile
> +++ b/drivers/usb/dwc3/Makefile
> @@ -14,3 +14,4 @@ endif
>  
>  obj-$(CONFIG_USB_DWC3_OF_SIMPLE)	+= dwc3-of-simple.o
>  obj-$(CONFIG_USB_DWC3_AM62)		+= dwc3-am62.o
> +obj-$(CONFIG_USB_DWC3_IMX8MP)		+= dwc3-imx8mp.o
> diff --git a/drivers/usb/dwc3/dwc3-imx8mp.c b/drivers/usb/dwc3/dwc3-imx8mp.c
> new file mode 100644
> index 000000000000..d7f2795dc504
> --- /dev/null
> +++ b/drivers/usb/dwc3/dwc3-imx8mp.c
> @@ -0,0 +1,160 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * dwc3-imx8mp.c - NXP imx8mp Specific Glue layer
> + *
> + * Copyright (c) 2020 NXP.
> + */
> +
> +#include <linux/cleanup.h>
> +#include <linux/clk.h>
> +#include <linux/io.h>
> +#include <linux/kernel.h>
> +#include <linux/module.h>
> +#include <of.h>
> +#include <linux/device.h>
> +
> +/* USB wakeup registers */
> +#define USB_WAKEUP_CTRL			0x00
> +
> +/* Global wakeup interrupt enable, also used to clear interrupt */
> +#define USB_WAKEUP_EN			BIT(31)
> +/* Wakeup from connect or disconnect, only for superspeed */
> +#define USB_WAKEUP_SS_CONN		BIT(5)
> +/* 0 select vbus_valid, 1 select sessvld */
> +#define USB_WAKEUP_VBUS_SRC_SESS_VAL	BIT(4)
> +/* Enable signal for wake up from u3 state */
> +#define USB_WAKEUP_U3_EN		BIT(3)
> +/* Enable signal for wake up from id change */
> +#define USB_WAKEUP_ID_EN		BIT(2)
> +/* Enable signal for wake up from vbus change */
> +#define	USB_WAKEUP_VBUS_EN		BIT(1)
> +/* Enable signal for wake up from dp/dm change */
> +#define USB_WAKEUP_DPDM_EN		BIT(0)
> +
> +#define USB_WAKEUP_EN_MASK		GENMASK(5, 0)
> +
> +/* USB glue registers */
> +#define USB_CTRL0		0x00
> +#define USB_CTRL1		0x04
> +
> +#define USB_CTRL0_PORTPWR_EN	BIT(12) /* 1 - PPC enabled (default) */
> +#define USB_CTRL0_USB3_FIXED	BIT(22) /* 1 - USB3 permanent attached */
> +#define USB_CTRL0_USB2_FIXED	BIT(23) /* 1 - USB2 permanent attached */
> +
> +#define USB_CTRL1_OC_POLARITY	BIT(16) /* 0 - HIGH / 1 - LOW */
> +#define USB_CTRL1_PWR_POLARITY	BIT(17) /* 0 - HIGH / 1 - LOW */
> +
> +struct dwc3_imx8mp {
> +	struct device			*dev;
> +	struct platform_device		*dwc3;
> +	void __iomem			*hsio_blk_base;
> +	void __iomem			*glue_base;
> +	struct clk			*hsio_clk;
> +	struct clk			*suspend_clk;
> +	bool				wakeup_pending;
> +};
> +
> +static void imx8mp_configure_glue(struct dwc3_imx8mp *dwc3_imx)
> +{
> +	struct device *dev = dwc3_imx->dev;
> +	struct device_node *np = dev_of_node(dev);
> +	u32 value;
> +
> +	if (!dwc3_imx->glue_base)
> +		return;
> +
> +	value = readl(dwc3_imx->glue_base + USB_CTRL0);
> +
> +	if (of_property_read_bool(np, "fsl,permanently-attached"))
> +		value |= (USB_CTRL0_USB2_FIXED | USB_CTRL0_USB3_FIXED);
> +	else
> +		value &= ~(USB_CTRL0_USB2_FIXED | USB_CTRL0_USB3_FIXED);
> +
> +	if (of_property_read_bool(np, "fsl,disable-port-power-control"))
> +		value &= ~(USB_CTRL0_PORTPWR_EN);
> +	else
> +		value |= USB_CTRL0_PORTPWR_EN;
> +
> +	writel(value, dwc3_imx->glue_base + USB_CTRL0);
> +
> +	value = readl(dwc3_imx->glue_base + USB_CTRL1);
> +	if (of_property_read_bool(np, "fsl,over-current-active-low"))
> +		value |= USB_CTRL1_OC_POLARITY;
> +	else
> +		value &= ~USB_CTRL1_OC_POLARITY;
> +
> +	if (of_property_read_bool(np, "fsl,power-active-low"))
> +		value |= USB_CTRL1_PWR_POLARITY;
> +	else
> +		value &= ~USB_CTRL1_PWR_POLARITY;
> +
> +	writel(value, dwc3_imx->glue_base + USB_CTRL1);
> +}
> +
> +static int dwc3_imx8mp_probe(struct device *dev)
> +{
> +	struct device_node	*node = dev->of_node;
> +	struct dwc3_imx8mp	*dwc3_imx;
> +	struct resource		*res;
> +	int			err;
> +
> +	if (!node) {
> +		dev_err(dev, "device node not found\n");
> +		return -EINVAL;
> +	}
> +
> +	dwc3_imx = devm_kzalloc(dev, sizeof(*dwc3_imx), GFP_KERNEL);
> +	if (!dwc3_imx)
> +		return -ENOMEM;
> +
> +	dwc3_imx->dev = dev;
> +
> +	dwc3_imx->hsio_blk_base = dev_platform_ioremap_resource(dev, 0);
> +	if (IS_ERR(dwc3_imx->hsio_blk_base))
> +		return PTR_ERR(dwc3_imx->hsio_blk_base);
> +
> +	res = dev_request_mem_resource(dev, 1);
> +	if (!res)
> +		dev_warn(dev, "Base address for glue layer missing. Continuing without, some features are missing though.");
> +	else
> +		dwc3_imx->glue_base = IOMEM(res->start);
> +
> +	dwc3_imx->hsio_clk = clk_get_enabled(dev, "hsio");
> +	if (IS_ERR(dwc3_imx->hsio_clk))
> +		return dev_err_probe(dev, PTR_ERR(dwc3_imx->hsio_clk),
> +				     "Failed to get hsio clk\n");
> +
> +	dwc3_imx->suspend_clk = clk_get_enabled(dev, "suspend");
> +	if (IS_ERR(dwc3_imx->suspend_clk))
> +		return dev_err_probe(dev, PTR_ERR(dwc3_imx->suspend_clk),
> +				     "Failed to get suspend clk\n");
> +
> +	imx8mp_configure_glue(dwc3_imx);
> +
> +	err = of_platform_populate(node, NULL, dev);
> +	if (err) {
> +		dev_err(dev, "failed to create dwc3 core\n");
> +		return err;
> +	}
> +
> +	return 0;
> +}
> +
> +static const struct of_device_id dwc3_imx8mp_of_match[] = {
> +	{ .compatible = "fsl,imx8mp-dwc3", },
> +	{},
> +};
> +MODULE_DEVICE_TABLE(of, dwc3_imx8mp_of_match);
> +
> +static struct driver dwc3_imx8mp_driver = {
> +	.probe		= dwc3_imx8mp_probe,
> +	.name	= "imx8mp-dwc3",
> +	.of_match_table	= dwc3_imx8mp_of_match,
> +};
> +
> +device_platform_driver(dwc3_imx8mp_driver);
> +
> +MODULE_ALIAS("platform:imx8mp-dwc3");
> +MODULE_AUTHOR("jun.li@nxp.com");
> +MODULE_LICENSE("GPL v2");
> +MODULE_DESCRIPTION("DesignWare USB3 imx8mp Glue Layer");
> diff --git a/drivers/usb/dwc3/dwc3-of-simple.c b/drivers/usb/dwc3/dwc3-of-simple.c
> index 1e622240152e..b2b8ea9f23ce 100644
> --- a/drivers/usb/dwc3/dwc3-of-simple.c
> +++ b/drivers/usb/dwc3/dwc3-of-simple.c
> @@ -67,7 +67,6 @@ static void dwc3_of_simple_remove(struct device *dev)
>  static const struct of_device_id of_dwc3_simple_match[] = {
>  	{.compatible = "rockchip,rk3399-dwc3"},
>  	{.compatible = "xlnx,zynqmp-dwc3"},
> -	{.compatible = "fsl,imx8mp-dwc3"},
>  	{/* Sentinel */}};
>  MODULE_DEVICE_TABLE(of, of_dwc3_simple_match);
>  
> -- 
> 2.47.3
> 
> 

Best regards
Thorsten


