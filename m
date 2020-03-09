Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBCvm-0004bd-3x
 for barebox@lists.infradead.org; Mon, 09 Mar 2020 07:34:31 +0000
Date: Mon, 9 Mar 2020 08:34:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200309073428.GF3335@pengutronix.de>
References: <HK0PR02MB3716EB73F0D1E1FE54E843FDC9E50@HK0PR02MB3716.apcprd02.prod.outlook.com>
 <HK0PR02MB3716F6EF62B6B6542CBCA3DEC9E50@HK0PR02MB3716.apcprd02.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <HK0PR02MB3716F6EF62B6B6542CBCA3DEC9E50@HK0PR02MB3716.apcprd02.prod.outlook.com>
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
Subject: Re: =?utf-8?B?5Zue5aSN?= =?utf-8?Q?=3A?= can not compile on ubuntu
 18.04 lts for x86
To: zhou qi <atmgnd@outlook.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi,

On Wed, Mar 04, 2020 at 03:56:11AM +0000, zhou qi wrote:
> 
> It compiles If I switch "Bring up type" to "EFI". How to compile "16 bit Bios" type ?

I'm afraid that when you pass this hurdle it will only be the tip of the
iceberg. Booting from a X86 legacy BIOS never got to a point where it
was really usable. Please don't do it unless you are willing to take a
lot of pain ;)

Regards,
  Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
