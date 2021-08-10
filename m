Delivery-date: Tue, 10 Aug 2021 10:38:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mDNHF-0000hI-8i
	for lore@lore.pengutronix.de; Tue, 10 Aug 2021 10:38:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mDNH9-0005U2-Py
	for lore@pengutronix.de; Tue, 10 Aug 2021 10:38:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7qy1y0pnQEmKkqBDdFgu102lECaJneJJNHgVBioSmTE=; b=dEVqnToGiQJFaJ
	2fAT+te5P8yej2/XUEij+vJuIkl7uKlq6Cj2DItFQ81uHekEyRbvBc7vRjWrWGSVJgopLd85zZRce
	Olk/nd3t+zRCx8jr286hlRbkmdvTZlOotK+mDEmHFmzEJKcxNiq69rUD+qRJup0w0S3DUFSf1QIcJ
	eRZY6XDpwunGIf2aCaYkTDLyrvFqsxKb3ksdGnE1FqKGLzXGZffwhr1FkLUGp9Rd49zOxF60nIDaW
	8QtLSUYdNrzLTkqlkXd5laONVX/ECW9r1H6b5xTPutSf/p0Lqv2TxMDNaIwQKCuoClSUEZqlFnRJp
	/nUWdspK6qvt6JDPhryw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mDNDs-0032VR-D5; Tue, 10 Aug 2021 08:34:57 +0000
Received: from mail-dm6nam12on2095.outbound.protection.outlook.com
 ([40.107.243.95] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mDNCk-00324o-LK
 for barebox@lists.infradead.org; Tue, 10 Aug 2021 08:33:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n2rSmJ8qTZOTOqvAzQd8n39jv0sDjsupKvU+DrwOWZhvezEavP448Vmbalsi69OaN5Yt4P5R8/zwgmhsbKJt/iWLRomMITnk1cQ+HvDsi0EX/NE1hDgEavReNcfdwnaawnxy83q/u1lONWLEYh9d9rNbtGqlBxHcnfy67zPph4l8s/4QKPSR6fbjCPP+Y+pscXWvi309sY2TNxoeW4xTzyHxQC9EIf5XPcUCq+gtdzi20SzaEA56ya4rfDmHAnW0lynevdiLPNUYAO8LDjgHlXGxBu3oPy7SPUyUFpGm2LeMyqbVfIJfrVuznW+07KPEuSGnYLbpYN5/Gsu+jixgkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qSchUdnFyuQK/+vV7oMEOqE7wcrt1VFiC+YI/874ndg=;
 b=n4t5RHvvtTKD3LftefD68KDTObvoyZjB0MctViRYjbE4SSxyMw/DKs9wIDo8DEgBq/NX0Eaz4NogiVM44Ey0+rhHIm8LXS10Q2BquU8wca+WeRtgGb2c81iAYBzLrvcQ90z+F0uEYQbemA7k0rwupAMMfpwt8PIUgsQvYG+kPkWBQ+F0iXJlswf4SI55z/usGWhyli9GCLK7Rrx3o6SOnAAhd2P15no1GTFkNQ3VUZwtRXqVfH7fDZaC1jfZzN5CDaBYI1HKpAlnwehgsAtlg1+tkCAWvpqb/vbNhzkN7lFYPDOT4PFuge1Yp6M/e2X3relr7WEn73tKEXRL/3YQSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=abaco.com; dmarc=pass action=none header.from=abaco.com;
 dkim=pass header.d=abaco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=abaco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qSchUdnFyuQK/+vV7oMEOqE7wcrt1VFiC+YI/874ndg=;
 b=abIdTYwPoNC+NUD6QF4PgA01H0cOFdNF/SyTnWE3ysIXHfzjxf8gho6GNf7HUMwszuyOUZpL0+k3Uy2N+UsRYVMrAXUUyEHTeyuBTgTAkgcMgTq1k5sYDkPxhvOaH6koxkYNmpT70QkxolDzgsX1n5D7gvAxd6HiDUH/0GI+5NJ0tDFKGlwH8tKO44qyKXFIohZfgK+OP1nRX35cqOhbyIhEnj0XWv/+dvdViGr5AfkZlWM4S85PXOZ1QdI4EqyW0V8MT9kLq/+vnVxMAltduKaqjuLlZ+qbnre4iBtrZJD5/aR4lvDArV6oeCW3NlhpRk84e08V67TeAV4G+ZOIQg==
Received: from MN2PR16MB3135.namprd16.prod.outlook.com (2603:10b6:208:153::31)
 by MN2PR16MB3166.namprd16.prod.outlook.com (2603:10b6:208:137::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.21; Tue, 10 Aug
 2021 08:33:42 +0000
Received: from MN2PR16MB3135.namprd16.prod.outlook.com
 ([fe80::177:fea4:3768:8014]) by MN2PR16MB3135.namprd16.prod.outlook.com
 ([fe80::177:fea4:3768:8014%4]) with mapi id 15.20.4373.031; Tue, 10 Aug 2021
 08:33:42 +0000
From: "Barbier, Renaud" <renaud.barbier@abaco.com>
To: Sascha Hauer <sha@pengutronix.de>
CC: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: [PATCH 2/3] nand: add NXP IFC nand driver
Thread-Index: AQHXh4rJysEh/iRqfUi+fTUx8MA/zqtrlwGAgADcrSA=
Date: Tue, 10 Aug 2021 08:33:42 +0000
Message-ID: <MN2PR16MB31353E5032A5C1D316AFA71191F79@MN2PR16MB3135.namprd16.prod.outlook.com>
References: <1627900804-15814-1-git-send-email-renaud.barbier@abaco.com>
 <1627900804-15814-3-git-send-email-renaud.barbier@abaco.com>
 <20210809191625.GB24834@pengutronix.de>
In-Reply-To: <20210809191625.GB24834@pengutronix.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=abaco.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bf0dd579-443a-46a2-26d7-08d95bd98f9b
x-ms-traffictypediagnostic: MN2PR16MB3166:
x-microsoft-antispam-prvs: <MN2PR16MB316614A73E8337F28316AD0E91F79@MN2PR16MB3166.namprd16.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Wc4IIccpn0DQHY8wSQO41PrKu2cEBy1zC19Uv+qmY5nqvIF8AuV0X2yqhbXLeUlTxUrYv9IvfVaqzfm6SYp8ad53A9RJwA4ApsQo3bCCTHYRVdSUyXGd4uZjafPoNtgyZdD7nCU7FK+SRLSv8dEmPv6LnPEJRyZXaX9I4ZZ439J8cu9Q/xqZVDL0ydztOeFYupKJa203wbm72S1hGe2aTeUkCJrl5fp7LCDJlyU56l7VE86E92Fa7elydAm2P6Aybxa/vWZ/R2QsvwXQdzoCyp9ez5r7iUmUrD48BPhVY/UKE5zXfHX9NBJizrMjU/2wSFkv6AVrgEZKRRQiuLKE8s6i1vcVGcv7WaIoocbx/i5KWWLHeczG/U92qcFnFwfBuW2S6tX5MC8PkI5NDZzd7J8OV9asRwYvttltfRYl5IgojS7uzLyDlZT1HTVRLzqeoLUvkUNCnSzNbkx0BzMr/IlRGEXy271mcVdOij05cH88Z1NqGjxu3574C1CoYoAjd+v0Sc9aCkbVJR7UpvQD4j5mzII5PyzVwCQ+vCjmQe5hlAARQA+u35vPoRyajVxG60c8F5BwrN6UGgon9JLkDWZSvIn1J2QH7Ly4G1c/6R3gIhXi+Vu9DYA1WFvJdfyDBGxznKrLZDBqcvg+o8DhXSt6/29XRZbGZcZ8zHO8dncfpIaGQkI9bJqhFSdNFlwiEahFVuxYj60Rv8iSP0miJFKGhEeMPhEAmrveos8KoPXdKhmvOBMuUs0lbWhtT05aXoZ+x/A67vSqzo4R3tfbGcOeqPO98SMpeSstYeMfNnU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR16MB3135.namprd16.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39850400004)(376002)(346002)(396003)(136003)(366004)(66476007)(76116006)(38070700005)(66556008)(6506007)(8936002)(55016002)(33656002)(66446008)(186003)(53546011)(83380400001)(122000001)(6916009)(38100700002)(64756008)(7696005)(966005)(316002)(86362001)(2906002)(4326008)(8676002)(71200400001)(26005)(9686003)(45080400002)(66946007)(5660300002)(478600001)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?TZT7XNoU26oNCf9xhEJ0rqwP2bKwtgw6IWRb/1Qcg0n4YtkuiG2ULhih0V1a?=
 =?us-ascii?Q?sYlDJj+T63st4g+zhhoqvXD+bCfLphTSgKfnNp0FxlZAHXanxAsynuyEV31B?=
 =?us-ascii?Q?lWwtXy9tfLHt522scaTnZVhpsvsEUHa6Igx0ktemVMeh3PZ2N4GePox/frVQ?=
 =?us-ascii?Q?/yz+x5V5EMVtfyqyW9EVRs4ZVNJ9zLd0b5mVtLpABLhUWPcvXm0oYehPohtU?=
 =?us-ascii?Q?OPLzHGIcJbwjgD6xwgmCsY4DNQjvPvWHFKILaIZElO0qoO4Bko2RhPsJupWg?=
 =?us-ascii?Q?mekkso4XejxhcP2+5ECHq7qnF0sD4OM4VRaUEO5onvbnnzsppdlAt3MdKhny?=
 =?us-ascii?Q?hNg0XZLJCnL71hEi81cow1L5wugmU9C/Y+xP6NZ5yUkij9iLr+CNh8OUP0gL?=
 =?us-ascii?Q?velNZ9OUl87itfyoH1JHkvntsg55VegS2pPYZ+e4I1x2vwFNOW5RPFtXW/oz?=
 =?us-ascii?Q?Jqk/h2tuuuUb5civiHsIMJBxttZqvIn7CufLwLkLTqGqn1p0IPrViEqTka3b?=
 =?us-ascii?Q?qI+aon31+WKF+6fiePg+XjbERyDgh+l3SgJc8Vo1itRnoCWG11TGfNl1aatP?=
 =?us-ascii?Q?Y29117nR0aJc+GpUEOQB/E87ycGkYvqYyplgQoCI4zc1mizfognI45VN3bSK?=
 =?us-ascii?Q?wMlPFYbzOhZ0EzeVf4eCyRU0vIti3+YozrzkyYhjld1lzLVt6LCcwIM7viYQ?=
 =?us-ascii?Q?Xoz/SOelnxd9JeCbPqRTdOusRO8cCMquoMtjcK6GO854p1b0Hn0RgZXofHPW?=
 =?us-ascii?Q?ruKCu3p9Z5Br3CFZp0csjPp5S8ynq5i7dBXyRJlYZnt+Bcjxp8sXPPAr+L+j?=
 =?us-ascii?Q?ebR65bol/TkwoVPjlxOBH4uqyR+Bgi5fP9U8f7VyJ5aiRlSSu3pF6oskFqPY?=
 =?us-ascii?Q?UfvmUHEMBu6zerjcD+tFtrSKtrj65l7gL31MDxf2IzibQHFpg2skdaY0QrFF?=
 =?us-ascii?Q?E+xWrmvIBOF2IjY7a5eyqgrkhGxxp4HySOMB+bNX+nOOj6Ifhds8iZvX2QHU?=
 =?us-ascii?Q?kyhmdxhGZU902v3KEs4X3VHG2SDsOM5t/dw/dDT6OwVeKLVUnBj6kB0I2nEd?=
 =?us-ascii?Q?gDCbqgUF2qkgG8q8WpNgRT/TB5PJEBnlLd24tK53K5mOLn8cotRh2g7LA5p6?=
 =?us-ascii?Q?uxaYKvyY00z2KeeoC4Bv/xKXBmfVujD5D4DaDGmYQoQACRP2DJ1fWPAmHFzk?=
 =?us-ascii?Q?aunBhuI+bldQNwILdlJWk68rexgvkFkzKy5Eq3//+BkDroiQerivPaaqoxvJ?=
 =?us-ascii?Q?W++UqWfDN2206eAOEtal/FtblCNB2B//L9/zutLYoWxVt9KkMJPGWcMfW2Eh?=
 =?us-ascii?Q?2mc=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: abaco.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR16MB3135.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bf0dd579-443a-46a2-26d7-08d95bd98f9b
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Aug 2021 08:33:42.4037 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e6f27451-899d-4d0d-b8fa-88baafa551a7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /FuHyIWcUIje4M3t6GBkD08e9ZeYPm+Fd1uyuvCuMRkORKYhdezwWDujJsZs/7nSX4mGNnwpAFk7sIQH+R5bfuCAyBUtDG8iTaWGxy4aVQg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR16MB3166
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210810_013346_907022_BB38182F 
X-CRM114-Status: GOOD (  21.01  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: RE: [PATCH 2/3] nand: add NXP IFC nand driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

I first ported this driver in 2015. It was derived from U-boot (2015-10) commit cce573e and had a few updates over the years.


-----Original Message-----
From: Sascha Hauer <sha@pengutronix.de> 
Sent: 09 August 2021 20:16
To: Barbier, Renaud <renaud.barbier@abaco.com>
Cc: barebox@lists.infradead.org
Subject: Re: [PATCH 2/3] nand: add NXP IFC nand driver



[**EXTERNAL SOURCE**]:Please verify the source before clicking link or opening attachment.

Hi Renaud,

On Mon, Aug 02, 2021 at 11:40:03AM +0100, Renaud Barbier wrote:
> Add the NXP IFC nand driver support. This driver can be used with the 
> NXP QorIQ cores.

Could you leave a few words here which base you used for the driver? Is it based on Linux or U-Boot, which version?

> +static void fsl_ifc_ctrl_init(void)
> +{
> +     struct fsl_ifc_ctrl *ctrl;
> +     struct device_node *np;
> +
> +     np = of_find_compatible_node(NULL, NULL, "fsl,ifc");
> +     if (!np)
> +             return;

Looks like this function can fail, it should return an error.

> +             while (!is_timeout(time_start, IFC_TIMEOUT_MS * MSECOND)) {
> +                     ifc_ctrl->nand_stat =
> +                             ifc_in32(ctrl->rregs + 
> + FSL_IFC_NAND_EVTER_STAT);
> +
> +                     if (!(ifc_ctrl->nand_stat & IFC_NAND_SRAM_INIT_EN))
> +                             return 0;
> +             }
> +             pr_err("fsl-ifc: Failed to Initialise SRAM\n");
> +             return 1;

It would be better to return an error code here and propagate that.

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://nam11.safelinks.protection.outlook.com/?url=http%3A%2F%2Fwww.pengutronix.de%2F&amp;data=04%7C01%7Crenaud.barbier%40abaco.com%7C5542b21e348444c35e0908d95b6a2fd6%7Ce6f27451899d4d0db8fa88baafa551a7%7C0%7C0%7C637641333904496165%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=eBdLLjmiSrNN%2F2VJjk6sRWhCgnPKOZUpkzYkePKh%2Fuk%3D&amp;reserved=0  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

