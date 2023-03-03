Delivery-date: Fri, 03 Mar 2023 10:33:08 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1mk-007OAw-KF
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 10:33:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1mj-0005Mp-SY
	for lore@pengutronix.de; Fri, 03 Mar 2023 10:33:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DpZkyncaObtyee3zWF1kKhs54ZL0WHgYhtJxgNTHBqA=; b=sZwtvXLC0ocUwZRCZ/CFfuPmPd
	hirnrwWB9NSR531Zd8b4hQn2qmTTkVnYCzFoBUN/kJsO96oAaW2r3hlHKrLwU61TZlG6vrBdt8XVQ
	PoMmyjZc/JMKg37rzd/GF75omf3i09ujDnF6NGxv4fY8xyNIl9px6WTm1Zc1K/fLTQ4ccVa3/GjEj
	Xp6Q0PGms9euO9pGI5ipypAMDIzrylmSjBVivO1acfgkZZyD3ByzaI9BBYGkUascZZIdvZThim5rz
	ZGArTaO2SFfDxXRUNIR+c0jSjOVTLXNYHg0xUPac5zMuSB7ILyILZ6yMxLgJsPBBe52/u+aMk6KgU
	7OpzHdyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1lC-005lPz-NK; Fri, 03 Mar 2023 09:31:32 +0000
Received: from mx0b-001ec801.pphosted.com ([148.163.140.146])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1dN-005fcu-7h
	for barebox@lists.infradead.org; Fri, 03 Mar 2023 09:23:27 +0000
Received: from pps.filterd (m0163889.ppops.net [127.0.0.1])
	by mx0b-001ec801.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3230VG2m030241;
	Fri, 3 Mar 2023 04:23:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=from : to : subject :
 date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pphost;
 bh=DpZkyncaObtyee3zWF1kKhs54ZL0WHgYhtJxgNTHBqA=;
 b=nGK2Gf7vWmabO6FIRgyLkdfZ2PHAG83vut0byVSupygE8w2gfERk8LGAxFgFbvIdElKy
 /8S3MDPQ7b6AD4wKGj616j3u91Hq6VL5EDsH6BVetzSNISi4QaW8fO2PfAV29ezriCZQ
 gKzTv8EWWLmtj31zSN4K67RZb6v7Su5rfAXZi736/wHzPdQP2NbQsSi90zjujTrHY6zP
 c6RULVXlpuMbARFBrqh5Y4TisY8lB1AipD4cNVavZATLXwxc8gE1Dr6i4GuWWYeMRXyv
 TszB5Ae6lBFSnGzesYb/Wl7lycgROC4G1gWshAc1SCobWhjhwEVbtbJtduAWvibfa9S1 dA== 
Received: from nam04-bn8-obe.outbound.protection.outlook.com (mail-bn8nam04lp2040.outbound.protection.outlook.com [104.47.74.40])
	by mx0b-001ec801.pphosted.com (PPS) with ESMTPS id 3nyc3egyb9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 03 Mar 2023 04:23:19 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CHMyp+3IyLrRXcq5tKossPHa4fiYy1NYFZLODHr6PkHPgHMLG2MmevyCUu1LgWLtjC68GPnFTCR94BA8ByY3wFgl+FUR9auGutfLmkr+mVBP+SCKglcWrIWei5dGvqIoS4xzjVa7NIYbdaDTnvvyTlJyC+TYmD+x3zDbOcLGdkvFrTiICDlkssu1vrzBPuXCIMXmChSZfyI+pmUqv/n1hkQb6bN1HyVr3EGy9hSqGrq+jaavLOmu0Cdvgx6Qzzt1wAurh1J7vLwkqioXWVwNeWcCbrtsT9p8NAIHisCXsHzBAI93ytx7RI88oWPlHnPRi4oH7awS6QXyHR4AMH//KQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DpZkyncaObtyee3zWF1kKhs54ZL0WHgYhtJxgNTHBqA=;
 b=nNaBvFGxf1QYk7KsDSCG3+eC4KKfYr7soDKso2h1DrJ0Yod39D3fauqbquPuUf57A25PmYYeD1RJHzlKJI4IKv2OznNUriFF6b1ENGMQFhv5WfLlgj1m88ID38h2kGsmPRB3Rd6uRJ8mwZz6GywxYROmeqkW8O9NjRdM95O/9x/X0/TjpzgDQiUlSnXvWfKkW5G2hlMJXzsEC1t57UKuY2wMm8KaNICPdJUeIhjiUp3uXtIrCXBAhFClmMy483ULfE8ShgCTWgX/xlSDndYNVpfOXQIQL1QVwpGCFhExRKURfKLAOzq986qLWzin7dQnDR/zW29gr+N1ulFNahd8gg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DpZkyncaObtyee3zWF1kKhs54ZL0WHgYhtJxgNTHBqA=;
 b=nC/cRdw0dqSrJccAQw9KkERmme12Bpj10J5L3A4vNXXTWc7K9JgF607i9XwKo3px2HkddLGIQuzYfH886tbxQ1HWZGI1f9BVMcT4t2I4+Exj06nJdtIsxcuGGExoBfvv/IZSrJwpSRhLLL57l9W52bJQ95g/Aav0swKt44i0GGE=
Received: from BL0PR07MB5665.namprd07.prod.outlook.com (2603:10b6:208:80::28)
 by MN2PR07MB5903.namprd07.prod.outlook.com (2603:10b6:208:105::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.29; Fri, 3 Mar
 2023 09:23:13 +0000
Received: from BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::1960:8419:92d:b80e]) by BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::1960:8419:92d:b80e%7]) with mapi id 15.20.6156.019; Fri, 3 Mar 2023
 09:23:13 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
        Barebox List
	<barebox@lists.infradead.org>
Thread-Topic: Subject: [PATCH 1/3] ARM:lib32: add architected timer
Thread-Index: AdlMXelGirHc6OEFSQe5WNNMJQy/fgABxPGAAFMiyGA=
Date: Fri, 3 Mar 2023 09:23:13 +0000
Message-ID:  <BL0PR07MB56650B290C9598A267BFF8A3ECB39@BL0PR07MB5665.namprd07.prod.outlook.com>
References:  <BL0PR07MB56653CD55ED2742BBC7561CCECAD9@BL0PR07MB5665.namprd07.prod.outlook.com>
 <e4698412-74a8-e308-3021-23bf21ce2646@pengutronix.de>
In-Reply-To: <e4698412-74a8-e308-3021-23bf21ce2646@pengutronix.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR07MB5665:EE_|MN2PR07MB5903:EE_
x-ms-office365-filtering-correlation-id: 115670a1-9195-47ea-2104-08db1bc8e9c4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  rd545Sdyf3Ka42cTnSqm20wP5qt+TPsxNnScqVGTEci4XcnXianCyJyjqjPC56XYVlx/S8BWCZoEgQMPpOT6dXTwz8gBo2mvY6ugb4NCkemZjSDPoQCvVnh3npcv+20ev5PtG7pUD3SoN0f2iXIk//WyHSCUE5Q4HIi0FmzL4hOX2vEEAq5Mb9yHpO+YiJv6HMgT0h81rw6qLrd8wVKST0UQ4Eshivbda4HhR/EcFJ7uk/wsX9joltj+Gx/dvP3O6A0bDX+6dsXb+rMC6jmhfy2W09lOpo6jzjpE6DyvHnj7qyYwzU9kUhHEVHT+alsn3R2/vV/SBpMNT9Xo0Ys2Nt9JbP4JEk7tScEQ6K2LA/rR8s0pVrh2wfXVv9IVmORUBHRqXlkAkNHTDpCxshmRxZ4JV+u7l2sZgwCnZGtE9WD7RoBBVAUERMwrKko7ym59wfVZO/Ynj7cAvWobeJ4VGEkhjpq5unJIUV0Lo4xBOeCKPR9OkALY2qu1btFU3rvThjhW8omA7hwXHWtFvvyADnha+ohKJcF2DD+U/rukPzwzOUHSErg5KDLhFo+rNLk2ZY3VqNHSjyqAxcN4tbk0D6kf1x25gv62Isks1nNmxecVvu+CAGJMJ5sBy1bmeboO6tlnqxUZPTzImSsz9PdfmwDiYJTsqW5tHGCBYkDco0UJacT/rvwouLUNuHneZDurjaojThvJ1gWgLznTfrVcZw==
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR07MB5665.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(136003)(346002)(39860400002)(376002)(366004)(396003)(451199018)(110136005)(316002)(33656002)(9686003)(83380400001)(76116006)(71200400001)(66476007)(66946007)(6506007)(26005)(7696005)(53546011)(8936002)(52536014)(186003)(86362001)(38070700005)(66556008)(2906002)(5660300002)(41300700001)(38100700002)(64756008)(8676002)(478600001)(66446008)(55016003)(122000001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?utf-8?B?NDBsak1naXpBbkUyQWtLRURZN2dDOXFML0xRM09rL2VzVGFnd0hzUE16R0Rh?=
 =?utf-8?B?b2tZQXZDMDI3RUo0bjBPd1lTR0dKNm1wWndaUGpMSWZ2bk4wTzBFMlJqUnF4?=
 =?utf-8?B?R3Exdm9IaDJHS00wWDdHNG9tMzRXU2QrckpXT0J5a04xMDhOSVRvSGlKcDBM?=
 =?utf-8?B?R1BBckFvSTU0UHpDU3RFWHh5Z2doUDBBRDdjWi80ZlBYQnJLQlFnZ2hKYTFN?=
 =?utf-8?B?U01mWVFQSlFJdkp5MHUzTkhTc2hLQ1h3UVdwWlU3Vm5ySExDNHIvQlY1eU9I?=
 =?utf-8?B?VGIyQmZIOU5WcndCbWJFMVNJV1VUeXMyaW44OW9aeXlFdnJjTmxLTDUxQ3N5?=
 =?utf-8?B?U0VNWkJza3FBRHdrQ0ttUnNKeEMzRXBOQlJsOGtuTVF4ZXpoSHppbkZYMWtL?=
 =?utf-8?B?WWIzTS9kSGRpSzFiNURjYkdVNFlmbGlsd3Z6N0xHUDZkc3VHSC9jUlJiUlNB?=
 =?utf-8?B?QlFEQ0xud3dMaG5tZnoya3E1ekQ3Z09JS0kxd25LaXZPcERhdTRBSHFWZ0Ev?=
 =?utf-8?B?bmdwb0NJVmdVeVdSb3RrQ2QrbGhKM0RCZkhwaDNNYVJGdHF3UEtGZExaMDBW?=
 =?utf-8?B?dXM5ME9CYzFaY0l1VExwdGMyY3RTZUhpd3JnanhndXVtYVdPZllqRXRvSWJ4?=
 =?utf-8?B?Y1JkUmVrUEdkSGZINnZhYUhSaFlXRXNiVFJoUE9tMEVsNTJ3MDlrcXpJdE9L?=
 =?utf-8?B?VzNVYktmQjF4bWhVbWRyUWQ5U1cvQUNIcUcydjB2cThKbVRVcVpVQnFVMkd0?=
 =?utf-8?B?ZFQwUGpyOEJkbmwwZHVxbkZBZFIzQXdyYXg3eHVHeGl5Y1Noc2x1N25zNjBa?=
 =?utf-8?B?bnBwVjZxUDB3a01icEFUVm93M0VpK1ZiY0dvdVV6K2JmR0FPNHNXbWdoTHJz?=
 =?utf-8?B?THEwMVJMVmNqVkZGYUU3OURoN2VDbFU4ZDhFTVlvV2JSTVRLUDJsTFVWQndl?=
 =?utf-8?B?Q09XSEpYbVFRMnQ2VDUxVVNINy8yUFhVWnFTVEhFemhYNGY4ZS9GTzBFUWZW?=
 =?utf-8?B?WDRzcjQzQml4YUlXdmdDZUlRdFFvNTlZUlA3YWthMWJrckRLT3hDMmRQb1ps?=
 =?utf-8?B?bnZvYUs0Z0VVSTlHVXhJTlpjeHNMd0hvM2pLTnZYMUJ1NTlzVjloV3RaenRK?=
 =?utf-8?B?ejhQV0xSMkYxaU10T3U4ZHB2aHUrb3lKdWxZMC9hR2ZZaVhwZmpVcTB6QXh2?=
 =?utf-8?B?U1puczJya3c5SEdOVUQyamlRakxMZ3hPRjlXbGtxT2drU0FNR1JMY29ZUDhj?=
 =?utf-8?B?Q1drZXc2ZE9CeFY2dU54RmNnL3ZjNm9aSmNaRXFlV0ZYbmMzVlBtQWF2Z0s4?=
 =?utf-8?B?a2x3ZWpYMFBobUlON1dNM3hVM2dzMm1MSUlBMjlSREs2QU9TRmlDRTFpaWtn?=
 =?utf-8?B?WjJBQnpJNEtxSXBHWngwMUtLUVhEWURQc29HS21sREtCQll2STRiYm9VMTMz?=
 =?utf-8?B?OVc1Z2xMNlk4VkxKQm1NY3FpQ2NIRThTYjAwTXdKb1pMOGdQMnp4bXBadWhF?=
 =?utf-8?B?WWlndDNpd1VsQWg1ME80WnhhZzVlRndieFpWdzliU2ExSXdjM05aLzhlNXNM?=
 =?utf-8?B?MFJiZXRVcys3RXpkRmQ3ZUE4cS9Yci95ZnNhMWhaMW9Jbk1ObytEcTdybEx0?=
 =?utf-8?B?TnRYYUs0QkxmSHh1QVRuRVUweGUzb2lMUmdremVOT1c0RmV4TkJpd2QwTTlz?=
 =?utf-8?B?TFVCaVF3bzRWUDA4cjNWNGt1MWNLbXA4bnVDMXFDV2NLaVZHQzF2M1VIUjZF?=
 =?utf-8?B?dHd5bkZROEZzSTlkckFzbXpOVjIzWDJYT0VOWmpwVlBHdGFaaDNqK0JSRlVX?=
 =?utf-8?B?Yyt3eldTR2dVWnBJdWZ6QjROZzQ2T1JqYkVsdTJWTVRHTEcwYzN6MGFIVFFX?=
 =?utf-8?B?dTQ1Q1JYZ1kxc1NUVmxhMUlYd1JyeDYzR1BSZHJIL1lzeUFKSU1POFZ4Z1R4?=
 =?utf-8?B?QmFIQnRsWEo2YWtOTlQ3NER5cGVKcVVmUHh1Q2l0VWRjZFpCajdKNXZPNHZn?=
 =?utf-8?B?UjUxS296OXhqWCtvbldHNFp3YXhhWWROcHllNUR2TGpaOHVmY3VLbGdTTk13?=
 =?utf-8?B?TGVLT1RKZTNpRDJMbnpsMFJ3bk5PM1o0RksvaXc3ODV5a0RQbTJYVTF5enlm?=
 =?utf-8?B?cnFJK0V1UDVBRlFaM3VoTDJxaDZRS1FrYUtJcUsrODNxOHhWYzNTVGEzVEgy?=
 =?utf-8?B?V0E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR07MB5665.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 115670a1-9195-47ea-2104-08db1bc8e9c4
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2023 09:23:13.2098
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YaWOqxXRg/rv00c7LPJu6QMVAdTXn8dakP6WlQ0SEFFnaeJxhaZ7nadClRV+bJGFf+B6z+XgDrn9Mvk7rvkhaHREuTK5DBGz3d9hWd35++Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR07MB5903
X-Proofpoint-GUID: 5tPdv7PskS79EZ8aRx4vqqPxlFEtIq8c
X-Proofpoint-ORIG-GUID: 5tPdv7PskS79EZ8aRx4vqqPxlFEtIq8c
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-03_01,2023-03-02_02,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 phishscore=0
 clxscore=1015 suspectscore=0 priorityscore=1501 malwarescore=0
 impostorscore=0 adultscore=0 mlxscore=0 bulkscore=0 mlxlogscore=833
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2303030083
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_012326_073110_BBA9424C 
X-CRM114-Status: GOOD (  22.58  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: RE: Subject: [PATCH 1/3] ARM:lib32: add architected timer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

PiBPbiAwMS4wMy4yMyAxNzo1OSwgUmVuYXVkIEJhcmJpZXIgd3JvdGU6DQo+ID4gU3ViamVjdDog
W1BBVENIIDEvM10gQVJNOmxpYjMyOiBhZGQgYXJjaGl0ZWN0ZWQgdGltZXINCj4gPg0KPiA+IElu
IHByZXBhcmF0aW9uIGZvciB0aGUgaW50cm9kdWN0aW9uIG9mIHRoZSBMUzEwMjFBIHN1cHBvcnQs
IGFkZCBhDQo+ID4gc3BlY2lmaWMgdGltZXIgc3VwcG9ydCBiYXNlZCBvbiB0aGUgTFMxMDQ2QSBz
dXBwb3J0IHNvIHRoYXQgZGVsYXlzIGNhbg0KPiA+IGJlIHVzZWQgaW4gdGhlIFBCTC4NCj4gPg0K
PiA+IFNpZ25lZC1vZmYtYnk6IFJlbmF1ZCBCYXJiaWVyIDxyZW5hdWQuYmFyYmllckBhbWV0ZWsu
Y29tPg0KPiA+IC0tLQ0KPiA+ICBhcmNoL2FybS9saWIzMi9NYWtlZmlsZSB8ICAxICsNCj4gPiAg
YXJjaC9hcm0vbGliMzIvcGJsLmMgICAgfCAxNyArKysrKysrKysrKysrKysrKw0KPiA+ICBpbmNs
dWRlL2Nsb2NrLmggICAgICAgICB8ICAyICsrDQo+ID4gIDMgZmlsZXMgY2hhbmdlZCwgMjAgaW5z
ZXJ0aW9ucygrKQ0KPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm0vbGliMzIvcGJsLmMN
Cj4gPg0KPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9saWIzMi9NYWtlZmlsZSBiL2FyY2gvYXJt
L2xpYjMyL01ha2VmaWxlIGluZGV4DQo+ID4gODI1MDdmZmZjMC4uMWJlOGQ3MGM0NSAxMDA2NDQN
Cj4gPiAtLS0gYS9hcmNoL2FybS9saWIzMi9NYWtlZmlsZQ0KPiA+ICsrKyBiL2FyY2gvYXJtL2xp
YjMyL01ha2VmaWxlDQo+ID4gQEAgLTMxLDYgKzMxLDcgQEAgZXh0cmEteSArPSBiYXJlYm94Lmxk
cw0KPiA+ICBwYmwteSAgICAgICAgKz0gbGliMWZ1bmNzLm8NCj4gPiAgcGJsLXkgICAgICAgICs9
IGFzaGxkaTMubw0KPiA+ICBwYmwteSAgICAgICAgKz0gZGl2MC5vDQo+ID4gK3BibC15ICAgICAg
ICArPSBwYmwubw0KPiANCj4gSSB0aGluayB3ZSBuZWVkIGEgQ0ZMQUdTX3BibC5vIDo9IC1tYXJj
aD1hcm12Ny1hIGhlcmUsIG90aGVyd2lzZSB0aGlzIHdvdWxkDQo+IGJyZWFrIGJ1aWxkcyBvZiBu
b24tQVJNdjcgcGxhdGZvcm1zLg0KPiANCj4gU2VlIGFybV9hcmNoaXRlY3RlZF90aW1lci5vIGlu
IGRyaXZlcnMvY2xvY2tzb3VyY2UuIEFsc28sIHBlcmhhcHMgeW91IHNob3VsZA0KPiByZW5hbWUg
dGhlIGZpbGUgdG8gYXJtX2FyY2hpdGVjdGVkX3RpbWVyLmMgYXMgd2VsbD8NCj4gDQo+IA0KDQpX
b3VsZCBzb21ldGhpbmcgbGlrZSBiZWxvdyBtYWtlcyBzZW5zZSBpbiBhcmNoL2FybS9saWIzMi9N
YWtlZmlsZToNCg0KcGJsLSQoQ09ORklHX0NMT0NLU09VUkNFX0FSTV9BUkNISVRFQ1RFRF9USU1F
UikgKz0gYXJtX2FyY2hpdGVjdGVkX3RpbWVyLm8NCmlmZXEgKCQoQ09ORklHX0NQVV8zMnY3KSx5
KQ0KQ0ZMQUdTX2FybV9hcmNoaXRlY3RlZF90aW1lci5vIDo9IC1tYXJjaD1hcm12Ny1hDQplbmRp
Zg0K


