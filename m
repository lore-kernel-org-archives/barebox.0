Delivery-date: Fri, 09 Dec 2022 20:01:08 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p3icM-00GNjV-Tq
	for lore@lore.pengutronix.de; Fri, 09 Dec 2022 20:01:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p3icL-0001vg-Ue
	for lore@pengutronix.de; Fri, 09 Dec 2022 20:01:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=q3YurIDIMy2gJDxe64Z6QPQhnmQj6EGaNDVrIvr0XGY=; b=4KI5BjU0s46IDrtx9I08TjNJGf
	1ZpSj2sKtrA4eU9WrYCA4ej/rlSivia20FCBcjmGba/kBRODQSs7hmHmELinD8n7e+kUzEHXkIGUn
	sxFH4/3aNiGy4hJZ10COTiqM/MKEYqY11Uol/PiuaPvDyfhI6WT1ralSNV99GLMTcA6h7bmM18kHa
	Gl8z9LGQABKavLhp7wUAv6Aabm567curWgymCumEWHFmT19TXetDETH24KCh1Hr69Z+L2RKti699Q
	Is0JBc7+sVMK9b4l7M7Vd8EtjU1wTvY5d7wmtgZwmH5cuNdYw1F4JZlhbMbUz0QFymunohzFn1Gam
	EouIbj+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p3iZl-00AWS7-Qv; Fri, 09 Dec 2022 18:58:26 +0000
Received: from mx0b-001ec801.pphosted.com ([148.163.140.146])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p3iZf-00AWOg-J1
	for barebox@lists.infradead.org; Fri, 09 Dec 2022 18:58:22 +0000
Received: from pps.filterd (m0163889.ppops.net [127.0.0.1])
	by mx0b-001ec801.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 2B9I1oIx001931;
	Fri, 9 Dec 2022 13:58:17 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pphost;
 bh=q3YurIDIMy2gJDxe64Z6QPQhnmQj6EGaNDVrIvr0XGY=;
 b=ZrICmjN9MtNuhQdsqhYWjoQs6Mk0eiVthqtZGWOX/LfFqRf9MUjoR25vy67+KRO/fU1p
 7GaY4vKXHs7YyN6f5u8Jsz2TWsLBXuQuEyooAGvQTAWoNiGx7czUPZYh1D+zLU5pnEOr
 C+KsScYLg5jIKzyhUkoIzqc7UgxYPMjSsr34lKs4vpl8q67bawFyC5qnD9k/h+Ocbo9H
 6jr6SFimiW8rx6sh1aCHn/xq6pFJaCRw7Cgq8jAMg1eB0FMI7Rjh/pkcJUVTvsKkK8Od
 qPoDsEzuRV1OCSxC3C/ZY8TYJ53wj6CC+IF8qAZuQB7TYTDUnXavFYFNqLJxZlqMAkqn gQ== 
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2169.outbound.protection.outlook.com [104.47.58.169])
	by mx0b-001ec801.pphosted.com (PPS) with ESMTPS id 3m807cabu5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 09 Dec 2022 13:58:17 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NcKGaxoIkAjCnVS9EccQqTnvH3NZgNpKDLiFSRXzWkmqBB2VrLR2Apm10lYlMlkMSL6F7t3HMclkUDJb9TMb+kOPg0Y1DhAFhtLDe8ShpFzm/E/tnFKN4ebxShShR/PdOPoaWeYOtVpmMa00VAHNzeaY9Iu9mSRPFjU2O25b+cG06jAKBwQ0jKDO0t3sTKq6DPQXCAWXyTrvIF0EBd/RZjdZyxkG313ylZowwnI9MNxlt2YRwk9HXGNcxUkWy09uwXy3+czsOGqI98+CWoW2HkV0uCds4vlouHJReKymuzbV/L6v5sHCFT26Q+Gz7SgjzCOSOfqn9f4KD+7LKtoWfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q3YurIDIMy2gJDxe64Z6QPQhnmQj6EGaNDVrIvr0XGY=;
 b=Qfh1D9JEmd6ALXnqUlT0+XhS0oBRMMXg3CAedg/YiRDfqpbXDkQcCTh9VD3V+7IwemThtIZmbAbolhkAluQDYynG3s+sAf/wofkp/jH0GCwbpg1WpeFueaNL+0fdjbTMYFyRodZybTRPEoP57k6PE2zHKmP9wfhZCPyDTh78W9S6l6ROJroa41s1DrCwQ9a4WkP73Sm+yRNsCydpjzfDuIXvtE8ixEYXA+RHQhElHRrhXgG7jcKxCDrtAC+i9s1Ig4Ef6u/dzGAL2RCuUiGJ3EZ3W3mJ3DKRBaYIlfkl3hsN+RUvy8mI4V2bNuTJ2syNjpGhop61+Ey+poD0zdt9Fw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q3YurIDIMy2gJDxe64Z6QPQhnmQj6EGaNDVrIvr0XGY=;
 b=4GgQYuIq9UBOe1bQDlvUJrn7RTdNFwzkvB83yojoPk1zKdVJgp3w8tF656VkZzH9yGIKBPFxJ2JSNWdDa28TRAEfpdippuuQ+8HCbuY06HlbXVSM2CL2k+nIoYEFI1K4m2xaztgSJ+6VagumhaEdVFGueCd/beZAllHxf4wQocM=
Received: from BL0PR07MB5665.namprd07.prod.outlook.com (2603:10b6:208:80::28)
 by CY4PR0701MB3697.namprd07.prod.outlook.com (2603:10b6:910:90::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.18; Fri, 9 Dec
 2022 18:58:13 +0000
Received: from BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::a7dd:4fd8:4f34:bc2f]) by BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::a7dd:4fd8:4f34:bc2f%5]) with mapi id 15.20.5880.014; Fri, 9 Dec 2022
 18:58:13 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
        Barebox List
	<barebox@lists.infradead.org>
CC: Lucas Stach <lst@pengutronix.de>
Thread-Topic: PCIE on LS1021A
Thread-Index: AdkL8DOb81y0+p2vQua38NWFw8d4qwADQ1uAAABuCMA=
Date: Fri, 9 Dec 2022 18:58:13 +0000
Message-ID:  <BL0PR07MB5665C80785AAEF796F499985EC1C9@BL0PR07MB5665.namprd07.prod.outlook.com>
References:  <BL0PR07MB5665EA1D980C39F834845849EC1C9@BL0PR07MB5665.namprd07.prod.outlook.com>
 <9bb964dc-3c24-7c70-b007-759c3aa85511@pengutronix.de>
In-Reply-To: <9bb964dc-3c24-7c70-b007-759c3aa85511@pengutronix.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR07MB5665:EE_|CY4PR0701MB3697:EE_
x-ms-office365-filtering-correlation-id: 5fce2b5e-567e-4949-c308-08dada1752b0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  wUfroAOFRQ/2MYDgDGS+pnqhrz4KNl9DAj0j/8WuHtxtX48JRR+gc7QgG/F51Ae5AVzF0gWiXTW3wzfXWMI9OABoN2fnuBQhQIr6V+bQEcq4kBu/imPc5eUoTTn8S5MyRqyZbuy0UR1qKzvtIOTbuETgB6JZOjY2+1Kr+o+ILeaHYplkgiI5GTOsdmsxucC85W3us6PwbxoqrHPqrN7wcUfOWF9+Mx69eKwwpatqiNgPQsFX+9PY4iRhwjADixjmC/eDU2zsrI7UKlzrgNNMUeldk1DocrxOfFrJYvTr72up7Et5V1XmeCmGrG1H1u4iUFs2oGlG4QAAQqMJx94zj7YP9c+hPMSLLGpM0z8UGLZ6Zpz4gnldWDZ6Vgj/B1chgKhFTIu4GoHZE7qlGb1DRgGZa4908cszVu70VPVPEK8z+xAZ91/EqmFc1BKFQNmcp7ODRFPmIUjq+H/76LRF9y+MLcj0v4sxE9CzaAyQeqsbmjAxg66uT5GS1babpznpG7VTLbzCHTL+4AJfBgws73LeAz2Y1zFLRlSwjyeIm0yzphJN+PAGIXMs9Eoj1QOOhbcqoBR6Xspc+8Xr5D+dD652H9J/onZHbn/nVJFr/dZ+n2JZfuva6tLGcxqxLhqm2vbX3CgfjQYq++0KlcNYtRcEA/gFbymfZsRjtlojWgt1J5AjiW79gOcQjpQIVD28lv2TOv+3t/suHkePrXRvqw==
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR07MB5665.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(136003)(39860400002)(366004)(376002)(396003)(346002)(451199015)(7116003)(478600001)(8936002)(4744005)(52536014)(316002)(66946007)(76116006)(41300700001)(64756008)(66556008)(186003)(66476007)(66446008)(8676002)(4326008)(38070700005)(110136005)(122000001)(2906002)(86362001)(83380400001)(33656002)(38100700002)(71200400001)(6506007)(5660300002)(7696005)(9686003)(26005)(55016003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?utf-8?B?K0hSRUFqd09SRDJqUlp6WUh2MzA4YUZSR2xKNVhlb3B5L0cvZ29FL25IT3Ra?=
 =?utf-8?B?WElqL3RhNjk0elREUFRDQ3dmOVBmeFIzUXEvMTVjcDlDa1ZzQUZGdjA3V0Yr?=
 =?utf-8?B?SlVUb2UrdjZ1RFVSenRqT1Z5UzdkaE12anRZVHh2QkdhRHZDWWw2VEdvNk9j?=
 =?utf-8?B?RnhVckJPby9CajVWOFRGMlpEK0lmOHUxN2Z2ZjlNaC9NTDg4ekJQMVEzUzhQ?=
 =?utf-8?B?T01YZXlTUHJ5cll2T0FOQzEyR2NIZFRTV2FkVGYrKzRoek9XK0w5ZHpsR08w?=
 =?utf-8?B?b3JJTUZXcmd6eTV1VjAvcy82QzBhbkZJdWNVM3pKRjM1KzNmcnZidlZkOGlB?=
 =?utf-8?B?Z3lEbkowZHNEYUVnQzJ3enBITUFjcGZ3bEVUNzcvUjRmSEoxdTBsNjNvMHRM?=
 =?utf-8?B?REJBbHhkTitTaGprMEVFbHlvMWlDbDVuWE1lejBjU3dwZVlTSjU0NGNkenhn?=
 =?utf-8?B?azNhaWY3QlZ1c0FYNUdFY0hDVVMwdEJWNUZhczVpT2I3THpCZXBvMmFhbU5m?=
 =?utf-8?B?ODRMbVIyWTloenVTMjVaS1Z6UzR3L0FNVGFYVEN4OU5ROWcwd0pKSUtzN1Np?=
 =?utf-8?B?ZUlGb0FsOFJhUnY5VFRlR0NyK2F4N2RSUm00S1BPTGJwVXFxYnMyRit2TVRo?=
 =?utf-8?B?Zkx0Ny90WnhLaGRjT1RUL1JwR2dJc2FjTjB3b3hWTDQ1NjBjZlRRN1Ira2FM?=
 =?utf-8?B?TWloNDV4c0FUTWZzQXFBVUJFRERmVlNRS05FQXozNzRXQXg0TG5Tc3F5dGxo?=
 =?utf-8?B?dWJoQTRBVi9tZWl1NDZmbGFleXk1elRhdU01cHUrOXVlL21zaFFubmVXNlpq?=
 =?utf-8?B?ZE5XL0lRMFVpNG5zeWhWR3RrMW1mc3ZXRTJpdG9UdG5pRmIzS2tSK0d0NEc5?=
 =?utf-8?B?SnhVMitTVEFFUWsvRTREMU9Wb0xheUNUWEwzMWRrZEhJMElHL3FvOUV4WnVT?=
 =?utf-8?B?ZDh4QVJFVnRlMDMyVjRSeE1ZaG1oenNhLytBQXNhZUZKclg3eEFKa0k0ZGJj?=
 =?utf-8?B?SXFHVXRpRkhUYStMOEQ1NEJVOG4rWlhjUGthOWJCWEZkd3M5djNpa1lrcm5Z?=
 =?utf-8?B?c2hFb3J4SUNVb0J0Sjh4bEFna0Vac3h3dXNOWi9HOXNzbE8vblplUkJTekY3?=
 =?utf-8?B?TWhPaTVpQS9vR2taRk8rc3F1dW9vWFBXZjRHcFlBZjRzRDcrdVZpTXYxTHND?=
 =?utf-8?B?amYwSlMyaGNFSnllaTEvbllEeFRqTGttWUs0c0tmNVd0bEVzbFl4ZktHL21m?=
 =?utf-8?B?ZjRDcVVweVkrU3RCMzU5VFY0NXlSRDNWSDdGQ0I1NCsrWU42aGoraGZFOWt5?=
 =?utf-8?B?N0tQUDJycHBqMXdSUU9XTlBmQXl1NVEyNmRhbWNMU0YwOVNMUjVIVW5iTTRq?=
 =?utf-8?B?d0pYK1Q3alg3MnZpQlJUMXV5VklDN1lhOUMrV3d1TzU3NkIrejB4S2NONlUx?=
 =?utf-8?B?ZGVrcUsvQWtEZ0w0TG9wWFpLUjMvK294SDJuVEVxMmY1azJHWmEraW5qMHNB?=
 =?utf-8?B?OXVXb1NDYWYrU3NpTFRJeU5hdWRRR3JvUHc2ellQZzN0Mm01VFJrdVpZc3Fj?=
 =?utf-8?B?c2VFN2o5TFNXRnVhV2YxY3hmWXpKbGIwZ0d0TS85elcyM3FjL3g4S2g1T2ZU?=
 =?utf-8?B?djE5N2VJNWNPWDFzbUFVOTU3aWxjNS9rbjJ0TUl4UFBzRjJHSXJJQmVBM2Ra?=
 =?utf-8?B?WVUxcjA0dnVuS09mWG5laFAySzlqT292OGRVdDVwTFhDcDVya1pIdDdkU3cw?=
 =?utf-8?B?STViaElTQzVRckI2RkZtL04ycWptem1RdHZoNmlUcHZMSTZaZ2ViTFVldGtG?=
 =?utf-8?B?czhNbCtycnJqdlVRS25zT3NuNUVJL05zeHRrNkV4UHE2ZWFJUEx5SjNBOUZj?=
 =?utf-8?B?bXViOWVxZ08vbTU3elJYNWU5TElBbWhveHJsQ2hFcEdmTTVLaktKazhTdjl5?=
 =?utf-8?B?bG0vSmd4SDROb3h5UEtENWlyMGFmc0JEdHJwMUdRbnNSbjFrWVFKYk1PeUFn?=
 =?utf-8?B?bGNha2lEaVNFZEZ6enFDQ0ZQa3M0cjVqVDk1TytmcjVQVDZBejd5WVU4MUZT?=
 =?utf-8?B?Zk9UcFZESUxhV2xlVkFKSE5ISEY1OGVkanhHZFUyMzZJVkQrSTE5M0pJTDlo?=
 =?utf-8?Q?Da+NeGONIP8SuDhOVrDB9ZdDj?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR07MB5665.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fce2b5e-567e-4949-c308-08dada1752b0
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2022 18:58:13.2452
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7gn9aeK5TNsuuqPjR537JG2f2V2Kbnth0ijslXCt0gQ9FaKpheybG9csmWEcQQHiCrVBsMOAPvcP6Bqu468k6Hpum6cEuFwNuiB24fGCaJs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR0701MB3697
X-Proofpoint-ORIG-GUID: zbeGsvyejeRsrbiL7taf-J7HZgfnKFRk
X-Proofpoint-GUID: zbeGsvyejeRsrbiL7taf-J7HZgfnKFRk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.923,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-12-09_11,2022-12-08_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 clxscore=1011 adultscore=0 mlxlogscore=762 suspectscore=0 impostorscore=0
 bulkscore=0 malwarescore=0 phishscore=0 lowpriorityscore=0 mlxscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2210170000 definitions=main-2212090154
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221209_105820_460498_2F35CAF1 
X-CRM114-Status: GOOD (  14.16  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: RE: PCIE on LS1021A
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

DQoNCj4gVGhhdCdzIGdyZWF0LiBEbyB5b3UgaGF2ZSB0aGUgcGF0Y2hlcyBwdWJsaWMgc29tZXdo
ZXJlPw0KDQpJIGRvIGhhdmUgc3VwcG9ydCBmb3IgdGhlTFMxMDIxQS1JT1QuIFRoZSBtYWNoaW5l
IHN1cHBvcnQgaXMgbGl2aW5nIGluIGl0cyBvd24gbWFjaC1sczEwMnggKGFzIHUtYm9vdCBkaWQp
Lg0KSSB3b3VsZCBuZWVkIHRvIHJldmlldyB0aGUgY29kZSBhbmQgcHJlcGFyZSBwYXRjaGVzLiAg
SSB3aWxsIGFzayBteSBtYW5hZ2VyIHdoZW4gSSBjYW4gc3BlbmQgdGltZSBkb2luZyB0aGF0LiwN
Cg0KDQo+IERvZXMgTGludXggUENJZSB3b3JrcyB3aGVuIGJvb3RlZCB3aXRoIFUtQm9vdD8gQXQg
bGVhc3QgdGhlIExTMTA0NkEgaGFzIHNvbWUgc3BlY2lhbCBQQ0llIGZpeHVwcy4gSSBhbSBub3Qg
c3VyZSBob3cgYXBwbGljYWJsZSB0aGVzZSBhcmUgdG8gdGhlIExTMTAyMUEuDQpOb3Qgc3VyZSB3
aHkgYnV0IExpbnV4IGRvZXMgbm90IHN0YXJ0IGluIG15IFUtYm9vdC4gSSBuZWVkIHRvIGZpeCB0
aGF0Lg0KDQo=


