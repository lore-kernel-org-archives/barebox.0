Delivery-date: Fri, 08 Sep 2023 12:19:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qeYZu-00877B-EC
	for lore@lore.pengutronix.de; Fri, 08 Sep 2023 12:19:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qeYZr-0006aG-QX
	for lore@pengutronix.de; Fri, 08 Sep 2023 12:19:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:
	Content-Transfer-Encoding:Content-Type:Message-Id:Date:Subject:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=uS+a9NT4l6cScoMEtaBrBX1skEGD2rBmoeB4vOBIknU=; b=KP6jcvhHLhh0thTsZFwjLrOOx9
	lWHtU+Y/GCuQjBNMFYBCJMpc+289BSMrxydQ/NgoNPQwU8z4QAGQ1BeaYKROnm6hP4crGeNcln0ld
	7JKvJ382k82NPfdUDahOGGyjbgD4Dyc9ff/pk5h466vlYOhWHCH4IG1IXFOkcSBVgBEWWPTv8QILa
	KYp2I3EQP8lrVPDsPGC02xJzcHHdwaSH2OAt42gPOXl+zKfHj6FiLLmFbT5HyaJw76+gKCHM590ot
	i8zyDnIIJuSeIfFXcZGQYs498EoMu9In6hDbRpjV7KJB5fEi5NRmNlTIM/4l6+uvDx1tsx05dyo/D
	jnJfM62g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qeYY7-00DTK8-2z;
	Fri, 08 Sep 2023 10:17:15 +0000
Received: from mail-db5eur02on2062a.outbound.protection.outlook.com ([2a01:111:f400:fe12::62a] helo=EUR02-DB5-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qeYXy-00DT5T-0E
	for barebox@lists.infradead.org;
	Fri, 08 Sep 2023 10:17:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XN7M68JmIf0BVZaFWfygH92z3J2+VAuiJOWaYVP7j8igDe4nroHhDUCxM+DvHBRROxi85sQXZNJnnoj4ScpJ/yIQwvAXtJRjbqQ13jgFQJDje08bfgjodwoPrLkpp1h0sAdpAbbyNQyaY4tU8n5taPLM4Y3mc4nJrXYy945r5o5DcRuIDqF4soFKmlULH32ZPNJecayj25TnDCvrPbFk3EUi0EoMZM9ODPXkm9aMTdG3ln8jKqvt522YlBPLrpgh5N97l4kXbvgugsfZY2cvJSYNPUjIT6vQoZS5+/o1+d1g73CrLvJaToOgN98mGts/i4CZQEVzJBnqqjNSLbNo9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uS+a9NT4l6cScoMEtaBrBX1skEGD2rBmoeB4vOBIknU=;
 b=oazzJfHGa1wLYP0UAvVTqdQVLtDixou/HLV8JTMYV5CUNZoJVbFngWWIwSMV6DCUaOMwIqXtFnazhWywgunA5h8xUs9gQbuPfcBC/+kkycEShBvvGR9OzvFmbFTxR98NGZdMXxLPWzIheQ4YogvI+TglTaaW9PsKrfQcLmP0YMFXaIdTreSlUWeWk4ljGUpw1y9pI5V2i3laU/E7cdgB8BvV5+ttX67xqq+loKMEyKYcHxfkp+1GeMj/2A2jikj8ljALZC2G3zgo1YVgL6yWwRza27Ewz5c3KA9wrQ+3ELYT+yMeXerI/r/mGjtxccQX+juA3EEMzjmD0RgtGvniwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uS+a9NT4l6cScoMEtaBrBX1skEGD2rBmoeB4vOBIknU=;
 b=F1BY2iOuOKBWLOVcSyVYpxsG5W+Cm6VY2lbBOMYxx/8TrH80gHItusIBz9GBJfQag5OPCM+jHOGsVxEYtH2gizGLCv8LKU9QWzi052U2UA8rH6qlAzEDg/sutJv7AYg2LCKqh9SU47YYYcVwkyAZTuwQ9haEqv1lLqbIWkWbolE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from VI1PR08MB4544.eurprd08.prod.outlook.com (2603:10a6:803:100::13)
 by DB9PR08MB6332.eurprd08.prod.outlook.com (2603:10a6:10:258::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.30; Fri, 8 Sep
 2023 10:16:58 +0000
Received: from VI1PR08MB4544.eurprd08.prod.outlook.com
 ([fe80::2912:dcec:8cc0:f0ba]) by VI1PR08MB4544.eurprd08.prod.outlook.com
 ([fe80::2912:dcec:8cc0:f0ba%7]) with mapi id 15.20.6768.029; Fri, 8 Sep 2023
 10:16:58 +0000
From: Gerald Loacker <gerald.loacker@wolfvision.net>
Date: Fri, 08 Sep 2023 12:16:45 +0200
Message-Id: <20230908-bugfix-i2c-rockchip-v1-0-f8235d811f6b@wolfvision.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAI30+mQC/x3N0QqDMAyF4VeRXC/QVbd1exXZRRujDZMqKQ5Bf
 PeFXf4HPs4BlVW4wqs5QPkrVZZicb00QDmWiVEGa/DOt+7pAqZtGmVH8YS60IeyrDiG8OjScO8
 c38BkipUxaSyUzZZtnm1clQ3+r/r3ef4Ako4UDnoAAAA=
To: barebox@lists.infradead.org
Cc: Gerald Loacker <gerald.loacker@wolfvision.net>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1694168217; l=1181;
 i=gerald.loacker@wolfvision.net; s=20230502; h=from:subject:message-id;
 bh=3ttJe1xT/ddRpl5mqAlZbhpVaTEOqrVsyJsgb18X2yY=;
 b=zAiMP/8dJYqYV1t4fyshznJiPFHVrIACwIlG2zIf2pgqN0yuWR5Daloqg0bz04agI5OHwT0FH
 OYvhLlo/v4bCmeOPzEzySYCYyoYCo/8fPC1IZ95UxN6dZNwTLOgSCUj
X-Developer-Key: i=gerald.loacker@wolfvision.net; a=ed25519;
 pk=UXhp+obGMUOjknszonesnb29P6a2Kk/K5eBuz62ggVE=
X-ClientProxiedBy: VI1PR0102CA0030.eurprd01.prod.exchangelabs.com
 (2603:10a6:802::43) To VI1PR08MB4544.eurprd08.prod.outlook.com
 (2603:10a6:803:100::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI1PR08MB4544:EE_|DB9PR08MB6332:EE_
X-MS-Office365-Filtering-Correlation-Id: 96323b3d-f0f8-4c14-ef5e-08dbb054bbeb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: r6ImXOQAaLd8fYKTuPG4vdOoqzn8WaOMZXF9Gt4IbBAnzdrF8eN3ysFKYaql9pRGh5ezMZS3V9rGT9cng60L7KJzuR+pVCXKQYP7FxY8AsQKcFDz6CLjhi98mCa1kgxQJWEMDrLPeX3SXerXrtBr6tAQzJtGQSIXx3nkba7LGxUzJUTzzTaQIW3EXI6KWJ/FZMvAeGeWU2JxSRemjXezI43JiH1VlhXa494bvZiAD5VbzHK/V8K1nxRN9aJzIlK8Jn0tHe6Mdwx3J56G1USw7hJZpHNhRZrkoo50RQzYUX4ns31v9qxbdPp2pahMbOPfNlLaZqZKa2MJK77ok5MWIdsgHFiq7olU6kxqBUSuW45UAr88ZTZtOlnjF5w2k3z0aMyAPvR0NoVX59QOY9ECGdBOhPCuT6eCBVHGrrPPJ6b1TYTT/iNWtu1UyIYAI4YKEigwRVCIi5CJFpYdKuJdZCJbs0kuCzShXYXuhcea4aCtb7+GhZlkdbZvevq3GYNxsflNtTt/Xxo9iC0Ry+9mdTLpQzpW9DsYI9g39GMZU962XNZSpqYm5lx1zCJCg/JUFkDRrwCshogLrtWMpfjKsjx2iH7bAIZ9CbFPw4LrT8J+IxKyzVAVsQ9Sq5dIppTy
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR08MB4544.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(366004)(396003)(376002)(136003)(39850400004)(451199024)(186009)(1800799009)(316002)(107886003)(2616005)(44832011)(5660300002)(6506007)(6486002)(478600001)(6666004)(66556008)(66476007)(6916009)(6512007)(52116002)(66946007)(26005)(4326008)(8936002)(83380400001)(41300700001)(8676002)(2906002)(36756003)(38350700002)(38100700002)(86362001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a2czMVVzdUc5YUNZMHFZWGtGNTNIOHdXR0htQW1NR0NqOHR5ZlArQ3dpaklo?=
 =?utf-8?B?N1FpeExaU2V0WlRRY3RMRksxTXRLOUhXN2Z4TlRDY3Bwa2lTVXlubDIybm5N?=
 =?utf-8?B?ZHJ3MFRiZ21TNy84dlUyN3o4cjBSS2FFbG5qZTJVQ1I2cVk4d1NNS0NlM2hO?=
 =?utf-8?B?U1lWUlFuRHJUMnZ2cUJuR2dwZ003NjBBeG5UcXVmLzNaU293YkFIcmtsVGZw?=
 =?utf-8?B?cGg0NXgvVTYrSHpUd3VMK3VJQlhMUExvZ0ZvUzZOU1pYdElqaXUrUUZoSC9t?=
 =?utf-8?B?RHM5UDVaOUZVWXpIQXA1Q2JrUEw3MGdQOStYUzV3RkJKRnRqREpTV3VNSDFj?=
 =?utf-8?B?TDNISG5hcVhJVUExWFNHVnlSOGNOSjdrZmdUakNjMXZqYXJ4Qy8yNGNaVDFP?=
 =?utf-8?B?dWFwS0dpQUxiUExIakRQcng4cGZLUWdQSTljdVM3ZS9yZG9pQmlkZTMreVVk?=
 =?utf-8?B?UEFJYjArZEF3dWpRS05VVnhrdDBhQ1RUY214TFhjOEF3Y1JSMEVsKzZaUk1K?=
 =?utf-8?B?c3Q1VlJqWERibFZJRTFjWHVOUzBySklzeDJqT2pJRW1obGw1UEUzbnNibVZ5?=
 =?utf-8?B?cU90eWNhckYvcDVyQi9qWWtMcFZncWdoVkZoZE1iWWpvUHZGWHZERjkvNXgz?=
 =?utf-8?B?Lythdzd2MENJeml1TGJhQ2xyNWFRL3RIUExnVEE5dVBlV3RCQjV2QUVhZTIy?=
 =?utf-8?B?TjlsdkdVSkdkdTZPNjlMR0hNOGc1N1N0SlZHZ2M5ZlBydWdZYS8yOUlFMTdP?=
 =?utf-8?B?SEw5K1JZd2hxa1VtZGFlQnJHZU9SMVhQSnY3cE1RSTlFUTU3UWFFTmpuYzlT?=
 =?utf-8?B?M3hKdm5pakFGMm1JclFiTmZ5REdxc0EwQ29ZM2M0eDVlWEFLbnBUcVkweU5C?=
 =?utf-8?B?WW1UWnBnNlBwMlBiNVBhSlEvL0pNRzFjb1dUYVRLSGpnOFF5ZEZIYVpmQ1cy?=
 =?utf-8?B?dm81TXpzcjhFcm1qNzBZWVhiUUEyRUNreFp1VlJVTFhVNTZ6WHlTdWJleVNL?=
 =?utf-8?B?Rzc0TjdvMVZPcWV6a3h1OEdFd1hOeDd5T21RYjR5dVJtWXpxV2FwV05sMm0z?=
 =?utf-8?B?c29XYVZJMHV1aGE3UWs2ZCtNMnVHSjg4SEcyMTI0VmdKQTlMclRNZDR1b3k5?=
 =?utf-8?B?VStTczQrTlFYKzEwdHllVXc1Ni9nZi93T3d5ZEdkZnFRV1BFNTBkaTJJZlFw?=
 =?utf-8?B?REcwZDV2bUdsL2VNcEJXTkpZVTJHSWY2Mml5UUp3Mk5aSW1LeHYzVFdvTGVo?=
 =?utf-8?B?Yzh1MDkzbWZUc2JMSGl3YnFwOElaTjcyWCtWdjBvdWhPbDN3azBtVEtvZlAw?=
 =?utf-8?B?QmZJbVVqVy9jSGVFRzFOa3JBRUNTNVY0K1c3cVEwcFV2cWhKOTlqYlREVGpS?=
 =?utf-8?B?cVRBaWNaNHB1aWpzejdCcERjSEpUTHJ0MGVEYnM2YWpNRnk0bkxwWjdJeVk4?=
 =?utf-8?B?d3gwUTFwelFIcXFwOHE1dWh5cGhKeHpydndOR2o5cmlzSTB5Rkw3T1phMVFF?=
 =?utf-8?B?dmh3TnJYVVI3QmRvV2ZzS1g4TG10OXkxdGV3UVRyOGFNdjZlY0tWc2dRNnB3?=
 =?utf-8?B?R1JpU3FCbFpJOG40Z29uWjZ1OGlKTUpHeDFBV3Z0aXFqc2NnR3c2R3dVbmtV?=
 =?utf-8?B?VGs4aytFR0NETml2ZVpsNkRvaW9WemNnTnRmUTNMVklYbGI4b2xIbjRCdCsv?=
 =?utf-8?B?QUd3aE1EbE5uNG1rczBMRmJjN2VveEpCdFBJMTVkd2xzdk9Vak5HeGpEWGpC?=
 =?utf-8?B?Smd5bW5sL0ZPa2lWa2tKVVdYMElvcVl3YWhLb0M5QkZkNExsYitvWDROQkJB?=
 =?utf-8?B?bkExazhHeUVPVzY4dy9hTUYzVEZBNHdiZjFuR0dHRk5VOXRUcjdlOHVybDFN?=
 =?utf-8?B?eDNNb3hBRFd5NFF6VUFiZ1dwc0ZUZUowTmI5Z3pTUDRGK3NUUWN4TU85eEVE?=
 =?utf-8?B?RWZJL2FMcHBMQkpGQ0V2aTU1ZHQyWEJBZUd3cFFmYmpYQW9FVVI5eU85a0pN?=
 =?utf-8?B?aXczQVZNakFxWThPbUMvRFZzanVra2hLaWdFRFFIdWtuSlFjQkZCb0J5V1pR?=
 =?utf-8?B?czBTNVpsUHpNNi92V3EzMjljbHVjcjc2VDQ5aUxmd2ZSeXpLMkRxNFpubTlU?=
 =?utf-8?B?dmZpdkpIRmExYWZQTExMUUlXRTlmMENjSTJUeVlsemhxQk1PcXgwYU5PbWE4?=
 =?utf-8?B?QXc9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 96323b3d-f0f8-4c14-ef5e-08dbb054bbeb
X-MS-Exchange-CrossTenant-AuthSource: VI1PR08MB4544.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2023 10:16:58.0490
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3/DKRiZVSk3p0xYpgRPgfrGBfu8ZJ+747OCH5Mm6iYuAzrmDWtR2XnJC6BKBvcVROXxbqD/N/rk8ZxEcBuKDltan0dJ0XtXemBWbsCyHsCk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB6332
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230908_031706_156436_89E7CB29 
X-CRM114-Status: UNSURE (   5.74  )
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
X-Spam-Status: No, score=-104.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/4] Fix rockchip I2C bus
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The rockchip I2C driver does not send a stop condition, this violates the
timing on the SCL line. iThe first patch fixes this and puts all related
functions on the same level.

Furthermore, we have seen nested calls to the rockchip_i2c_xfer function.
The second patch adds a check of pending interrupts and avoids
interrupting an ongoing transfer.

The last two patches propagate I2C errors from the KSZ9477 driver to the
DSA subsystem to react accordingly.

To: barebox@lists.infradead.org

Signed-off-by: Gerald Loacker <gerald.loacker@wolfvision.net>
---
Gerald Loacker (4):
      i2c: rockchip: fix i2c stop condition
      i2c: rockchip: ignore i2c transfers when another transfer is running
      net: ksz9477: propagate phy read error
      net: ksz9477: propagate phy write error

 drivers/i2c/busses/i2c-rockchip.c | 35 +++++++++++++++++++++--------------
 drivers/net/ksz9477.c             | 15 +++++++--------
 2 files changed, 28 insertions(+), 22 deletions(-)
---
base-commit: 4411b931680e4fb15d6f80e5543ef9f81aef092b
change-id: 20230908-bugfix-i2c-rockchip-f8874bd640e5

Best regards,
-- 
Gerald Loacker <gerald.loacker@wolfvision.net>



