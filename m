Delivery-date: Tue, 13 Dec 2022 10:42:51 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p51oI-002VIQ-Fu
	for lore@lore.pengutronix.de; Tue, 13 Dec 2022 10:42:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p51oH-0007je-EW
	for lore@pengutronix.de; Tue, 13 Dec 2022 10:42:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kUyJs1zYW71oPrl0GBV5htxEedhfnP8wIes29kqnFb0=; b=UXoyWfSexnTqT+UiXMp3+6TOo2
	hlNj0geVTQrgahwnZllG81xR9Jy+nS7kQ3xHdUWLDOuE3NjYiGLmLHQlsCbH20ooUG1ALVGNjsMb2
	fbReY6xzoNU/xFOmO7lpRXIZZpOYo3BfcyiBXwmIVNSLEtB/Hzh7E2HJZ17oy5ujRF99ZFPJP4tQu
	frOJFi5B7V4ctAWb3skBVlXVhKi+3V1lQ1VOYQdL0omn74iE2Gz3VjLR+Zi1ptoMZO3Iz9c+Wupkt
	SlVd6ZJ7h3Z4Ldfw5d9Lv8jM0SqiutQmFg1+Pu+r4CNZBgOX8qOdPWyEzQkGGt2QRb6+0Y+5lHJ+c
	Ve+gxa+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p51mj-00Efou-Jn; Tue, 13 Dec 2022 09:41:13 +0000
Received: from mx0b-001ec801.pphosted.com ([148.163.140.146])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p51mb-00EfUx-JB
	for barebox@lists.infradead.org; Tue, 13 Dec 2022 09:41:10 +0000
Received: from pps.filterd (m0163889.ppops.net [127.0.0.1])
	by mx0b-001ec801.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 2BD3bXFY032493;
	Tue, 13 Dec 2022 04:41:01 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pphost;
 bh=kUyJs1zYW71oPrl0GBV5htxEedhfnP8wIes29kqnFb0=;
 b=OyLMwVTg4j1S6Ym+3yOpdNZiVmuOUq6KnR6iM8hN001QcHcLmoZgotI+UlpjzK3JCRcJ
 xYKmUZsi2CIRVR01mG+kLFFqVWbiGr0Lp7z8n2oSb9KIoVR7BPW1fc0DNGTaN+Z6/6dL
 EfocYMspAaEUjozs5hC1HTTtFfagrx1rD3V0OVTfW2qKowhsjyWBLY3favaDKVHUm1Hj
 6l8/ZSLLn6N+3OfizbGtt334zZe3K6IvmNmVu1o46oZgCf2ODtp1ygSRRO5qabq7YNcd
 /pwEnNbezK7uTv/pwylbYkY+X74nnxQ5e2xc0z/0IrRHle4lGiPkrcDZ5xScyP0CaYub Xw== 
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2168.outbound.protection.outlook.com [104.47.55.168])
	by mx0b-001ec801.pphosted.com (PPS) with ESMTPS id 3mckvc717s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 13 Dec 2022 04:41:01 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L+PktMAZo+eIDzfveARvHnL3ogeBFma9MtEI1ATWDaWqG3o+5cRopFsD3pRW1RUHma2XNVwBsOWHN5u2vE2ORL3syv1kzbg71V5oOgGCm/CN3TD7DRihwivdSe6Pwa6k+uDp5IbzLraOnl4+FA4m5BE/7KnHrRkunx40TxFi4tFOlN9khjhqVMMKOLoJlKHE8nkz7bNHIXlkRIzpAs547D77ABj+aL1REduATC6lLd6H6rXgVCYh0R/7Aq87D1uDPhGW6lMAuTymVrqd8CPU8quYuvKA4Fu6NSL+aoxMWenFmdrTDQlOaIo9EkZ2b40t2MUugLPfSCBkwp0SPc9fSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kUyJs1zYW71oPrl0GBV5htxEedhfnP8wIes29kqnFb0=;
 b=arwrerGBGjXsu0UECzJv9Ip4Ub0uaC7JOBV+Dyi/abf3r7oA71UoMRz83pKBv8t7igrWDcS73Hh3AdHj8IuugS1N4VKqxZ82hmfKRl10Bl1g0s0L2+MGYqK2aTS/KXAZKemb82FJk0ov+UeyBtBxOm+M0W2LUQ9xyEZIziexALDRlsd/P5LJqe07CQmhCT3sf+zo2jFS7nTsom2ESxi5F5W99M858H+SygG/2vFSmnalxYXCSAZ0udO0W0KNuK2i1HydqdJw/+MCPVUqUO1GJIPeFHSaojMFFXrLpjsh/LyicQw3mkGrl79t2z44E7JHDmaV2Kb6KvWua5km479YEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kUyJs1zYW71oPrl0GBV5htxEedhfnP8wIes29kqnFb0=;
 b=XhNsEMUiGdhyyyH9s7KXsoOjCGplmgfVzPUh2z+PzOf0p/VEyNKcUSVoDm4ATQ8omSGniawNtmJllu14V1tJiFqcpszzoXjUGFfdry86yvTbZ+g6LOpYmZlk0f4Q/IxmmnpSD1oRrbsy2XzhztMIqckCPevMtJLeaHoCdE4e99k=
Received: from BL0PR07MB5665.namprd07.prod.outlook.com (2603:10b6:208:80::28)
 by MWHPR07MB3053.namprd07.prod.outlook.com (2603:10b6:300:e9::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.19; Tue, 13 Dec
 2022 09:40:57 +0000
Received: from BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::a7dd:4fd8:4f34:bc2f]) by BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::a7dd:4fd8:4f34:bc2f%5]) with mapi id 15.20.5880.019; Tue, 13 Dec 2022
 09:40:57 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
        Barebox List
	<barebox@lists.infradead.org>
CC: Lucas Stach <lst@pengutronix.de>
Thread-Topic: PCIE on LS1021A
Thread-Index: AdkL8DOb81y0+p2vQua38NWFw8d4qwADQ1uAAABuCMAAAG0rAAC1f4Zg
Date: Tue, 13 Dec 2022 09:40:57 +0000
Message-ID:  <BL0PR07MB5665830512AFD69F6619A5A2ECE39@BL0PR07MB5665.namprd07.prod.outlook.com>
References:  <BL0PR07MB5665EA1D980C39F834845849EC1C9@BL0PR07MB5665.namprd07.prod.outlook.com>
 <9bb964dc-3c24-7c70-b007-759c3aa85511@pengutronix.de>
 <BL0PR07MB5665C80785AAEF796F499985EC1C9@BL0PR07MB5665.namprd07.prod.outlook.com>
 <c4595d56-6284-4f03-e553-2f76cc8e7aa6@pengutronix.de>
In-Reply-To: <c4595d56-6284-4f03-e553-2f76cc8e7aa6@pengutronix.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR07MB5665:EE_|MWHPR07MB3053:EE_
x-ms-office365-filtering-correlation-id: 657baea2-7180-48ce-54b5-08dadcee22e8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  GUBXH/2w5YGx2CHcz8EcjbtsHRxbKYfLMofHkipjoXjYTLiQYZ2XSFKdacFsnrH9v0JtqpwN+pUVGarzTzkcfoIf7azythexhelbs0Hls6FMSc6UTzn88gbXwPpCbsM9Pln0ZnImJHPSuBh4zUpcAhqMwPW6jWxTwYx6zaGbZAz/yMjJdIVcZ4i0z/8CpHvJ/odmdYfglqcltD5lSmZbM2UKucL6CPcdSLczEq30AAg6/JA6bpdSOTJM1AjcNbmLqBEpmB1EqQPGOpnGFT7+jfmGyNDDiUKzjSkfraYzH9iVon3F7IWj6KjBIWNXnBYj54jAPm1xD6xYZsCxk6CmEu47Qd+BIVXikhoam0wt7JuA/6UUbfmbRzQvF/IXlUtG91OYFMJVp1Z/WUDiZ8xiKEv/tV5fwrO0ZVF9dHG1ADID338hONPJCq/V4B7GO1JTtLSNXRQ0pGPKDhalZAHd8n+4aurbw5R/Ia/enEAuJDMw/V6bpEdvhU1zukVkz8loY0S7uDmmyU1FxD1iVZADvIJE/yyfSuCYbWAuToMEFJnJTWUFujtVELwhcxf6+MOqlGFbxMTb1MwGOPGMAyudl6mZgsYjk8XJ4BBTVFKol1Xg7DKu9wv+YAyLpk8N8eVU137g33+fuLSsKKDZs9KupfwPb3JMDFkv27BPPiOJ0zBGdRmDv+fvslELROoi5DVdyeALYSEg9sjkkBz8P63pjw==
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR07MB5665.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(376002)(39860400002)(346002)(396003)(366004)(136003)(451199015)(110136005)(26005)(76116006)(316002)(5660300002)(52536014)(66556008)(66476007)(8936002)(64756008)(66446008)(8676002)(66946007)(41300700001)(38070700005)(4326008)(7116003)(86362001)(9686003)(7696005)(6506007)(83380400001)(186003)(33656002)(478600001)(71200400001)(2906002)(122000001)(55016003)(4744005)(38100700002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?utf-8?B?azh2dUg0QWdvR096OGp0QzQwMDdvUVk1bk1lV0JScFczN1p0c201eUQ1UEJ3?=
 =?utf-8?B?MU4yMXZwMWJLTWRKbVhlelRsVzdmSmd4OXhBUG4zZUtQa1l0akdtUzVpbFJx?=
 =?utf-8?B?WVorb2tQQjNmVUY3T21HbkxGVG9pOHprZWJCZjFtTlkxMEdBS0NOZTJSRWNN?=
 =?utf-8?B?LzREYStCM2ZrTFl2QW43ZmVRR0R3Rmk2dmc3L3N2c0dXYzVYcTN5WWh6WlZF?=
 =?utf-8?B?SGNLdkZNUExZbTJSL0w2aE1XZmpiUGQ2ZGdZckVXNFE5TzBWNUx5dVFuMzZY?=
 =?utf-8?B?SmEwYlN1NW5WVHlWZTk0Y1c2aWMyOW5EMDkvOHNPQUNXTGZaLzNJcHNMeVFr?=
 =?utf-8?B?M0VaUWh4LzRqelVITHhUejhEOUFMNVVGejhuOVBlekx6S1lvZ21DZUlaYlZS?=
 =?utf-8?B?U0JQUFdDa1hSRVBscENEb0djdzV4QmJOS0pnU3lyZGx2TWdxM0NlZWNIdHZE?=
 =?utf-8?B?Z2xVRVUwNGY2ei9aTmowbzR5ZGxZVFpneEgvZldoeXlpVkcrQURxMWdRbi91?=
 =?utf-8?B?czhvSDhTSFgvbUUrY0FMaGNPdS95eWJPTTQ2NWxNTEt4TnNtbWhQNDV3VDdl?=
 =?utf-8?B?L21KMVpvYjMwa25CSndoZWRzSUZDdkhIcVJyT21VdlpINUVTTGVHSHZLYWZJ?=
 =?utf-8?B?amh4a3h4TUhGNjJoRDMvNEl2cC9DNnk4Q3NXMjkxYlNValFXcE5pTkdNcDNJ?=
 =?utf-8?B?dFhKcm9yNlRwNVhSOXI2ME5LSGN5bmRVMXU0Kzc0SjhBOGw5VTQwSjhjdFdw?=
 =?utf-8?B?VDJ6eHdNRTlFRlJLUmJ2aHBXU243c3BZYWJIRE1yOStxWG1SbkVxTE0wd0s5?=
 =?utf-8?B?aEF4T3p3VWFHd2RtdEx2eFFKQWN1WHB4dzRVNEFKWjBmSU96WFZhVWdQNFN4?=
 =?utf-8?B?Wk9MdjdGZ21tbUdXb0gwc2ZsMW15SkpWZ2FyR0RJNTE5c0RwMTFiY2FQYVh0?=
 =?utf-8?B?TVpzeXpUanVUeG9pcERndDJ1Vng0eWd6QmZYUmw3WEdPa1pEL3JqbXBIZnZI?=
 =?utf-8?B?Q3N4bGYzU2s0bWpjYUZRdSs3OGY5TGFiUmM2RjNqVE9DLzJQQXlneHQwc2JL?=
 =?utf-8?B?WHk3bjFacnZTRGF0V3c1dllhdllxckNJZExPU1VEVS85T2Z1dVVNMGlzdzB4?=
 =?utf-8?B?NCthY3NlNXpSSGFiNGlYNll0YzRlbExLQ3lJZThZbHcrbXFvNW13NEpHbm1y?=
 =?utf-8?B?WkIvS1JZVlZqS3d1TEJUWmhMT0ZYNWlXV21RdE5qU0RtQXZFWUU2YytjRzNi?=
 =?utf-8?B?SkxPVDFMWWpuM3lqb1VDd2R6Y1ZuYm15Slk0ZVVBUEdNeGROaTlCN1hDMWdS?=
 =?utf-8?B?RzV5RURSbGNMMUJjemM5QUtHUk1HYXJCbHVUSzYwZzVvc0N3eC8xOFJHRytU?=
 =?utf-8?B?Z3JMbXp1NXo3c21pTExiVmg2MStoWjhYWEVNTTZYMFNUZ25Tc1NTRlVwUXNU?=
 =?utf-8?B?NjNVQmZtM0hVbHFFWnZ3eEsyOWpJbnBhRmRKL2pZNkFpcEk0a09peUE2M25G?=
 =?utf-8?B?UTVyRVc4eWgxQS90eE5NQ0x3K2djVzFldDVqbUV5VFByYngyQlVLUHNHNnlx?=
 =?utf-8?B?aU5OQXNmU0Y3WjM5ZXY0ZDI2T2ZqUXFFRThsQktMOW5HaEtSN2xoT3ArYzNi?=
 =?utf-8?B?REpiMi93ZTREVkplT3lGNG85VzZBTEk2akNBcHd1am5oNkpTU0Z0WGtvSUNO?=
 =?utf-8?B?R0tKZGtzQmJ3ZFFCL2ZCZVJaMkdHM0F3bytjbFJBejVXdENpZi9MeU9uZmNp?=
 =?utf-8?B?ZXh6bzFJdSt6WFlqcUJBQmpubHlYWDBmUGRjVEg3TjdyTmVuZ2QwZHBBdkt4?=
 =?utf-8?B?N0ttaWVrQ0JuT2ltdlR0TERCcU95MWp5eHM3eFFabVBrZk11WWIyUzQwTS9o?=
 =?utf-8?B?TmFxK0Z3anRLYVJwaUsyTnV0NDk0RVJ0NGtucHBNYWh4VmREaUprMW9mVVhv?=
 =?utf-8?B?d2Q4NEVGbDVXS2VoWjhpZWFrcjYrSXF0ZGhaeTNqVUFhRDgrdHBESkk5aFdC?=
 =?utf-8?B?Z3h6djhab2s4RE5pQ0dEWU93UVdsd3hkVUJPWnA3QjJhZHA3RFFvRWdFRGVB?=
 =?utf-8?B?SEhwUWxBaGgxcWFJVHhKTzg1WWxsWlVjWXlmUXNiQTQyTTk0M1Z6TjV3dDFK?=
 =?utf-8?Q?265RRgoHIuu2kcNY2z6WLttGw?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR07MB5665.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 657baea2-7180-48ce-54b5-08dadcee22e8
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Dec 2022 09:40:57.1856
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: H/ebCqGpUpxVJ2W98/OFv9/ggaS3nRQqFAaNrmPdGaOE9b9hZveCmTIkFy7qz7YdKRviJJwaS9Jrg4IJ8iZhE4bL8JkFRHT3nUNKNyikn9Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR07MB3053
X-Proofpoint-GUID: bZxUyy3okbDJXut2eGFw1WcSEecGVpoc
X-Proofpoint-ORIG-GUID: bZxUyy3okbDJXut2eGFw1WcSEecGVpoc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.923,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-12-13_03,2022-12-12_02,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=567 bulkscore=0
 adultscore=0 clxscore=1015 mlxscore=0 suspectscore=0 priorityscore=1501
 malwarescore=0 spamscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2210170000
 definitions=main-2212130085
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221213_014106_359002_016F31ED 
X-CRM114-Status: GOOD (  13.16  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: RE: PCIE on LS1021A
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

DQouPj4gRG9lcyBMaW51eCBQQ0llIHdvcmtzIHdoZW4gYm9vdGVkIHdpdGggVS1Cb290PyBBdCBs
ZWFzdCB0aGUgTFMxMDQ2QSBoYXMgc29tZSBzcGVjaWFsIFBDSWUgZml4dXBzLiBJIGFtIG5vdCBz
dXJlIGhvdyBhcHBsaWNhYmxlIHRoZXNlIGFyZSB0byB0aGUgTFMxMDIxQS4NCj4+IE5vdCBzdXJl
IHdoeSBidXQgTGludXggZG9lcyBub3Qgc3RhcnQgaW4gbXkgVS1ib290LiBJIG5lZWQgdG8gZml4
IHRoYXQuDQoNCj5PciBhZGQgTFBBRSB0byBiYXJlYm94IDspDQpUaGFua3MuIEkgZW5hYmxlZCBM
UEFFIGluIExpbnV4IGFuZCAgdGhlIGRldmljZSBub3cgaXMgZGV0ZWN0ZWQuDQpIb3BlZnVsbHks
IEkgd2lsbCBnZXQgeW91IHRoZSBiYXNpYyBvZiB0aGUgTFMxMDIxQS1JT1QgZWFybHkgbmV4dCB5
ZWFyLiANCg0KDQpDaGVlcnMsDQpSZW5hdWQNCg0KDQoNCg==


