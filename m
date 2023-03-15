Delivery-date: Wed, 15 Mar 2023 17:11:24 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pcTik-001mrH-VQ
	for lore@lore.pengutronix.de; Wed, 15 Mar 2023 17:11:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pcTik-0003E9-MU
	for lore@pengutronix.de; Wed, 15 Mar 2023 17:11:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6PdRy8aLpxLt+fWPABKo833lVUGCKw7p0U0ldvoRcSA=; b=eE2X8muEzxJbSDaGo3sFLW3ot9
	eEy58yXEKRUXzWHseXIfkNpbcxV+yxZvXXXmDsvVBIhPUkuTwTtc8qQz30fVLWF4pwve2T7kElR1n
	MoSeV+Ftk/pS/4EAXXz/ztGP4kuO+MAHp+OP9c39mBH+LBZOuBlLCOIntImAFQDYMLklbVndsdoan
	uct3oBEy0yBFDTw4LVRe1Hep+ybW3mpJtV2kjj0+6KaUcWTVtDiOCECOeU63JOmWbWC/zwb1yWRuQ
	5xL4JgUxVygNm/hAHiRbM1Jn49S+69kfmsvvZgVfIEbmpwR9bd88en9qWeHZ8NHCXwR3D7DUf0JM5
	fSBzfVpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcThP-00E1jg-0s;
	Wed, 15 Mar 2023 16:09:59 +0000
Received: from mail-db8eur05on20608.outbound.protection.outlook.com ([2a01:111:f400:7e1a::608] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcThL-00E1iI-06
	for barebox@lists.infradead.org;
	Wed, 15 Mar 2023 16:09:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Me1xbIDwe1dO6SFtW9qGuJNO8z6iVA0msN2qU6VFqZVp6P44FeVQR8yZUu1IiGJ3Clkk3RBKK68HSJD+A+u61hsGzq0i18jt06c3pFdz6wtSHbeJrcGlxtYRgj6MurNg5WsAol8Sz7vg6bvMqsRNH/mlp7+mwNNmSbw6FwWZW1EiPGk532znN1BqiudXMMBAzjUAUTP5aKOOKsaUuPI9F8E0s6ptAljGCWdXRzAKdo+WpjyySZ8shlqKSJuVYNxU+aXzpbZpTEqIH4Xqu4/JKOebch/lWVkRoKv07rm3upFb9IkQ1T3gS9Ejt6CNirMfKZmq0RDni4XdnXbef8xqlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6PdRy8aLpxLt+fWPABKo833lVUGCKw7p0U0ldvoRcSA=;
 b=Fxc7Dqt1er78nL2IdNBken8/Y1qtKlBaHjbld945ibqVTGevmb9PN4Pzf6iScQvBIgLXMstDxMLRMeziQ/sT/YCbtL3FJ2bwlf+A28Q1ZxGP1BIagcfij3BdtqY2tyvKJmwb+QU6RQ3wazR8zivWDTSvPgePTcT82xCoU7wzSkAh5Re9/h+vRpOIusuSvUpje91I+ttqJEhyA3BQtFaW8mV+iL9LNRNthktagv7uhQFmZUkeLATn+FmcU4bXlf2nx87Elgn2oKrQGjPuCllL+9QChuugnG1Jjw++AJtVL+zGiRm8lfimjK5VbWWa5zMOSv7F/YnpRZQgxkVm/vOOMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6PdRy8aLpxLt+fWPABKo833lVUGCKw7p0U0ldvoRcSA=;
 b=XNX7Dr0Uc6ABnx0pRvLevtgZutMOrX9i9V541W3T5YQCHOebNnEPyT2snkk/22noFRZP7wk4AYARjT4Xm/GBOq7m/DS+rZJwtjO4AmyuSl7/zT2NNC8qqKhXa7e53kGfQNsxLoVYRb7g8um/fWGQ29LyKDicQWzQ6VIekZqR9ow=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by AS2PR08MB9428.eurprd08.prod.outlook.com (2603:10a6:20b:5e8::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.26; Wed, 15 Mar
 2023 16:09:49 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::6f4d:f868:c89:4db1]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::6f4d:f868:c89:4db1%5]) with mapi id 15.20.6178.026; Wed, 15 Mar 2023
 16:09:49 +0000
Message-ID: <7488559d-b9bc-0482-0732-8ab1d794f3fa@wolfvision.net>
Date: Wed, 15 Mar 2023 17:09:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: barebox@lists.infradead.org
References: <20230310094222.2538259-1-s.hauer@pengutronix.de>
From: Michael Riesch <michael.riesch@wolfvision.net>
Organization: WolfVision GmbH
In-Reply-To: <20230310094222.2538259-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR08CA0246.eurprd08.prod.outlook.com
 (2603:10a6:803:dc::19) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|AS2PR08MB9428:EE_
X-MS-Office365-Filtering-Correlation-Id: ca037bcb-a536-453b-30ac-08db256fb3d9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	MPKbGJJuSAQrf51pZylLF1DMu/gWrk1iBs7IJz4NjzEN5+QJ6+j8vfIQaKCIsa7Swg3i1ufFFoScd1lj6ehp/6BlCam2jrmBWAElRJ582UDxCjaL4VYGW45xDSOI9hz9KPsNxo99EVeaa6xsyP699Fx8lExQ63VWNVOT2Aet+Fbil2iucO+P6PlC/ZDHKBzQOiYpis45aa1p/IALeURwRzOlLqq035NNPZjkuXF3b+12NIh/nVVrhabQXfoWMLtFkITmJ2mjlTEcKeRz1/RZbRLCZEKe7wp+yrFEDynd5xjV0gTwqtkvT3BzKWC7nPs6pBQGHOKk6ql1wGmw4fe38nrRk6GFSFgKPubE2FhHZe66Yh3HPfffwpSecy6wlcCp8SCFbkwAYHiJqNbx2PDmB66VflkpdVj61YPlFJFTAhmY75v9M/gDb/nYPsaWhLdwsdSiw87d6uofziWgJEdwNIpiIV8jlJ8DJpM0I0Faf+tpzpHZYG9jKAaGiOnflZsORqfRN0fYd1qew8QO1JpLD/S6L4k/wtPjJtIwD6Qun6rxNjqAwiy4TUHSbmml29l66tty6E6QsRgPiwM0Eiac3gobSY2yDzrM7TIa35/r33j0XvEATM0vwCqIC3wvY62scIbrQJty1CY1wvZ1uADyhD7LdolhACRK14gAp2w85N9cDkSWDx9CrXWWBaZ/UYXyqALhPBvxoeXbXK2sUZOB0eChVOg4Qm62bE8RGTSu+I0=
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(376002)(396003)(39850400004)(136003)(366004)(346002)(451199018)(2906002)(83380400001)(31686004)(6486002)(5660300002)(31696002)(36916002)(6512007)(36756003)(26005)(6506007)(44832011)(2616005)(53546011)(316002)(186003)(41300700001)(8936002)(86362001)(66556008)(66946007)(38100700002)(6916009)(478600001)(66476007)(8676002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?cUZKckJvZVlBZDhUUGZSNkNKUm5KMElsQ1FuTE5kQ05FR2xuRUN3ZjZCa3RF?=
 =?utf-8?B?MkJuN0VkRFltWElDTnZORHBSR0pzNlNta0F0RG1MbGhSUDlOS2lTd0FCSzQy?=
 =?utf-8?B?eTF1Uy9CdmN5SDhWYXhzck1XMVBDSUVKd0JMSFZCa3pSREFNNDZxbXk0eHBs?=
 =?utf-8?B?NjhMNzZkOUdTZ2NLb29RRGFXVlJnczdMcEtHUm03RVZQdFZNL3paTTBoQ0Y2?=
 =?utf-8?B?WE40UUwzb2ZBUUJ0d2hFeUZiTys1TUpuTThxc2d5TjE1OXArL25KYWtiWms1?=
 =?utf-8?B?eEVkayt3dW9NMlFUMCtCWFk0RlJZVFQyNGx2cTVYM3pWbjIxaWRCaW5CUjhs?=
 =?utf-8?B?eDY5bDFlUExkRDhyU3JscXFGUS9oT3A0U0l3MGd3TlhRZ3dMQzFpQ0N4SXNk?=
 =?utf-8?B?VU92UGRoc2swMVVVbVhUdGpnNGF6dys1NHZXUDU1TWdudGpRTnZmYi84ZUx3?=
 =?utf-8?B?bk44dndjR2ZIb1IycGdXVzhjQW1BOHowVTkvaXdSNVVKcFF1TWFVYWd5bmdj?=
 =?utf-8?B?blk4OTUybjUzS1hnMkV6NVpwY2h5MWFsbjB6emt1SllBNjdGaTVTZUpta1VE?=
 =?utf-8?B?MlZCT1VOdWtNaVJQVk1rN0pqUDZHdGZ0d3AzRHFuVldqTWRxRmVaSHZIZGJj?=
 =?utf-8?B?WlRvYnRPcnBJeTdvdFZZMEVvMmFmZU5NQnp5Wk5abm9tT3JiamljUW5EMGIw?=
 =?utf-8?B?ajd5SnZaUGNNd2piWVZPaVJFb3dmd2V0ZDdLV1dubTJCOVBRZ3hSbDBvU2V3?=
 =?utf-8?B?V3dBQU5QeWc2OGlvNC9kNGprQ09zanVxMkFmVEVLZ09NcUpSQm94QXU3KzlU?=
 =?utf-8?B?L0xqN3pwOEp0eHhKNG9XZHZRUXNEdkJxR1YwYUZJU3N3Nkw5OTVBV1kzd09p?=
 =?utf-8?B?R0pvRFByMTRSc2g5a3JheU84V0hWRHo0TU9Yc1FjSDV1K1RtbXJ3d1FmQ0Vo?=
 =?utf-8?B?blFiMTBLSU5xb3BJVjVVWWxnQ0pEYjYvNFEwV0NZM1pmbStjdW5iS2ltRnZS?=
 =?utf-8?B?SHk4dDJoSDZWL3U0VHJ4cExLUFlyelRtYXZlcWV0SXEwQ0FCMkxRbkNjM0Vt?=
 =?utf-8?B?Nmd1SHpXcjJUc0MyU3ZnT1ZBZGY3OTBUeldnd3dHMG5FZWdNWkNvZHdaVGtt?=
 =?utf-8?B?SmlOUDlJcmxuWml0VEIvbElyMjBZdVVzQk55emFxVnhnVExoZ2JSWVo4Qkhv?=
 =?utf-8?B?bFl1cDBadDFwYi9WU255bGRGR2t6SCtvTUdVc0lQUS9FWEI3bnY5a3hvZStG?=
 =?utf-8?B?T1E4U29SMjhobHVXOW5BTFJmeldEditESm44K3ZybzNnVTRCeUhkQ3lkcStK?=
 =?utf-8?B?QU51aDBCSnVCWFQ4bVZnNmMyV3VJMEEzY3h5dUtGcXJtR1BySWprdFBYNjdF?=
 =?utf-8?B?Q3Q0dXExcFgwejFHd2NEMkdCcWtXK2t1SDRtU2dSc01McVJqVlQxdVRnVmFC?=
 =?utf-8?B?ZnJTd3ROeGRVeVN0c1NhTThqdkFoaTZUZXQ3eUtvYkEvMTYzN2Rjem1FdmNP?=
 =?utf-8?B?M1lKemFmemlRcGJFTkFFUGNYR3M2MmVXM01HZEZYeDB0eTRoMVg1UGhCZ1FJ?=
 =?utf-8?B?dkM2VFEzSVpaNHNKNzIyTHlEd3dSWEU0ZGRaVGg1d0hpYnpTaWF1STdIR1Iv?=
 =?utf-8?B?emdVQ003QlQ5ajJSbmdiUStMQVluUHhpMWRhTHAyNkJsWG1XWTNKSC9nOEdW?=
 =?utf-8?B?N0FtcWtKdlFhWEN4MEloeks4ajVTYVNucUQzVWZudS83M1VVUm1VcVZnV1Jm?=
 =?utf-8?B?QTk4WGt5d2g2K2VYb3FwZFZGQ3VXdXM0M1VDQkFxQjE4Wnk4N2JLWTFPa0hY?=
 =?utf-8?B?ekx1RjI1K3RVWklXUTN3Z3BwOU11MjVrQmNZSElRYlFBdWRNOVlXcStHSGVm?=
 =?utf-8?B?QVFMelhUZ0wrVzRuaGhjcTdBYUNoakVUcWdRQ0ZldDNRZDJOTjBWZVY5TC9j?=
 =?utf-8?B?NmF6VnAvLy9Wd3ZBSEZGZVlnU3ZNTVFMTkc2S3Z1U2dDcXdNQWpsRkRuRTlC?=
 =?utf-8?B?d3hrcXVPanRMQXBIWGVBZHlqQzhCd2ZodC93TFZ0QXZsTnNlM2ltWlRzZFpm?=
 =?utf-8?B?akdQanVoN2F0VXlVZFdib2dDcW50MWFVb1FEOVpaZysyb3JiWlF6TU1vblNy?=
 =?utf-8?B?RmFlNkdRMXBWWTN1alZKRk4zdmJGME5ya1h3Qkx4a28vcGNQVUtQM0NTak5m?=
 =?utf-8?Q?IAa7T5KXAv/ciBfvXNl4Xbw=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: ca037bcb-a536-453b-30ac-08db256fb3d9
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Mar 2023 16:09:49.3415
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: u6//q78Nb8HsDdzwfk2A4ryw0dP79QT3dG5anbpwbiruMNBON+WgSe/AEPm++UKJIKTib5jHRZctLi3epN+BH17sesTauS7Iz6xzVuYAQwY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR08MB9428
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230315_090955_253126_A3AE1928 
X-CRM114-Status: GOOD (  17.30  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 0/7] support overlays to the barebox live tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Sascha,

On 3/10/23 10:42, Sascha Hauer wrote:
> Support for applying a device tree overlay to the barebox live tree
> is already present. This series adds a few missing pieces:
> 
> - add support for applying overlays to the live tree from the command
>   line
> - add support for adding new I2C/SPI devices via overlays
> - add Makefile magic to build dtbo files and dtbo.o files to include
>   into the barebox binary from dtso files
> 
> Changes since v2:
> - Don't build compressed dtbo files
> - Do not build overlays for PBL
> - rename symbols to __dtbo_ to avoid possible name clashes
> 
> Changes since v1:
> - add a device_rescan() static inline wrapper
> - add missing call to of_i2c_register_devices() in i2c_add_numbered_adapter()
> - replace device_detect with device_rescan in of_device_create_on_demand()
> 
> Sascha Hauer (7):
>   kbuild: Add target to build dtb overlay files
>   driver: Add rescan hook to struct device
>   i2c: implement rescan
>   spi: Directly register SPI device
>   spi: reduce scope of 'chip'
>   spi: implement rescan
>   of_overlay: Add option to apply overlay to live tree
> 
>  commands/of_overlay.c  | 38 ++++++++++++++++++++++++++++++++++----
>  drivers/i2c/i2c.c      | 24 +++++++++---------------
>  drivers/of/platform.c  | 12 +++++-------
>  drivers/spi/spi.c      | 29 ++++++++++++++++++++++++-----
>  include/driver.h       |  6 ++++++
>  scripts/Makefile.build |  2 ++
>  scripts/Makefile.lib   | 10 +++++++++-
>  scripts/gen-dtbo-s     | 14 ++++++++++++++
>  8 files changed, 103 insertions(+), 32 deletions(-)
>  create mode 100755 scripts/gen-dtbo-s
> 

With this series I can apply a device tree overlay, but a node with a
"fixed-clock" does not lead to a corresponding clock showing up in clk_dump.

Any idea what went wrong here?

Thanks and best regards,
Michael


