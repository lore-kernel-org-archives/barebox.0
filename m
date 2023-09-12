Delivery-date: Tue, 12 Sep 2023 06:50:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfvLl-00CHfZ-Sp
	for lore@lore.pengutronix.de; Tue, 12 Sep 2023 06:50:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfvLj-0002su-Ap
	for lore@pengutronix.de; Tue, 12 Sep 2023 06:50:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:
	Content-Type:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=g0lrh2gAh5hOmHXhrai+vM0rk3OYGQ4FhcoyrtU0cu0=; b=VZaH0/vXQwSiAZUBEKpNk9kdxd
	eumm1utQgY3VNXg6RanXjfLiOUWzcaYmGMDd9pukCBKX9ah3yjIbNXYz+kcOj1QLGjUhYyv+j4KAx
	UK4bPZPWwSdgLSPcdaqzOgx3O20x0/uIInkppdwKNbI40kIud0n5TacRj5zbw7WxNrKgKcZ57DfkD
	JwblaakJ53/RRhiQunTUj5AVgCelogIYNelQIh+GXIOAzxidyVQLjqbg7DJxg6z8JiSvLtaZAMLyl
	Y5k9Rzjg2ayE/1Qm/vDH51wUujor6n0lTyY4K+ayWRJNnvIg21pLV/1SK9YvmBouLzXacw3zqjFSI
	i3s4pQsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfvKC-0026h8-24;
	Tue, 12 Sep 2023 04:48:32 +0000
Received: from mail-be0deu01on2062d.outbound.protection.outlook.com ([2a01:111:f400:7e23::62d] helo=DEU01-BE0-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfvK8-0026fH-2i
	for barebox@lists.infradead.org;
	Tue, 12 Sep 2023 04:48:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=czXaMbVXdz1DpADGtwjoTvwcw1yrjapXDSIJZyuqSdLfcNdkO/mfancMdu3DT/CjfsKCi2utwmS3uKvGjkcrpTN4UNQZsstpMmvTJxd1mRjx7EdemOyun1+DyVtsilVSejFzXCEn/WEO3Pokzpqba/up8HxceDIU1+l/sk1j514Mz4NFE9HB5F19URmJK11uvLa48ZZys45o2kpN0sQrZUolA57Bpur3J2Di5JnF5RkqNVwdL3X0ePWMSaFdq2BuPcDgnV8dXWqbS6QKJ1UkEGOvOVgg44HA0e2CMOU6Rbgf9TWiJ54K+m/ib6fImL5EpMMytSKBe/Lxn0lNPeyvxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g0lrh2gAh5hOmHXhrai+vM0rk3OYGQ4FhcoyrtU0cu0=;
 b=Np55oAVrEk3QJ0bAzV7I17pRTtcFDDntd3AAXReC2iL10lhBcXqhnisrJhqLJcMKCybC3UxxD3y9CU+U0xk+aA+qZ/6YtJ+cklIg9VkxBVLQOV6vENIEsB9bYmzj4jS+pSiqoDl1+9gxqa3B5WnCTc1Jcrm2BgvJPVC8MFvrEFDgDXhl2Q4GO6JkU7JUHs00sNGerzqJKBNcJQxXa7v2ZOnBuwqnehKAk++jN8KWfd4UkBufOpt0s7MqEWiA4Kf8kF/lNy3C96+d8X6Q2SX0E7kG9cUDLvTabNT9uqxB33pn5LzqLsM5mhzua8nlOzOSQHTRfLSEUfSwkKmYIJICOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=eckelmann.de; dmarc=pass action=none header.from=eckelmann.de;
 dkim=pass header.d=eckelmann.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=eckelmann.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g0lrh2gAh5hOmHXhrai+vM0rk3OYGQ4FhcoyrtU0cu0=;
 b=K85sqyUeTSjdJE5qG2tOggv7GeaQRwrP5DIYTRffIQZGedIWXkJkNNIW7j8OK0psfNKB4bEgxoDq8QA7w4JObnZJcV1eg0V+9WGs/jZ7Y24etrvhgVDG9Ipm1k+gweljMbtOT1e8/g2hMwBkntZf1i8C1kzMlwDiZVb8IUOsZXY=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=eckelmann.de;
Received: from BE1P281MB2529.DEUP281.PROD.OUTLOOK.COM (2603:10a6:b10:69::5) by
 FR2P281MB0172.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:c::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6768.34; Tue, 12 Sep 2023 04:48:13 +0000
Received: from BE1P281MB2529.DEUP281.PROD.OUTLOOK.COM
 ([fe80::e3af:f21a:b0db:3615]) by BE1P281MB2529.DEUP281.PROD.OUTLOOK.COM
 ([fe80::e3af:f21a:b0db:3615%5]) with mapi id 15.20.6768.036; Tue, 12 Sep 2023
 04:48:13 +0000
Date: Tue, 12 Sep 2023 06:48:12 +0200
From: Thorsten Scherer <T.Scherer@eckelmann.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230912044812.upnef32iqvcjggwd@nb821.eckelmann.group>
References: <20230911150900.3584523-1-a.fatoum@pengutronix.de>
 <20230911150900.3584523-6-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230911150900.3584523-6-a.fatoum@pengutronix.de>
X-ClientProxiedBy: FR3P281CA0147.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:95::10) To BE1P281MB2529.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:69::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BE1P281MB2529:EE_|FR2P281MB0172:EE_
X-MS-Office365-Filtering-Correlation-Id: 78a72401-274a-44ea-cfd9-08dbb34b7888
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rjcllY4UQO+ZgyOdWiHjZjUcFTcVsshz+vXm+21elalPhAyvUERaZsw+Dtf0hETgW2Z6e3TbT6MiTPBri1aIZhWD5Hamd02FuYbXGEiFaGxqClQINw4U9rZNs79D1x4c5S9C1fw8J0i+F1/BzLLXEokph+v2bSXkjJvPwhkWO/Nt3Viu9yk3NAXBfvGEMPQbmoa40DZV4mZCyf5TP2vHxSkrnXrL6ZuDk3+sckaXRzGCgK7lH3mahDv/AidHrRgs/VlfYAS3C0W9zgpNpQujisZLPfaA3eWB0b7GEzW9cO0Qiv5OnyS9ckwKbI9WGM5UMQ5YtM3xJMk1qMmfEdPnvXcVh8+gI1G3uwgGqkni+IRpn4Q2msKwpnXHcuzE0gvD7OZq9YUUOpdz8jbdbWMvWZWi3/0DrZvkbVfTvIvqPwaXm5ae5QPB6SjkUg9zbDwqXd9bnUcRUb4fL1QpZDA9sRLtfX2RYU30gs43xopC5u4wNiPVKLl1/bHtWORXHVviotxpvJ1urUnoHbwt6VeKTfzxehMO5fxseV64h0XH3A4CeswhswjaznXcpR0hgiTsxsSk1Dn5XolCgSZQKtDtYY+cSvPaY7MY/xP3c6Gksyk=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BE1P281MB2529.DEUP281.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(366004)(346002)(39840400004)(376002)(396003)(136003)(186009)(451199024)(1800799009)(6506007)(6486002)(86362001)(38100700002)(9686003)(6512007)(83380400001)(2906002)(478600001)(5660300002)(8676002)(4326008)(41300700001)(316002)(8936002)(66946007)(6916009)(66476007)(1076003)(66556008);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?iO8FQrz15AbY24dX/KH1+ObG5HWitlpf9jOu550ePgMmD8QoOspQuL5aKGCL?=
 =?us-ascii?Q?yNLLAYd/LyZSKG7h39faP1D4NJIPP4KnqnshV6Em86EcF5hCtx/2W8C2yGaO?=
 =?us-ascii?Q?Mx39kAAwwYboVHNO6raw4fOv6Y07jadC5m/uP4H2Em59O8TDVzsZ5+nCgzRu?=
 =?us-ascii?Q?5YH8UIrIoIZEB/fCYR0icv513YSCS5pxyW5O0/zIOQ9YGBYXK1kjguqM1qX5?=
 =?us-ascii?Q?IbUMj1OQ2WEz9Cyqwm7XIH3hwI1F/TYZndQl4pjlwbG3gholdow5F15FoHwi?=
 =?us-ascii?Q?h0vmO3X7J+CFHjXxowUiT5lo86xW/RWclH9+4uHa0JqdV4EPPqwckO9VT9bT?=
 =?us-ascii?Q?fkrZByI+sEG2FgRSoQcLSip6HY3mJccQCEt19m8QEW6PCE0QWtTIy4pc4rFA?=
 =?us-ascii?Q?DMQJzZ7wswPFQzib8N5fpfF7TJqZrm88l2mK1EVRibHpzpG587r8nipaVTPf?=
 =?us-ascii?Q?CdfmSXC6O7lTfixszFhznfJOE2QOH/OY1R0209v1fotBcbiBWqDndhZlv8je?=
 =?us-ascii?Q?SY9BYAH8NAfkbusBlt7i/rbeqXs7ZFJChUKS939sSzjWb+EuuZENPA7Ii209?=
 =?us-ascii?Q?GZ/Csz9l99dcgkfZAeGjkZp9SVEL3G/uL82Sul6afJfeAQwSO/PnzxvSQGGt?=
 =?us-ascii?Q?5/7Z/BKfQMfcd3Mn2HyfoNZ18tv2joY/hEQerXapFJi+CWtudecV8K4OdaqK?=
 =?us-ascii?Q?84kwW0+2T7uyrp1zJx1ncgvvJ1TlTtFAO3z/89itrZti8nORA+kPPrFVzPxG?=
 =?us-ascii?Q?uJryBJ760RinrrTECPxDkLwBRPlh+keWyzAcglFKvyKq+lHBcn8QApLX3oDx?=
 =?us-ascii?Q?UOrGQ25gk7Bf11/sJ0YFrwyP+aSzD5gCWRyXhemvR8jtbLOe3oRr0qNC7MAo?=
 =?us-ascii?Q?OII0APN/EE567Bt36kQoiPM4zonay3nInxMpqHTX/noP39kqht5cXvUZnqQU?=
 =?us-ascii?Q?XfSinfp59sv/RIJTbJXNOBmqH4EbX21Z4pY2KMLmgtIAUVcKCqF7P0bCW3fC?=
 =?us-ascii?Q?bD5k2ctAAeLvaEo0cyAJZq7tXb9z/bRR1oAfoW1YaPmWASYcQqkHmgapE5uX?=
 =?us-ascii?Q?76Vxwjcz3B4lPncAgyHPvupxBGYunIOhqYZE9ElX8YNFctRsi+DsH47JeYRu?=
 =?us-ascii?Q?pV1Wipzeyj/jEwkTFrvRdQameCp+r4qRegnE2aBHvToLVP6o/XAoxC/Gg9TI?=
 =?us-ascii?Q?8Js01fqG0ycEIga4Ehq8nzhMH9sBBAD+g3sdscvrmqBlL3Dk0c03IVA4NvjL?=
 =?us-ascii?Q?a/cnVgSdTu2V8RvUtRg9hDUgnpOukQVxN/8LkyBNrVGIBSz/Zo2v0iUApnpy?=
 =?us-ascii?Q?qxZ6h5UHVSTWA2eckdBpLvfQKHEbd8FN7HCKWfyNfr14r9gtuma6NtjQZCQx?=
 =?us-ascii?Q?3o/Ac8+v3NUFf03V9s9CxW4iTOOQZ18YzIsLESm7WBBcrrf0tO+0cqt1cdPR?=
 =?us-ascii?Q?9lmkMK4QklteCCDExLSRjDPPUJgOQQrEBXNO9JxCp1Lv5VPtEXKSRbAbutFE?=
 =?us-ascii?Q?uN4CXuAEpTmq4xYR042mSMGfOSXL6nuzaqJ2q28Ri2ZMlWsO9ufWdD6Qckp0?=
 =?us-ascii?Q?zSZBm5/OfcrD+KUOx7s/OG43Q/SckUDhn49sKjCvxMxT1/zjCBtXiq9dETL/?=
 =?us-ascii?Q?lOFQ8FJ2gotI/d5oeM6YiV7nnefZhqwYUtXQ9zK29YeAhtidr90Bqd4Qs0bW?=
 =?us-ascii?Q?OA9rXA=3D=3D?=
X-OriginatorOrg: eckelmann.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 78a72401-274a-44ea-cfd9-08dbb34b7888
X-MS-Exchange-CrossTenant-AuthSource: BE1P281MB2529.DEUP281.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Sep 2023 04:48:13.6652
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 62e24f58-823c-4d73-8ff2-db0a5f20156c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sFxcH9rKDpi6lk7sSjEluugrJKy4Nex3iYnxcSmdd3qXNZXc1TA1TyD2gXVDFBn5FunNr7R9g3dLiA/w1yVQGA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: FR2P281MB0172
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_214828_943204_16BC5BCC 
X-CRM114-Status: GOOD (  24.53  )
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
X-Spam-Status: No, score=-104.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 5/5] commands: add stacksmash command for causing stack
 overflows
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

On Mon, Sep 11, 2023 at 05:09:00PM +0200, Ahmad Fatoum wrote:
> Now that we have two mechanisms for detecting stack overflows, add a
> command to intentionally trigger stack frame and stack region overflow
> to verify their correct operation.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  commands/Kconfig      |  6 +++++
>  commands/Makefile     |  1 +
>  commands/stacksmash.c | 58 +++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 65 insertions(+)
>  create mode 100644 commands/stacksmash.c
> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index eb95b2a5fbcc..c1bba22443e6 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -2401,6 +2401,12 @@ config CMD_UBSAN
>  	  This is a test command for the undefined behavior sanitizer.
>  	  It triggers various undefined behavior, and detect it.
>  
> +config CMD_STACKSMASH
> +	tristate "stacksmash"
> +	help
> +	  This commands trashes the stack to test stackprotector and
> +	  guard page. This command does not return.
> +
>  # end Miscellaneous commands
>  endmenu
>  
> diff --git a/commands/Makefile b/commands/Makefile
> index 4b083a852d83..4924755500e3 100644
> --- a/commands/Makefile
> +++ b/commands/Makefile
> @@ -145,5 +145,6 @@ obj-$(CONFIG_CMD_BTHREAD)	+= bthread.o
>  obj-$(CONFIG_CMD_UBSAN)		+= ubsan.o
>  obj-$(CONFIG_CMD_SELFTEST)	+= selftest.o
>  obj-$(CONFIG_CMD_TUTORIAL)	+= tutorial.o
> +obj-$(CONFIG_CMD_STACKSMASH)	+= stacksmash.o
>  
>  UBSAN_SANITIZE_ubsan.o := y
> diff --git a/commands/stacksmash.c b/commands/stacksmash.c
> new file mode 100644
> index 000000000000..1e9be0d40e15
> --- /dev/null
> +++ b/commands/stacksmash.c
> @@ -0,0 +1,58 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +
> +#include <common.h>
> +#include <command.h>
> +#include <complete.h>
> +#include <linux/compiler.h>
> +#include <string.h>
> +
> +static noinline void stack_overflow_frame(void)
> +{
> +	volatile int length = 512;
> +	char a[128] = {};
> +
> +	/*
> +	 * In order to avoid having the compiler optimize away the stack smashing
> +	 * we need to do a little something here.
> +	 */
> +	OPTIMIZER_HIDE_VAR(length);
> +
> +	memset(a, 0xa5, length);
> +
> +	printf("We have smashed our stack as this should not exceed 128: sizeof(a) = %zu\n",
> +	       strlen(a));
> +}
> +
> +static noinline void stack_overflow_region(u64 i)
> +{
> +	volatile char a[1024] = {};
> +
> +	if (ctrlc())
> +		return;
> +
> +	RELOC_HIDE(&a, 0);
> +
> +	stack_overflow_region(0);
> +
> +	printf("%*ph", 1024, a);
> +}
> +
> +static int do_stacksmash(int argc, char *argv[])
> +{
> +	if (argc != 2)
> +		return COMMAND_ERROR_USAGE;
> +
> +	if (!strcmp(argv[1], "frame"))
> +		stack_overflow_frame();
> +	else if (!strcmp(argv[1], "region"))
> +		stack_overflow_region(0);
> +
> +	panic("Stack smashing of %s not caught\n", argv[1]);
> +}
> +BAREBOX_CMD_START(stacksmash)
> +        .cmd            = do_stacksmash,
> +        BAREBOX_CMD_DESC("Run stack smashing tests")
> +	BAREBOX_CMD_OPTS("[frame | region]")

Indentation is a bit broken here.

> +        BAREBOX_CMD_GROUP(CMD_GRP_MISC)
> +        BAREBOX_CMD_COMPLETE(empty_complete)
> +BAREBOX_CMD_END
> -- 
> 2.39.2
> 
> 

Best regards
Thorsten


