Delivery-date: Wed, 16 Jun 2021 00:04:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltHAj-0000QE-Kg
	for lore@lore.pengutronix.de; Wed, 16 Jun 2021 00:04:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltHAi-0002Ac-0G
	for lore@pengutronix.de; Wed, 16 Jun 2021 00:04:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LPpkEZnJArBszhkEArWxMocljQ17DVkvbxWH/OiwhEA=; b=vNhJQgHFCVxXen
	IQ3p3FPnKkKygpSIKkC+GnIwhZiTasBsvq8tDGYyz4pEQ7VjbiXamC4QBgrqruPhS5qx6zgl8uu68
	1fMLMHxNYXtqrOEYtDXzLFBGZF+ltD9qOmgR14EdAGhXVCTL/jfFXi1V+kWPmFQff1CqRNhQlpcrs
	J1vIRukwEIwf7sDGqvhbHGK/P2047A40Sy2qXw0fw/gqO66nR1Mhy5mXfNc58vE8Eb9uyboyxbleV
	Xl2hV9bkasgslxwfd8Mmxt06u4nrhATtCrfUU5ewEPXLwTtMPKfYjKKHCLyA8IzMTs6S5IBDwQiCO
	X5TK/V4oILqaBRXSB3Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltH8r-003Oy3-GO; Tue, 15 Jun 2021 22:02:43 +0000
Received: from mail-mw2nam12on2134.outbound.protection.outlook.com
 ([40.107.244.134] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltEK6-002Ie1-W6
 for barebox@lists.infradead.org; Tue, 15 Jun 2021 19:02:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K9zY09PSshNEsVlNevgvfwqZwrTZMhbnVHAOJtuVAdZ7On2aUEJeCLWpqDrkoT79OeZxVOrGTl91x5gerukrhUfqjAG2HtmUw/F7NyC6qytMYxeMhUgPvNR/jMXVdjrKEs2Sdw9Xb2eEDcnOgE9en8qDigw4EmLJYjhnUFwlXp+MQfyBSM4lpKYCrOV7sSy/U+lKbc1W3dy43Nw9pb1hUCXqtAqWSmD9VlrIFIjkSDt+bQh2rGvnVSK44bTLlkxnEAE7Pt7IwMqXPHK9jFliJk2LlsOrZ7wjRl8zWgCmtsiq7ijOEm832BFKnpeJAawbGUKN192hXKHPKLFoGl2XJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zZdMTUoh3VQyVMaJI4p4WrG0bsR7Z3us5LF3lR5n8/Q=;
 b=LJEyfxWk50QQ0MuEZgssloqgw19iKwsMhjo6leMuJVAHe4XQQi3zqBi/ggmilavDIYrM8+3OmAiUYz3eRTQNfYBhRwOBLAawis3Hpa05w8TsDaEjuUNU5VL/8IS7bbgvQWL8xhYH5xjzQ11XwNSfZ7IUOf5r1AVCbloOTpobSXJpoR42DlaRQww7fgctZqdf5Botd1iFyrogrT2CWlX5DjUT+OvDNoi/WclmWnOuwQ8Fqzn+ZRGj2SpPGkzS4izTLdV6jXo73x1JXIy3rZs7/rifscQP7eF22RQKaxkAGyp2yumWmHkJmP1jI87qPQDm+ecRisBtKPvx6KXKwxMfQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=abaco.com; dmarc=pass action=none header.from=abaco.com;
 dkim=pass header.d=abaco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=abaco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zZdMTUoh3VQyVMaJI4p4WrG0bsR7Z3us5LF3lR5n8/Q=;
 b=F2hg5OcsoRo4vJNXFUZESJou+uATYgbDRtbqRG8slYhFySS0js3E8uwVH9LMrTaAs83yWManZLFRFBpXKPBJsqGpPP6MKObAHPrvqL6Z3J+8XHplbMQJEbtcm2GRaLLcL11oMT4YuzMUwN+zUoVro0kCy08iO6OM3+2bZubM7CYJ1Gfyb/Zvd3VMZVurDyXib4VZbUIEDXEavpcwK/g0lGBBXEYVO4ERwz6EXAI9Fd2U9tjMTlW4VGdgV0Uh8ZcWT3SS8XqErLIysUkey8RI+kYL/DVvaadOuU9oT7nFSBF3K14Gq3TdgfCRtoTpPbhbcQTSTLmwIH4k05PAVDjZFA==
Received: from MN2PR16MB3135.namprd16.prod.outlook.com (2603:10b6:208:153::31)
 by MN2PR16MB3006.namprd16.prod.outlook.com (2603:10b6:208:e6::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4219.22; Tue, 15 Jun
 2021 19:02:03 +0000
Received: from MN2PR16MB3135.namprd16.prod.outlook.com
 ([fe80::81cd:8060:64e:57c4]) by MN2PR16MB3135.namprd16.prod.outlook.com
 ([fe80::81cd:8060:64e:57c4%6]) with mapi id 15.20.4219.025; Tue, 15 Jun 2021
 19:02:03 +0000
From: "Barbier, Renaud" <renaud.barbier@abaco.com>
To: Sascha Hauer <sha@pengutronix.de>
CC: Ahmad Fatoum <a.fatoum@pengutronix.de>, Barebox List
 <barebox@lists.infradead.org>
Thread-Topic: NXP Layerscape
Thread-Index: Addd/MoIpx587SOMTFWl0TiwuVIYLgABV7gAAMrMTIAAJX75AAAU279w
Date: Tue, 15 Jun 2021 19:02:03 +0000
Message-ID: <MN2PR16MB3135BB5D967958B362E1169291309@MN2PR16MB3135.namprd16.prod.outlook.com>
References: <MN2PR16MB31351CB3C8DDCAA07DB9E25591359@MN2PR16MB3135.namprd16.prod.outlook.com>
 <ad0091c0-2919-de80-01d5-41cea68d5550@pengutronix.de>
 <MN2PR16MB3135E10CC5F4B532EDA547D291319@MN2PR16MB3135.namprd16.prod.outlook.com>
 <20210615084922.GC9782@pengutronix.de>
In-Reply-To: <20210615084922.GC9782@pengutronix.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=abaco.com;
x-originating-ip: [167.98.226.2]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 98f40801-60e8-46c0-a700-08d93030100d
x-ms-traffictypediagnostic: MN2PR16MB3006:
x-microsoft-antispam-prvs: <MN2PR16MB30068B046F9CBBA6333399DE91309@MN2PR16MB3006.namprd16.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WaMH0+B/vCy8b6n8+Mn2VAI//zAh9zYNWTXMbS0j28f6JoaIgBgrE72eIU/5BJO4a8bVN/axj8Sc+1bhj83mXy/0RbSljjHxCh+ETOrU0lGJ8e8dqFFMoxMkE8VM85a30rS5dag/aJXx7rIkEIb8fBobLY4qFuTJl4KowRPs3cTU2QACDjHQo35nG4f30gt8MBoD91zkej7ol9tT65yyd3+MyxFwIdq5BQsBAYsjrjq8JRCN3SNdBSvWiIq46y8cwbXsKynnwBrpzZj2Gg+DbkmnhElN3anEva5cRTk/nAck1TW6hPpgd+9o1hK+npe9PJ1ny2MHx+AGzDEjQgVvwbcXdxff+j8Yolh02VM7LvV9jMQOSNsVAeEL/KJppNINLujCgQe/g+SqcLZfV45Y689/ZJJj0fm49CScUBdcIWOSPrHz1NDd2TIBEbzleBr6bqeyfVIb4gYeqHDpOaE981Mag1wqH9Al8HPhhulpozys8xcFEEiUU06SsY0Fc2XIO01hamwFmhPVc6t3mW+vfBhawlCSlsB0P6UDMJD5MxmhWFgoCaFNoqtKM30wcuYla2HkW/kIRdpbJv+Sfn2anSwuXmAEZyAUqeRSs8TwcX8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR16MB3135.namprd16.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(39850400004)(136003)(366004)(376002)(396003)(2906002)(4744005)(8676002)(6916009)(4326008)(52536014)(7696005)(38100700002)(316002)(3480700007)(7116003)(122000001)(33656002)(186003)(66446008)(66476007)(66946007)(71200400001)(66556008)(6506007)(76116006)(64756008)(5660300002)(478600001)(8936002)(86362001)(9686003)(55016002)(54906003)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?hcoEJdbYJzhSeqT7HlmERu+ncsVeetSRWxmbpYXvcOWTh6XwXOezVTOr2nJ6?=
 =?us-ascii?Q?4uTzfzeBC/Ub+X5JQUcygvCIXp5woB/cxX+0g6acdRKR1EhJsNKzxOcWdJDw?=
 =?us-ascii?Q?yHpV7efig9HsWW8POr2SbSxMBqQJscexd3wglKnlfHB8SgolHfyFYVTBcx1C?=
 =?us-ascii?Q?kUR914KhC37Mur0bm6JoR0pfmrlwOuU7z1HREP9GYWd07PmVlTY7ZWO/4ji1?=
 =?us-ascii?Q?BSBdycqu7H2A2XfbJJ1rOgAZvsQUiRna3y4mO3Ee/tqCQTlSloanbq4BHkPJ?=
 =?us-ascii?Q?eOHJbraGJgJ0Dn9YPxkPHF0+zyFew6l0NOFTpO3+jgF28HoO50UySQAuxxEI?=
 =?us-ascii?Q?RNYjioC0jvkGXwvwnRkE1y6cE2Q+LtjOHNGl5ZDzLb0pU8Yvc4+/SFf/TT8Z?=
 =?us-ascii?Q?38EMpTOCYpfbQ7i33ftpoeR/m4I8GH1zPav6J8+AnKUUTNx77SNjJ1yW3Hqt?=
 =?us-ascii?Q?xH1w3EYG3ZIiQN/w6uJ/06vXsrBSYgMQqUkcUHZu0zhlnSIaAGif0FSb6KBm?=
 =?us-ascii?Q?OS7upZoFwLVdNdVKMgOY1F1YQ8vW+jUp57YJLyc0fqEgocygOPmHEAJb428/?=
 =?us-ascii?Q?Fz6YvoGIr9HuU2TBbeIKhPs3cW/p+VNyDIoLpssESwiQvTI3FB3vnRGITRLq?=
 =?us-ascii?Q?BQACdc/gBx4Uqk4aw2qn+d/32MCXUVPoDmB2hsUwH//L+PkE6I77amBhfmeU?=
 =?us-ascii?Q?PNxMrvVWYLriOIKkyw9w+dmzupkNtZrO+FPwzTb2Zd8O3WXXJ01Bc5QziBML?=
 =?us-ascii?Q?1uJG3NhcsywN/cqHYVvPCPso0ebDRjHyR3zj9lrByne2xxVcgnEhvP7bRly8?=
 =?us-ascii?Q?HQO1vc9LVhatcZaZa4eP1OkfhhIQXqFEURU7AV3KSBH7PQLIv3uUU/lC3kgM?=
 =?us-ascii?Q?IIiIWGwJmG7blUwj+a4N/ivmvCpJZ800+VXMqSsPr0vSK5TYTx7WGkwb7Mw6?=
 =?us-ascii?Q?y/hE22kWuE32fTmU3svLySDXyShLrapbX2cOwLv+dl6Uq/yVkFkEeHJy+B+k?=
 =?us-ascii?Q?76HzOg5Zbt6rygnBpg/hRxHQVCGuVTBNesL2wsRcr/PvV8439Tr3omMT3eYF?=
 =?us-ascii?Q?EAUL5pE2uBQyZmy4sgvOpuYUhf+9qEnWdGbGCdrTeJEKJJGeDzGCyK1ykVYe?=
 =?us-ascii?Q?ClQ1Bn0/ak+ph6cSU8fTMahLBNl4+5E5kGSsdCKOeiHjhCXU5qnIhJinu/Uy?=
 =?us-ascii?Q?cppFSk4/DlKdSsdDKPbEaAXv0rlIg8LiHeqYzaDWHxRA3RBx6jFsQvTI/Fjo?=
 =?us-ascii?Q?bz2fH90VGRbCLVavoPuE82mFG3GpmPu4eMzAB0UNcy4d6dyrUv78HW9ru9mH?=
 =?us-ascii?Q?zs0=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: abaco.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR16MB3135.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 98f40801-60e8-46c0-a700-08d93030100d
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2021 19:02:03.3520 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e6f27451-899d-4d0d-b8fa-88baafa551a7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JQqZFeWrbcxdvz43Zgi1ZSiK1QTxlRZFDWBr6m3kHdHIRdvVD3rDQbnVANGKWSyf9ql1qUF6KXD81wzOAm8cVm7im0k1sknc/HhgQgt7VN4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR16MB3006
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210615_120207_261034_8D1AD447 
X-CRM114-Status: UNSURE (   7.20  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: RE: NXP Layerscape
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

>  09570604 10000000

> This is the weird one. The QSPI read data is memory mapped in some SRAM where it is directly executed. 
So if  I understand you correctly both the PBI and barebox PBL got mapped to the SRAM (which I guess may be the OCRAM1 if i refer to the address above 0x10000000) and get executed sequentially.

Based on U-boot, RCW+PBI (at 0x40000000) which specifies 09570604 40100000 (address of U-boot), I would have thought that the address needed to be the exact start address of the barebox PBL in QSPI. Apparently not. 

So If I burn the image barebox-ls1046ardb-qspi.image at address 0x40000000 (start of QSPI flash) by using U-boot, it shall boot on power on.

Thanks.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

