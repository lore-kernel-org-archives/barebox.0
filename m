Delivery-date: Mon, 17 Jun 2024 15:44:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJCeu-007brK-25
	for lore@lore.pengutronix.de;
	Mon, 17 Jun 2024 15:44:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJCet-0001Ke-R9
	for lore@pengutronix.de; Mon, 17 Jun 2024 15:44:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Content-Transfer-Encoding:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LDim+TmGW+lOFIS5P8iEiJcbRez+elsdeeC9QzP9JO0=; b=BaTeMfDYq67igHNYGzMWNkBFnb
	ApRU9Oq/mQVI7KlJpeV9t2OxQ0UBZyXwVgkIb3+uC6wen/LjL7W+QrcPD3EQc+e8COh7LOXQCjvZI
	tPSajZg9b+VznxkSNU1sCGOe0RVwAieCk6FrOfxotuQOOnx453s4yMzSKDwJcXsl0bA3O08jD24By
	KhH8IYi/KrB5uWGwOvFiAAeiGlWu7JQ/MruMERLLO6uwVPmOgk6zyrK+QKAr5MFi+4vkguiwYjtn+
	UCAaoRYtyqooHVwyozvZ2Ztggz23uvOrxIkQw0mjVbomVvBKR4xCUT2wrb8nc7HxxvIihMUE9AiSN
	kxS2TEbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJCeE-0000000Av2N-1pOC;
	Mon, 17 Jun 2024 13:43:50 +0000
Received: from smtpout43.security-mail.net ([85.31.212.43])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJCeB-0000000Av0C-0SmP
	for barebox@lists.infradead.org;
	Mon, 17 Jun 2024 13:43:48 +0000
Received: from localhost (fx303.security-mail.net [127.0.0.1])
	by fx303.security-mail.net (Postfix) with ESMTP id E025C30ED49
	for <barebox@lists.infradead.org>; Mon, 17 Jun 2024 15:43:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalrayinc.com;
	s=sec-sig-email; t=1718631825;
	bh=H7NLyf0kaUYT3rii/yqzqZPeUm/iRLW8TNwaPW06gW8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=i5NDbhmdPHRIzcuEQAsGtUQQqxVXYh9v8byfZFW3IBUQVE9UzK0a2x5YoVMscr1kJ
	 WSUwhJJ9jCozcJf5VyEwj1hOnPeoLScjuzsnj1GUZnpCQqU0unLicFlPoCfHSyoEtu
	 tNhpj7LbQTrjGmpcbhIu8avRSgAE+VOJeenFA96M=
Received: from fx303 (fx303.security-mail.net [127.0.0.1]) by
 fx303.security-mail.net (Postfix) with ESMTP id A2B9030EFFC; Mon, 17 Jun
 2024 15:43:45 +0200 (CEST)
Received: from FRA01-MR2-obe.outbound.protection.outlook.com
 (mail-mr2fra01lp2041.outbound.protection.outlook.com [104.47.25.41]) by
 fx303.security-mail.net (Postfix) with ESMTPS id 1AAA630EF0F; Mon, 17 Jun
 2024 15:43:45 +0200 (CEST)
Received: from PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:118::6)
 by MRZP264MB1797.FRAP264.PROD.OUTLOOK.COM (2603:10a6:501:9::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.30; Mon, 17 Jun
 2024 13:43:44 +0000
Received: from PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM
 ([fe80::6fc2:2c8c:edc1:f626]) by PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM
 ([fe80::6fc2:2c8c:edc1:f626%6]) with mapi id 15.20.7677.030; Mon, 17 Jun
 2024 13:43:44 +0000
X-Virus-Scanned: E-securemail
X-Secumail-id: <df39.66703d91.186c1.0>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GoSHOTvu2bHwzIPfZS554fszhCQAMWkTwZvNrZmLL0vIQ6Rt5BgjbejmlRpWfYGzCFGsQ6vkJJ5JzQj2ZPrGw5SS138T+RkTviB1B/WWCh24FMK9D5aPIHqpdYmgibEWr7wnbtb1wct4ylF4/ASCQ3KTuEIl47EpRg47bD7K35dFAtyKgVe6qRzMZIkJ2apR7DVqmaWDqt8i7ngpy4heaqL5rVD7LVUpJVLcl8AifrbC0xgJG94ir1DRhwN3EOWfUTpnsoMy7IoTAp2L/gWBC/E+D7VMADXH8VZ8+yxw+4e2VPD5ZleCeecFYxlw4zhhthipG0PbESrdLYgu20Xgmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LDim+TmGW+lOFIS5P8iEiJcbRez+elsdeeC9QzP9JO0=;
 b=Uzsvr0Di/inIU5qQEfzAt5+O/mrekITawTQDe/nlKwtVAgq7AjZmMOjd4mdWq7nUjo0aJ+5hAM8cGemcofhtlKaXm2LUEC8jgbdkrTa55LfvCNPPIilHCjEeBTKQuuetrh5foxh7TaRv5l1ZIsADip4v7de8xYHeXZLGrcR3byQenFjPznHhNhzKioGU/8IrxAO3kpKnYfETcRGiad8gaCyu8uctppL9luSw4l8K7xhduDvlmRmgRUsUUuRkRVa8/WARbXSdQpW40vhWiOSTdtag4Vykd1Bub/8BWjkRgLZ/EUUNCRjM+3HGRZecpgzaiG9O7JHExEyljmSZ0l9KBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none
 header.from=kalrayinc.com; dkim=pass header.d=kalrayinc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalrayinc.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LDim+TmGW+lOFIS5P8iEiJcbRez+elsdeeC9QzP9JO0=;
 b=hgIz+bsnk1aD13OCC5hSlNuCJ5jx+isg+vQ/2FsNoIAR+TRN9xKnRnHAo4xVCTyrSDxvtvuzZ2hG+HSrJeUWSt9cGuCGzTZauwyIzt9fOxSi8bDu4glAWtUbxhW3KgOMTLHN1RqFaGmhZjhl2AC+0BdReC+dPpFVRFV3tZhv8PZ3ZyQ5k0vTj48EJ/JP/t3GKbElfE9bLrJUpCVD8tHRKTDTxanL2mbXRXSISq8nYfkQ8yKLy5b0/McwraC9QLURHlBIAGDSqX4GNSkrKFQ3GvH/nt0Ps/EQPfDmdkMubSvuTouNtE0V02711YouHbVqW3qzH/HGsD46E852cuquoQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalrayinc.com;
From: jvetter@kalrayinc.com
To: barebox@lists.infradead.org
Cc: ysionneau@kalrayinc.com, jborne@kalrayinc.com, jhascoet@kalrayinc.com,
 clement@clement-leger.fr, Julian Vetter <jvetter@kalrayinc.com>
Date: Mon, 17 Jun 2024 15:43:25 +0200
Message-ID: <20240617134329.3671762-2-jvetter@kalrayinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240617134329.3671762-1-jvetter@kalrayinc.com>
References: <20240617134329.3671762-1-jvetter@kalrayinc.com>
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: AM0PR10CA0041.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:150::21) To PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:118::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAYP264MB3766:EE_|MRZP264MB1797:EE_
X-MS-Office365-Filtering-Correlation-Id: 0d6605b3-282a-45ce-375b-08dc8ed38179
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230037|52116011|366013|376011|1800799021|38350700011;
X-Microsoft-Antispam-Message-Info: sOH5OlLEf+BihHs7rj/FqSjMd4HTcYoRkYStxrGjvz87Un30pZO+T6KZ+o22mU6OvkecrvARBRxwbMXHXPrXM9eIuLeZdD49Zwx6H9HIKK3dgkCXLtFgWxteIUM3tP4W7Vo/xaNeex40K6cbI/CJ1A6RBGdqHtY9AQ3valUDXtSJqjs0WbuXpwNGK2v/6p5kJ/JmOVzp6VtXo/4G5mPl3K3qKLljcDZNhTPpiCWcD55iGWTKE190PTCGTsoptiHrQWtAdOEPnS6bt5DKa+zXzrbO1zgtr+y8QAotujK43tFjONDbDLQ/QhAyfG1je/Bx/Bmkv9lGnTTyEL6CtIVN/HjT/e8M48/AWb9Q2A8DzCd9tqiHFyPM6qmpuj9LgtX+PUVZHpMNuXbsmo5zIFMyi9/cl/irO/UWFW+d2qeA3kukaWCYEe4o4AFsK+aonUFMUcXGHDhpMQkSxrrHLVDzKqVSxy8V5S8B6Snv4i2SmDZ0Dl6VZ5giNAwM2gdWctIdtWd7QSrwf7hNsXLJIk5Chil8oMWCdR1vTosu5XW9yi6JcxQDQ+CxWtyf3mJZ1IvZMPNxf9fNVmvYrGrCiJufylPyOLISNWEJCJaHgRvPAbq2f1aLlEADR0dQMfhx2wkspy/U96G82tbUd3GSCoL3I4cubOfUcYBIrmioaF7gUmlkXz9xvn79URNYwWmbCBTK17McBqHjrkEQ60on+LLyQZC+QC18FWU0VacSKuo0GDJrozbVMc89nnW4173cu+ohMrK6/fX3JMTDR05M9jI6mjpyfxIZsehmtMmHje59Xf4j3WF6Xf72k37z91EV/Iw9k67iRDtrVe8vw3+KexbKoq437FYIAbuA6UQTuR6DrBPJUvmJ6vtpHh9VjoabsLj0lj653cNC9rVnDjEHitfsZSJrNQjGcUpB9Hrtl0WCxeJ0iO14c6XyRVhsJ5SMkQ5oRMO
 pgCSRnpYnx2xWSdkdzUU02gl12WXfPzUWmX4i5dLqs2AEi11LXRSbbamvIZHh3FPBDd4PsZhnXjsYFCFVcu1BtdQOSuYErszDdO+aH+RfoLBJjT1qTDeYSAJ5ox9TVivyfpAm+jIoqzDJzTgMbT9IaFe/gq4CTNzjCWT5T67QAkw8YVTW8A/jpq5S4UL1MzLeG+0iS+QYq5y6ttXLcLNEdsqBY/OC6YWU1X7HmjlNHZ/o+FkTKJH36i/eHirGIKc9I86yZvQhHdHBEbnX4e+zEFU0QPgOvBQCqdHXCt1hBE6C2PAJc/kFECY0pUVxykVWvxvLOGfQzTV4spVwYVj5Cbm3VdmXebF2TCRu/yF+JecAgwFLB9gMtMqinX+VKnhvi0J1VxzhSqqs+x6foWhlmtXFjHO94fBQgx8jb1c=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230037)(52116011)(366013)(376011)(1800799021)(38350700011);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: wPyDB8EfpfNg4EI3auy/vTCrNAovIyxBKEvsR2STZKtn+f3WudkhK7U7bLqaceMeykgSZe/S8PKbpnmh5bTjPricC2o8OkPLR7QDnGXjs0ZcIo3F7S/4KiCtiydVJ98ybKIO0R5j8R4Jgi++m3IEByZ19eIVVrC9rDDBnmpkp/ebFm4aoCMwSuLYsKCtEiaw1EL2U3dS7JZt/JyVZOy/pIvThtd+0BzNQQatCx6WI2DAoUEmvCyAn+EpRwLj37bp9NDqt9COPkNd5F5QsHHCtiNx1b2K8R7/PX8FfiBUuvrBDjAmDQiaBnYOJmoTv+3sK5yBjdk/nlbxM3nSMwGTjnb4+w27HjeQ/UalPFR6SAQT/Dxz04hZrNgDaVmqwSkpZhHdvMvTXdK7aXgUoBZAiF7XFykwQmPPEX9fMxlUqWoSzNe2jRMZOkG5xtXDzjvIVwBunwAZAwECsAbP3lPCo0M6QpJH4Pk4XccImpMZQffYRZ2fA2Pq7BqfabCWT+8eRGANxXQ2B4/JJy/Ro39II54ta1Fiem7BQ+TvwkRMGlEVeoG+4HM9BInCSO1cSJtS9aWA/vyHMYbkEsGh9COix3j9ojvxwPrSODYAfn9RHGpKRK6lMUYaOG63uzrIQs5TclIzTHBygU+r3iGh2erUX+vuJIR55i0gNljoP2KfZJJWQ6XbcVl08RWkaI6NoiM0h/A2VBmOd6O0HSUa9l5cPA/5eTk1EoEw7fdnEi05a1VLfJWXmg4mqZZDNPKcvuOuJ7B2/CWw5XoJsZp03NkiwnvL1gPkAv9KT/Bp8I/R9Erq+bFSldGdrSgLyPISDZRAu3rfi9BdN2Oiu6YCpZfO9a26ZQLKHVLjB7a3Hon2D3Zqb32834JJHVDaNt9FAgvCQX2Hmxr/BFfWsqTvtla4s5WE6oJpOhKONNQArVkd5QnobKbCL+8ktMw5RiuB/hyd
 eDaw5h2uky+uGfUxxhFrDkdP+7Pc79tGt02y8+paHOrdpq+aZDwWHLcCtefCTxOk1Pt07t9MYEtMTPIo0y8+HwBf5Vn4gTa8iAf9vXJbuwzCRXkX8nAdS882Yo2m8tZmvJJ4zx6Pj7W644KLBOMH4Ni9KJFTmvI9FWqef2SqXxaTZNCGrIVZCFvAN00hrhKWN8mGu9AfCV7zddb31YXA7BmRgKzB0w8H4w9/TYJUYoZi0vYSFy4gu1BaJsBjOmkttw9qqFohENOESumCMmMq+s9PmGOa5IsvbaFF/2TOGu9jGc6D4w7EdLmNm40PXftfxxd+e/DkCH5BSAX5roEQGp0rrUMOzRxKdjNCKR4kZwLfPgVgi78mOWFiTi3rCTDX5H/gH41cMWkbzrnqcE1NgjjM2AC2juWcU62DCXu0evPN+QbhY4FOBkMS4S6u4wK6yZQnsSNYUksukpVSqsExO4cle0hXWzu/Ze7NTpzK4kWqoq/hjLZRByg7SppRPj928Rt0T+o7c2ERIjz3YwUugd8cOBgVpDteBAScMiKX9DE1XkQgqtTjUP+5JdvftoP1kDtUupL+yf2BiIeQEW5DfY0IgiosVj02p5XYKx81Lkfmm+Yfu/iCUty9o0OCiJnjaqjc+zWprx5VhkXRwQz/7g==
X-OriginatorOrg: kalrayinc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d6605b3-282a-45ce-375b-08dc8ed38179
X-MS-Exchange-CrossTenant-AuthSource: PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jun 2024 13:43:44.2850
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: T356Qqkd2n+I4B+gSrqxXzLuK5YC+br3UvVzTrh35bdaofShVTIfIf5zCW6ptfLXoAl1kvCFjlRAKB+id5OGuw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MRZP264MB1797
Content-Type: text/plain; charset=utf-8
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_064347_317718_D8B52EDD 
X-CRM114-Status: UNSURE (   6.07  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/5] kvx: Fix barebox build for kvx
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Julian Vetter <jvetter@kalrayinc.com>

Add <linux/bug.h> to arch/kvx/lib/dma-default.c

Signed-off-by: Julian Vetter <jvetter@kalrayinc.com>
Reviewed-by: Yann Sionneau <ysionneau@kalrayinc.com>
---
 arch/kvx/lib/dma-default.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/kvx/lib/dma-default.c b/arch/kvx/lib/dma-default.c
index 1d37fb27a6..0ea5b6c59a 100644
--- a/arch/kvx/lib/dma-default.c
+++ b/arch/kvx/lib/dma-default.c
@@ -7,6 +7,7 @@
 #include <asm/cache.h>
 #include <asm/sfr.h>
 #include <asm/sys_arch.h>
+#include <linux/bug.h>
 
 /*
  * The implementation of arch should follow the following rules:
-- 
2.34.1







