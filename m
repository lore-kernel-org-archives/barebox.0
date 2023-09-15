Delivery-date: Fri, 15 Sep 2023 17:25:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qhAhF-00GM4l-W4
	for lore@lore.pengutronix.de; Fri, 15 Sep 2023 17:25:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qhAhD-0006q8-PS
	for lore@pengutronix.de; Fri, 15 Sep 2023 17:25:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:
	Content-Type:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=i98Me94g/2Dy1Alp6yYsCn/5G0WReTtbN5hKwk9b1Zc=; b=paHR/ipjcDAyjif0+CIeimJYAh
	kQ5ugf3vsUzQrU6Y8XGMmN6WRRK20q+ZUqvWbpKmYvKEtbUVw7//nowBvd7ZWXnKb5Q2QwomYTPZH
	iL3juSRaurEhzSKyWoPeCtEsACxQvkkJ7TcvPxo+dbGfORfLeiY5SDgAbRJRoeKy0oyfETyT20a7e
	g9BwLVHJ0PsRNYlP91zv7LYFySMp7xki7CXrWQh+HHF9x9/zMKn1G0E52R37ZkPC87lzGsr4IujRQ
	R8bVQ7GBW9Lk6KSCgeCHoXYZk9/TEknSlSUhWA30VMIL3Oigm2EsT5X0CkpYLovtJhcuCDivmvjSJ
	jbsl4pnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qhAfi-00AyU7-0A;
	Fri, 15 Sep 2023 15:23:54 +0000
Received: from mail-be0deu01on20620.outbound.protection.outlook.com ([2a01:111:f400:7e23::620] helo=DEU01-BE0-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qhAfe-00AySR-1t
	for barebox@lists.infradead.org;
	Fri, 15 Sep 2023 15:23:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hCAF/+WGJ1DugDRaVIND91EGKtiKv3TQELRIIe+BE7f5KBoBiMgOt+b1xfkuiz5cFPRmN9B0W8uccRVaoIdVMpCQBWkx5vcB147f7XzUvtpUDWG2MhOFR/IzvXI2E/+kirHuLqXAfbVeS16O2BAMQgy31Q/VpKZjo+uoeZyBrsxgbxTRQcwgdBUKhYDfVW6/SyKBD/SSU5QdmIasPBt7X8SOFBR9S4oGTPmwx0D31AFXKGge8mjUzpwcE9iynM2EmPk96KxwR/XScLfkwGbl8cj4nHwJFEwRWkbmkXY8gQFGK9SFw8qh6pF6+02hVbQDuWjY1Hk6XWI0tIdsNsWcGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i98Me94g/2Dy1Alp6yYsCn/5G0WReTtbN5hKwk9b1Zc=;
 b=iExbwF0CFgyLqqdqN6c9OOZB5H14RStgXUAFpbo82Om9omct9b2l9ilM/ISdbNNSMp7JmKRZaWaS2xeYSoxgLwUa5SE6S+XhD7OC8c7TeiTYja77nIHrF+Q+vqK8WMUbn7iGxosMaXoVlenWDWDutBubfDjnuuuS8gJsvbLkDq89vVOlll7ydrq6xptElxRIi6TFhZliYF6rqSoCAFsoFiro7EH6/3RmPFj3mSvCUAjf9gJiUvH4HBuN6IowbsKIRKuwjQ+pjOFPzmjeOs8GZI50wmDu5/BF6F0WQXAxA2CRFMs+zzxGfx7k0hxFZ+9HAMqmdB16653871NB7+8HWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=eckelmann.de; dmarc=pass action=none header.from=eckelmann.de;
 dkim=pass header.d=eckelmann.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=eckelmann.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i98Me94g/2Dy1Alp6yYsCn/5G0WReTtbN5hKwk9b1Zc=;
 b=Ws8B/ZJ2wDaj0VAzl2VvZOQ5cbSSuENoG0W2nL0GyoST0Tjr2r7TNIC1BglOKKcWAEjA0cwKeSgUK1c6XUHxz6vtS0mgVt7dOqXIOTSPZwBgqZtbY2IeX0RIWtq/QOCy2p9SIyOsitWs1Zc/YsMB8v09hYvkl0cXFmJcVjMeTQ8=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=eckelmann.de;
Received: from BE1P281MB2529.DEUP281.PROD.OUTLOOK.COM (2603:10a6:b10:69::5) by
 BEZP281MB1877.DEUP281.PROD.OUTLOOK.COM (2603:10a6:b10:58::6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6792.21; Fri, 15 Sep 2023 15:23:40 +0000
Received: from BE1P281MB2529.DEUP281.PROD.OUTLOOK.COM
 ([fe80::e3af:f21a:b0db:3615]) by BE1P281MB2529.DEUP281.PROD.OUTLOOK.COM
 ([fe80::e3af:f21a:b0db:3615%5]) with mapi id 15.20.6792.021; Fri, 15 Sep 2023
 15:23:40 +0000
Date: Fri, 15 Sep 2023 17:23:39 +0200
From: Thorsten Scherer <T.Scherer@eckelmann.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org,
	Alexander Shiyan <eagle.alexander923@gmail.com>
Message-ID: <20230915152339.k5nuwqrj2bbxpkdr@nb821.eckelmann.group>
References: <20230911155927.3786335-1-a.fatoum@pengutronix.de>
 <20230911155927.3786335-3-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230911155927.3786335-3-a.fatoum@pengutronix.de>
X-ClientProxiedBy: FR3P281CA0102.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a1::17) To BE1P281MB2529.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:69::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BE1P281MB2529:EE_|BEZP281MB1877:EE_
X-MS-Office365-Filtering-Correlation-Id: e11db0a6-cc06-42bb-619d-08dbb5ffbd7d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YlBNOTRUd81BIduQAx/nGHL2rLBf8mDhLjWJvXozqwblLAuDnPmFzCKqZKyQ9KeehGFcqsgOYRBmyUgQuTz0JuQ+U7pVPi5i+fwWdicKpGmzTjqlAgIvqMf86cZH88PZMdxFUvcSJ3hMFET6rIplfCNN2jx3TVDimQYQwlbzY4u0kiDm1b/4xVlVcZHsJM6dcoFE4nuxDGSb0oZmD1h9vCxf7u63DT5CIngdWr7uYMb4Zqvej08efKNAKc0dPk6gRu2tCABqpjVSvlp7W9uuIvEgnWIpg+bv1rpMkPGx89LCqBP/BeL7DO11p7lU3+Ja9eCeTq9U0r6aJptYNJolau4LiaG8OpPGiT+MHd/kn2wSt7kUaG7JJ8U/yLJ7QQBYpkg+DBL5MLLnLj5oaOC+nQewNRglqsQLDwyZ6Qv4sWNaGTSzktAMNVoFl+LWiQ+dQ1ovJ+MwzEkoVEv3uFtDv1G3Wy4poCbW18FqflIe5TaShhZujI4l7ITYuWHhKpi3kg02DTUdj8uz0wbFZxA7p+Fop36VTdN6Lh8oPJGXEz+RzE8UyQIOI41Ts+3ahnxg7pUkGDuDEaR95uvrFksO2yBDpr5VLmic+K3J+YKUWESpqnmfZITsEc5OAfte9p1EwG6Q0K71UIGSAodG+MDfxA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BE1P281MB2529.DEUP281.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(376002)(136003)(396003)(39850400004)(346002)(366004)(451199024)(186009)(1800799009)(478600001)(26005)(1076003)(2906002)(6512007)(9686003)(6486002)(6506007)(4326008)(41300700001)(8676002)(8936002)(66946007)(66556008)(66476007)(86362001)(316002)(6916009)(83380400001)(38100700002)(5660300002)(41533002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?V7xIPGeoMZqBzfgxmXSlzSsJuR3LqwPaUQef0qnSI/5e6bQgYJq43Ag4gZMP?=
 =?us-ascii?Q?BPUOYf04PTw2p9ACDdRbo6j4ION1aPcvVMUQfSLvYZyEL+5DPbngtbuU43zy?=
 =?us-ascii?Q?2GbyO654VPgq6AC7/Yl/z9wwOhmAgMiNODOZp3lVprzexA+fNU566+vLProh?=
 =?us-ascii?Q?N4ycjeNSo96ZKaEv2fzZQv1hRn13G5Djhqz81b/E6MJDB4WBwyD9y2vlhOEb?=
 =?us-ascii?Q?3YZE98YSWpJ+DO45tzi3ESW9S2ZExNvyb6HBQPRYtiORPtkOxXOjIO+RHB/A?=
 =?us-ascii?Q?T3+O0p+gRU03ikVoyyjPT1YcmBDqfF4xyEIOhrEGkL/zzUDOHKmWz/Ar1cSa?=
 =?us-ascii?Q?kFrLCwvttYG+qXFTU4NXhMciU2OQeVfb8PJM28Kgw/Bxe7iSVbfyGe47KVkc?=
 =?us-ascii?Q?DdH6Bjztv8GNKd+vVPd7WSHwwYMwXyoXUs0Ct95Dh78voHpmZ5we2sgx/Vdz?=
 =?us-ascii?Q?Ly7sDNbvhswK7rq+cqvNU+ZTP57OW2WS1QmAIOjuefEt7biOys/be6m7ttKR?=
 =?us-ascii?Q?6R2JAEyxzuCP+hVeSG0AOSQaikOcpf+yCsOgBUdhyS+/W0a7+PE1x9+Tnj+u?=
 =?us-ascii?Q?cCmmJLA7kbHnzJXqZL1lc9gHjK7Ia7UZkHMK8LnrqNRXvvw8QcWnk6CxO6S/?=
 =?us-ascii?Q?yQ+IcT573e1EQ7QJy2qAllIVoBiTpgHSKFlkAKAdfPzMhPVLAGreo0/FZwD/?=
 =?us-ascii?Q?qVDUn/WHgL7ga9rL7lwHzjBO0tnXElvHQTdELsbHB3lp4xELhDaSLld5+/qy?=
 =?us-ascii?Q?yXCmDp6qzMyNLpk7pMDT5RkyfAEpXg4WTqto7eYfNubGPEI/fS/Hn1vQRipg?=
 =?us-ascii?Q?Qj9b9US4vmmlGGmqRSbgHaaTH7z4HnDN1jVNNY81QqkmFPOUsOELMtvAHVeF?=
 =?us-ascii?Q?H4Sz+h2ECeBtiGopb1n1X0IE+TQQW6Jvx5BHllTymBKe5D6GUGtkIcphcfzs?=
 =?us-ascii?Q?xUT7jIxhKHKjZn1LiNMuKm7K89LOoF2Mysz5M5smaIliKvvW5A/+dMi2qy+2?=
 =?us-ascii?Q?tuy4GzVvkFtDoahhHUgnoeLP6j7oLOdAGrsYRHk2HaoQRwNszDyHubW5Buyn?=
 =?us-ascii?Q?Cd7Yw20yev/tFrXpfx0r5sCmUY7Yut+Pf+3Xkf7XQL+zOIKlLpOdJUEa/Nro?=
 =?us-ascii?Q?TIxIYp5Ql32RO+sEm4Qj0YcaQcK0j+IxVEm2IsI5l+/Hi1tRAlHPq/Z6Vavm?=
 =?us-ascii?Q?YWM5jDlsHMwnBK7KerT5HvJfQHDoFZOcUBcP/46bH30UhOSkGQE3PWTBoS5r?=
 =?us-ascii?Q?R5D8Xd+JZBQHk13H7hWuLYZGGSNm/+Oy67UV8+FHoc0FYOx7sJBORd32187t?=
 =?us-ascii?Q?7t4PyNyVlejofTAlWCrv6Y1+nvvQMZDfHKa7aCxL2UIja+Gozus+UVL2gdrd?=
 =?us-ascii?Q?R2ftdF8R6Qmiva5P+4UgQUgUxz6k3BgjQeNeamqZajZL7Tij3d5hjAuIpPLg?=
 =?us-ascii?Q?+yLCe5p9+TNUAqTHEU3fwgsAuIUtBpxPZqGDnaphwUs67nZL0XFqQ1Za72D3?=
 =?us-ascii?Q?l5kshmwZd1msolB1pXNanwf1BA480KGn4c5VFC3ARo2vEXyzJCoNRKPbuq9a?=
 =?us-ascii?Q?7pzRaXMYxvnQjhZkShKgB5WTxc20X9yr3h9jAa4wkIzHZHMi+4Etkv+/616C?=
 =?us-ascii?Q?JQ=3D=3D?=
X-OriginatorOrg: eckelmann.de
X-MS-Exchange-CrossTenant-Network-Message-Id: e11db0a6-cc06-42bb-619d-08dbb5ffbd7d
X-MS-Exchange-CrossTenant-AuthSource: BE1P281MB2529.DEUP281.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Sep 2023 15:23:40.6356
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 62e24f58-823c-4d73-8ff2-db0a5f20156c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: egEb3NgYAEuxlGHOXpET2J3o31fHLTjPMniAQa6DIWv2mKHG1FUrFEfOyq1ldFoeaR2zVOK2NkanJgQD9OLMxA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BEZP281MB1877
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230915_082350_688405_7A35DA87 
X-CRM114-Status: GOOD (  29.77  )
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
X-Spam-Status: No, score=-104.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/3] net: add generic MAC address derivation from machine
 ID
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

On Mon, Sep 11, 2023 at 05:59:27PM +0200, Ahmad Fatoum wrote:
> From: Ahmad Fatoum <ahmad@a3f.at>
> 
> Especially during development, devices often lack a MAC address. While a
> MAC address can be easily added to the environment:
> 
>   nv dev.eth0.ethaddr="aa:bb:cc:dd:ee:ff"
> 
> It's easily lost when flashing complete new images, e.g. from CI.
> Make the development experience neater by deriving a stable MAC address
> if possible.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/net.h |  2 ++
>  net/Kconfig   | 17 +++++++++++++++++
>  net/eth.c     | 11 ++++++++++-
>  net/net.c     | 49 +++++++++++++++++++++++++++++++++++++++++++++++--
>  4 files changed, 76 insertions(+), 3 deletions(-)
> 
> diff --git a/include/net.h b/include/net.h
> index a0ef8bee0404..de43c29f74ac 100644
> --- a/include/net.h
> +++ b/include/net.h
> @@ -418,6 +418,8 @@ static inline int is_broadcast_ether_addr(const u8 *addr)
>  #define ETH_ALEN	6	/* Octets in an Ethernet address */
>  #define ETH_HLEN	14	/* Total octets in header.*/
>  
> +int generate_ether_addr(u8 *addr, int ethid);
> +
>  /**
>   * random_ether_addr - Generate software assigned random Ethernet address
>   * @addr: Pointer to a six-byte array containing the Ethernet address
> diff --git a/net/Kconfig b/net/Kconfig
> index 59f14c23cba2..04fcdcbe5bd5 100644
> --- a/net/Kconfig
> +++ b/net/Kconfig
> @@ -6,6 +6,23 @@ menuconfig NET
>  
>  if NET
>  
> +config NET_ETHADDR_FROM_MACHINE_ID
> +	bool
> +	prompt "generate stable Ethernet address"
> +	depends on MACHINE_ID && HAVE_DIGEST_SHA256 && HAVE_DIGEST_HMAC
> +	help
> +	  By default, barebox will generate random Ethernet addresses for
> +	  interfaces that had no explicit Ethernet address set via
> +	  either board code or NVMEM properties in device tree.
> +
> +	  Say y here, to randomize Ethernet addresses only if no machine ID
> +	  is available. Should barebox have a machine ID, it will be used
> +	  alonside the hostname to generate MAC addresses that are unlikely

s/alonside/alongside/

> +	  to change between subsequent runs of barebox.
> +
> +	  This is not recommended for use in production as it may leak
> +	  information about the machine ID.
> +
>  config NET_NFS
>  	bool
>  	prompt "nfs support"
> diff --git a/net/eth.c b/net/eth.c
> index ccac5e2a6488..e74c00e74a9a 100644
> --- a/net/eth.c
> +++ b/net/eth.c
> @@ -10,6 +10,7 @@
>  #include <dhcp.h>
>  #include <net.h>
>  #include <dma.h>
> +#include <machine_id.h>
>  #include <of.h>
>  #include <of_net.h>
>  #include <linux/phy.h>
> @@ -558,6 +559,7 @@ static int of_populate_ethaddr(void)
>  {
>  	char str[sizeof("xx:xx:xx:xx:xx:xx")];
>  	struct eth_device *edev;
> +	bool generated = false;
>  	int ret;
>  
>  	list_for_each_entry(edev, &netdev_list, list) {
> @@ -566,11 +568,18 @@ static int of_populate_ethaddr(void)
>  
>  		ret = of_get_mac_addr_nvmem(edev->parent->of_node,
>  					    edev->ethaddr);
> +		if (ret && IS_ENABLED(CONFIG_NET_ETHADDR_FROM_MACHINE_ID)) {
> +			ret = generate_ether_addr(edev->ethaddr, edev->dev.id);
> +			generated = true;
> +		}
>  		if (ret)
>  			continue;
>  
>  		ethaddr_to_string(edev->ethaddr, str);
> -		dev_info(&edev->dev, "Got preset MAC address from device tree: %s\n", str);
> +		if (generated)
> +			dev_notice(&edev->dev, "Generated MAC address from unique id: %s\n", str);
> +		else
> +			dev_info(&edev->dev, "Got preset MAC address from NVMEM: %s\n", str);
>  		eth_set_ethaddr(edev, edev->ethaddr);
>  	}
>  
> diff --git a/net/net.c b/net/net.c
> index bf2117ff7ec2..e38179491d7a 100644
> --- a/net/net.c
> +++ b/net/net.c
> @@ -25,6 +25,7 @@
>  #include <init.h>
>  #include <globalvar.h>
>  #include <magicvar.h>
> +#include <machine_id.h>
>  #include <linux/ctype.h>
>  #include <linux/err.h>
>  
> @@ -365,6 +366,43 @@ IPaddr_t net_get_gateway(void)
>  
>  static LIST_HEAD(connection_list);
>  
> +/**
> + * generate_ether_addr - Generates stable software assigned Ethernet address
> + * @addr: Pointer to a six-byte array to contain the Ethernet address
> + * @ethid: index of the Ethernet interface
> + *
> + * Derives an Ethernet address (MAC) from the machine ID, that's stable
> + * per board that is not multicast and has the local assigned bit set.
> + *
> + * Return 0 if an address could be generated or a negative error code otherwise.
> + */
> +int generate_ether_addr(u8 *ethaddr, int ethid)
> +{
> +	const char *hostname;
> +	uuid_t id;
> +	int ret;
> +
> +	if (!IS_ENABLED(CONFIG_NET_ETHADDR_FROM_MACHINE_ID))
> +		return -ENOSYS;
> +
> +	hostname = barebox_get_hostname();
> +	if (!hostname)
> +		return -EINVAL;
> +
> +	ret = machine_id_get_app_specific(&id, ARRAY_AND_SIZE("barebox-macaddr:"),
> +					  hostname, strlen(hostname), NULL);
> +	if (ret)
> +		return ret;
> +
> +	memcpy(ethaddr, &id.b, ETH_ALEN);
> +	eth_addr_add(ethaddr, ethid);
> +
> +	ethaddr[0] &= 0xfe;	/* clear multicast bit */
> +	ethaddr[0] |= 0x02;	/* set local assignment bit (IEEE802) */
> +
> +	return 0;
> +}
> +
>  static struct net_connection *net_new(struct eth_device *edev, IPaddr_t dest,
>  				      rx_handler_f *handler, void *ctx)
>  {
> @@ -381,9 +419,16 @@ static struct net_connection *net_new(struct eth_device *edev, IPaddr_t dest,
>  
>  	if (!is_valid_ether_addr(edev->ethaddr)) {
>  		char str[sizeof("xx:xx:xx:xx:xx:xx")];
> -		random_ether_addr(edev->ethaddr);
> +
> +		ret = generate_ether_addr(edev->ethaddr, edev->dev.id);
> +		if (ret)
> +			random_ether_addr(edev->ethaddr);
> +
>  		ethaddr_to_string(edev->ethaddr, str);
> -		dev_warn(&edev->dev, "No MAC address set. Using random address %s\n", str);
> +
> +		dev_warn(&edev->dev, "No MAC address set. Using %s %s\n",
> +			 ret == 1 ? "address computed from unique ID" : "random address",
> +			 str);
>  		eth_set_ethaddr(edev, edev->ethaddr);
>  	}
>  
> -- 
> 2.39.2
> 
> 

Regards
Thorsten


