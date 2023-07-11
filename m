Delivery-date: Tue, 11 Jul 2023 10:14:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qJ8Vw-006wF4-LU
	for lore@lore.pengutronix.de; Tue, 11 Jul 2023 10:14:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qJ8Vt-0007lr-SA
	for lore@pengutronix.de; Tue, 11 Jul 2023 10:14:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:In-Reply-To:References:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=o1t3cBjRENNBh4X775c+Ae81/iyvTyTgSBY1xVcH/MU=; b=UWCJ8WrqoH7fAqSIYYO4ZcdVjz
	K8ttDDcwBvneTcLAUi5xibQ19EO31dLaoblqazgEv2iPrQxzlEyuRGmemug+LZ3lI1gyuXn52QKzB
	rKvvPdsou8Lps5704zXsZz+EHXJAZhPoWdI4vBdl1kWrOLLdQofDIuiFeRpZLVKRqsgn1WjJNOWTC
	QUrXjmwikjuVGbfU+x++GRX6hQXUUHJyWOpuo6kB3Y+IDpUod4dVhFb8mZgrjH+ifeq7CkYmmujB2
	IcEVQ6wscVd/bnqHoc79nNJn2Z/AknSlMQCkOgJX0LdpMTBM5ytRq+TX2Wumx+a/ETu6lfwi1WqlO
	bHiD5KOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJ8Uc-00E4gb-0q;
	Tue, 11 Jul 2023 08:13:06 +0000
Received: from mxout.security-mail.net ([85.31.212.42])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJ8UY-00E4fC-0V
	for barebox@lists.infradead.org;
	Tue, 11 Jul 2023 08:13:03 +0000
Received: from localhost (localhost [127.0.0.1])
	by fx302.security-mail.net (Postfix) with ESMTP id B813051A744
	for <barebox@lists.infradead.org>; Tue, 11 Jul 2023 10:12:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
	s=sec-sig-email; t=1689063174;
	bh=o1t3cBjRENNBh4X775c+Ae81/iyvTyTgSBY1xVcH/MU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=qe7YlGbkM1lnHqGFsLr493x5DU/2/huInIAKDVMyZUytJjDysT0+stZt0OJxJ/4IC
	 MQ5vWwhV6iflAR2Xav/nanGC8mjZzdHtw1ODJS90Q5oyovXXNOlR0qM4j56x1glF7B
	 /qUrDhUWhr4s5a7/3EJ28udUH/oLuiyveUf2mU18=
Received: from fx302 (localhost [127.0.0.1]) by fx302.security-mail.net
 (Postfix) with ESMTP id 9B95851A0E0; Tue, 11 Jul 2023 10:12:54 +0200 (CEST)
Received: from FRA01-MR2-obe.outbound.protection.outlook.com
 (mail-mr2fra01lp0108.outbound.protection.outlook.com [104.47.25.108]) by
 fx302.security-mail.net (Postfix) with ESMTPS id 34FA551A742; Tue, 11 Jul
 2023 10:12:54 +0200 (CEST)
Received: from PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:1f2::23) by MR1P264MB2193.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:501:12::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.32; Tue, 11 Jul
 2023 08:12:52 +0000
Received: from PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM
 ([fe80::4902:e46f:b3d4:a4f8]) by PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM
 ([fe80::4902:e46f:b3d4:a4f8%6]) with mapi id 15.20.6565.028; Tue, 11 Jul
 2023 08:12:52 +0000
X-Virus-Scanned: E-securemail
Secumail-id: <15e2a.64ad0f06.347c4.0>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K2K8+Fohw6VC6tEQMibnXrfHzqaNAylD3xUwhVNC0TdzVJuCke7bYhwuvR2FqLoREhaxoKopZBaxq37Xbe4H6wiHo6C76sUv2aiG21averM24s2zFdS3JhZZtyiLPDSMcZQP0c9aWpzCHciFHnD4UZ7YMbz40yz8ykCfc+OPgazdvTFNeMUb97jjlrmt7vldURl179t3uAJaAOATNpY1xXmqXvqTLe/luifbniRSbcj9VKSarL1ykQ3+t2j/VGC8QwZiZN9uW9bq/vfSmIv//fQcqOCHFR81pyKFml7W2n7GLYau8dQFaAmE+KgDXjj49k51yi+BXB3rOccEdpj1rQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o1t3cBjRENNBh4X775c+Ae81/iyvTyTgSBY1xVcH/MU=;
 b=D9CE/5wauR0FOCQQTlHggpoejw8VfJc1VI/Xk31A4khtqEtlDAuw5jiWWVgHy6Flpchw2Ls7yadq7PB9g9s72IRgyGkljZewFdbUTCWMWl21xnDhc9vGBLG+g+TLrX6VOXdACU7ht2LJbMUg3YYxedz8WHcOar+q7EVteTsC2HBreZQsOq+7djxmL2CBJlwZF047Dk2JuTZ+ac2YMrlcnpOcVrW751i2Bthvi3yF+peLNC9MjASEJC+uen4NVwUuZSUH0Ez9NJksZjekwizUkF3Bb01no0xAwucvgnPEVNtL1UyBws3yGCd8OYpTK2zTU2IvvyDAL0gVjhKP89FFEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none header.from=kalray.eu;
 dkim=pass header.d=kalray.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o1t3cBjRENNBh4X775c+Ae81/iyvTyTgSBY1xVcH/MU=;
 b=7tLClbaiege2f2VKdQ+anT4FakSVfahsPRb5XzL7fNu8I5byrBewnuhHmEqwK/hWVWNLtH6IcPpyyt8YDdH873ZB1WE7IW/mDDHASmj/KuISosHyRd6xTRV1WRvhc422qogtIFyweflEZ7T+hGghUoy3OliCX+MzrajCrDrRbgBqeGD+l9Y8/Ia6g+YRPwMaRe3j78692cqoGlYdyw8es+yYYAP+hMFStC5ngARJ4U3xSuoOFdV6wsLqiJevSQRH5WohotmuMKr5dbHIV+HfKW8yWGzp4g0neYr98ETNF7jgVE8R0b1rNOZ+RQoEKFpQLfyXUQTDvB2qOUkxCGoSGQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalray.eu;
Date: Tue, 11 Jul 2023 10:12:39 +0200
From: Jules Maselbas <jmaselbas@kalray.eu>
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org
Message-ID: <ZK0O9ya3gVS8DAam@tellis.lin.mbt.kalray.eu>
References: <20230710172335.26701-1-jmaselbas@kalray.eu>
 <20230710172335.26701-3-jmaselbas@kalray.eu>
 <20230710194703.GA19256@ravnborg.org>
Content-Disposition: inline
In-Reply-To: <20230710194703.GA19256@ravnborg.org>
X-ClientProxiedBy: LO4P123CA0652.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:296::13) To PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:1f2::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAZP264MB3119:EE_|MR1P264MB2193:EE_
X-MS-Office365-Filtering-Correlation-Id: 5c07508c-95ed-4c5f-8810-08db81e69f95
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: STH/uMClXErGxltzLjUtoZIs/FMHmA6kf2P2bHYCVBE3hhcGPdihGYcusZx+TLvowdlz2lcmFAf0+EjzrXWqXgL37zAEzLFjTrinci7j4ZPNuu9Ll9GyDd6uUBarJ9oUAUZyOOyqq3ifzhC8c7qPFOllFobMAFIgT6x5HY8LOmqyB0bhyqejCQ+U/XQ89CxM3/uj1MmSAFXqN55aLQoNHggB6+iuUewzJ15V+Fdl3eEXCzXalGxfe78ArIfSCA1zxMr6Pg4dQgdWrV+7gHtQDfd3vy7zL6FUO0noIFKEt3zOEII2Wqk2Libot3TZJD7odcSY6B1GRhK1fynT1QMwG3YxtvoeCXIp11o996jE+8k9fIBqRLRRrJ+Q1NaPH7YviOuBfa5NvhKxIi7P9dT4VS+MN2SwZhOMLREMKpVTa5rev6VIKoDHxZKTrwEcqkMpAYDcbVcZUt5Ewq4+tSGSyXA57DDfciqrTu/wmwTpCTmhXqmiJUIXhxWMOm17jlGnL7qhgOFrSJo2k6zx+76eBPA8laI/uBp4q1ilOsmgEwAG0kPy+ZGZU38X0f6yUUKz
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(4636009)(366004)(396003)(376002)(39850400004)(136003)(346002)(451199021)(83380400001)(4744005)(2906002)(83170400001)(38100700002)(41300700001)(4326008)(6916009)(6486002)(6512007)(316002)(5660300002)(8676002)(8936002)(478600001)(66476007)(66946007)(6666004)(66556008)(26005)(186003)(6506007)(42882007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: PKjr5sqCbAQSowVejXT6Jl3xtJ+giEJlWWLwgNYYjwyTWGEtHTMWNf72y92kepAE8z5LO/4FaK2MCHTav8TjxnZNYeKKjLTTCHxXAQqEwJl7B+TXdjL73yvcXv8Wov7J44pnXNO6AmLNm/CVTJfHTYsS5GHMOw7sz44uINBsXAfA0EpZvW/5NmmEK8mhsKgWbtau/GHfsI03WJBIG5l+jRc6Lowgj/U+/5ZpjM0YWbtUuKFjR4ok1AbQqJYWDIdl/JFklQUe2UQINnu0ANl+8umCaI6bkR7F+P8/Tv5+ea1/eT+/i8BM4ADHmRiLfcmMizh/N5+2j4PVaHOVt3VY7VjZHwXbDGVtfkSPB0VPMSk3zz1U7/Sp1yPz+JdGpI7nBaZJdYCsPhiWKERsXHYss5w8299HBpDBS57qmZ6pEAe/hJ9d//YEF60THDfKQJZDSuOz+3EjOymWpbmkXNfg1ubXal7awn4Gb8SEi87bLOWBfdolDuhbXGgZhCQmdAr1ZaJMYt2jU6fCGqnHYYH8GYIEmLM80xXWmgelDKAhqLTKULM2C6q4piJQSBZNfXeAdHKIPci4SyIqENBC1aWQHakdYsZbs7PyN+Lb9x8IXmSu9mI/SbrIdH7DOvL4OlUnqokCpYDSQUDIExIrOwtmbG3PPf5sQB2fPbk4YBsxCl0VuOVIQb9/hCR094DHAPTvY0N+p2zmcTiWo3g/8iDjID1nUgDpGXgJFnCRpRsl//h+Ea5AXBSgsY/gDngF6/0lDdM1UfdeH1KZ+YdmFktgPerg0w3a2h7GV7KOlLfi0nkx/5ztvkxsYbTt/aCUUBmejnJvNyes0kofxr1Z8PRQhsQlCHS0XuAYEOi/3O4Pza/yAOwIfdQbF67ehMKNgh2Id4aeXgWMxRvmAZkniE30sNBCLM093mK9bFayz6WRMmWICq+EkQDNmaoheH3Da4Dy
 c+eLgDaJKrV78YtI13AKDNTTUMxRLrHBV2p/nS2YBlnWJVh+N96VdAefl2gZCAaOy2RS5FMRGxE6YrpUg8mY9QJag3pC3FZsy4O9Cf7L4QWFKT0ywGOR28HeuNKYMOlePolUESh2RRmRIbywTpcgTo7HF/Q28b4KMY0ml7O2sS/Xx7P72UBylb+NWNQSEAAahFqz/RHVxFgz7kPxWfHJhf+ub4U5itscQEFBpTc6wjdp703mFYtFPvENgarmGXXQZ7FrS3x3oZEvCYKhvcoqaEcUNMYbs++n7RmUT90ya615vhdwNuZ591ZzUEfeWH2Zlspfms1Fn7YO/cCwveVUtQ6QRGOLryscXNuGJBj2uf6ylhusvLEETTJFuqOMHb7NTYQXDpcsxdKFXyUGW3eCRYxy30GeEzHfnwxlqdzMWlRuK4Kdv9nUj8dJLbdjjfTUz82QHmbXmUGdofEKAi6lhl8W0OAoyfXRIlzfNK22ju1oLf27AwiOGTqwz3pRd6+fYvswzNhTT4ujm7BWqYZve1jYi9LehBjBNjWTlS+tD3U4pPY1twh7ta7yL4a9jKbxlncStaZ0Ph9r1DDCSGerjwV4i5c2mIDgjawVZDyS/xIAajJe9kPn4DQLVD+tZNiAP7W3xihpryqFjTYtkbawog==
X-OriginatorOrg: kalray.eu
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c07508c-95ed-4c5f-8810-08db81e69f95
X-MS-Exchange-CrossTenant-AuthSource: PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2023 08:12:52.4218
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cUJvktKE7QVYsVgvMbUclyNxVWBg6NQdSeAkiTIlewAljhH+WSni07NK3fyO36jMKGVOEG9dSQ3gPZRPYeQq6g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MR1P264MB2193
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_011302_334594_6D8B7F3B 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 3/8] mci: Add dwcmshc-sdhci driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Sam,

On Mon, Jul 10, 2023 at 09:47:03PM +0200, Sam Ravnborg wrote:
> Unless there are good reasons that I miss you could squash this with
> patch 8. It looks funny that you add a driver and then delete a lot of
> code because you updated some infrastructure later.

The reason for this is to be able to revert generic sdhci changes, in case
it breaks other drivers, without completly reverting the dwcmshc driver.
I have only tested the generic changes on the newly added driver.

Cheers
-- Jules






