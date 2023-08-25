Delivery-date: Fri, 25 Aug 2023 12:47:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qZULn-008MMJ-Fb
	for lore@lore.pengutronix.de; Fri, 25 Aug 2023 12:47:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qZULl-0000XH-4v
	for lore@pengutronix.de; Fri, 25 Aug 2023 12:47:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0hDR5ZK0tcBJrxCPmqc3HdrnbdRgXheT5tZ6/qWZqYU=; b=SW07dp7J8dGYEqKWcKCpxue7lj
	v/uFEBULLfFIY8Q3I+hE3eI6ZaZPEKOEKTFuZSrzcfkA2YZhNdNJwIwDg9vdCrAtXUP63ibPWopGE
	a8AGtLUDbdCV1TtH6c7EJMmD+7ma0z2VPM81mj9qg2XdL2JmX6DH8au2f+T586A8NYpJ7Al50P3MV
	tsqr9wAiS84n5hvXkYe9YkSAXppEvX2GI9J0MvWWkSTGLdp7eBT2ixsC2/p3HRT4chcFLltfjtADZ
	uKTHpBOZVuPeErPuVYePSw7pshTIrGkGNOQzXn4Qq4K7U05v+IYEGDt/wXFL7bRFLWZEHIx5/49l6
	VNuYKK3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZUKO-004rGK-29;
	Fri, 25 Aug 2023 10:46:08 +0000
Received: from mail-vi1eur02on2070a.outbound.protection.outlook.com ([2a01:111:f400:fe16::70a] helo=EUR02-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZUKH-004rCX-1b
	for barebox@lists.infradead.org;
	Fri, 25 Aug 2023 10:46:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HU/eciY5Ounda5xBhZZWjR4LLnroGC3bF4PmFS1DKyPHymUAFFkItp/CTcvBsIs9P43M/3XQL5L/2tQ2onAjy9VIdNOufW1rg8BUAX+nuM4jlq3Tqhcz4R6ushVICVYoTriFO9O5IibixO0JBPpnv96jYGwvxJj7ONeFP76eKu33ijNzc6CsqynLDmZSiLuFR5f/ExVYu/gD8gxuN2lLO0SRvjaGNioA0Wi5BCmB4QL0n7tOLbHh2dsG1BIQKWNbJ6DyYoRwD7v7Y8Yec3xV1dzX3FQ0ZfyZ9GVgICx+nvVBufrzno9BmQHyzh8UAhy7QDPtlUCSZqGTzTb1qp35EA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0hDR5ZK0tcBJrxCPmqc3HdrnbdRgXheT5tZ6/qWZqYU=;
 b=W0eEsS9Pj0OUar6E5T1c95pVTDk/q/HOYRYy0ZobebgUm9I9cWtxqqDGqQHBLKy2aMmlkVmXnG6dX04HmiT8bI1CJnn8kEqtireQ7G15l5Q4NivuhHEvoKqx03xMk2hTgu1OOvcWFdsoI/znjeV5LxmB6Nz6sY19ElsUuOsi0O9Dt3fyUxmN6beNbKmgTa+cpUUmBLx6cmaZm7DaQSG48Xs1LLg36K2NfskqvUQB0SpkEaJh7yVZc+Dp9tYeZAvQx/d3bH5qF67ZFT3ly0c0skzeyGsAkcAc7jZr2brtd2wFJiSKLsyxbgjPP8W9woSwTlD4oPRI75TgQzlCBwRFxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 217.111.95.7) smtp.rcpttodomain=pengutronix.de smtp.mailfrom=arri.de;
 dmarc=none action=none header.from=arri.de; dkim=none (message not signed);
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arrigroup.onmicrosoft.com; s=selector1-arrigroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0hDR5ZK0tcBJrxCPmqc3HdrnbdRgXheT5tZ6/qWZqYU=;
 b=ZyyEEjrZvV7yv33tfqx35lA1HB/nxcIJbKyLkbCVj3ZvzYcLhg/dyYhXVFm5yWUcXLqqy7FQ+VLFBvL/jzIeX3T1mZv0S9WL2iSbQqZpldjIagc9C5dc7kQDdnh1S0nNj14KN11tppjhRYOozd6+RxFZTWAD+kqGDWX2lBCWl1Q=
Received: from DB8PR09CA0013.eurprd09.prod.outlook.com (2603:10a6:10:a0::26)
 by DU0PR07MB8995.eurprd07.prod.outlook.com (2603:10a6:10:40d::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Fri, 25 Aug
 2023 10:45:53 +0000
Received: from DU6PEPF00009528.eurprd02.prod.outlook.com
 (2603:10a6:10:a0:cafe::6d) by DB8PR09CA0013.outlook.office365.com
 (2603:10a6:10:a0::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27 via Frontend
 Transport; Fri, 25 Aug 2023 10:45:53 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 217.111.95.7)
 smtp.mailfrom=arri.de; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arri.de;
Received-SPF: Fail (protection.outlook.com: domain of arri.de does not
 designate 217.111.95.7 as permitted sender) receiver=protection.outlook.com;
 client-ip=217.111.95.7; helo=mta.arri.de;
Received: from mta.arri.de (217.111.95.7) by
 DU6PEPF00009528.mail.protection.outlook.com (10.167.8.9) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.6699.15 via Frontend Transport; Fri, 25 Aug 2023 10:45:53 +0000
Received: from n95hx1g2.localnet (10.30.5.31) by mta.arri.de (10.10.18.5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.34; Fri, 25 Aug
 2023 12:45:52 +0200
From: Christian Eggers <ceggers@arri.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
CC: <barebox@lists.infradead.org>
Date: Fri, 25 Aug 2023 12:45:52 +0200
Message-ID: <3275337.44csPzL39Z@n95hx1g2>
Organization: Arnold & Richter Cine Technik GmbH & Co. Betriebs KG
In-Reply-To: <20230825102246.4189465-2-a.fatoum@pengutronix.de>
References: <20230825102246.4189465-1-a.fatoum@pengutronix.de> <20230825102246.4189465-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Originating-IP: [10.30.5.31]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU6PEPF00009528:EE_|DU0PR07MB8995:EE_
X-MS-Office365-Filtering-Correlation-Id: 2c9551a4-2d8f-4755-2ff8-08dba558746d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: zJN30ZMl50xglRVN5TZO1fxtnSr+1o25O9dGJSaiB8Y4zDGs0bFNKNPWbBrrDudEk4rirjpvGFKHspQnBeO9cd8Byb8LUHwk0cNFpAN0o1KuePfbv7jFG5c3dovqjNv9t4uN5qJCsHhIWmUJTa9Wjxs9N9Cg143JLrn3jJxwf7BQP5jldkYf8pvEz9quN8VHpoX2Fr4d3QFqGU4Xsu2i1TR2W56C4pqTDa7G6mlWwzbcSEz2H0yp05pYNX5eSvvOUQXk7Mw6QoI/37Ha2dZHqlq5KcounTkTUjl7hLiVHqhv6jdc8ZpHRNjRlHZZxPvKy8+o5pX3c7avsGXvieWrCHf+MSOvjq+IOj3O4o/ZiAzzG/k5LrkiB+CwSdc9PTXLcyiwaokKNt8V6Lj8haO8J8itnZSuSQSr/7KBIEF148GhPuAqocKteHKCZbEklnnGSOjeMpzAATlSW0+foa4dCVduNATLNhNsvuG7b720u9K+KJmSle/MxdJWZNp0FQt95BIBqCtz9NpZdFOrvVMXFoTni29Rjzo0sMH9taEGnFtigtDKQE+CRAlq6Yz9kAyWY7lckQA0FQXKzfoYvuk9ULQgz7aeLcI4XB588ubKReJ4Mt4jNDLYWxBAyT7fVyEpve+GTU2b/h8B7ll+FpafGEx0Np2PcpmXy/b39mk+P7syCIUyfgXZ4bzZpQPIHIJHbBbbBFs4mHaMsIvuZbQwyznwvcTCVDZRoV98foAqqbDn/jF4SxUyb5dqEZUH6PBlTNj5Sr6SojOqDt5Lh5Fy7zZ6vPb976GTs3taEni1W2p9V+wz34XrI93P4qKqzNCAwceYW6B0sX2nDo+ja/Hk7Q==
X-Forefront-Antispam-Report: CIP:217.111.95.7;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mta.arri.de;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230031)(4636009)(136003)(346002)(376002)(396003)(39860400002)(1800799009)(82310400011)(451199024)(186009)(46966006)(36840700001)(9576002)(12101799020)(40480700001)(8676002)(4326008)(8936002)(2906002)(6916009)(316002)(41300700001)(5660300002)(70206006)(70586007)(33716001)(356005)(83380400001)(81166007)(47076005)(36860700001)(9686003)(426003)(86362001)(26005)(16526019)(336012)(82740400003)(966005)(36916002)(478600001)(39026012)(36900700001);DIR:OUT;SFP:1102;
X-OriginatorOrg: arri.de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Aug 2023 10:45:53.1449
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c9551a4-2d8f-4755-2ff8-08dba558746d
X-MS-Exchange-CrossTenant-Id: e6a73a5a-614d-4c51-b3e3-53b660a9433a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e6a73a5a-614d-4c51-b3e3-53b660a9433a;Ip=[217.111.95.7];Helo=[mta.arri.de]
X-MS-Exchange-CrossTenant-AuthSource: DU6PEPF00009528.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR07MB8995
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230825_034601_591630_838BE282 
X-CRM114-Status: GOOD (  21.46  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] FIT: do not decompress ramdisks even if asked
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Friday, 25 August 2023, 12:22:46 CEST, Ahmad Fatoum wrote:
> Linux will decompress its own ramdisk, so a well-formed ITS would
> specify compression = "none", so the bootloader doesn't unpack the
> ramdisk and the kernel takes care of it.
> 
> Some older versions of the Yocto kernel-fitimage.bbclass did populate
> compression != "none" for ramdisks, so now barebox will fail to boot
> the FIT images generated by them.
> 
> Fix this issue by not acting on the compression property when the image
> in question is a ramdisk. We still print a warning, so users can fix
> their ITS.
> 
> This aligns us with U-Boot's behavior[1].
> 
> [1]: https://git.yoctoproject.org/poky/commit/?h=kirkstone&id=2c58079222310
> [2]: https://github.com/u-boot/u-boot/commit/bddd985734653c366c8da073650930
> 
> Fixes: 2ab6780b80e3 ("FIT: add first support for compressed images")
> Reported-by: Christian Eggers <ceggers@arri.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/image-fit.c | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/common/image-fit.c b/common/image-fit.c
> index 9ceebde02931..0352dc5cbd0c 100644
> --- a/common/image-fit.c
> +++ b/common/image-fit.c
> @@ -565,6 +565,7 @@ static void fit_uncompress_error_fn(char *x)
>  }
>  
>  static int fit_handle_decompression(struct device_node *image,
> +				    const char *type,
>  				    const void **data,
>  				    int *data_len)
>  {
> @@ -576,6 +577,12 @@ static int fit_handle_decompression(struct device_node *image,
>  	if (!compression || !strcmp(compression, "none"))
>  		return 0;
>  
> +	if (!strcmp(type, "ramdisk")) {
> +		pr_warn("compression != \"none\" for ramdisks is deprecated,"
> +			" please fix your .its file!\n");
> +		return 0;
> +	}
> +
>  	if (!IS_ENABLED(CONFIG_UNCOMPRESS)) {
>  		pr_err("image has compression = \"%s\", but support not compiled in\n",
>  		       compression);
> @@ -652,7 +659,7 @@ int fit_open_image(struct fit_handle *handle, void *configuration,
>  	if (ret < 0)
>  		return ret;
>  
> -	ret = fit_handle_decompression(image, &data, &data_len);
> +	ret = fit_handle_decompression(image, type, &data, &data_len);
>  	if (ret)
>  		return ret;
>  
> 

Hi Ahmad,

thanks for the fast solution!

Tested-by: Christian Eggers <ceggers@arri.de>
[Tested both patches, as 1/2 is also required ]





