Delivery-date: Thu, 02 Mar 2023 11:59:16 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXgeY-006Tzm-Ru
	for lore@lore.pengutronix.de; Thu, 02 Mar 2023 11:59:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXgeY-0005y8-C5
	for lore@pengutronix.de; Thu, 02 Mar 2023 11:59:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=S2EA0kSIKrlOnaRAqaqvBQ9Ji+BcjU96WHGlT/k7PVc=; b=3soYXRvkwwZrH0vFl6lms0StLE
	8fzW1Ow79b+JduzjbIol50FEAifOZAGX6x3iFYpwPZ5oWKN9J7/DOjMDNxxEYJwHje5u/5YaUuHOx
	4fmeG/LqTrR/VbC67NyVvVV9U8bTR5LVKMFEduOSt8pf6Fva6MS4WzSEsjnw3gwnFsvvgrHShiNaH
	ZC0Zl/Jeyn8a3bhHTKLfbHKlrUY+uTdmijj6/HhjENSYFt+MOPbZ+NhMMUBif/onh9Ed5U8HfqMes
	eiFPVfM1K+JygbJ/Iw4RYzV9i6PWAiOBeji+GBuiD/40ZaM3Ay6pJCZ+hSw46c8Gx2j/7Yv+7IH65
	g4fotyXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXgdA-001mEG-2f; Thu, 02 Mar 2023 10:57:48 +0000
Received: from mx0b-001ec801.pphosted.com ([148.163.140.146])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXgd4-001mCs-HX
	for barebox@lists.infradead.org; Thu, 02 Mar 2023 10:57:44 +0000
Received: from pps.filterd (m0163891.ppops.net [127.0.0.1])
	by mx0b-001ec801.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3224jOgP017245;
	Thu, 2 Mar 2023 05:57:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=from : to : subject :
 date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pphost;
 bh=S2EA0kSIKrlOnaRAqaqvBQ9Ji+BcjU96WHGlT/k7PVc=;
 b=t9/FH9w12TZogL38YbkbIdgThmcbhX+2swDUqrhJGstEdrU7GcdWYToGQHrdjjPOZQkL
 Fi5Mtg8sGZYXfgUzJFRSqVF0KPWU90yJxYIVpRMNEefd46YOhWJ+bcxpUnt/nExciIqP
 9kcJ/+LAptcx9gpdQvhhOmBFPooxUmZ2yroShcryCBoq5Nhap1TwjFrHmJUWL4VhibB/
 9cSr5D+Gfgi/853k+IfWmQmwdl7VaIy3sGEJalpxwZcwSLtqVaUZxRumBV+BA8KUn76m
 pLE1znorZXs9fwMjWyI03Quy/uyiCUbLxAYJ+5Qa86PXNPTO4vziEIY6Yf7ta9UlG9U/ PQ== 
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2048.outbound.protection.outlook.com [104.47.66.48])
	by mx0b-001ec801.pphosted.com (PPS) with ESMTPS id 3p0tmbhtq3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 02 Mar 2023 05:57:36 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FMHEcU3aUXY4AAAXhkvgruthh4u+10uIjQplhAakoY8l5S9jJoVkNK4JNsMbJ7qayY3bpnVPZxG7qoi82YojWQpV6x+GAWDinQcWK2xR82LqODUXOKklW8q3S3X9p/ltzQy+URAilOHrP6vVzkBfDKS6ZzxGRF+buAtqt0dmPJ9adVOT833h9obs3I/svsLsMiNoG22EkKwWqPfJlUPRyIiVKIEzQI6/zHhCJvkDmgQ9EUC/ramCCBL59Cv8OhaaxwLYTx56kGeHXrl1O0SlLwMm98xG8Ico5wcI4a3X/KufijPw96fmcmEn2xaW0zgz19x43z3tNiqeVVj0DHTTog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S2EA0kSIKrlOnaRAqaqvBQ9Ji+BcjU96WHGlT/k7PVc=;
 b=bldIQNrHbKO0cbscn2OyYY2Nc1HbVsccArSiTr7uVxtCHIFELBgdDGXxXTKhA7KiDnPXxx/VJvVHTMFgk1r03NJAaRCgx/aJRyaP6Lo4Z4Gp24CZuDHORT9q99Ia8yAGujKonaTFam5mfrmpK6NBHsuQFOaGSHr60SmQcl+c+SWuYfaVpbGD66cMZuSI/b2dGQkQThQS0EISwTQc++dNtOB9HGcHy+8CHJR/9veLfiZVdcRVza1b4NKi+x47zy4ZeYMV47GCLcu1pEQElYoaipi8TZnJ3Rte9q2uuEl0VSPyQa3hD49Wut+5deSuq6GKF8A/7dqSFPW2toKinqUwjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S2EA0kSIKrlOnaRAqaqvBQ9Ji+BcjU96WHGlT/k7PVc=;
 b=Wlbup5tt7J4Zl+hJz5e3ozfD9z8+pVBJnF+uyf8/Xn1B+TbS6ae0cWLabYf/aIBHgZD5HCM/88ZPo389c6//7HPmBuZGAK4Fa4dOCyhzwIuJGEXYLuIzgQ8Uc0DkfQpebyUzBVdrtTRVxT0Zim3bQZbEEhewva1lTNPL5qCoh8A=
Received: from BL0PR07MB5665.namprd07.prod.outlook.com (2603:10b6:208:80::28)
 by BYAPR07MB5413.namprd07.prod.outlook.com (2603:10b6:a03:5a::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.18; Thu, 2 Mar
 2023 10:57:28 +0000
Received: from BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::1960:8419:92d:b80e]) by BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::1960:8419:92d:b80e%7]) with mapi id 15.20.6156.019; Thu, 2 Mar 2023
 10:57:28 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
        Barebox List
	<barebox@lists.infradead.org>
Thread-Topic: Subject: [PATCH 1/3] ARM:lib32: add architected timer
Thread-Index: AdlMXelGirHc6OEFSQe5WNNMJQy/fgABxPGAACO4VXA=
Date: Thu, 2 Mar 2023 10:57:28 +0000
Message-ID:  <BL0PR07MB56654D1E8093A817408A74D2ECB29@BL0PR07MB5665.namprd07.prod.outlook.com>
References:  <BL0PR07MB56653CD55ED2742BBC7561CCECAD9@BL0PR07MB5665.namprd07.prod.outlook.com>
 <e4698412-74a8-e308-3021-23bf21ce2646@pengutronix.de>
In-Reply-To: <e4698412-74a8-e308-3021-23bf21ce2646@pengutronix.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR07MB5665:EE_|BYAPR07MB5413:EE_
x-ms-office365-filtering-correlation-id: aff484df-0461-47c1-1dd3-08db1b0cea2c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  1xtjfvstF/1PzBrJOWlBXzzq30WxKerCdhqWCmazgPjNX/DJ6b6eLLCI0K9HWNrjQnyKmrKNwlnITxVhhfTUDdyvri2dwZGLp9YsvJB2XJWw2yKj1cESTQLPZBQmgNHxV55EARvdKh5fypY68A2RuU6Fi5AuT5OwljvzsjzVPo/UF7Gy5f7bWsZDf40v38q8b+c94Dwt6m2fJ3tT00MMCspB1fJZsvqroAC0AbznydgZUN8J1VOzTWlzTPL9GyZMxunU4SprWFVhBck6Qnt8fQTwdvodjLtMK0Ukq4B9+TCSBz/eI0xs58x0IhU9IVwmInwUYq132E/YtsjFxbp3iIRwT3x4MFBVU6OEfJmsQF4H7IcZfwbFyJpUqhASvLaCGSM09YIWnB1hsm5Lo71YCe5bJp5ohc5LS0wNANK4WvsPUcEMgEgvvghvzZ5M+YZ0SEud1DQhZFmJa+cyj6bbFw1zhYlOit9TNC7yFcnwPyTs9ApD3fA46XxaeMIzzRDWr25TqlKOXNoMNwNcTZm4v4MclSOTvxH1TEnwfeo9VcRDzWOB7wnXMX3xiFGjG2hM3y4nqkHxlnWx6uzFG0A47/WByeagjWA5MZ57NsKxkQZUoSfZVvAedvsFC4xQQFew3wQvsnQU5/k1eR1x86kp1Fd/DVbj/4QGc0Z3WB05+0L44eeHwzS77MzfY87aJWKzPA8DlBKZC5ABkz9Qk+vBKA==
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR07MB5665.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(136003)(346002)(396003)(376002)(39860400002)(366004)(451199018)(76116006)(8676002)(38100700002)(122000001)(8936002)(66556008)(478600001)(5660300002)(66946007)(66476007)(4744005)(71200400001)(2906002)(55016003)(66446008)(41300700001)(38070700005)(7696005)(86362001)(33656002)(83380400001)(6506007)(64756008)(110136005)(316002)(52536014)(9686003)(186003)(26005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?utf-8?B?eTBNZXZ6SXNtdFBKNWgyeWdhNXNqc3ROaTdDMVd2ZUFFOWt6bnlSMWwvcnhN?=
 =?utf-8?B?eXZXSkNGV0NLbkxPM1JaQlpyTTZpTGNlVlBwSUw5d05keW1jSDdwSWRtVmlw?=
 =?utf-8?B?YWc1U3M0cGVQQ1lhSE82S0hCcXU3L29aWlhJUHBVNjhtQS9LZ3FlK2VDZmth?=
 =?utf-8?B?TDVXeGJVMzIzNHFOUjVFVEtaK2s2d3ZCZmowb1F3aGZSL2xGVkV6NkdvSXRG?=
 =?utf-8?B?aXVZYVZ3WnlyN21DZE1vY3ZKbGNJaGxYazA1S1l4Yktac09rZ0RiVkhHOVd0?=
 =?utf-8?B?TUZLZitVYlNzRTI2RDdEK2U1WjVQbU1Yem9ISlVBVWNsTGdKbkRnUnF2aDdh?=
 =?utf-8?B?bllrL0tzQytISDVPcUdsQ3FrazAwUjg3T3k2bDFNLzdKKzBUdlNmWnFHeTVt?=
 =?utf-8?B?RVRnT1NUTVNQZlM2OGlsd21YeTJWMEhzRlNNdTgvd1RJYTVUNzJENHpkU2xs?=
 =?utf-8?B?WCtzTE5VYkFrUnZPKzJHSDZQY1d0TDVqblVSMkFSaDRUTGpDQlpGRXVCMldj?=
 =?utf-8?B?RE9XVldvdkhzWTNUOGNLajhhT1hCNUtydWJGdmM2MGpSQ0pzMXlDeWVvVUxU?=
 =?utf-8?B?SFFCa3dpaktFK3hLb2hSSm1pMVpsZkhXeGtjYWFidDZtK1BoMUk1M0R0dmFF?=
 =?utf-8?B?aVFTU3p4V0lnUlF6SlFYdW9URTREYXozY1RnV0E3eGltOFZCdVBkd1duU2Nh?=
 =?utf-8?B?QnhSb1R2NlM1V2ovSEQ2MjFiem1vampnTGwxeEpKRy9XekQvdi9ML0dZVnAv?=
 =?utf-8?B?RlZadW9ScUhiUzhPZGNYYUJWVis3MDkrQ1RlR2daVEZVeDZOUmhLNmNkTmcy?=
 =?utf-8?B?RGpRWWErNUZURFRPaS9GeTNpSVVYWVhtZXFOWTRnbzVkcG51WUt5cTVpZzZQ?=
 =?utf-8?B?SXRrZkt6VlBLWnlnR3grMlRrNkxNdTF6dUhiWWlDenNCUm9BNzU5MFVGMU12?=
 =?utf-8?B?Y21rY3QzejE4WFo5LzVOVkxrd3ZmZGlBdUsxeXBMM0xUNStsOC9LQnRFaFZK?=
 =?utf-8?B?L2NPU053bzVMMDFneEtrdlRJOXI4SEtJN2JucTgwb0FNQjVEeTN1a1lIRGht?=
 =?utf-8?B?R2srNkFyUWs1THh4ejFNTUNCSE1RMTBxMVoyR0p2MzRlQTErUWNqV2ZvVzNk?=
 =?utf-8?B?bEZMOTVHWmhaY24rMXhDazJSVEVsbUxLQS9HMEZwREtIZEZZK09WQ1ZIWTVt?=
 =?utf-8?B?WGJ2Z0kzRTJ4K1JzbjFINjFUSmw1Ukt3RjFOazVrS3VmaExNOEdxV3UrUjhK?=
 =?utf-8?B?QkJNMzRDUGY2NmVSWkNiNUZCbWhBWGk5TFZtanZjQWxzaFJvblVVWjdjZmVB?=
 =?utf-8?B?dnhRYkdNZE1zWHdhNWZUNFJsbTNiUFpPUzlLY2ZUanluL0NDb05TVzVSQUF5?=
 =?utf-8?B?S0Nib09BQ29PRjJPRDVSdHhVdytXcXphRndTemNNNit4eUhQTTdXSTRmR2kr?=
 =?utf-8?B?RldqT0hlRjBLUzByNncvUFpyZy9UekVOVnF6cTlBa09kZVZ3a21jYnFvNEw3?=
 =?utf-8?B?b3dPNWFKQllHUzZjc3hGRXNGNE0yNTFWOE50Mml4WG1ycXF0WG5rK2tkbWRq?=
 =?utf-8?B?VnQwdGJ0VzhSajY1ZDhNL3doM2pVdllOWlhRa3MweGR2VENkcmVDOE5sc1h1?=
 =?utf-8?B?cmlzWXJFTHowWExjT1RFOU9XTGVEVTJtYy9ORk5NdjAwYUZkbm5aY3lhdU1k?=
 =?utf-8?B?TlR5MzkzZytWaFBCWlRSUEpOTzgxR3R3bWgyN3B5YitTMWpOL3BmR0UvQ201?=
 =?utf-8?B?Q3Q5cWFqa1ZCdUQrV3JoSHUrUEFlZHBmNERhckJlblRnRmNxVnpLUEpqM0Ja?=
 =?utf-8?B?TWRySFhZaWJ3WWhXaVVXTHZuSlQrWEFGNHFhaGZ5UklPUEoybkdJUHZndFRH?=
 =?utf-8?B?NTJEc3oxUmRNL29xZEN4RkdmUEdNVWQyOVFyNElIOCs1WFFyRkw4Ri95a1lU?=
 =?utf-8?B?U2hGb01DTnJPK2NBUDRPOVg3RDU2bDBEZzJjRjlTdFR6d1hvL1l0R0V6cDVw?=
 =?utf-8?B?TFN2OGtYK2FwdU5CaEtDWjAwdEZEK1lOZVZ5TGpNblA3UU1qbXZJZDdsQmxt?=
 =?utf-8?B?RDJwUnNDTnlxTVd4VkFPd1QzdnBlVkpTVmdZMzk2N0hKN1JJQ3BTNzlRWDhC?=
 =?utf-8?B?WTdpc040S29QZjhZMXRrVWtYL1lXZ3ZEQUoyQzdHOStXMlZFaVZ4SEFRdFhY?=
 =?utf-8?B?UkE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR07MB5665.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aff484df-0461-47c1-1dd3-08db1b0cea2c
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2023 10:57:28.5061
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rrJeuemQah6cxqJlJyJWLnHX9DhXaKKIZ5Z5exFIvv6fNEZzhUS56m03QoEYZYLhIy40dWg7Fnodz4pZmIrReV85p0WfqDp/IsT9g/xkqd8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR07MB5413
X-Proofpoint-ORIG-GUID: YEi9-Jbkn4Fhw5qoJx82ClDU9giJbrT0
X-Proofpoint-GUID: YEi9-Jbkn4Fhw5qoJx82ClDU9giJbrT0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-02_06,2023-03-02_02,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 clxscore=1015
 mlxscore=0 adultscore=0 impostorscore=0 malwarescore=0 suspectscore=0
 bulkscore=0 mlxlogscore=688 priorityscore=1501 lowpriorityscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2303020095
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230302_025743_286563_0050C35B 
X-CRM114-Status: GOOD (  17.95  )
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
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: RE: Subject: [PATCH 1/3] ARM:lib32: add architected timer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

DQoNCj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vbGliMzIvTWFrZWZpbGUgYi9hcmNoL2FybS9s
aWIzMi9NYWtlZmlsZSBpbmRleA0KPiA+IDgyNTA3ZmZmYzAuLjFiZThkNzBjNDUgMTAwNjQ0DQo+
ID4gLS0tIGEvYXJjaC9hcm0vbGliMzIvTWFrZWZpbGUNCj4gPiArKysgYi9hcmNoL2FybS9saWIz
Mi9NYWtlZmlsZQ0KPiA+IEBAIC0zMSw2ICszMSw3IEBAIGV4dHJhLXkgKz0gYmFyZWJveC5sZHMN
Cj4gPiAgcGJsLXkgICAgICAgICs9IGxpYjFmdW5jcy5vDQo+ID4gIHBibC15ICAgICAgICArPSBh
c2hsZGkzLm8NCj4gPiAgcGJsLXkgICAgICAgICs9IGRpdjAubw0KPiA+ICtwYmwteSAgICAgICAg
Kz0gcGJsLm8NCj4gDQo+IEkgdGhpbmsgd2UgbmVlZCBhIENGTEFHU19wYmwubyA6PSAtbWFyY2g9
YXJtdjctYSBoZXJlLCBvdGhlcndpc2UgdGhpcyB3b3VsZA0KPiBicmVhayBidWlsZHMgb2Ygbm9u
LUFSTXY3IHBsYXRmb3Jtcy4NCj4gDQo+IFNlZSBhcm1fYXJjaGl0ZWN0ZWRfdGltZXIubyBpbiBk
cml2ZXJzL2Nsb2Nrc291cmNlLiBBbHNvLCBwZXJoYXBzIHlvdSBzaG91bGQNCj4gcmVuYW1lIHRo
ZSBmaWxlIHRvIGFybV9hcmNoaXRlY3RlZF90aW1lci5jIGFzIHdlbGw/DQo+IA0KPiANCklzIHRo
ZXJlIGEgbGlzdCBvZiBib2FyZHMgSSBjYW4gYnVpbGQgYmFyZWJveCBhZ2FpbnN0IHRvIGNvdmVy
IHRoaXMgY2FzZT8NCg0K


