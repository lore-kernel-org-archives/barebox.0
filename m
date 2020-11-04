Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-dm6nam11on2106.outbound.protection.outlook.com
 ([40.107.223.106] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kaFfd-0006WV-Ix
 for barebox@lists.infradead.org; Wed, 04 Nov 2020 10:05:41 +0000
From: "Barbier, Renaud" <renaud.barbier@abaco.com>
Date: Wed, 4 Nov 2020 10:05:34 +0000
Message-ID: <MN2PR16MB3135A0D6B4E6F4486333DF9091EF0@MN2PR16MB3135.namprd16.prod.outlook.com>
References: <MN2PR16MB3135009790C9E05DD2D996BB91170@MN2PR16MB3135.namprd16.prod.outlook.com>
 <20201102131343.eez2qi4pxq56gfo6@pengutronix.de>
In-Reply-To: <20201102131343.eez2qi4pxq56gfo6@pengutronix.de>
Content-Language: en-US
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: RE: bareboxenv-target
To: Roland Hieber <rhi@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>


> Which toolchain were you using? IIRC, the Yocto SDK builds don't set a
> valid SYSROOT during the build, and patch it in through a compile option
> when calling the compiler.
[Barbier, Renaud] 
The toolchain is built from our Yocto (dunfell-23.0.0)
> 
>  - Roland
> 
> --
> Roland Hieber, Pengutronix e.K.          | r.hieber@pengutronix.de     |
> Steuerwalder Str. 21                     |
> https://nam11.safelinks.protection.outlook.com/?url=https%3A%2F%2Fww
> w.pengutronix.de%2F&amp;data=04%7C01%7Crenaud.barbier%40abaco.co
> m%7Caf3bfcf353684c3ae9ae08d87f312089%7Ce6f27451899d4d0db8fa88baaf
> a551a7%7C0%7C0%7C637399196270355233%7CUnknown%7CTWFpbGZsb3d8
> eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3
> D%7C2000&amp;sdata=%2BdontmtYoJ%2BsS1%2FkGternIF%2FOdHe1h2QaV
> hQPE%2BbNeY%3D&amp;reserved=0 |
> 31137 Hildesheim, Germany                | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686         | Fax:   +49-5121-206917-5555 |
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
