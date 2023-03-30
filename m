Delivery-date: Thu, 30 Mar 2023 17:19:24 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1phu3f-002qVL-Hv
	for lore@lore.pengutronix.de; Thu, 30 Mar 2023 17:19:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1phu3c-00085d-00
	for lore@pengutronix.de; Thu, 30 Mar 2023 17:19:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sAUjlxHzSKc0+tZg0/Y3HryZSZkb8LZ4N8fZTMYynkM=; b=PvKMdhk4EUKGojoAqbcBIKufQO
	K55tihja9f0Pk0KNTc3kv3GqYL5wgyvlry9w0xk/5bG+lp8hkLXdikelS8wOdGTNZgJ2G7VM/cg33
	stvw8Qm3LKBriKhUemxQPrP3zQeFc2+I4NGikSDQ20OdP7IS3wi9ZOhTDo1/TV1C4LTXB8zoBvz3y
	ql3wrN35bgn4DZo0JiCRUxjsZLke0qRm+nIIiU5xr/2L4bksgG5BVdsUJdqk5yk8FMc6TtIA3hah6
	uDIFfqA8JLjmkM/no0Gs2Sg2DdoO4HOO774x8o1imGCyZnevqfzq6WioMaJNj+ryYx4gPAAQNbDZm
	jfMw0ieA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phu1y-004CjE-14;
	Thu, 30 Mar 2023 15:17:38 +0000
Received: from mx0b-001ec801.pphosted.com ([148.163.140.146])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phu1s-004Chu-1W
	for barebox@lists.infradead.org;
	Thu, 30 Mar 2023 15:17:36 +0000
Received: from pps.filterd (m0163889.ppops.net [127.0.0.1])
	by mx0b-001ec801.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 32UElp5k010781;
	Thu, 30 Mar 2023 11:17:30 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=from : to : subject :
 date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pphost;
 bh=sAUjlxHzSKc0+tZg0/Y3HryZSZkb8LZ4N8fZTMYynkM=;
 b=smhvsMx+jkvHTfRZ/S7vUm6k+JWXWfLqsLtq4fKNzr8S2uS//ZwfGjz2OP7FV7UDrHvP
 /wOQ96tcdywRS5itOpBxw06MqjbvhKZ2cURsx3sE1xaaDrK3gwwwZymNr4gv2OV73y94
 cM3YLuaQhL9HxiahmrFc3a8SKatYGHsHm/RPSUCpw0YCKLccui7T4etKO4SJmK8cmmrd
 F8gusL65xDi08bMLicd4PcoDm4YcXVKghzV+tmb3m8BqBfK9BwknGYL1KBWJDccOsTGZ
 /F4DKjxiVKYm5oRD8d++85sWgzy3yDCegvrnMUiULuAn1Cu7yAqbht4K8ytwJOQkhCe2 YQ== 
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11lp2168.outbound.protection.outlook.com [104.47.56.168])
	by mx0b-001ec801.pphosted.com (PPS) with ESMTPS id 3phsu6etyj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 30 Mar 2023 11:17:30 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DKg1yZZgctfES+zKuGwHmc+8te/6gt25EdH6UVIBfGicnvwjiEA+/OPCxL9qI02qFRjImIHNmt0iQUauibeSIbwTcG95WlqM5pI3ukUNgGr45Y4Qi3gscIbu4j/Vd/icH8N3/g0Dz/QOAKJfV2Sw98UdnRhFg7Bo3Y1I3EKZWtUkvryCDy4Ywl99svneJO7uM/IK0/4adM1HMAviUZL7F9ST2CgcbL7sbc2ypnQk6sVJf4zyoGBnmFtpQ0QRFMiBrQH4RJjdylNiQlVWHjcW2fUKx6cgSwYvq9GFS3b4XKL0UC12Z+DBnY8sxk23xuGLxxX36Ylh8OXHbWkxZrv2oQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sAUjlxHzSKc0+tZg0/Y3HryZSZkb8LZ4N8fZTMYynkM=;
 b=CxphrfV0KHN7XPkrX8DXaklCpACgLYKV91eutEpMwB+WgST4ktrnGit6Qe63cE9uvEVHScjfOXcXvPpy5pYA/rV8ar+Qt91vuDorg5qA1aE2LJL67AA72WrzveBxc8rfMynICa2+Ennu5rJpV/Vk7HjlXCa1LklX8OdZlhzKPcsF/nSG/MSYiGyv8BHf4IYsVnduTDZYcNYxqu1fRT1+MXzQr8f/Ah+43fCMl3/uxhyFAxkQUevRByqrI6BiJcuh7y6zjifLUuHtAQ/hGHM4l/TukHDYsd4Or3CDi4sj7/SgC+HOyvSW9pNslQcrBbD/pbHqF0TVIkEn5B/3sM+nBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sAUjlxHzSKc0+tZg0/Y3HryZSZkb8LZ4N8fZTMYynkM=;
 b=coEbx55smD9o2H+lvw5InbQqEmbDMLkfk6UTPWRiYwBfACI1COxEEPssVpNMgJenpXvrsddMc/kkxd9W4E/pRoPMnpR6/LCK9Er9/GMk/WABGwvS2+Qr7Ozi24+PMGor27KDOkj//DrU+Gryi//0+BvIXfMGdJSD8LNs2jCPs4g=
Received: from BL0PR07MB5665.namprd07.prod.outlook.com (2603:10b6:208:80::28)
 by MWHPR07MB2909.namprd07.prod.outlook.com (2603:10b6:300:1e::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.41; Thu, 30 Mar
 2023 15:17:27 +0000
Received: from BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::4f11:a1e2:55ed:3f5]) by BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::4f11:a1e2:55ed:3f5%7]) with mapi id 15.20.6254.021; Thu, 30 Mar 2023
 15:17:27 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Lucas Stach <l.stach@pengutronix.de>,
        Ahmad Fatoum
	<a.fatoum@pengutronix.de>,
        Barebox List <barebox@lists.infradead.org>
Thread-Topic: LS1021A performance
Thread-Index: Adli8/MSQZh0oqFCTDGUikKl7/yNnQACTMOAAAIftgAAAy47AAAB8XHQ
Date: Thu, 30 Mar 2023 15:17:27 +0000
Message-ID:  <BL0PR07MB566585849809C53B0FB60734EC8E9@BL0PR07MB5665.namprd07.prod.outlook.com>
References:  <BL0PR07MB5665003604A904B8AFBEB466EC8E9@BL0PR07MB5665.namprd07.prod.outlook.com>
	 <9b5975a7-8b1d-0861-ce01-9206a3ddfc7d@pengutronix.de>
	 <BL0PR07MB566562459F73E606BF3BB629EC8E9@BL0PR07MB5665.namprd07.prod.outlook.com>
 <6bdf136861036d5c9362360db82ea153d576ec3c.camel@pengutronix.de>
In-Reply-To: <6bdf136861036d5c9362360db82ea153d576ec3c.camel@pengutronix.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR07MB5665:EE_|MWHPR07MB2909:EE_
x-ms-office365-filtering-correlation-id: 25f91957-b2c4-4641-1834-08db3131df81
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  xqQecwRVd2zCAssVQER+ihHXkV2bGGNbN8PuSOOzNiG3wUXhOyjlLj9LI14f//9e6p+jcAGqO5rHU3bfhG9DcPesxTnbk0fFmsomdekR8yf1mlKvWokDmwJBYDMShyyhf8KmGk0scX9IYD1Ak2MHnEFxduNfgsn70zNlD8gRqAlWG9tgkDSxIaHXBDhHaOBclDVvUe4N1xbLV6fzJ9zkTwNcs2mc05T1QK34QYTOUZ1246rFCfQWDgnsh0e+aewC6zg4e/W20557DhUmch6lvfTT5mFGMNx/R2ms0XgLOzahnVNmdYUvlbB+/gFYXvZaf+QUosADgyI2MjcxFMj3lrxTLOBlwvvR870byxkExf1vcn27ESauyxA4PfAIe97EYROMUUknGDOnDUj88xKZOb1MZFPQfwIQsPt7CFMgXlIFUu0p/eNiMEkVUQi8j3kGDdY94b5oeC12xjLyw7n0Mwa37YCqPFBeaACEGL+ESK9KtBxipZh0gFsYtZkslWeVtP3tJ4/hz14tkeWgHUZgUFEjuci6R+1Jl41cU7WUWvJpxhfMX3O3DWZEFVh3RuWumXlwGgKtIwvWWu7PRdb114Dr0zS64eqI+/08MuW691zeVnfXQ2NiVy6X4UW+OJ0w
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR07MB5665.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(396003)(366004)(376002)(39860400002)(346002)(136003)(451199021)(38100700002)(55016003)(38070700005)(83380400001)(66446008)(8936002)(66476007)(66946007)(316002)(8676002)(66556008)(71200400001)(64756008)(122000001)(52536014)(86362001)(5660300002)(2906002)(41300700001)(110136005)(478600001)(33656002)(7116003)(9686003)(26005)(76116006)(186003)(6506007)(7696005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?utf-8?B?NjZLTzN0dXVzWlFIZ0pTc25UYnFKeGJRQlVjeEszMDlXVnBSZU5sSFZQV2xp?=
 =?utf-8?B?SG5lUHdnbzI2RVlWMnRLWmg4MWdTWGEvVk5nQ3JIVCttTkhvVXdCWndjdEJo?=
 =?utf-8?B?Y0JOZkJLem9jcEwzVGRDd1FHa2RUSjV3eWlGSkxkTk9URnN1K3VhUnpZVXlZ?=
 =?utf-8?B?UVlNZzBxRVRrb2QxZ0lFNlZQc1pwYnVua0NFT3UxQmxreTE1K0tVdXY4RFNr?=
 =?utf-8?B?c3g3RFZ2bnBibFFXNjVRVVU2bjl5Mnc0eEJNRmhLYWIrUWt3L1BmZFdQbFEy?=
 =?utf-8?B?N1BTR25LRFBWNmVFMjJtT1dxM3c1RHB0NEhPQnNMN3ZiZ2tLSmVSZGwzN005?=
 =?utf-8?B?SS9sRkNsUjhjbDVrTVo1amhuSmVMZHdRaVpvNTlNUzR6MWxrWEhsenFkVE5p?=
 =?utf-8?B?RE1QQVhNb2h6c1JoUFo1Q3FqbHNZZXduRWVkQmRrWU1TMkdhbnh2b1I4dmIx?=
 =?utf-8?B?RElPYzJqRFo5MmZtQVR4QWxIeUljVXk4V0hSZ1pMZmY3UHFISXFVWVlmeWJ4?=
 =?utf-8?B?SlJtZHY4N1Vvbzl4TnpzdjJUQ1VSTko0Wm04aHR2S0RsQjdER2hLYWJEaEt3?=
 =?utf-8?B?c3I3ajFOTno3TnVGWXcyc25ETzBCTnJ3cEwwTEpPRkdUNUV2S0VMaTZQOEI4?=
 =?utf-8?B?M3RpaFFKS1lZSytpV2k2cW9DN0xVMEFYSVFvRWRTbGRWMjE1dExINlFLMkRp?=
 =?utf-8?B?NUptbHFubjZwN2MyYTc2Rld5WTdKUFpaSmhMeHFwVTczNy9iQURJSVNneCt2?=
 =?utf-8?B?Qy84Q0lKbFpSOFMyeTFaRVJ6MllqNCtKSGdhWFZFdnRKNU1WblA2bWlOZ0t1?=
 =?utf-8?B?SVQzSDJKcktGWWFpYXFJZXYzcXBJUUV5TzFhZ1VyaVE2MktVcEtFbU1jR282?=
 =?utf-8?B?SVZBY1RrNHNxLzh5YnVsc1pGd2l3ZmptcjN6ZTJIZDNMcXMxTGhwY3N1N2o0?=
 =?utf-8?B?ZzNCdW92RllXYXFqZTB6S01VN01RdEJxMFBqMDdqK0RCYllIMk42WC93d05U?=
 =?utf-8?B?dG9Mcm5UMk95SzdSdWozeUNTcndtT1d2a3AzNFRSZkFqVXdVV1F1ZzdBUkxa?=
 =?utf-8?B?dU9iLzNOcDNkMlk0VGYzcVM4U1BkRVpiYnF1YTREa0RMNktIWS9iMnh4Z2lr?=
 =?utf-8?B?OWd2QS9TejFndDY3aHdZbisvbDdtM3lrOVlhcDJYQ2tWTEZuNzJ0VEJmZEZC?=
 =?utf-8?B?eVJmeFhyU3g0MDI1NmNib3RyaXRtSlJOOUc3ckFIbENiOEFNa3FZamVxRnE3?=
 =?utf-8?B?VUozWjJiOUY4SXMxT1FtcTRNcElydUs5Y1BBSUJPalY2VlUvS2RiSnQzc3Na?=
 =?utf-8?B?VFY0ZWFQa1paWjNVeW1uYUw4eDdEdUFuSlU3U1FMOWpiQjJJWmpWbDlqRnky?=
 =?utf-8?B?b0ZFOFhETWFvYk9xTlkzeUpKbkc2SWlwVWF4UGFBVDFSOFlselNzWVpXVnhF?=
 =?utf-8?B?QUVMalpid3ZZTGg1czlZaUp2UEw3NVdxWXliQ2NqK3djcm5vc2JyTndQTlQr?=
 =?utf-8?B?WXFzYnFiTVFSeVlCazFUa0Rzd0JQUVlVQ2orcFNuVVdXWnNuWG54cGFLVVQy?=
 =?utf-8?B?alhwWVVQS2w1T2V4RHRBYm8zSzQ3ZEtNd042bW03dkxxLy9EampHQ1dxMDV6?=
 =?utf-8?B?aDlSRnUyQjdHWWNNdUR6Z3JlWUNhMFVmNUhUYU1EV0laSVNXc001dDhjSkZL?=
 =?utf-8?B?WStYRXFTd0c5MkpIS0NNUVZkTkt5MVhpQnJXeEtBemxCSUVNKzNGcWdJZUlH?=
 =?utf-8?B?blQvUVpIdEdEU09FaEdtcEpzaWNaNjV6SklPZXZRaDdSbjZzcVl0TWhHTm81?=
 =?utf-8?B?UTNNZGY1ZG5TdmkycnA5SHhGOW45eldJamFnNWU1c3FzRG1iNm9vQlpweE4x?=
 =?utf-8?B?ekZ1OW0rSWQ3ZzRCVWJnT1BUb3JrN054bEpyUmJJOVdwazgxS3NZQ2JaZldk?=
 =?utf-8?B?ZWVXNDFuVGd6Kzk3RnQycW0rMHQxU01RWVYvTmNkVVFrUFBFcStBT2ovbFFo?=
 =?utf-8?B?RFZqejFrMGhKYVZaNnFFODFscFR3UkluYmxjeTBQamJ5WDhCZGN4OWFBZnlZ?=
 =?utf-8?B?cGx4dXVaV1B0aUJXRVNnMnM2ZE9kR2oxR2pHWFhwaUc0My9Xa2dPUjBPclRs?=
 =?utf-8?Q?yNnlLHOoUNJhPbc0gt7BnJYId?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR07MB5665.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 25f91957-b2c4-4641-1834-08db3131df81
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Mar 2023 15:17:27.5745
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aT1K9IiMPkDciAcD39pPd3hVKPMvVwj8Mb0UMeBOdmKUPnFgRW42RTu+FTkNV76kYJaCO5hT2MA+6UmKCGiVe/yt7y/HzNWB4Cf/eoGSCj4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR07MB2909
X-Proofpoint-GUID: FqRnNo9kXtBxYcAsIA7-lItmk1tnMmTN
X-Proofpoint-ORIG-GUID: FqRnNo9kXtBxYcAsIA7-lItmk1tnMmTN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-30_09,2023-03-30_03,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 phishscore=0
 mlxscore=0 adultscore=0 clxscore=1011 lowpriorityscore=0 suspectscore=0
 malwarescore=0 spamscore=0 priorityscore=1501 mlxlogscore=693 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2303200000
 definitions=main-2303300121
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230330_081733_154881_A84FBCD1 
X-CRM114-Status: GOOD (  25.58  )
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
Subject: RE: LS1021A performance
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

DQo+ID4gPiBDYW4geW91IGNvbXBhcmUgU0hBMjU2IGluc3RlYWQgYW5kIHNlZSBpZiB0aGUgZGlm
ZmVyZW5jZSBpcyBzdGlsbCBhcyBzdGFyaz8NCj4gPiA+IE1ha2Ugc3VyZSB0aGF0IENPTkZJR19E
SUdFU1RfU0hBMjU2X0FSTSBpcyBlbmFibGVkLg0KPiA+IFRoZSBTSEEyNTYgaXMgZW5hYmxlZC4g
U0hBMjU2IG9uIGEgMSBNQiBmaWxlOg0KPiA+IEJhcmVib3g6IDg0M21zDQo+ID4gTGludXg6DQo+
ID4gW3Jvb3RAb3BlbndhcmVdIyB0aW1lIHNoYTI1NnN1bSAvdG1wL210ZDANCj4gPiBlZWY2N2Ez
MzI3ZTNlYWE1MGVlN2IxZGFkODc5MDE0NjVmMDBkNzZhNjMwOGUzNjBhMmZlZGFiODJjNzlmNDkz
DQo+ID4gL3RtcC9tdGQwDQo+ID4NCj4gPiByZWFsICAgIDBtMC4wNTlzDQo+ID4gdXNlciAgICAw
bTAuMDU2cw0KPiA+IHN5cyAgICAgMG0wLjAwMXMNCj4gPg0KPiA+IE9uIGFub3RoZXIgbm90ZSwg
dGhlIGJvb3QgbG9hZGVyIHVzaW5nIHRoZSBMUzEwMjFBIGlzIG11Y2ggc2xvd2VyIHRoYW4NCj4g
dXNpbmcgdGhlIFBQQyBQMTAxNC4NCj4gPiBJIGNvbXBhcmUgdGhvc2UgdHdvIGFzIHdlIHVzZWQg
dGhlIExTMTAyMUEgYXMgYSByZXBsYWNlbWVudCBmb3IgUDEwMTQNCj4gPiBvbiBhIGJvYXJkIChz
YW1lIHBlcmlwaGVyYWxzLCBzYW1lIGJvb3Qgc2VxdWVuY2UpIFRoZSBQMTAxNCByZWFjaCB0aGUN
Cj4gcHJvbXB0IGluIDIwMG1zIHdoaWxlIHRoZSBMUzEwMjEgdGFrZXMgNzAwbXMuDQo+ID4NCj4g
PiBBbHNvLCBJIG5vdGljZWQgdGhhdCB0aGUgcGFnZWZsYWdzIGlzIGRpZmZlcmVudCBmb3IgdGhl
IEREUiBtZW1vcnkgb24NCj4gQmFyZWJveCBhbmQgTGludXggYXMgc2VlbiBieSB0aGUgTGF1dGVy
YmFjaDoNCj4gPiBCYXJlYm94OiB3cml0ZS1iYWNrL25vIGFsbG9jYXRlDQo+ID4gTGludXggOiBJ
bm5lcjp3cml0ZS1iYWNrL2FsbG9jYXRlIG91dGVyOiB3cml0ZS1iYWNrL2FsbG9jYXRlIENvdWxk
DQo+ID4gdGhhdCBtZWFuIHRoZSBMMiBjYWNoZSBJcyBub3QgdXNlZD8NCj4gPiA+DQo+ID4gPiBE
byBiYXJlYm94IGFuZCBMaW51eCBydW4gYXQgdGhlIHNhbWUgQ1BVIGZyZXF1ZW5jeT8NCj4gPiBB
Y2NvcmRpbmcgdG8gdGhlIExhdXRlcmJhY2gsIGNsb2NrIHJhdGlvIGhhdmUgbm90IGNoYW5nZWQg
aW4gdGhlDQo+ID4gY2xvY2tpbmcgcmVnaXN0ZXJzDQo+ID4gPg0KPiANCj4gQXMgdGhlIExTMTAy
MUEgaXMgYmFzZWQgb24gYSBDb3J0ZXggQTcgeW91ciBib2FyZCBsb3dsZXZlbCBpbml0IG5lZWRz
IHRvIGNhbGwNCj4gY29ydGV4X2E3X2xvd2xldmVsX2luaXQoKSBmb3IgdGhlIGNhY2hlcyB0byB3
b3JrIHByb3Blcmx5Lg0KPiANCj4gSXQncyBwcm9iYWJseSBhIGdvb2QgaWRlYSB0byBhZGQgYSBs
czEwMjEgbG93bGV2ZWwgaW5pdCBmdW5jdGlvbiB3aGljaCBjYWxscyBib3RoDQo+IG9mIHRob3Nl
IGZ1bmN0aW9ucyB0b2dldGhlciwgbGlrZSBpbXg2dWxfY3B1X2xvd2xldmVsX2luaXQoKS4NCj4g
DQoNCldpdGggdGhpcyBmdW5jdGlvbiBjYWxsLCB0aGUgYm9vdCBsb2FkZXIgYm9vdHMgMyB0aW1l
cyBmYXN0ZXIgYW5kIHNoYTI1NnN1bSBmb3IgMU1CIGRyb3BwZWQgdG8gMTE4bXMgZnJvbSA4NDNt
cw0KVGhpcyBub3cgYnJlYWtzIHRoZSBnaWFuZmFyIEV0aGVybmV0IGRyaXZlciB3aGljaCBsaWtl
bHkgbmVlZHMgY2FjaGUgZmx1c2ggb3IgZG1hIGFsbG9jYXRlZCBkZXNjcmlwdG9ycy4NCg0KVGhh
bmtzLg0K


