Delivery-date: Tue, 11 Jul 2023 10:09:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qJ8RZ-006w2A-0p
	for lore@lore.pengutronix.de; Tue, 11 Jul 2023 10:09:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qJ8RW-0006zl-BD
	for lore@pengutronix.de; Tue, 11 Jul 2023 10:09:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:In-Reply-To:References:Message-ID:Subject:To:From:
	Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=frdCNGL5u2Ud6gXgUqmKh9gGJvkhuxtOnVgd0kIUyR4=; b=iTSgNDAmkDxA5l3R7I2vnNHePB
	rH73BHRiyKgrwRXiSF1osWaPGabcCzxdGoKq6crQ/NLZFwqWbaUYguG4aw47VdK0/MKe9nZUCQ0Hk
	/QNht6hGhr/8snrmnCLGO8TlnbXUf/yT0fO7MIQVS0Qv06b6eRCwpioLnCR43ZNhKGAb9/ANKoJ96
	/qM200EyMZcUpCbkKipsHTGAvudCgGX1VQbnsx5nkIlC1keIStV1wZ125zzlVeF36hZyY4k0OZ7gY
	nz3XCrMUREXmLckVjXkBmt8XA+AeNOHuonwcY9Oyq8eO85UbC0If+VKVU0jzV2h91TAzbN+ioxqLo
	A2u2AWIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJ8Pq-00E4Eh-0g;
	Tue, 11 Jul 2023 08:08:10 +0000
Received: from smtpout30.security-mail.net ([85.31.212.34])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJ8Pl-00E4DX-2M
	for barebox@lists.infradead.org;
	Tue, 11 Jul 2023 08:08:09 +0000
Received: from localhost (localhost [127.0.0.1])
	by fx304.security-mail.net (Postfix) with ESMTP id 84ABE7EF10F
	for <barebox@lists.infradead.org>; Tue, 11 Jul 2023 10:08:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
	s=sec-sig-email; t=1689062882;
	bh=cUOrngfOFqNLogBA8NCWXTRowUriJT+lT20E3H/zAps=;
	h=Date:From:To:Subject:References:In-Reply-To;
	b=qa+7iBRJuA/frDsISaunx2WrDXniD6byyiRAIBv26DxphAvb95FPnKgysiFjqoLSz
	 XBVgr2kE6Cufwj9UhBHOC5Z84VEbjgZDMk8mO1ZKeJeGqW+9YX+FYDo18flg4j4kZc
	 dp9o0dXHcMYJYvumtILfGIzSaMPqpXdolPsxzP2w=
Received: from fx304 (localhost [127.0.0.1]) by fx304.security-mail.net
 (Postfix) with ESMTP id 5D2897EEC4E for <barebox@lists.infradead.org>; Tue,
 11 Jul 2023 10:08:02 +0200 (CEST)
Received: from FRA01-MR2-obe.outbound.protection.outlook.com
 (mail-mr2fra01on0107.outbound.protection.outlook.com [104.47.25.107]) by
 fx304.security-mail.net (Postfix) with ESMTPS id C5E177EE26D for
 <barebox@lists.infradead.org>; Tue, 11 Jul 2023 10:08:01 +0200 (CEST)
Received: from PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:1f2::23) by PR1P264MB2127.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:1b1::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.30; Tue, 11 Jul
 2023 08:08:01 +0000
Received: from PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM
 ([fe80::4902:e46f:b3d4:a4f8]) by PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM
 ([fe80::4902:e46f:b3d4:a4f8%6]) with mapi id 15.20.6565.028; Tue, 11 Jul
 2023 08:08:00 +0000
X-Virus-Scanned: E-securemail
Secumail-id: <b340.64ad0de1.c5343.0>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PBccUDtyk4GQxOpBW1cMuneOuVKiP+QqGp20hiIQH4KddfJ7L1GSfnBbwXY4aNflr5w9bJTA9Gs77VNgdnCqhMA0dP1ARegHzxjrj0hZcLIlm8Gc0pRWi6DUiFjc2vtrIByn5yj3AD/2sWhFnFM4D1uPRLg+Gadz0Ndc2+gj/jUrk++ZWvKuMXw9NIIlqK0oTX2cEumBTQwQX89aEakXUI/X2giX1kiNDYa1eqjKFzY0gmGOFTlSuLO7h+gS/mWkfttEpU2HmatdY8MDZeZ94U1o/88mc7V8rwX8b+ApC5mc3iElZIuWrbqv/2Sf23r+V7DIW2g0Oh/bq4EiFIIQhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=frdCNGL5u2Ud6gXgUqmKh9gGJvkhuxtOnVgd0kIUyR4=;
 b=QGCh9pjQy/EAM874ujoiD0uoaFDKxve0sVDsHe59Kq2PzwTf8fQ2MS+0yxlITFAhrItIRufMtjSR1w37hagk80p98jn4YVjrRzeGb0SDPaF82btPMpo/JQaeC06oAJMMuNLKNhY6UblantM5mLUxQT8lmQWoeWDJBccVu4Y8je0l5rIS7N3d6tzQia8Ncy2K65lKp0s9IFZlaOgHQOzDVE6fNl6jEGe1THqFsIE4Z5ryhzzZr+/mig/ksX43qr+tgRCZy8EFiUKSdOwo9Aj9jRvZetS3wkPS6tlkFUvExIMVOXm3Zag6vcFBBSxv2v1uvV2jbXambszglUKQIPyxBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none header.from=kalray.eu;
 dkim=pass header.d=kalray.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=frdCNGL5u2Ud6gXgUqmKh9gGJvkhuxtOnVgd0kIUyR4=;
 b=YBxIscKPU+bx9Pgt13kt2Bzk2AP4P29EvlAOd921QxEwgqLYgu/LZOJF0LNPo3KXwTFeF3DF0Xa6UikJ2qqA5BdmXwfT3zmeGOX+HfZncH2wYbSLhmsulP8/I8XjJNopwJfMXw3Ljj+WSL82EwPW/ROd1EvzQbCfVSXQO/ro2D7tB3M/Mk0BqWSbKe42ehkCm2I8fj7R3p9x2/VGGlt/Txa2DCcwCnWWrJ0JOfIOGNUbgdx09ze6F0y/F9oxMD+8bTtBvKdk9MasCYgXmIFhDRdf+k9D/ZEPZ2jumLDPyZakNFhT7yZRE4eSgdL3zldZZ2IaQUpN7CJLI7aarh/eMw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalray.eu;
Date: Tue, 11 Jul 2023 10:07:47 +0200
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Message-ID: <ZK0N0-oiPjZrYxe8@tellis.lin.mbt.kalray.eu>
References: <20230710172224.26496-1-jmaselbas@kalray.eu>
Content-Disposition: inline
In-Reply-To: <20230710172224.26496-1-jmaselbas@kalray.eu>
X-ClientProxiedBy: LO4P123CA0105.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:191::20) To PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:1f2::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAZP264MB3119:EE_|PR1P264MB2127:EE_
X-MS-Office365-Filtering-Correlation-Id: fd42fe66-656e-46c1-b370-08db81e5f1ae
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Wf1oHJgSn7S45xSe4n3ky49eUO0btp8CJIhHF6DS/vCxaJMfkwXfdI6DLCJ+wee7vF/3il5YBJvG1FuDDJUji1mtbhFxnqe28Y1X59hsoEHxBf32c4MAFZXb1z+N7BE/WuOeTthYZB46BHR2O+ubO8j0nHBioTHoAZYlHPl03RSS2e1PsPSdDtDDdOuEqzi8ovoob2FST8mFKOqhztR8v5guhPkn7EVdsZXGCM9AeLdErniC85zuqCaXAq8CdhYPlzIgD03iKdtVV2RnPz5rMlOcdSMx8WAqCli211eU6AeN2KUhgS1qq1hg/KhntARCD0JAGhxWr9AbBe6mbiSpsS22qELUZ0EQ5lLMJUrapSjzGQWYuwYCEGAWbScqFGnTnCP6Q7RLx7kfvWEFPhDoD4uYzNPoX6MmxB+Z/FLum6ckrIVcl0niCy/dFl6PwzuE0STGbmN5RXhyxGVzfUqbsVCD5WLmcuUrSuPHwVrn0k4Vy7s5WrVjUaJvDIOWKKzPBcf45EWaZWbx4h5yMktb9tmjpR8maKi9Mb9ri+1j8LEVsK+6WYdQcDOKHzzxvbcT
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(4636009)(396003)(346002)(136003)(366004)(376002)(39850400004)(451199021)(38100700002)(6666004)(6486002)(83170400001)(26005)(6506007)(42882007)(186003)(6512007)(5660300002)(66556008)(316002)(2906002)(66946007)(8936002)(8676002)(66476007)(83380400001)(6916009)(478600001)(41300700001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: u4spgEkM8UcH4jJ8n19VB2a0Jrs0Y/Ax2cgUiIfha5pKyY01porzuUnwn/jPh++0esge3KPC02LaEL9seJKBtfhO2kIWm1T2OnItVUE2nyZym36UmPe3Gr7IpxQ/exP1BJ2pe3v49e7CQUZe+NavLYEcIoiNIJjMiacAv13CuNY0jcTNiG+n4MLi6LD3LHNwaOEK5WucV2pSzjvZqu8zX4he4vc6PkHKB6hBIGeHb2r8zS2aGtVfpTVJ77SdhehjqUsbV6QxiPC9xHBESvyeUsezu/Fg7XZ6uYa8eK0WIxYAobpRUVXXoKNFMIElA4n321wIuwvvL1b9izOUdPn4IGyJO+VNLNC2b43L7ttYT38s0oBKh+xSQVjhjh8YgSQKSYHK5xjZP8j6IIKj28m36zedu0KVxQXX1v/Vvp+29//GsErELMNQiMaO5cUyjvEuB6b95hEH99WsUIQkXmwVfq2wKYM83zmoiKm/5pE8G6srW0OSEipsq0s8Uota7LIm5ba9GHNCOMe1h6Zlf3lxDE0KpXvTLMWhamsbmn7aimh0/hBWZOYWXloPmVTHLFAUTs3EjFxKjoQW03CsOUntZQQ6czsi3VvQ782m8YzOl0kvTisIAwMEHT6vQdG7h1Rqg9QeqK6zchbozn7GNMfmjfE/re1UPEk50fcfs5YQ+mWl6KcjqGboEkK/ml8mOggX671FC223TKB7lgPdAek9TUQsX0YS1TgILi9gYKtjnQ1S9XEqtNDwN3DPnNRBa5T2JS7gbXEXrC51qfaj54CkfKXNFWCoBAoy8SKkysV4Y7TaADrCdz5D7l+7fn/qmAJisEldz1FWtSmqSTd/NfDEN+cmhkE+Bww6o47r9vuX/vDYsitVWLEwQBf819TFxMBD4SLc20qcND5s02N0Q/oMShkGWeEtONI6HB/Xaq915FB5VxfEBEwt5V6AgM1okCN3
 GFoDfZcNL/I0XBOyBw0gt1BGBbNkPil04mXMkKiWvWmB/E1CfqBJUN5WGAVqN/iaHMqb9Od9cqeRWOplqyQDL6O2zUad3WwTsy6ob193BpAPFm3skb5b/dC/b6Xn7uB5x6maB4TCORv/75bZ4YDGMF8f9Ug1nOZPW0h/spX6D7kOOPVqjCBe+V9r4JDfcF2Gwz32c8nYvAxBV+UKhF6bWqfYdZQ52dXUNLMeNEVcpJoCvTWowyoJdJZ0m9eI4EW9APNR2vZb8+gBHxkD58fM8SKlnyR+IJBMKr5t4Xg9JxljIHcYTva67VTAV4+X3NLr50FyW1wkmhNjcLtHu7KRHCF2QG9t0BgwoHX3FFfeiNm5dXBxZ4n1INmc5dOpNSjmiPSbQA2LUJ6A7k8ZURYgAhSiGv7F7UiT0Gh22VHdTN+oJ3YPtXrLqUwGszkcUSRsQpDHvzlOPV2HDBKkcLsWb5dWjfhUBgV8+SJUQV3mjXNW1hCnep4lBwfZha6v14w+XG3IRZ7cURrOo97rIsDryRdgOlx6ShSidA/FL+52eFrEbIg/nIyTpwgOd9f8AeAHhV2diAl81aPqMzVOhYvIH524ezPZv3OXf67/qVwcwBL+TE7LSV9YdxldVLD8Du+g/QNoK+cVfYCGPzkAMcs07w==
X-OriginatorOrg: kalray.eu
X-MS-Exchange-CrossTenant-Network-Message-Id: fd42fe66-656e-46c1-b370-08db81e5f1ae
X-MS-Exchange-CrossTenant-AuthSource: PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2023 08:08:00.7999
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VCzD6MDtjGHItPHZUB17XCD7WAayqYDfeDG05bAbQYuxntSeZBo98ol6YBtvXyYRJ6xcRFnVVUVlnSZnP5pNiw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR1P264MB2127
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_010807_592123_7E18D1FB 
X-CRM114-Status: GOOD (  10.85  )
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
Subject: Re: [PATCH 1/7] mci: sdhci: Add registers defines
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

I've missed a patch in the serie, this patch can be discarded.

On Mon, Jul 10, 2023 at 07:22:18PM +0200, Jules Maselbas wrote:
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> ---
>  drivers/mci/sdhci.h | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
> index fe8c25cb9c..50179de0e6 100644
> --- a/drivers/mci/sdhci.h
> +++ b/drivers/mci/sdhci.h
> @@ -117,6 +117,9 @@
>  #define SDHCI_INT_ERROR_ENABLE					0x36
>  #define SDHCI_SIGNAL_ENABLE					0x38
>  #define SDHCI_ACMD12_ERR__HOST_CONTROL2				0x3C
> +#define SDHCI_HOST_CONTROL2					0x3E
> +#define  SDHCI_CTRL_64BIT_ADDR			BIT(13)
> +#define  SDHCI_CTRL_V4_MODE			BIT(12)
>  #define SDHCI_CAPABILITIES					0x40
>  #define  SDHCI_TIMEOUT_CLK_MASK			GENMASK(5, 0)
>  #define  SDHCI_TIMEOUT_CLK_UNIT			0x00000080
> @@ -173,6 +176,9 @@
>  
>  #define  SDHCI_CLOCK_MUL_SHIFT	16
>  
> +#define SDHCI_ADMA_ADDRESS					0x58
> +#define SDHCI_ADMA_ADDRESS_HI					0x5c
> +
>  #define SDHCI_MMC_BOOT						0xC4
>  
>  #define SDHCI_MAX_DIV_SPEC_200	256
> -- 
> 2.17.1
> 






