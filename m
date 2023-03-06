Delivery-date: Mon, 06 Mar 2023 14:15:34 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pZAgb-00BA1l-T8
	for lore@lore.pengutronix.de; Mon, 06 Mar 2023 14:15:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pZAgb-0004O5-CL
	for lore@pengutronix.de; Mon, 06 Mar 2023 14:15:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=C66hvlbDjv7mE9BvIY/IMqJbcitzh/rgwdj7l5nQSAI=; b=Ptd1Rtb72qzwjIGKkgIXJ62wAA
	SFrkmF0NAYmUahRmIEdxg7U9LmgF8uam7Ih5CdvyY1jWF0W22a6iedu+WaeGgAYe05adG79fyCVru
	1RZllkaqcsa/PuDBHN2hoCOrknlRbaUjeLebrj4lManvkwL7zKRgXSPbVK4wqitYxS1fwOt/LuCWO
	WK+1meWgmsTMUWd1A73MBwt/dKq2xVOeExnWT36iOYQJ/Hw4MWUKnrghk0NrsJSYNatiRuJW/55Q0
	VALJyvmAqXwAk+k6JoRubwb9tWxvDujbYk7eFeajbNbig8dlciCaYE8SB9Zwc1uPDk6iq3mQpw5zC
	qBc58KAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZAec-00Cph3-4j; Mon, 06 Mar 2023 13:13:26 +0000
Received: from mx0b-001ec801.pphosted.com ([148.163.140.146])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZAeT-00Cpdn-UX
	for barebox@lists.infradead.org; Mon, 06 Mar 2023 13:13:22 +0000
Received: from pps.filterd (m0163891.ppops.net [127.0.0.1])
	by mx0b-001ec801.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3268qDLX029694;
	Mon, 6 Mar 2023 08:13:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=from : to : subject :
 date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pphost;
 bh=C66hvlbDjv7mE9BvIY/IMqJbcitzh/rgwdj7l5nQSAI=;
 b=DfxbVcBvAkpvRW5j7vhiAJkz2jSG89LPvqlgl1k2IYo4aKDauKwT8ZXEUuqux9+dJaD+
 jfyU96wQfkf+CcqXuEpGUUWD+CG7wUKlMDx2Xm+LbHYoHA10Dj55pccl5qUu0+SVBP3p
 3J1CrAYSIzHYIzkCAV4iXH90ZYqXGNs1T43owshkabuw67ezdost8wwERt1bx2fpC6nn
 8qWbxzJsS97qxUulrZ7E0KymSE3sgBt29dVmHx66YbJBVqZJSfBjRDKg0YKV6jUHOu5G
 1PYc+Ce3d5ePRUVbRwyyNuWQ7ulv4ry/k8Jj2zwgxWs34Jm7yKZP0ioj3wIC6IcRLpvZ 0Q== 
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2045.outbound.protection.outlook.com [104.47.66.45])
	by mx0b-001ec801.pphosted.com (PPS) with ESMTPS id 3p41r3mfn3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 06 Mar 2023 08:13:10 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BGqYEAjC0R+0X+wXl9LTls9TAQpQAT97e9yWeDudfRBmqSyv/gVlom2tA0eVdmN+Iud6CUBkfVjQuByaqj87CwoftTFsk9WaxWlzfGrwYwygsnirND3lIfDp38+xOeoNDT9IAHwoAtLHXHGqvHl0BJEkf9iJFqrDWW7vHs+Gm0FxAmFidIWa5udboOvDIoxkI92nQOWYUHbWMBHmqVIPmUYytMj34Z62LPSJQEd5jnd87odoLqU5uPeiM9J38Xt6GWuB6K4LOorlNdGpFByQ1bVgenou6UyVw73CLir0XJOmylr86Ba84Udp8z3gJuDBIZ3kELuP0KzJoToJzqyP2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C66hvlbDjv7mE9BvIY/IMqJbcitzh/rgwdj7l5nQSAI=;
 b=XDFc/ly54tESa5sJxH9isM1hD86UpwoZmlx5ubbQR17n7EhErspdc4YkI0VFoKi/TlUlheaQlac09MUEis8BYCsEPmfuMaxt97R7DTT6eLgTl4rytttmKSAQ8P2CfVhFml4DiBmKw+AIzZdS8kMgR+HSLyXLgRvTHwRtMyxOGVRCisA6XTJFgxf5aZZaCeU7CERReofS2Vapg4ctrqDdCobaf7zECC09xkIKsdOlvXQWLpf14MlJ7iMJP7nZhB7Y1TEDrhZcwUrP6rpwc3Fs5s6YXBzwJtJRE5byjrfi5BfyaCP9driTAx132CvUzuCv+sXRpE4Mk62z9E6DAnpM7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C66hvlbDjv7mE9BvIY/IMqJbcitzh/rgwdj7l5nQSAI=;
 b=xbylt8XTyTLDjiNT/CR4yme6Ik0Kvr8q8+0PJ5l75/tTr6tC5ggBFa2MyIxgVJhsvJWA09SKULLhC/s+BtocHlUTFLOehHWMYP0658NlOclerjz1rxycc+QWoEa6cFijAAwZ9vg4tBpubyaH6SC5cMNLkkgWIRRf57+EVLuzeA8=
Received: from BL0PR07MB5665.namprd07.prod.outlook.com (2603:10b6:208:80::28)
 by CH0PR07MB8860.namprd07.prod.outlook.com (2603:10b6:610:105::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.28; Mon, 6 Mar
 2023 13:13:06 +0000
Received: from BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::1960:8419:92d:b80e]) by BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::1960:8419:92d:b80e%7]) with mapi id 15.20.6156.028; Mon, 6 Mar 2023
 13:13:06 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
        Barebox List
	<barebox@lists.infradead.org>
Thread-Topic: Subject: [PATCH 1/1] ARM:lib32: add architected timer
Thread-Index: AdlN8jkS1lxZ9ul5SViai9HEBQQHEwAA8KuAAIfndoA=
Date: Mon, 6 Mar 2023 13:13:06 +0000
Message-ID:  <BL0PR07MB5665970B726821E524978A61ECB69@BL0PR07MB5665.namprd07.prod.outlook.com>
References:  <BL0PR07MB566575E744709713CB99A86DECB39@BL0PR07MB5665.namprd07.prod.outlook.com>
 <2d905868-b24b-040e-ac2e-86337a1c6304@pengutronix.de>
In-Reply-To: <2d905868-b24b-040e-ac2e-86337a1c6304@pengutronix.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR07MB5665:EE_|CH0PR07MB8860:EE_
x-ms-office365-filtering-correlation-id: 95b892c0-a6fe-4f6d-fee2-08db1e448654
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  fVulYP57Y7sjBESx6EElL2MWEPfSej4vdtDN7xkunE83ddFQ+66ejyco1IVTRelZnzAdEIMjDa9UTPdeUqYxNnoIN8OtIF+L6zFVmMnY/iBfLwodQV7TOF/qx7tv/igMOpn4qOFwQkXVh9lK2dwU1kuSUxfUdXMUbi5G2ljJxikq69gFr7faUPzbu4iPpCsS93MWbJTVCivS8LCtMKJk6qdO5v6snFvSj3L7fP8mmNubZgL18KYZ7FHm90VomYg0Fo/xMEe2xvBpZMXbCYrpbdMIhsLV2ww4RW198475wZS1hBX3Ygo0+Mk2TWGmRnQ+ORqIZOuEwu/eiGj2V3jAAcLPCitAankeeMZq7rnUUtQpFXzGujycjVraas02naqgNhoT1VFRGjoddijKj1joebSOp/lfSwTH1toCqQK7X/ojxWrpvwXTOpo7hdQR7XQ9t1+85ppyyjpC/Bx136mBA8RuYfIF9kLcaTEyNlBao7C3KK3pXbE4MiIpahgIEE2eGFMZz/d6rIez8gosdAgTV2h672LwtOtjDqleL58UEIAz3tho6ZPnDyggsC4mslGyYodMjj4K+pAlGXPgjC0mXWIV1P3z0hGxKMJHJ4EV8FwZ57LCRnCFbbiQY8iEhGqjJKEpKHWDACrcflChiy1h1Bn1Vm7T9Akp7pxUu9gsIfQTl84qsCncwo3udREdQmaQJlGqoPm8LWRwBglqy+9vIQ==
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR07MB5665.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(366004)(136003)(396003)(39860400002)(376002)(346002)(451199018)(6506007)(38070700005)(83380400001)(86362001)(33656002)(122000001)(38100700002)(9686003)(186003)(55016003)(26005)(41300700001)(66946007)(66556008)(76116006)(66476007)(66446008)(8676002)(64756008)(2906002)(8936002)(52536014)(5660300002)(478600001)(7696005)(71200400001)(316002)(110136005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?utf-8?B?b2ZhY3FaM3VqNU5UbDJjbEtNeVdrb1JVTDM0RUFzWEE3SnhpZzBYZXF3ZmMw?=
 =?utf-8?B?YXN3bVhZTHNvalRBSjB0YmtTazllcTlRbjN2U3hpblV6MlpUenR0dVVvVDZo?=
 =?utf-8?B?bDluVHNmQWw5ZUc5SmRpVkxTYW90T3ZIQytKOUUyc2hMc0tzbHJzR0kzYTVZ?=
 =?utf-8?B?bmFhWVFwMkFaSjRjYUZUWjdhUjYrTUtoR2FFVGhkTWVjZ21vakRXQXZ1cUhR?=
 =?utf-8?B?eXFQU29sK2p0aXhidnNhOVJBMkxweVJnZWg1Sk02UWNYWVNPNUNBZ0JFaEVk?=
 =?utf-8?B?WUxZMFRIQkYyd0NXck5TUGhhRDRyUDJNdlBMWWhRTlVLMlM4cEdvaHgyemxJ?=
 =?utf-8?B?Q3dYbm1iOWIwUWIrSU5EOGE5ak12UkVJSnJMU2tpbmdrMWxSZ0JUWjNJNjNv?=
 =?utf-8?B?Z1FmVFM3SC9rYXA3aWw2NExpUEhLVUVCZ2ZjM1Q4MkxQcVBFMWRPS3d1YWY2?=
 =?utf-8?B?V2xqbHNsMzZ2dkp6MFRBQVFhODhzRi9ZM091a2JmTVhRNzhSRXFnWWorK0lV?=
 =?utf-8?B?aVE0T0ZMeWxOTlAxZmFUU25JdDhOdFJQbmc2ZXVFNFdsSFpldXdiWXgyMFhG?=
 =?utf-8?B?QmxSL0tKVFZyek54R09nM2lOVVhxZDJtNTh3SGpRQVM2SVluTUNyUlJlMDdB?=
 =?utf-8?B?WTkyM0t5OTl2STQ3Q1p4QXo1UnprbDhoUEtvRWo5ZHNUU3ZBbzNCVlo2OTd5?=
 =?utf-8?B?cTV1UXM4QVFIY3RVcWNlS0dkQm1DbFBXVTlTNmhrOFVXNWNuNmZSWU1DbC9N?=
 =?utf-8?B?ejlINVdYeXljNldwMUpjS2d4TVk1RzN1TUkzZW5uRVc2bzNOaVo5TnZrTFU1?=
 =?utf-8?B?TEM1TVRqTmg0Qi9YV0xnRHE1TmRSZ2JaaURqUHVrcVFkUWFKckhzS2Yva2My?=
 =?utf-8?B?WlozZXM4emNhOGFIODJIRkdNNzRFVjBUR1dlUHZrTEtzQ1VJbTZMSitoYkE3?=
 =?utf-8?B?T0s3QnVBSWViUlBnSjhOazY1UWpzZ3p5YXBHMjExUXZGTlB1N3E2Sk9TSW94?=
 =?utf-8?B?cHNLTi9iRkR2ZUZqaEZ2dTlzSXhpWm1jTHVSMUtsUldoTW9MT2pKM1NzNnI1?=
 =?utf-8?B?TkM4a2k1d2RwM2E2STgyTFdPUVVLV2RjZnZZb2RsM0J5SDZFV2N3a0x0N3Fr?=
 =?utf-8?B?MnJnL0FMRXVKZWJuWVovc2pIUHZQazN5V3krdG00aDRSZFVjNFQ2NUFWc1ZY?=
 =?utf-8?B?aFU0NXFITEVkZHQxdzdwOWd1Y3dPYmtWM2trWkNLaENZS3BnY0dtNTd0cEth?=
 =?utf-8?B?T2ZGczZpUmFDWHVJVHoxOE1NSm1GV3FzVUFKWnM5RzZhM2dSYUNsM0QzMzNy?=
 =?utf-8?B?TmZKZW95LzE3Y2Zmcy9URFFPNGs4dVR4WUl3eTlmRU12cUkvNk0zNU0wNjNo?=
 =?utf-8?B?TGtzNlQ5VWFLWCt4MGdBcE9FbXU5YU53cW93QU13S0IvSEI3dG50UW5BZFN2?=
 =?utf-8?B?cG11dFZCdWt1T0cwdHEvSDM1N0gzWTMxeHhnaUdnS1BiSTR4SlRFWFlrRVJI?=
 =?utf-8?B?dmJsTlRWSkVaM0piK3BOSWtJOVVvTVFaWVJSck1wL0FGVkV2cDJORzdzQ0dW?=
 =?utf-8?B?MkNsVXVOUVpxNWFqOENaTEt5eldPdU1CL3dVaEt6Z3lySVdHT3Y2eW10MkFO?=
 =?utf-8?B?VldBWGpyY1VNaEJhTXBTUjlQTnd4ZzhQakE5M1BJbFV1bHhpbFYybDdqa0xq?=
 =?utf-8?B?bFVubnRNNm5ld2RTY29Uc0xLeERWTTBiZyswaVEwVm9PMk1LZ0tSemUxMk1L?=
 =?utf-8?B?MDV5UG9XcStLWmNDWjl5eHgxcHp3Wi9kWUVGN0g2bUNSYjlra0xGcGNzd0wr?=
 =?utf-8?B?T3N2bVU0M0Vzcjc1dGlCcDhmMDQvbmMrZVhGL3hYNnJyV0cwZXYwMEtoclpP?=
 =?utf-8?B?TklLUkF6WnBOYllsYm52UjNnZHhxZXpVWGJyVlRIUEtVN2ZDV0RiSFBUMkcx?=
 =?utf-8?B?TU0ybUVOVEhXd2VjWDlKbjZlTnlEMHZ6NHNYd0RGMlhPejdXMEQxVXVkbjEv?=
 =?utf-8?B?QVRoeTljVmRCUXFyWlRxaVpkS21DWHVPR2RQVG9xZnkvanYrbFZQYzNFRFE3?=
 =?utf-8?B?ZVZPSmNVaHV1bzNwNUJwSzQxN01ON1ZLVTJ5WFgxbkFoemZWWEVFSkZCZklV?=
 =?utf-8?B?bWQwNGRyeDZqTmpkZnpiSkoxdFRMMXBQdVNFb3BIWnpGRlJNVjZMSXpqOHdC?=
 =?utf-8?B?MWc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR07MB5665.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 95b892c0-a6fe-4f6d-fee2-08db1e448654
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Mar 2023 13:13:06.3071
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /Qu7XJdVHCnOLrNd+3MPdiZUJzbVVflHKFePqHHgj5VEfDeIinC2ObudEsC8NroOzYcd6xN9SK0K+QSZPzrGP/VtFFhqWwgJNe1KZagbhF4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR07MB8860
X-Proofpoint-GUID: nG2cQcZ6cobPu_dtmL7fsrGjl12uO1DG
X-Proofpoint-ORIG-GUID: nG2cQcZ6cobPu_dtmL7fsrGjl12uO1DG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-06_05,2023-03-06_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 clxscore=1015
 bulkscore=0 adultscore=0 priorityscore=1501 malwarescore=0 suspectscore=0
 impostorscore=0 lowpriorityscore=0 mlxscore=0 phishscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2212070000
 definitions=main-2303060117
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230306_051318_774723_8931F7FF 
X-CRM114-Status: GOOD (  20.87  )
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
Subject: RE: Subject: [PATCH 1/1] ARM:lib32: add architected timer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

PiA+IC0tLQ0KPiA+ICBhcmNoL2FybS9saWIzMi9NYWtlZmlsZSAgICAgICAgICAgICAgICB8ICAy
ICsrDQo+ID4gIGFyY2gvYXJtL2xpYjMyL2FybV9hcmNoaXRlY3RlZF90aW1lci5jIHwgMTcgKysr
KysrKysrKysrKysrKysNCj4gPiAgaW5jbHVkZS9jbG9jay5oICAgICAgICAgICAgICAgICAgICAg
ICAgfCAgMiArKw0KPiA+ICAzIGZpbGVzIGNoYW5nZWQsIDIxIGluc2VydGlvbnMoKykNCj4gPiAt
LS0gL2Rldi9udWxsDQo+ID4gKysrIGIvYXJjaC9hcm0vbGliMzIvYXJtX2FyY2hpdGVjdGVkX3Rp
bWVyLmMNCj4gPiBAQCAtMCwwICsxLDE3IEBADQo+ID4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlm
aWVyOiBHUEwtMi4wLW9ubHkNCj4gPiArDQo+ID4gKyNpbmNsdWRlIDxhc20vc3lzdGVtLmg+DQo+
ID4gKyNpbmNsdWRlIDxjbG9jay5oPg0KPiA+ICsjaW5jbHVkZSA8Y29tbW9uLmg+DQo+ID4gKw0K
PiA+ICsvKiBVbmxpa2UgdGhlIEFSTXY4LCB0aGUgdGltZXIgaXMgbm90IGdlbmVyaWMgdG8gQVJN
MzIgKi8gdm9pZA0KPiA+ICthcm1fYXJjaGl0ZWN0ZWRfdGltZXJfdWRlbGF5KHVuc2lnbmVkIGxv
bmcgdXMpIHsNCj4gPiArICAgICB1bnNpZ25lZCBsb25nIGxvbmcgdGlja3MsIGNudGZycSA9IGdl
dF9jbnRmcnEoKTsNCj4gPiArICAgICB1bnNpZ25lZCBsb25nIGxvbmcgc3RhcnQgPSBnZXRfY250
cGN0KCk7DQo+ID4gKw0KPiA+ICsgICAgIHRpY2tzID0gdXMgKiBjbnRmcnEgKyA5OTk5OTk7DQo+
ID4gKyAgICAgZG9fZGl2KHRpY2tzLCAxMDAwMDAwKTsNCj4gDQo+IFRoZXJlJ3MgRElWX1JPVU5E
X1VQX1VMTCB5b3UgY291bGQgdXNlIGluc3RlYWQgb2Ygb3BlbmNvZGluZyB0aGF0Lg0KPiBJIHNl
ZSB0aGF0IHdlIHJvdW5kIGRvd24gaW4gdGhlIHVkZWxheSBmb3IgQVJNNjQuDQo+IERvIHlvdSB0
aGluayB3ZSBzaG91bGQgcmF0aGVyIGJlIHJvdW5kaW5nIHVwIHRoZXJlIHRvbz8NCj4gDQo+IElu
IGFueSBjYXNlLCBpdCdzIHdvcnRoIG1lbnRpb25pbmcgd2h5IHlvdSBjaG9vc2UgdG8gcm91bmQg
dXAgaGVyZSBpbiB0aGUNCj4gY29tbWl0IG1lc3NhZ2UuDQo+IA0KIEkgbXVzdCBoYXZlIHBpY2tl
ZCB1cCB0aGVzZSB0d28gbGluZXMgb2YgY29kZSBzb21ld2hlcmUgYmVjYXVzZSBJIGhhZCB0byB1
c2UgZG9fZGl2IGFzIEkgd2FzIGdldHRpbmcgYW4gZXJyb3I6ICIgdW5kZWZpbmVkIHJlZmVyZW5j
ZSB0byBgX191ZGl2ZGkzJyINClRvIHJvdW5kIGRvd24gSSB3aWxsIHVzZSBESVZfUk9VTkRfRE9X
Tl9VTEwgaW5zdGVhZC4gDQpUaGFua3MgeW91IGZvciBwb2ludGluZyB0aGlzIG91dC4gDQo=


