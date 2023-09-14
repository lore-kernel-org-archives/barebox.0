Delivery-date: Thu, 14 Sep 2023 12:24:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qgjWE-00EtzC-JS
	for lore@lore.pengutronix.de; Thu, 14 Sep 2023 12:24:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qgjWC-0005vw-Hg
	for lore@pengutronix.de; Thu, 14 Sep 2023 12:24:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:
	Content-Type:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BueqrKn2NqbEkJgrE8Bh11beAo+yKX+gIdxP9wv6KcU=; b=kD5vZ8kwQPt8tExhYdcq+v+dlS
	IFnqLfNWTFqQWQotAXUlImf4Pwo/kyOAtiGxShvQ9ftm5Q2gAv/aSQMyt5pwU6pQsE5/eH0E7Nm2c
	9wIp1ntjISF3B4ceiaote6H0HKw4L5Z1gZ5HwFC/zoAbG3JX8iIUI2cELSxcWZadB/azV6sQz6R3f
	eHxjKxkzunuHFm9Cq6lYAm5T9Z6YeBmJPSw6WWklkiHf+qAU1Ir0JgG3/vVroYrxwladK/yuHlKx/
	YliUxUZToKMg09GTmJzunihnw3FFuuKOF7J4x8i7O9W7bt8YSrWtLxNcPfIU1ToEHN8n+KXkRamuS
	+/ZyY3TA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgjUw-007yg6-0w;
	Thu, 14 Sep 2023 10:22:58 +0000
Received: from mail-be0deu01on20611.outbound.protection.outlook.com ([2a01:111:f400:7e23::611] helo=DEU01-BE0-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qgjUt-007yfF-2L
	for barebox@lists.infradead.org;
	Thu, 14 Sep 2023 10:22:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aP32c8WNJ6Fm0q2OjDxMxgV64Ot8Eo2jOeIlAgWwImFncqFiIuqOGEt0UppuVI4IviKHEh6pFyuJJy66DQORK0wkM4RIK01yNL9keS8wcQZ0nfwlhy/AMHGWuYTX33R3d0npjdGaE0aykP0vIRQPG3DRWbFsE9Yh3JHqdopuyDWPF3/ix4H8Aj6xFyxmfPMHMex2WiGUiH0w+aku384OJ6j0XxN0+ofnJSdnsk9zVf0boRdmHA2pxHIMA144aLv2fJHSuIt92e4evw//6Mo6rHGiTUdluwNjUKQxoaG7WoxWmc86WfEygLK396Ot+x7LyXqmocgEpr96B8qjw/y7Ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BueqrKn2NqbEkJgrE8Bh11beAo+yKX+gIdxP9wv6KcU=;
 b=HmgKium9v0S3fgCT+TETFa9ziRYJQSfRK3OgwA5dcL4r7vi5gsgnXPztK39/iK4YeWbSKbzChW/7Ycs1vB3JyK9dYjD1WcsownGCzzJV+SJDS5deAehdvQpqCIbE2yWzpF+Z/8QmAIZLNDE2rMMGMjRAqGlAgbitodIUV6JdaVsHWLH3bFcjrikca1pKCnQRIIJcdAQtM+2mNnf4uN4zKb8qzostfESG9GIXp+/ThpJbYuMKHH8iyYpSsmO7U97KwAybzbElUAbdbs844+1qI25DP2qliAHMe0MSBuyobj4j38EJvQgTAT3jar+q/tDw/aOixcFLak/9YJoZDUlT/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=eckelmann.de; dmarc=pass action=none header.from=eckelmann.de;
 dkim=pass header.d=eckelmann.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=eckelmann.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BueqrKn2NqbEkJgrE8Bh11beAo+yKX+gIdxP9wv6KcU=;
 b=CC0Y/7xE7HmTw+p7xZQKiTjDuFBwAi5jTnGWQeCvsQwO/GnnU67Hzcg0eBTVKsCaGypu+PQ6yByxdTag5FyJqDkoJdBWaDopgB/lAecUF0zKMIdLKgq/o6URO3dQZbnti6O26Gr1LTZjZ+E+ukk36nM4ddYJZQvnc8wp6n3x2qA=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=eckelmann.de;
Received: from BE1P281MB2529.DEUP281.PROD.OUTLOOK.COM (2603:10a6:b10:69::5) by
 BE1P281MB2242.DEUP281.PROD.OUTLOOK.COM (2603:10a6:b10:3a::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6792.20; Thu, 14 Sep 2023 10:22:49 +0000
Received: from BE1P281MB2529.DEUP281.PROD.OUTLOOK.COM
 ([fe80::e3af:f21a:b0db:3615]) by BE1P281MB2529.DEUP281.PROD.OUTLOOK.COM
 ([fe80::e3af:f21a:b0db:3615%5]) with mapi id 15.20.6792.020; Thu, 14 Sep 2023
 10:22:48 +0000
Date: Thu, 14 Sep 2023 12:22:47 +0200
From: Thorsten Scherer <T.Scherer@eckelmann.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230914102247.ijaw2q7salq6h7ng@nb821.eckelmann.group>
References: <20230911150900.3584523-1-a.fatoum@pengutronix.de>
 <20230914091438.125965-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230914091438.125965-1-a.fatoum@pengutronix.de>
X-ClientProxiedBy: FR0P281CA0187.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ab::17) To BE1P281MB2529.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:69::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BE1P281MB2529:EE_|BE1P281MB2242:EE_
X-MS-Office365-Filtering-Correlation-Id: 322c881b-86c9-43fe-84e3-08dbb50c8b78
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cvktFSaSpdpsg3zwUJya0/Okz61ozY6iwN6Eyo769hy1UUREtJ/m/hIRO2fXxnKl+jaVqFGuzIRcCIsiPDBvcPsqOIeapbMp8FIQwmOzQPsIw0Q6qNBI8oYke5TRUOR7zz90esyZSBKOTFpNcvbqOxZXnBNyUNg1xJrTOScpqyIuvBAkvJr7ykcPeDeFgG3g/LHQVO+RHgUkTBIRh6T7yIndj9S27kfXGWMtfMpF2X1AgXIlk76/ixU3MdFDbxgRdiB7OIJvvCr6kDL2vEoS8QxN1DnYp6NAOz331eAQa5eo+Z7uXAY2Do8x8bm9OPxqeJeE2E4/aw6y3ZFItARzHZqWUtPsQKDQdLSuLZsWTIzz+JEyhiH9/eF7xFU6PnVDPzDUpLIhKoAoBSLg2vM4FQeU+HJWPOsxnuTrnHS+xXJwWYh/6tLeRNEYh5Sdrn6xpn06//1sKO0UaGh1oaRgeiTxV4I/FH7WhEZLBd85vyAafKIVNv4JQXkZ7+50HYsPM1xtXVyvRWnDFSLoMBRdsBLAFFzqZr+/N5K03cXyVmNYO9kUR9o3YSijh5nO2vzI76DVnjmNTjo7ZORBY0TbN8CVEnve9F6t7VKhM8w0nh4=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BE1P281MB2529.DEUP281.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(346002)(39850400004)(376002)(396003)(366004)(136003)(1800799009)(451199024)(186009)(83380400001)(9686003)(6512007)(8676002)(4326008)(66946007)(2906002)(5660300002)(6916009)(316002)(41300700001)(66556008)(66476007)(8936002)(6506007)(6486002)(478600001)(38100700002)(86362001)(26005)(1076003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?jqjOwFlqPWpcNFr8Log/PHk72nlZR+6wA5ikIi+rZoYcT7KkCJO3ekWrpXvl?=
 =?us-ascii?Q?DaFhCY82CILOFTT/Py3AdgR4Pa3Y77oylyxG1CpS3cO7crNGjNSWOl1Xanly?=
 =?us-ascii?Q?+hnO9WGvq9PAdBPIWLqtWU2/NUd2aHgkdZWA+4XPZYkkPMfSn47POYDMlJW9?=
 =?us-ascii?Q?1Nc3EYVPolmQMqtY01oVyi2esZGBW7JQ2LuBj7uxU1i8Neu56QJ5ZiY4vX3O?=
 =?us-ascii?Q?36BRiwNnEHA8WNeDsnyznmkkb0b64gf8qy//U/Ev93xFqHyXTFBzieYybfl7?=
 =?us-ascii?Q?+zIMBIC0m/476uERPDRDV3qM20B4v5XEtPIhs7Hx84tL5dPV3ecDRw8OUbE2?=
 =?us-ascii?Q?NUyHWBT7S6RfNcB4zv0al+WHUanO51iBwUce9P+VgzTn4HCGeEw0dK9Bjlpl?=
 =?us-ascii?Q?rXhk9N/ZRqJRKqHzG96Mex9UDdlKFlFhbDHvEnIof4/9VnTkJue9fQr9v4vv?=
 =?us-ascii?Q?2qam6o7UBc0JgPc+OiNorQqCK3Nboju89k5DHILyiqsYksp6UgEAX7cJjeNo?=
 =?us-ascii?Q?yeFufezN1uUVlzppx5QtkN05TAdlc/Fq1vWAK9DHtLT6J7NK8WilXmqVZs0E?=
 =?us-ascii?Q?29pqwZHSi4YGbQ4OZPOg5pYJScoObM9YJ9F+maTso+lxhn/15RMi39ZGka4G?=
 =?us-ascii?Q?HN8xbwdF45obXwvDEXYLF+KVzZLFTpoGFRZ3kddBlNNEv+/m2lHkMi40w6NJ?=
 =?us-ascii?Q?cWAWF7s+6h3lHlrourDTeLzX0mwJYxk5LpTKvMr9Xs9OKXntjCCBI9Yk4SBj?=
 =?us-ascii?Q?VrcHm9MOBCX6al31HZdcrXX7ZmZEPyho65wKQssDGIydsY+Ex09moUSuVWtQ?=
 =?us-ascii?Q?Uoz2j73M2mYkhPOvYzs5JwmTJcjAbQkpPspO6a/xXoL/pJAk9OmhraZitLYU?=
 =?us-ascii?Q?tr3N8ooi/TNFo8JPPRhMghIDYVVJ4fYTLOkvaRBPX95v+GCQKyQND4NjV1Fy?=
 =?us-ascii?Q?Nhl/r3g1gnxhcLddPviUq9jr2VzApXW0E7cZgl4sOLsQjYJVHe03o1bjKgSa?=
 =?us-ascii?Q?4OFbNo5RECjSB+51iMH1/x1mo+LtyEjflxNglUqhanoYMczJS0UfUvo6tbjk?=
 =?us-ascii?Q?ldhkB6icSQmrhWVt4OpuT0xo+dbn6q+nfx9wNxD9DeYi5yVxTvKYpa+KOl9I?=
 =?us-ascii?Q?HE8biIEJnv4P6cPGZjyY383hpYdPqv2etBIPEEcYbFq3/J7VPU4eOLuM3hQ4?=
 =?us-ascii?Q?Y3bawsObRJTHH5pQbomDqhDgusBG7ws/lIE+TkUhqJlBnOU4JlAdCV3FXfUK?=
 =?us-ascii?Q?5v6XgEfxEAH9KvQVFmhRzQWfKOPw6HH+uUGsK+BLYNCCDANVg0AvF1sfkQrx?=
 =?us-ascii?Q?RjjhhEjSm7JFGCt3vMTrgnl2XeQHkBHviIDWjgSHgzkPDPe0xu7ZPA6rwOAh?=
 =?us-ascii?Q?+5HIZhFtItAixQ58NclHlVHdD9a0lfibZBe2AiAb+RfKmTzqMsERxR9otmmS?=
 =?us-ascii?Q?+2suwRfv14avFzGASg90TMZRi1u7IBz+xL35XqU3ca35Dq+DfXOghXobJrCN?=
 =?us-ascii?Q?4mNaFVpGtZYBTjfVg2HBNLBnewoPW2myQeVbNdrwvIrJtJtiNC+XtA5Df1yv?=
 =?us-ascii?Q?tRHGv9X6YAH+QZKwbggIFGJH9xcOQSMCoZAgRJipenGohRai2FbyeJ8rBFtT?=
 =?us-ascii?Q?Mg=3D=3D?=
X-OriginatorOrg: eckelmann.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 322c881b-86c9-43fe-84e3-08dbb50c8b78
X-MS-Exchange-CrossTenant-AuthSource: BE1P281MB2529.DEUP281.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2023 10:22:48.8484
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 62e24f58-823c-4d73-8ff2-db0a5f20156c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CZ3sNxgtSrKR/oT4yo4CbP2IFuS6gwm4DvjD36M2RVadwa18qlyQdnFFYTOb9LZ7bLMffZQzio4BwIALQIJ2ww==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BE1P281MB2242
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230914_032255_825271_530B5CF4 
X-CRM114-Status: GOOD (  13.57  )
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
Subject: Re: [PATCH] fixup! commands: add stacksmash command for causing
 stack overflows
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

sha just applied four of the five patches and stacksmash isn't in next
yet.

Refer,

    Message-ID: <20230912093638.GZ637806@pengutronix.de>

Best regards,
Thorsten

On Thu, Sep 14, 2023 at 11:14:38AM +0200, Ahmad Fatoum wrote:
> commands: stacksmash: fix whitespace in command description
> 
> Command description mixed spaces and tabs. Fix it to have tabs only.
> 
> Cc: Thorsten Scherer <T.Scherer@eckelmann.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> Thanks, Thorsten!
> ---
>  commands/stacksmash.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/commands/stacksmash.c b/commands/stacksmash.c
> index 1e9be0d40e15..b812d945e215 100644
> --- a/commands/stacksmash.c
> +++ b/commands/stacksmash.c
> @@ -50,9 +50,9 @@ static int do_stacksmash(int argc, char *argv[])
>  	panic("Stack smashing of %s not caught\n", argv[1]);
>  }
>  BAREBOX_CMD_START(stacksmash)
> -        .cmd            = do_stacksmash,
> -        BAREBOX_CMD_DESC("Run stack smashing tests")
> +	.cmd            = do_stacksmash,
> +	BAREBOX_CMD_DESC("Run stack smashing tests")
>  	BAREBOX_CMD_OPTS("[frame | region]")
> -        BAREBOX_CMD_GROUP(CMD_GRP_MISC)
> -        BAREBOX_CMD_COMPLETE(empty_complete)
> +	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
> +	BAREBOX_CMD_COMPLETE(empty_complete)
>  BAREBOX_CMD_END
> -- 
> 2.39.2
> 


