Delivery-date: Thu, 03 Feb 2022 15:33:38 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nFdB4-004jsC-Hy
	for lore@lore.pengutronix.de; Thu, 03 Feb 2022 15:33:38 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nFdB2-0007Xj-6T
	for lore@pengutronix.de; Thu, 03 Feb 2022 15:33:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=84A67DxpIEdmW1jUSjP2slUDD0W61jpATCHZGehRQvQ=; b=WoFfw+NXTumO8r
	5XrbbwrwpO6XVH4b6R7Au83AFyFOmKFySQXbXngzmU1KKMOj7qy41DDAvFTItR7eLlMitlCrqXPKP
	Pv7BOSV9EPMXokW1i1ls3+XrZzXTNAfLFE5SfGp958PWxinmnYOQOgGlore9a+RXo4k7SIcH2m8yU
	+hNX2Q17ggfSLjlx+torPXqIj8TSimJepjyrK6dIcuSTo7JmzyxlyCoR9C03xulH8N/Bp5l+Zwrij
	Ka6F/8ky2K0Z4hDckQHCMLYNlAWbEpo6OGHvk3UbEycdkuD8GJcBN+VDXTvMW210703U7jGAmLGS2
	aH36jfB1FseMkgMH6MMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nFd9C-001c6X-0N; Thu, 03 Feb 2022 14:31:42 +0000
Received: from mx-relay54-hz1.antispameurope.com ([94.100.133.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nFd94-001c4J-NK
 for barebox@lists.infradead.org; Thu, 03 Feb 2022 14:31:38 +0000
Received: from smtp.eckelmann.de ([217.19.183.80]) by
 mx-relay54-hz1.antispameurope.com; Thu, 03 Feb 2022 15:31:27 +0100
Received: from EX-SRV1.eckelmann.group (172.18.30.60) by
 EX-SRV2.eckelmann.group (172.18.30.61) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.18; Thu, 3 Feb 2022 15:31:03 +0100
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 (2a00:1f08:4007:e035:172:18:35:1a) by smtp.eckelmann.de
 (2a00:1f08:4007:e035:172:18:35:4) with Microsoft SMTP Server (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.18 via Frontend
 Transport; Thu, 3 Feb 2022 15:31:03 +0100
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mI/oGzYRWOIiePp9n/Xegm+LlkZFUXDsj0xadvS5vR5bhwd5vL7qXVYSC45+kqwc+qoO3MJIqMxz9exKZ3GlLi//0gvkIx01IY2kWHAr2r7rTYUyZIMHv9rN5II/2Owq5CPo7hBEEyhpA0E3NsYW5A846vFZSOsaAhLGjnJ3ss9oGvR+Axdpm1YQYxIEprGVvQj5WbKx8VJ/aR9cd/Jem37CHzNEkHMMxX/SGeYbIWxG85r01fD8wbmullLWFbdnDaxGXfwxI56WdrktZ5rilXXZ1Nj6I19AGikBCl3OGFToLe8p4bA22hDezyFEFB5PDKN5GL60DJsDKG38EBX4Xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xVb9NUO3gcyFYRjQVoWxoYMDaO959RKefpsM+0vZNy8=;
 b=KRKfd8HB08No50dJTama+8PUV+MS26C1Km+YlFwV7VrIe+RSum8OHhNWUTQPeym7FbxCaiHSHOppku3jyUoeqTnbmeUs3XWhueSY0KI5z9wPCZYdATh2Z66+/zTY0lSXJO6JD+0e7kU61wGgiwRGw6SsqeQ/q1nTfFT9sNW5IauQb1a5LVl8VhqvXxTqlL6xAPJcZ5jnQ0WKJNdkDZTOnJM664YUV+oYn6zznjdfDO+KTGuUrzb1nCCaVl+ufEFjdYyZSru8zGkhOQ/A4qg2ujki1ffQSjyzfkmjnqg/Cq+EKMVQ87xFYGpGcmzn10saC89csh2Bcrh/UmDWMKiYww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=eckelmannde.onmicrosoft.com; s=selector1-eckelmannde-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xVb9NUO3gcyFYRjQVoWxoYMDaO959RKefpsM+0vZNy8=;
 b=gUXKSSxghj8fW9+ojt+6xi5x4DMTg3CZYU8OIf/AFAxdXptG4Ay8ZE4trOBpAiiVS5VRQTGF0PD58dXFh6XCMvKyQxWAfpt8DdVnjx1VIEZPbeMX9jOiCubIurinbSZnuMfmWV/7I/3qoBGR8v6v187CB+NGx5zZC+jlBWsIDaQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=eckelmann.de;
Received: from AM9P189MB1700.EURP189.PROD.OUTLOOK.COM (2603:10a6:20b:2fc::15)
 by AS8P189MB1477.EURP189.PROD.OUTLOOK.COM (2603:10a6:20b:38e::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.21; Thu, 3 Feb
 2022 14:31:02 +0000
Received: from AM9P189MB1700.EURP189.PROD.OUTLOOK.COM
 ([fe80::4d95:78c5:c7a:fdf7]) by AM9P189MB1700.EURP189.PROD.OUTLOOK.COM
 ([fe80::4d95:78c5:c7a:fdf7%3]) with mapi id 15.20.4951.012; Thu, 3 Feb 2022
 14:31:01 +0000
Date: Thu, 3 Feb 2022 15:30:52 +0100
From: Thorsten Scherer <t.scherer@eckelmann.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
CC: <barebox@lists.infradead.org>
Message-ID: <20220203143052.m2rsapgqzoxelip2@NB142.eckelmann.group>
References: <20220202095554.1103016-1-a.fatoum@pengutronix.de>
 <20220202095554.1103016-4-a.fatoum@pengutronix.de>
Content-Disposition: inline
In-Reply-To: <20220202095554.1103016-4-a.fatoum@pengutronix.de>
X-ClientProxiedBy: BY5PR20CA0015.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::28) To AM9P189MB1700.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:2fc::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b975b04e-459a-42f8-edde-08d9e721cd2c
X-MS-TrafficTypeDiagnostic: AS8P189MB1477:EE_
X-Microsoft-Antispam-PRVS: <AS8P189MB147701FF851CF0A0B9E37CAF9F289@AS8P189MB1477.EURP189.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:418;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: usBqTsAGUaLDh7FPv1pHpURZXUNEtejCgHG7hb7IQeiSiCuWQaJbobEOmceOype4htzTcjR1Rb5bLXWO8sOTs421CGYqSn7PvW5NI9u3w+E+UfT1szwJRPrczyAJHQWSoEFtuHRCihF24tvJqnOZ+lrIBLKVYGmNTR5EHmsAV/3e277XqmPQ8+rUO1+aeuVx2RQBeNIhS3mtKVG0GagGU7WeAVWvDHJMG53/f1ht2vURcw3gw0jyZBYPHV2DOl6pdT2YjLwXcaCO5aM51kNd5jKfYSFHkrSc4sCpXCrh4V+iJMhAB9LFdFVttaU0TJ+IUCU5Mw5nbIUchC7gpzKjQzU8P5VOnAVQh2tvrmQVljf6sTja8dtEVdCXWNwaU/ZeSNPzKl9bF2FMVgyuM1adsuBwVSdGcbylLMhPGESxS0Dhb6no8kV6sTeBVQZl0EBNe5yHBm/A/0c5NZUxFAWi294YWR+zEqZ4piHI7CKrIAPde4IWvoJJV2FyoXl9/ZQbgFScbi5e7gjIZnHGdpvalvHMDm9X18pslo6F/WMpEBMq2kRT9stW4nPpcvZRVQm8Bx6MIULvzP7YqBx1+hzcDzIh1Zz7yZ7GY645M/xHznHELRzUuUO5P685z6UazGLGgjEX0hjtFqAt9p/5cF7NVUQXz7itO2ODj7VnJgzNwOpasNSnERT4t34Z1FPWuWx/1nGvYmBmj0ohpwIU+qyndj4nI1Sv2aTf7O8nZAoBfRh4PbUP1QKxuOw3Gah08GkzGOPIQtOj8HZ0bXHBIFv/lYzKuIlZuFwIFphM5aZHqSuZTum8fCLwOvQ3R8UwEWFZ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM9P189MB1700.EURP189.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(136003)(346002)(396003)(39840400004)(366004)(376002)(186003)(26005)(6486002)(966005)(6512007)(9686003)(6506007)(6666004)(15974865002)(508600001)(83380400001)(66574015)(1076003)(19273905006)(6916009)(52116002)(86362001)(316002)(5660300002)(38100700002)(30864003)(2906002)(8936002)(66556008)(66476007)(8676002)(66946007)(4326008)(38350700002)(563064011);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?3Ug7BuHreSMsubEQHPvIX32ChAPf7mv8FnGmxWAOxMWYYc8AMdhFZVIPxV?=
 =?iso-8859-1?Q?W/eNNHQJggJgqhZlwpzjbewRyiEdX6qOYGWUELSaBJzptZGHydCBKj2ua4?=
 =?iso-8859-1?Q?RRl/x2L4SOxfbOopKqXUjj8kB7Mb3vzUyGqkr1hR3Q9r/2o3+HMF9nZ1yb?=
 =?iso-8859-1?Q?JMQPK/kHGb7RRkIveLmpz1MtbNcWLw1q5xjPlMMo5muXQYEpELZugI9QPm?=
 =?iso-8859-1?Q?fCy+OTNjZvXzDHBiVLpLPLXHH3Wf9vlNksNi9+0lnQ+1BikXGGU6mdFFyD?=
 =?iso-8859-1?Q?Ve81KDiujfL0Mybs+ZIjsxsSEvHefk5v37cnGKInNXm7kD/Me3ZoifHIDr?=
 =?iso-8859-1?Q?x/Zo0QfPy/4vfFD5dtzR9o3Orxbpkl3M0lbRMsls682KnDAMOYRYAThRHt?=
 =?iso-8859-1?Q?T/7oD09FAzdpa2iuABQjbRvx2bwWySoDAoicNXhMHj7ZgzUCxy1fGmE0Up?=
 =?iso-8859-1?Q?6x1bqWGwNwtEsgYFoJ6ajKwTRSNgMyCwCl3H8EKaS+YFx+G52i6TZsiDZl?=
 =?iso-8859-1?Q?8pLI8wyJ/r77i2xutdQjLEAIcRa5FGQlCiJrh7REF/ZOR8VxPu0ZyIGt2b?=
 =?iso-8859-1?Q?Zpds19AoL7gfttt9e8zCU58QOrSvRWGy6ZCnjWbjczpqNC+ziUhJmHzzvq?=
 =?iso-8859-1?Q?7x84WnabY8eQcG6GjRHZHkal1ayCgXy9NIoVNHxRjHd3Zali1J8v7p+R9x?=
 =?iso-8859-1?Q?xHTdm1R3xsChgk/5iRNgLFES3xskiBckRrQHcjnDX2wISVh5pc1Uyf4Ifw?=
 =?iso-8859-1?Q?wPr8f6hXMVmd3UCyIqj8RPc1T2a0LDcVhHtX4u6lFAYWK+YrdiV3TPSrJ3?=
 =?iso-8859-1?Q?tiaCktOEtQi6dsgfirXViyoJG5Jvd+DFjpVsSaBaopLTKcuN+57nbLyskf?=
 =?iso-8859-1?Q?cIDOXoRBylOwnewdJ6vsrvlMWZX/GPS1rpBtz6r7t1g1+YDuJ7/lg+03/d?=
 =?iso-8859-1?Q?/ucTY+w/YDvznVrW7OUa8ojXKfbz5qK37JxMakNAMnmpRi9FuMBPsPzRpP?=
 =?iso-8859-1?Q?ZvFQyzUyR9ZVjsq/5CRjMVY4wYLS2WB0jkMwjBBP+GgECW7K2+YaT1UtgG?=
 =?iso-8859-1?Q?8naGrYPyJjXIYr9F8NW6zeydbRuj65QR6hpDXk7QPVjBbW+aol7bT2j/e+?=
 =?iso-8859-1?Q?7u+TIPVLTSkREpcYtuIOvCMCKrgi8Lr7vDElWzfPnfXEdTJgPHuWXVdBti?=
 =?iso-8859-1?Q?S30YX4+2FdVOvq2CTk0KFOD8kipJ73uSXA4JFv1t+ABQgVYolA8AWGmh3E?=
 =?iso-8859-1?Q?kNsBEDAkU7aJfj+IVfYbgG4E7yIsupB0cElnNgMGaSAQ2hs4HQC+2oxHm2?=
 =?iso-8859-1?Q?mD8kwzliW/3dmO0/Bw4sLfEtbiCuWsMpTuyDncmmXHvKFNjkWDrGHIp4w7?=
 =?iso-8859-1?Q?bKgEyc+1XrRC6Jf2qFcTPkHr8jiIcm1APGsGWzlWbkzbJWuUUrKBDwmNZN?=
 =?iso-8859-1?Q?H6g8EA3+hPsHieUDg7lciwTO86NEWUEyjZdjMBL/go2+/DZPg3FOq0dzWp?=
 =?iso-8859-1?Q?tmMBlqmwuIto81wAy2h7RvwOxCXdHvjZ2gePsaxWNlPAC+z+pjjWfiLawW?=
 =?iso-8859-1?Q?Ja+E9Fm0Sn9Dmg8uY2/i2/QVFaIGp7S+ZyWk8rB2xx2/K9BVy0LM3fFeET?=
 =?iso-8859-1?Q?958qR5qtRdejfkgvIJwxNOgx4Ku7b7BSYJXFsHcQqkiO9wLvUNb+d0vS1E?=
 =?iso-8859-1?Q?o+WCqETvIONxeG4KaCk=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b975b04e-459a-42f8-edde-08d9e721cd2c
X-MS-Exchange-CrossTenant-AuthSource: AM9P189MB1700.EURP189.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2022 14:31:01.8720 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 62e24f58-823c-4d73-8ff2-db0a5f20156c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jYqN7ET9dzofcXSomHKnh8DprmedbXaHyHUZoGXB3jL0fL3NFke6u3Nz9QDug/E8SXt/po6BN3fTAiBzpiu/hg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8P189MB1477
X-cloud-security-sender: t.scherer@eckelmann.de
X-cloud-security-recipient: barebox@lists.infradead.org
X-cloud-security-Virusscan: CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on
 mx-relay54-hz1.antispameurope.com with 2CD9A6BBD8
X-cloud-security-connect: smtp.eckelmann.de[217.19.183.80], TLS=1,
 IP=217.19.183.80
X-cloud-security-Digest: 1fbf5d78b9000e13e4d18f5b74a60cba
X-cloud-security: scantime:6.164
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=eckelmann.de; h=date
 :from:to:cc:subject:message-id:references:content-type
 :content-transfer-encoding:in-reply-to:mime-version; s=hse1; bh=
 5aZLCR4QGw8elYLKMf1YEUZgm0d003tIk+Lwfj5Efow=; b=MIW9FuftlYFH4cHF
 bNUEytXMlkbHHPELSU/Ljg7GpKa4lAl7c/VCffg8J6t9nEep4HMLaxw99C0nMfNR
 ksVSeMUREYmXWWxgNwLlLuyfhPBgU98iQDlifAhaadSzYtR5syaJooefJJk2d+o2
 /QgVkXTDFbOiHkvHCit3NwA9CN76gno3RN89kCTrfC/2CTbUU/m+ifTlKRFK2YGd
 uuuVDaEoMdwjk303djpHYgMOVUp1MFpNEs+dqBlbm61LV4//TBeAcIj9ROz78EhR
 OBwYB3lH6GjzFToCyiOuBMMFSOoGddY+wakUz8UmUzQG8aeyALEaiqjjhQwHKqfz
 IQJmmQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220203_063135_131087_C93FF514 
X-CRM114-Status: GOOD (  25.80  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-103.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/4] video: add MIPI DBI Type C Option 3 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

applying this patch makes menuconfig fail.

On Wed, Feb 02, 2022 at 10:55:53AM +0100, Ahmad Fatoum wrote:
> Import the Linux v5.15 state of the driver to allow easy porting of
> MIPI-DBI displays like the Ilitek 9431 added in a follow-up commit.
> =

> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  commands/Kconfig         |  23 ++
>  commands/Makefile        |   1 +
>  drivers/video/Kconfig    |   3 +
>  drivers/video/Makefile   |   1 +
>  drivers/video/mipi_dbi.c | 467 +++++++++++++++++++++++++++++++++++++++
>  include/spi/spi.h        |  20 ++
>  6 files changed, 515 insertions(+)
>  create mode 100644 drivers/video/mipi_dbi.c
> =

> diff --git a/commands/Kconfig b/commands/Kconfig
> index ba8ca5cdebce..af60f7be1587 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -1969,6 +1969,29 @@ config CMD_SPI
>  		  -w BIT	bits per word (default 8)
>  		  -v		verbose
>  =

> +config CMD_MIPI_DBI
> +	bool
> +	depends on DRIVER_VIDEO_MIPI_DBI && SPI
> +	select PRINTF_HEXSTR
> +	prompt "mipi_dbi command"
> +	help
> +	  write/read from MIPI DBI SPI device
> +
> +	  Usage: mipi_dbi [-wld] [REG] [DATA...]
> +
> +	  Options:
> +		  -l		list all MIPI DBI devices
> +		  -d DEVICE	select specific device (default is first registered)
> +		  -w		issue write command
> +
> +BAREBOX_CMD_START(mipi_dbi)
> +	.cmd		=3D do_mipi_dbi,
> +	BAREBOX_CMD_DESC("write/read from MIPI DBI SPI device")
> +	BAREBOX_CMD_OPTS("[-wld] [REG] [DATA...]")
> +	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
> +	BAREBOX_CMD_HELP(cmd_mipi_dbi_help)
> +BAREBOX_CMD_END

Copy and paste error?

> +
>  config CMD_LED_TRIGGER
>  	bool
>  	depends on LED_TRIGGERS
> diff --git a/commands/Makefile b/commands/Makefile
> index db78d0b877f6..fffb6d979e82 100644
> --- a/commands/Makefile
> +++ b/commands/Makefile
> @@ -67,6 +67,7 @@ obj-$(CONFIG_CMD_GPIO)		+=3D gpio.o
>  obj-$(CONFIG_CMD_UNCOMPRESS)	+=3D uncompress.o
>  obj-$(CONFIG_CMD_I2C)		+=3D i2c.o
>  obj-$(CONFIG_CMD_SPI)		+=3D spi.o
> +obj-$(CONFIG_CMD_MIPI_DBI)	+=3D mipi_dbi.o
>  obj-$(CONFIG_CMD_UBI)		+=3D ubi.o
>  obj-$(CONFIG_CMD_UBIFORMAT)	+=3D ubiformat.o
>  obj-$(CONFIG_CMD_MENU)		+=3D menu.o
> diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
> index 1b8672fdea82..70d1d809536b 100644
> --- a/drivers/video/Kconfig
> +++ b/drivers/video/Kconfig
> @@ -129,6 +129,9 @@ config DRIVER_VIDEO_EDID
>  	  This enabled support for reading and parsing EDID data from an attach=
ed
>  	  monitor.
>  =

> +config DRIVER_VIDEO_MIPI_DBI
> +	bool
> +
>  config DRIVER_VIDEO_BACKLIGHT
>  	bool "Add backlight support"
>  	help
> diff --git a/drivers/video/Makefile b/drivers/video/Makefile
> index 7f4429278987..a7b70d82072a 100644
> --- a/drivers/video/Makefile
> +++ b/drivers/video/Makefile
> @@ -9,6 +9,7 @@ obj-$(CONFIG_VIDEO_VPL) +=3D vpl.o
>  obj-$(CONFIG_DRIVER_VIDEO_MTL017) +=3D mtl017.o
>  obj-$(CONFIG_DRIVER_VIDEO_TC358767) +=3D tc358767.o
>  obj-$(CONFIG_DRIVER_VIDEO_SIMPLE_PANEL) +=3D simple-panel.o
> +obj-$(CONFIG_DRIVER_VIDEO_MIPI_DBI) +=3D mipi_dbi.o
>  =

>  obj-$(CONFIG_DRIVER_VIDEO_ATMEL) +=3D atmel_lcdfb.o atmel_lcdfb_core.o
>  obj-$(CONFIG_DRIVER_VIDEO_ATMEL_HLCD) +=3D atmel_hlcdfb.o atmel_lcdfb_co=
re.o
> diff --git a/drivers/video/mipi_dbi.c b/drivers/video/mipi_dbi.c
> new file mode 100644
> index 000000000000..48b1110f72ab
> --- /dev/null
> +++ b/drivers/video/mipi_dbi.c
> @@ -0,0 +1,467 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * MIPI Display Bus Interface (DBI) LCD controller support
> + *
> + * Copyright 2016 Noralf Tr=F8nnes
> + */
> +
> +#define pr_fmt(fmt) "mipi-dbi: " fmt
> +
> +#include <common.h>
> +#include <linux/kernel.h>
> +#include <linux/sizes.h>
> +#include <gpiod.h>
> +#include <regulator.h>
> +#include <spi/spi.h>
> +#include <video/mipi_dbi.h>
> +
> +#include <video/vpl.h>
> +#include <video/mipi_display.h>
> +#include <video/fourcc.h>
> +
> +#define MIPI_DBI_MAX_SPI_READ_SPEED 2000000 /* 2MHz */
> +
> +#define DCS_POWER_MODE_DISPLAY			BIT(2)
> +#define DCS_POWER_MODE_DISPLAY_NORMAL_MODE	BIT(3)
> +#define DCS_POWER_MODE_SLEEP_MODE		BIT(4)
> +#define DCS_POWER_MODE_PARTIAL_MODE		BIT(5)
> +#define DCS_POWER_MODE_IDLE_MODE		BIT(6)
> +#define DCS_POWER_MODE_RESERVED_MASK		(BIT(0) | BIT(1) | BIT(7))
> +
> +LIST_HEAD(mipi_dbi_list);
> +EXPORT_SYMBOL(mipi_dbi_list);
> +
> +/**
> + * DOC: overview
> + *
> + * This library provides helpers for MIPI Display Bus Interface (DBI)
> + * compatible display controllers.
> + *
> + * Many controllers for tiny lcd displays are MIPI compliant and can use=
 this
> + * library. If a controller uses registers 0x2A and 0x2B to set the area=
 to
> + * update and uses register 0x2C to write to frame memory, it is most li=
kely
> + * MIPI compliant.
> + *
> + * Only MIPI Type 1 displays are supported since a full frame memory is =
needed.
> + *
> + * There are 3 MIPI DBI implementation types:
> + *
> + * A. Motorola 6800 type parallel bus
> + *
> + * B. Intel 8080 type parallel bus
> + *
> + * C. SPI type with 3 options:
> + *
> + *    1. 9-bit with the Data/Command signal as the ninth bit
> + *    2. Same as above except it's sent as 16 bits
> + *    3. 8-bit with the Data/Command signal as a separate D/CX pin
> + *
> + * Currently barebox mipi_dbi only supports Type C option 3 with
> + * mipi_dbi_spi_init().
> + */
> +
> +#define MIPI_DBI_DEBUG_COMMAND(cmd, data, len) \
> +({ \
> +	if (!len) \
> +		pr_debug("cmd=3D%02x\n", cmd); \
> +	else if (len <=3D 32) \
> +		pr_debug("cmd=3D%02x, par=3D%*ph\n", cmd, (int)len, data);\
> +	else \
> +		pr_debug("cmd=3D%02x, len=3D%zu\n", cmd, len); \
> +})
> +
> +static const u8 mipi_dbi_dcs_read_commands[] =3D {
> +	MIPI_DCS_GET_DISPLAY_ID,
> +	MIPI_DCS_GET_RED_CHANNEL,
> +	MIPI_DCS_GET_GREEN_CHANNEL,
> +	MIPI_DCS_GET_BLUE_CHANNEL,
> +	MIPI_DCS_GET_DISPLAY_STATUS,
> +	MIPI_DCS_GET_POWER_MODE,
> +	MIPI_DCS_GET_ADDRESS_MODE,
> +	MIPI_DCS_GET_PIXEL_FORMAT,
> +	MIPI_DCS_GET_DISPLAY_MODE,
> +	MIPI_DCS_GET_SIGNAL_MODE,
> +	MIPI_DCS_GET_DIAGNOSTIC_RESULT,
> +	MIPI_DCS_READ_MEMORY_START,
> +	MIPI_DCS_READ_MEMORY_CONTINUE,
> +	MIPI_DCS_GET_SCANLINE,
> +	MIPI_DCS_GET_DISPLAY_BRIGHTNESS,
> +	MIPI_DCS_GET_CONTROL_DISPLAY,
> +	MIPI_DCS_GET_POWER_SAVE,
> +	MIPI_DCS_GET_CABC_MIN_BRIGHTNESS,
> +	MIPI_DCS_READ_DDB_START,
> +	MIPI_DCS_READ_DDB_CONTINUE,
> +	0, /* sentinel */
> +};
> +
> +bool mipi_dbi_command_is_read(struct mipi_dbi *dbi, u8 cmd)
> +{
> +	unsigned int i;
> +
> +	if (!dbi->read_commands)
> +		return false;
> +
> +	for (i =3D 0; i < 0xff; i++) {
> +		if (!dbi->read_commands[i])
> +			return false;
> +		if (cmd =3D=3D dbi->read_commands[i])
> +			return true;
> +	}
> +
> +	return false;
> +}
> +
> +int mipi_dbi_command_read_len(int cmd)
> +{
> +	switch (cmd) {
> +	case MIPI_DCS_READ_MEMORY_START:
> +	case MIPI_DCS_READ_MEMORY_CONTINUE:
> +		return 2;
> +	case MIPI_DCS_GET_DISPLAY_ID:
> +		return 3;
> +	case MIPI_DCS_GET_DISPLAY_STATUS:
> +		return 4;
> +	default:
> +		return 1;
> +	}
> +}
> +
> +/**
> + * mipi_dbi_command_read - MIPI DCS read command
> + * @dbi: MIPI DBI structure
> + * @cmd: Command
> + * @val: Value read
> + *
> + * Send MIPI DCS read command to the controller.
> + *
> + * Returns:
> + * Zero on success, negative error code on failure.
> + */
> +int mipi_dbi_command_read(struct mipi_dbi *dbi, u8 cmd, u8 *val)
> +{
> +	if (!dbi->read_commands)
> +		return -EACCES;
> +
> +	if (!mipi_dbi_command_is_read(dbi, cmd))
> +		return -EINVAL;
> +
> +	return mipi_dbi_command_buf(dbi, cmd, val, 1);
> +}
> +EXPORT_SYMBOL(mipi_dbi_command_read);
> +
> +/**
> + * mipi_dbi_command_buf - MIPI DCS command with parameter(s) in an array
> + * @dbi: MIPI DBI structure
> + * @cmd: Command
> + * @data: Parameter buffer
> + * @len: Buffer length
> + *
> + * Returns:
> + * Zero on success, negative error code on failure.
> + */
> +int mipi_dbi_command_buf(struct mipi_dbi *dbi, u8 cmd, u8 *data, size_t =
len)
> +{
> +	u8 *cmdbuf;
> +	int ret;
> +
> +	/* SPI requires dma-safe buffers */
> +	cmdbuf =3D kmemdup(&cmd, 1, GFP_KERNEL);
> +	if (!cmdbuf)
> +		return -ENOMEM;
> +
> +	ret =3D dbi->command(dbi, cmdbuf, data, len);
> +
> +	kfree(cmdbuf);
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL(mipi_dbi_command_buf);
> +
> +/* This should only be used by mipi_dbi_command() */
> +int mipi_dbi_command_stackbuf(struct mipi_dbi *dbi, u8 cmd, const u8 *da=
ta,
> +			      size_t len)
> +{
> +	u8 *buf;
> +	int ret;
> +
> +	buf =3D kmemdup(data, len, GFP_KERNEL);
> +	if (!buf)
> +		return -ENOMEM;
> +
> +	ret =3D mipi_dbi_command_buf(dbi, cmd, buf, len);
> +
> +	kfree(buf);
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL(mipi_dbi_command_stackbuf);
> +
> +/**
> + * mipi_dbi_hw_reset - Hardware reset of controller
> + * @dbi: MIPI DBI structure
> + *
> + * Reset controller if the &mipi_dbi->reset gpio is set.
> + */
> +void mipi_dbi_hw_reset(struct mipi_dbi *dbi)
> +{
> +	if (!gpio_is_valid(dbi->reset))
> +		return;
> +
> +	gpiod_set_value(dbi->reset, 0);
> +	udelay(20);
> +	gpiod_set_value(dbi->reset, 1);
> +	mdelay(120);
> +}
> +EXPORT_SYMBOL(mipi_dbi_hw_reset);
> +
> +/**
> + * mipi_dbi_display_is_on - Check if display is on
> + * @dbi: MIPI DBI structure
> + *
> + * This function checks the Power Mode register (if readable) to see if
> + * display output is turned on. This can be used to see if the bootloader
> + * has already turned on the display avoiding flicker when the pipeline =
is
> + * enabled.
> + *
> + * Returns:
> + * true if the display can be verified to be on, false otherwise.
> + */
> +bool mipi_dbi_display_is_on(struct mipi_dbi *dbi)
> +{
> +	u8 val;
> +
> +	if (mipi_dbi_command_read(dbi, MIPI_DCS_GET_POWER_MODE, &val))
> +		return false;
> +
> +	val &=3D ~DCS_POWER_MODE_RESERVED_MASK;
> +
> +	/* The poweron/reset value is 08h DCS_POWER_MODE_DISPLAY_NORMAL_MODE */
> +	if (val !=3D (DCS_POWER_MODE_DISPLAY |
> +	    DCS_POWER_MODE_DISPLAY_NORMAL_MODE | DCS_POWER_MODE_SLEEP_MODE))
> +		return false;
> +
> +	pr_debug("Display is ON\n");
> +
> +	return true;
> +}
> +EXPORT_SYMBOL(mipi_dbi_display_is_on);
> +
> +#if IS_ENABLED(CONFIG_SPI)
> +
> +/**
> + * mipi_dbi_spi_cmd_max_speed - get the maximum SPI bus speed
> + * @spi: SPI device
> + * @len: The transfer buffer length.
> + *
> + * Many controllers have a max speed of 10MHz, but can be pushed way bey=
ond
> + * that. Increase reliability by running pixel data at max speed and the=
 rest
> + * at 10MHz, preventing transfer glitches from messing up the init setti=
ngs.
> + */
> +u32 mipi_dbi_spi_cmd_max_speed(struct spi_device *spi, size_t len)
> +{
> +	if (len > 64)
> +		return 0; /* use default */
> +
> +	return min_t(u32, 10000000, spi->max_speed_hz);
> +}
> +EXPORT_SYMBOL(mipi_dbi_spi_cmd_max_speed);
> +
> +static bool mipi_dbi_machine_little_endian(void)
> +{
> +#if defined(__LITTLE_ENDIAN)
> +	return true;
> +#else
> +	return false;
> +#endif
> +}
> +
> +/* MIPI DBI Type C Option 3 */
> +
> +static int mipi_dbi_typec3_command_read(struct mipi_dbi *dbi, u8 *cmd,
> +					u8 *data, size_t len)
> +{
> +	struct spi_device *spi =3D dbi->spi;
> +	u32 speed_hz =3D min_t(u32, MIPI_DBI_MAX_SPI_READ_SPEED,
> +			     spi->max_speed_hz / 2);
> +	struct spi_transfer tr[2] =3D {
> +		{
> +			.speed_hz =3D speed_hz,
> +			.tx_buf =3D cmd,
> +			.len =3D 1,
> +		}, {
> +			.speed_hz =3D speed_hz,
> +			.len =3D len,
> +		},
> +	};
> +	struct spi_message m;
> +	u8 *buf;
> +	int ret;
> +
> +	if (!len)
> +		return -EINVAL;
> +
> +	/*
> +	 * Support non-standard 24-bit and 32-bit Nokia read commands which
> +	 * start with a dummy clock, so we need to read an extra byte.
> +	 */
> +	if (*cmd =3D=3D MIPI_DCS_GET_DISPLAY_ID ||
> +	    *cmd =3D=3D MIPI_DCS_GET_DISPLAY_STATUS) {
> +		if (!(len =3D=3D 3 || len =3D=3D 4))
> +			return -EINVAL;
> +
> +		tr[1].len =3D len + 1;
> +	}
> +
> +	buf =3D kmalloc(tr[1].len, GFP_KERNEL);
> +	if (!buf)
> +		return -ENOMEM;
> +
> +	tr[1].rx_buf =3D buf;
> +	gpiod_set_value(dbi->dc, 0);
> +
> +	spi_message_init_with_transfers(&m, tr, ARRAY_SIZE(tr));
> +	ret =3D spi_sync(spi, &m);
> +	if (ret)
> +		goto err_free;
> +
> +	if (tr[1].len =3D=3D len) {
> +		memcpy(data, buf, len);
> +	} else {
> +		unsigned int i;
> +
> +		for (i =3D 0; i < len; i++)
> +			data[i] =3D (buf[i] << 1) | (buf[i + 1] >> 7);
> +	}
> +
> +	MIPI_DBI_DEBUG_COMMAND(*cmd, data, len);
> +
> +err_free:
> +	kfree(buf);
> +
> +	return ret;
> +}
> +
> +static int mipi_dbi_typec3_command(struct mipi_dbi *dbi, u8 *cmd,
> +				   u8 *par, size_t num)
> +{
> +	struct spi_device *spi =3D dbi->spi;
> +	unsigned int bpw =3D 8;
> +	u32 speed_hz;
> +	int ret;
> +
> +	if (mipi_dbi_command_is_read(dbi, *cmd))
> +		return mipi_dbi_typec3_command_read(dbi, cmd, par, num);
> +
> +	MIPI_DBI_DEBUG_COMMAND(*cmd, par, num);
> +
> +	gpiod_set_value(dbi->dc, 0);
> +	speed_hz =3D mipi_dbi_spi_cmd_max_speed(spi, 1);
> +	ret =3D mipi_dbi_spi_transfer(spi, speed_hz, 8, cmd, 1);
> +	if (ret || !num)
> +		return ret;
> +
> +	if (*cmd =3D=3D MIPI_DCS_WRITE_MEMORY_START && !dbi->swap_bytes)
> +		bpw =3D 16;
> +
> +	gpiod_set_value(dbi->dc, 1);
> +	speed_hz =3D mipi_dbi_spi_cmd_max_speed(spi, num);
> +
> +	return mipi_dbi_spi_transfer(spi, speed_hz, bpw, par, num);
> +}
> +
> +/**
> + * mipi_dbi_spi_init - Initialize MIPI DBI SPI interface
> + * @spi: SPI device
> + * @dbi: MIPI DBI structure to initialize
> + * @dc: D/C gpio
> + *
> + * This function sets &mipi_dbi->command, enables &mipi_dbi->read_comman=
ds for the
> + * usual read commands. It should be followed by a call to mipi_dbi_dev_=
init() or
> + * a driver-specific init.
> + *
> + * Type C Option 3 interface is assumed, Type C Option 1 is not yet supp=
orted,
> + * because barebox has no generic way yet to require a 9-bit SPI transfer
> + *
> + * If the SPI master driver doesn't support the necessary bits per word,
> + * the following transformation is used:
> + *
> + * - 9-bit: reorder buffer as 9x 8-bit words, padded with no-op command.
> + * - 16-bit: if big endian send as 8-bit, if little endian swap bytes
> + *
> + * Returns:
> + * Zero on success, negative error code on failure.
> + */
> +int mipi_dbi_spi_init(struct spi_device *spi, struct mipi_dbi *dbi,
> +		      int dc)
> +{
> +	struct device_d *dev =3D &spi->dev;
> +
> +	dbi->spi =3D spi;
> +	dbi->read_commands =3D mipi_dbi_dcs_read_commands;
> +
> +	if (!gpio_is_valid(dc)) {
> +		dev_dbg(dev, "MIPI DBI Type-C 1 unsupported\n");
> +		return -ENOSYS;
> +	}
> +
> +	dbi->command =3D mipi_dbi_typec3_command;
> +	dbi->dc =3D dc;
> +	// TODO: can we just force 16 bit?
> +	if (mipi_dbi_machine_little_endian() && spi->bits_per_word !=3D 16)
> +		dbi->swap_bytes =3D true;
> +
> +	dev_dbg(dev, "SPI speed: %uMHz\n", spi->max_speed_hz / 1000000);
> +
> +	list_add(&dbi->list, &mipi_dbi_list);
> +	return 0;
> +}
> +EXPORT_SYMBOL(mipi_dbi_spi_init);
> +
> +/**
> + * mipi_dbi_spi_transfer - SPI transfer helper
> + * @spi: SPI device
> + * @speed_hz: Override speed (optional)
> + * @bpw: Bits per word
> + * @buf: Buffer to transfer
> + * @len: Buffer length
> + *
> + * This SPI transfer helper breaks up the transfer of @buf into chunks w=
hich
> + * the SPI controller driver can handle.
> + *
> + * Returns:
> + * Zero on success, negative error code on failure.
> + */
> +int mipi_dbi_spi_transfer(struct spi_device *spi, u32 speed_hz,
> +			  u8 bpw, const void *buf, size_t len)
> +{
> +	size_t max_chunk =3D spi_max_transfer_size(spi);
> +	struct spi_transfer tr =3D {
> +		.bits_per_word =3D bpw,
> +		.speed_hz =3D speed_hz,
> +	};
> +	struct spi_message m;
> +	size_t chunk;
> +	int ret;
> +
> +	spi_message_init_with_transfers(&m, &tr, 1);
> +
> +	while (len) {
> +		chunk =3D min(len, max_chunk);
> +
> +		tr.tx_buf =3D buf;
> +		tr.len =3D chunk;
> +		buf +=3D chunk;
> +		len -=3D chunk;
> +
> +		ret =3D spi_sync(spi, &m);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL(mipi_dbi_spi_transfer);
> +
> +#endif /* CONFIG_SPI */
> +
> +MODULE_LICENSE("GPL");
> diff --git a/include/spi/spi.h b/include/spi/spi.h
> index c5ad6bd39ff9..d133e0e21265 100644
> --- a/include/spi/spi.h
> +++ b/include/spi/spi.h
> @@ -409,6 +409,26 @@ spi_message_add_tail(struct spi_transfer *t, struct =
spi_message *m)
>  	list_add_tail(&t->transfer_list, &m->transfers);
>  }
>  =

> +/**
> + * spi_message_init_with_transfers - Initialize spi_message and append t=
ransfers
> + * @m: spi_message to be initialized
> + * @xfers: An array of spi transfers
> + * @num_xfers: Number of items in the xfer array
> + *
> + * This function initializes the given spi_message and adds each spi_tra=
nsfer in
> + * the given array to the message.
> + */
> +static inline void
> +spi_message_init_with_transfers(struct spi_message *m,
> +struct spi_transfer *xfers, unsigned int num_xfers)
> +{
> +	unsigned int i;
> +
> +	spi_message_init(m);
> +	for (i =3D 0; i < num_xfers; ++i)
> +		spi_message_add_tail(&xfers[i], m);
> +}
> +
>  static inline void
>  spi_transfer_del(struct spi_transfer *t)
>  {
> -- =

> 2.30.2
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

Best regards
Thorsten

--
Thorsten Scherer | Eckelmann AG | www.eckelmann.de |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

